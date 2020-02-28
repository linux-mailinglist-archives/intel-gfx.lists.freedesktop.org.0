Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 219D617407A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 20:45:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FBE6F4BB;
	Fri, 28 Feb 2020 19:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05596F4BA;
 Fri, 28 Feb 2020 19:45:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 11:45:20 -0800
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="242470175"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 11:45:17 -0800
Date: Fri, 28 Feb 2020 11:45:16 -0800
From: "Stimson, Dale B" <dale.b.stimson@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200228194516.GA5485@dbstims-dev.fm.intel.com>
References: <20200228104340.2895082-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228104340.2895082-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/5] i915: Start putting the
 mmio_base to wider use
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

On 2020-02-28 10:43:36, Chris Wilson wrote:
> Several tests depend upon the implicit engine->mmio_base but have no
> means of determining the physical layout. Since the kernel has started
> providing this information, start putting it to use.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Dale B Stimson <dale.b.stimson@intel.com>

> ---
>  lib/i915/gem_engine_topology.c | 84 ++++++++++++++++++++++++++++++++++
>  lib/i915/gem_engine_topology.h |  5 ++
>  tests/i915/gem_ctx_shared.c    | 38 +++++----------
>  tests/i915/gem_exec_latency.c  | 17 ++++---
>  4 files changed, 111 insertions(+), 33 deletions(-)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index 58dff3208..640777ae4 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -21,7 +21,12 @@
>   * IN THE SOFTWARE.
>   */
>  
> +#include <fcntl.h>
> +#include <unistd.h>
> +
>  #include "drmtest.h"
> +#include "igt_sysfs.h"
> +#include "intel_chipset.h"
>  #include "ioctl_wrappers.h"
>  
>  #include "i915/gem_engine_topology.h"
> @@ -327,3 +332,82 @@ bool gem_engine_is_equal(const struct intel_execution_engine2 *e1,
>  {
>  	return e1->class == e2->class && e1->instance == e2->instance;
>  }
> +
> +static int descend(int dir, const char *path)
> +{
> +	int fd;
> +
> +	fd = openat(dir, path, O_RDONLY);
> +	close(dir);
> +
> +	return fd;
> +}
> +
> +int gem_engine_property_scanf(int i915, const char *engine, const char *attr,
> +			      const char *fmt, ...)
> +{
> +	FILE *file;
> +	va_list ap;
> +	int ret;
> +	int fd;
> +
> +	fd = igt_sysfs_open(i915);
> +	if (fd < 0)
> +		return fd;
> +
> +	fd = descend(fd, "engine");
> +	if (fd < 0)
> +		return fd;
> +
> +	fd = descend(fd, engine);
> +	if (fd < 0)
> +		return fd;
> +
> +	fd = descend(fd, attr);
> +	if (fd < 0)
> +		return fd;
> +
> +	file = fdopen(fd, "r");
> +	if (!file) {
> +		close(fd);
> +		return -1;
> +	}
> +
> +	va_start(ap, fmt);
> +	ret = vfscanf(file, fmt, ap);
> +	va_end(ap);
> +
> +	fclose(file);
> +	return ret;
> +}
> +
> +uint32_t gem_engine_mmio_base(int i915, const char *engine)
> +{
> +	unsigned int mmio = 0;
> +
> +	if (gem_engine_property_scanf(i915, engine, "mmio_base",
> +				      "%x", &mmio) < 0) {
> +		int gen = intel_gen(intel_get_drm_devid(i915));
> +
> +		/* The layout of xcs1+ is unreliable -- hence the property! */
> +		if (!strcmp(engine, "rcs0")) {
> +			mmio = 0x2000;
> +		} else if (!strcmp(engine, "bcs0")) {
> +			mmio = 0x22000;
> +		} else if (!strcmp(engine, "vcs0")) {
> +			if (gen < 6)
> +				mmio = 0x4000;
> +			else if (gen < 11)
> +				mmio = 0x12000;
> +			else
> +				mmio = 0x1c0000;
> +		} else if (!strcmp(engine, "vecs0")) {
> +			if (gen < 11)
> +				mmio = 0x1a000;
> +			else
> +				mmio = 0x1c8000;
> +		}
> +	}
> +
> +	return mmio;
> +}
> diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
> index 027d86be2..219c84b72 100644
> --- a/lib/i915/gem_engine_topology.h
> +++ b/lib/i915/gem_engine_topology.h
> @@ -75,4 +75,9 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags);
>  #define __for_each_physical_engine(fd__, e__) \
>  	____for_each_physical_engine(fd__, 0, e__)
>  
> +__attribute__((format(scanf, 4, 5)))
> +int gem_engine_property_scanf(int i915, const char *engine, const char *attr,
> +			      const char *fmt, ...);
> +uint32_t gem_engine_mmio_base(int i915, const char *engine);
> +
>  #endif /* GEM_ENGINE_TOPOLOGY_H */
> diff --git a/tests/i915/gem_ctx_shared.c b/tests/i915/gem_ctx_shared.c
> index 820b96c1a..9ea020d7b 100644
> --- a/tests/i915/gem_ctx_shared.c
> +++ b/tests/i915/gem_ctx_shared.c
> @@ -38,6 +38,7 @@
>  
>  #include <drm.h>
>  
> +#include "i915/gem_engine_topology.h"
>  #include "igt_rand.h"
>  #include "igt_vgem.h"
>  #include "sync_file.h"
> @@ -548,6 +549,14 @@ static uint32_t store_timestamp(int i915,
>  	return obj.handle;
>  }
>  
> +static uint32_t ring_base(int i915, unsigned ring)
> +{
> +	if (ring == I915_EXEC_DEFAULT)
> +		ring = I915_EXEC_RENDER; /* XXX */
> +
> +	return gem_engine_mmio_base(i915, gem_eb_flags_to_engine(ring).name);
> +}
> +
>  static void independent(int i915, unsigned ring, unsigned flags)
>  {
>  	const int TIMESTAMP = 1023;
> @@ -555,33 +564,8 @@ static void independent(int i915, unsigned ring, unsigned flags)
>  	igt_spin_t *spin[MAX_ELSP_QLEN];
>  	unsigned int mmio_base;
>  
> -	/* XXX i915_query()! */
> -	switch (ring) {
> -	case I915_EXEC_DEFAULT:
> -	case I915_EXEC_RENDER:
> -		mmio_base = 0x2000;
> -		break;
> -#if 0
> -	case I915_EXEC_BSD:
> -		mmio_base = 0x12000;
> -		break;
> -#endif
> -	case I915_EXEC_BLT:
> -		mmio_base = 0x22000;
> -		break;
> -
> -#define GEN11_VECS0_BASE 0x1c8000
> -#define GEN11_VECS1_BASE 0x1d8000
> -	case I915_EXEC_VEBOX:
> -		if (intel_gen(intel_get_drm_devid(i915)) >= 11)
> -			mmio_base = GEN11_VECS0_BASE;
> -		else
> -			mmio_base = 0x1a000;
> -		break;
> -
> -	default:
> -		igt_skip("mmio base not known\n");
> -	}
> +	mmio_base = ring_base(i915, ring);
> +	igt_require_f(mmio_base, "mmio base not known\n");
>  
>  	for (int n = 0; n < ARRAY_SIZE(spin); n++) {
>  		const struct igt_spin_factory opts = {
> diff --git a/tests/i915/gem_exec_latency.c b/tests/i915/gem_exec_latency.c
> index 3d99182a0..d2159f317 100644
> --- a/tests/i915/gem_exec_latency.c
> +++ b/tests/i915/gem_exec_latency.c
> @@ -109,7 +109,7 @@ poll_ring(int fd, unsigned ring, const char *name)
>  	igt_spin_free(fd, spin[0]);
>  }
>  
> -#define RCS_TIMESTAMP (0x2000 + 0x358)
> +#define TIMESTAMP (0x358)
>  static void latency_on_ring(int fd,
>  			    unsigned ring, const char *name,
>  			    unsigned flags)
> @@ -119,6 +119,7 @@ static void latency_on_ring(int fd,
>  	struct drm_i915_gem_exec_object2 obj[3];
>  	struct drm_i915_gem_relocation_entry reloc;
>  	struct drm_i915_gem_execbuffer2 execbuf;
> +	const uint32_t mmio_base = gem_engine_mmio_base(fd, name);
>  	igt_spin_t *spin = NULL;
>  	IGT_CORK_HANDLE(c);
>  	volatile uint32_t *reg;
> @@ -128,7 +129,8 @@ static void latency_on_ring(int fd,
>  	double gpu_latency;
>  	int i, j;
>  
> -	reg = (volatile uint32_t *)((volatile char *)igt_global_mmio + RCS_TIMESTAMP);
> +	igt_require(mmio_base);
> +	reg = (volatile uint32_t *)((volatile char *)igt_global_mmio + mmio_base + TIMESTAMP);
>  
>  	memset(&execbuf, 0, sizeof(execbuf));
>  	execbuf.buffers_ptr = to_user_pointer(&obj[1]);
> @@ -176,7 +178,7 @@ static void latency_on_ring(int fd,
>  		map[i++] = 0x24 << 23 | 1;
>  		if (has_64bit_reloc)
>  			map[i-1]++;
> -		map[i++] = RCS_TIMESTAMP; /* ring local! */
> +		map[i++] = mmio_base + TIMESTAMP;
>  		map[i++] = offset;
>  		if (has_64bit_reloc)
>  			map[i++] = offset >> 32;
> @@ -266,11 +268,14 @@ static void latency_from_ring(int fd,
>  	struct drm_i915_gem_exec_object2 obj[3];
>  	struct drm_i915_gem_relocation_entry reloc;
>  	struct drm_i915_gem_execbuffer2 execbuf;
> +	const uint32_t mmio_base = gem_engine_mmio_base(fd, name);
>  	const unsigned int repeats = ring_size / 2;
>  	uint32_t *map, *results;
>  	uint32_t ctx[2] = {};
>  	int i, j;
>  
> +	igt_require(mmio_base);
> +
>  	if (flags & PREEMPT) {
>  		ctx[0] = gem_context_create(fd);
>  		gem_context_set_priority(fd, ctx[0], -1023);
> @@ -351,7 +356,7 @@ static void latency_from_ring(int fd,
>  			map[i++] = 0x24 << 23 | 1;
>  			if (has_64bit_reloc)
>  				map[i-1]++;
> -			map[i++] = RCS_TIMESTAMP; /* ring local! */
> +			map[i++] = mmio_base + TIMESTAMP;
>  			map[i++] = offset;
>  			if (has_64bit_reloc)
>  				map[i++] = offset >> 32;
> @@ -376,7 +381,7 @@ static void latency_from_ring(int fd,
>  			map[i++] = 0x24 << 23 | 1;
>  			if (has_64bit_reloc)
>  				map[i-1]++;
> -			map[i++] = RCS_TIMESTAMP; /* ring local! */
> +			map[i++] = mmio_base + TIMESTAMP;
>  			map[i++] = offset;
>  			if (has_64bit_reloc)
>  				map[i++] = offset >> 32;
> @@ -669,7 +674,7 @@ igt_main
>  			ring_size = 1024;
>  
>  		intel_register_access_init(&mmio_data, intel_get_pci_device(), false, device);
> -		rcs_clock = clockrate(device, RCS_TIMESTAMP);
> +		rcs_clock = clockrate(device, 0x2000 + TIMESTAMP);
>  		igt_info("RCS timestamp clock: %.0fKHz, %.1fns\n",
>  			 rcs_clock / 1e3, 1e9 / rcs_clock);
>  		rcs_clock = 1e9 / rcs_clock;
> -- 
> 2.25.1
> 
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
