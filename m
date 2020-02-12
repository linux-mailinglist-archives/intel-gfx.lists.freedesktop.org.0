Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBC015AB05
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 15:33:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECC816EABF;
	Wed, 12 Feb 2020 14:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E0506EABF;
 Wed, 12 Feb 2020 14:32:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 06:32:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="347524860"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga001.fm.intel.com with ESMTP; 12 Feb 2020 06:32:53 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1j1t4O-0003fc-9q; Wed, 12 Feb 2020 16:32:52 +0200
Date: Wed, 12 Feb 2020 16:32:52 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200212143252.GR25209@platvala-desk.ger.corp.intel.com>
References: <20200127121818.2492460-1-chris@chris-wilson.co.uk>
 <20200127121818.2492460-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127121818.2492460-3-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/5] i915: Exercise
 preemption timeout controls in sysfs
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 27, 2020 at 12:18:16PM +0000, Chris Wilson wrote:
> We [will] expose various per-engine scheduling controls. One of which,
> 'preempt_timeout_ms', defines how we wait for a preemption request to be
> honoured by the currently executing context. If it fails to relieve the
> GPU within the required timeout, the engine is reset and the miscreant
> forcibly evicted.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  lib/i915/gem_context.c             |  41 ++++
>  lib/i915/gem_context.h             |   2 +
>  lib/i915/gem_engine_topology.c     |  48 +++++
>  lib/i915/gem_engine_topology.h     |   3 +
>  tests/Makefile.sources             |   3 +
>  tests/i915/sysfs_preempt_timeout.c | 309 +++++++++++++++++++++++++++++
>  tests/meson.build                  |   1 +
>  7 files changed, 407 insertions(+)
>  create mode 100644 tests/i915/sysfs_preempt_timeout.c
> 
> diff --git a/lib/i915/gem_context.c b/lib/i915/gem_context.c
> index 0b6a554df..fc874a187 100644
> --- a/lib/i915/gem_context.c
> +++ b/lib/i915/gem_context.c
> @@ -462,3 +462,44 @@ bool gem_context_has_engine(int fd, uint32_t ctx, uint64_t engine)
>  
>  	return __gem_execbuf(fd, &execbuf) == -ENOENT;
>  }
> +
> +static int create_ext_ioctl(int i915,
> +			    struct drm_i915_gem_context_create_ext *arg)
> +{
> +	int err;
> +
> +	err = 0;
> +	if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, arg)) {
> +		err = -errno;
> +		igt_assume(err);
> +	}
> +
> +	errno = 0;
> +	return err;
> +}
> +
> +uint32_t gem_context_create_for_engine(int i915, unsigned int class, unsigned int inst)
> +{
> +	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 1) = {
> +		.engines = { { .engine_class = class, .engine_instance = inst } }
> +	};
> +	struct drm_i915_gem_context_create_ext_setparam p_engines = {
> +		.base = {
> +			.name = I915_CONTEXT_CREATE_EXT_SETPARAM,
> +			.next_extension = 0, /* end of chain */
> +		},
> +		.param = {
> +			.param = I915_CONTEXT_PARAM_ENGINES,
> +			.value = to_user_pointer(&engines),
> +			.size = sizeof(engines),
> +		},
> +	};
> +	struct drm_i915_gem_context_create_ext create = {
> +		.flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
> +		.extensions = to_user_pointer(&p_engines),
> +	};
> +
> +	igt_assert_eq(create_ext_ioctl(i915, &create), 0);
> +	igt_assert_neq(create.ctx_id, 0);
> +	return create.ctx_id;
> +}
> diff --git a/lib/i915/gem_context.h b/lib/i915/gem_context.h
> index cf2ba33fe..ded75bb9c 100644
> --- a/lib/i915/gem_context.h
> +++ b/lib/i915/gem_context.h
> @@ -34,6 +34,8 @@ int __gem_context_create(int fd, uint32_t *ctx_id);
>  void gem_context_destroy(int fd, uint32_t ctx_id);
>  int __gem_context_destroy(int fd, uint32_t ctx_id);
>  
> +uint32_t gem_context_create_for_engine(int fd, unsigned int class, unsigned int inst);
> +
>  int __gem_context_clone(int i915,
>  			uint32_t src, unsigned int share,
>  			unsigned int flags,
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index 058983123..81faf3c15 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -22,6 +22,8 @@
>   */
>  
>  #include <fcntl.h>
> +#include <sys/stat.h>
> +#include <sys/syscall.h>
>  #include <unistd.h>
>  
>  #include "drmtest.h"
> @@ -415,3 +417,49 @@ uint32_t gem_engine_mmio_base(int i915, const char *engine)
>  
>  	return mmio;
>  }
> +
> +void dyn_sysfs_engines(int i915, int engines, const char *file,
> +		       void (*test)(int, int))
> +{
> +	char buf[512];
> +	int len;
> +
> +	lseek(engines, 0, SEEK_SET);
> +	while ((len = syscall(SYS_getdents64, engines, buf, sizeof(buf))) > 0) {
> +		void *ptr = buf;
> +
> +		while (len) {
> +			struct linux_dirent64 {
> +				ino64_t        d_ino;
> +				off64_t        d_off;
> +				unsigned short d_reclen;
> +				unsigned char  d_type;
> +				char           d_name[];
> +			} *de = ptr;
> +			char *name;
> +			int engine;
> +
> +			ptr += de->d_reclen;
> +			len -= de->d_reclen;
> +
> +			engine = openat(engines, de->d_name, O_RDONLY);
> +			name = igt_sysfs_get(engine, "name");
> +			if (!name) {
> +				close(engine);
> +				continue;
> +			}
> +
> +			igt_dynamic(name) {
> +				if (file) {
> +					struct stat st;
> +
> +					igt_require(fstatat(engine, file, &st, 0) == 0);
> +				}
> +
> +				test(i915, engine);
> +			}
> +
> +			close(engine);
> +		}
> +	}
> +}
> diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
> index 7a2e21f66..456c806f5 100644
> --- a/lib/i915/gem_engine_topology.h
> +++ b/lib/i915/gem_engine_topology.h
> @@ -77,4 +77,7 @@ int gem_engine_property_scanf(int i915, const char *engine, const char *attr,
>  			      const char *fmt, ...);
>  uint32_t gem_engine_mmio_base(int i915, const char *engine);
>  
> +void dyn_sysfs_engines(int i915, int engines, const char *file,
> +		       void (*test)(int i915, int engine));
> +
>  #endif /* GEM_ENGINE_TOPOLOGY_H */
> diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> index 7c5693457..fc9e04e97 100644
> --- a/tests/Makefile.sources
> +++ b/tests/Makefile.sources
> @@ -102,6 +102,9 @@ TESTS_progs = \
>  	vgem_slow \
>  	$(NULL)
>  
> +TESTS_progs += sysfs_preempt_timeout
> +sysfs_preempt_timeout_SOURCES = i915/sysfs_preempt_timeout

Your .c dropped off.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
