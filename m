Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B48935F115
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97466E916;
	Wed, 14 Apr 2021 09:52:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A57766E916;
 Wed, 14 Apr 2021 09:52:28 +0000 (UTC)
IronPort-SDR: pn0pl+A4GY1DxnwOOgBIxVFELPIyyGLr6h1/VI36pUWK2c4ApVgIPSESkIJkyq4EJynucZ4Iz+
 nYMlinN3GU3g==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194717301"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="194717301"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:52:27 -0700
IronPort-SDR: 4er8Vlmf01XqT7UEPI8iMQE4ovCTyEvvV+utlftNPEeaiS1FVlprxCpkIqvuYOt9EERh97TMj1
 QYugfgzJQQaw==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="424656000"
Received: from mbernato-z370.igk.intel.com ([10.102.30.7])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:52:26 -0700
Message-ID: <8be9557312e7cfb27738766dcfbc498d1e0e10b5.camel@linux.intel.com>
From: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>, 
 igt-dev@lists.freedesktop.org
Date: Wed, 14 Apr 2021 09:50:10 +0000
In-Reply-To: <20210408083157.23014-1-janusz.krzysztofik@linux.intel.com>
References: <20210408083157.23014-1-janusz.krzysztofik@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] tests/core_hotunplug: Add perf
 health check
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2021-04-08 at 10:31 +0200, Janusz Krzysztofik wrote:
> Sometimes CI reports skips of perf subtests when run subsequently
> after
> core_hotunplug.  That may be an indication of issues with restoring
> device perf features on driver (hot)rebind.
> 
> Detect device perf support at test start and check if still available
> after driver rebind.  If that fails, a post-subtest device recovery
> step restores the device perf support so no subsequently executed
> tests
> are affected.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com
> >
> ---
>  tests/core_hotunplug.c | 22 ++++++++++++++++++++++
>  tests/meson.build      |  8 +++++++-
>  2 files changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index 56a88fefd..06f15d845 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -31,6 +31,7 @@
>  #include <unistd.h>
>  
>  #include "i915/gem.h"
> +#include "i915/perf.h"
>  #include "igt.h"
>  #include "igt_device_scan.h"
>  #include "igt_kmod.h"
> @@ -50,6 +51,7 @@ struct hotunplug {
>  	const char *dev_bus_addr;
>  	const char *failure;
>  	bool need_healthcheck;
> +	bool has_intel_perf;
>  };
>  
>  /* Helpers */
> @@ -319,6 +321,16 @@ static int local_i915_recover(int i915)
>  	return local_i915_healthcheck(i915, "post-");
>  }
>  
> +static bool local_i915_perf_healthcheck(int i915)
> +{
> +	struct intel_perf *intel_perf;
> +
> +	intel_perf = intel_perf_for_fd(i915);
> +	if (intel_perf)
> +		intel_perf_free(intel_perf);
> +	return intel_perf;
> +}
> +
>  #define FLAG_RENDER	(1 << 0)
>  #define FLAG_RECOVER	(1 << 1)
>  static void node_healthcheck(struct hotunplug *priv, unsigned flags)
> @@ -360,6 +372,13 @@ static void node_healthcheck(struct hotunplug
> *priv, unsigned flags)
>  		}
>  	}
>  
> +	if (!priv->failure && priv->has_intel_perf) {
> +		local_debug("%s\n", "running i915 device perf
> healthcheck");
> +		priv->failure = "Device perf healthckeck failure!";
> +		if (local_i915_perf_healthcheck(fd_drm))
> +			priv->failure = NULL;
> +	}
> +
>  	fd_drm = close_device(fd_drm, "", "health checked ");
>  	if (closed || fd_drm < -1)	/* update status for
> post_healthcheck */
>  		priv->fd.drm_hc = fd_drm;
> @@ -553,6 +572,7 @@ igt_main
>  		.fd		= { .drm = -1, .drm_hc = -1,
> .sysfs_dev = -1, },
>  		.failure	= NULL,
>  		.need_healthcheck = true,
> +		.has_intel_perf = false,
>  	};
>  
>  	igt_fixture {
> @@ -567,6 +587,8 @@ igt_main
>  			gem_quiescent_gpu(fd_drm);
>  			igt_require_gem(fd_drm);
>  
> +			priv.has_intel_perf =
> local_i915_perf_healthcheck(fd_drm);
> +
>  			/**
>  			 * FIXME: Unbinding the i915 driver on some
> Haswell
>  			 * platforms with Azalia audio results in a
> kernel WARN
> diff --git a/tests/meson.build b/tests/meson.build
> index 3e3db7d5b..3f6dc4fe3 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -3,7 +3,6 @@ test_progs = [
>  	'core_getclient',
>  	'core_getstats',
>  	'core_getversion',
> -	'core_hotunplug',
>  	'core_setmaster',
>  	'core_setmaster_vs_auth',
>  	'debugfs_test',
> @@ -361,6 +360,13 @@ test_executables += executable('perf',
>  	   install : true)
>  test_list += 'perf'
>  
> +test_executables += executable('core_hotunplug', 'core_hotunplug.c',
> +	   dependencies : test_deps + [ lib_igt_i915_perf ],
> +	   install_dir : libexecdir,
> +	   install_rpath : libexecdir_rpathdir,
> +	   install : true)
> +test_list += 'core_hotunplug'
> +
>  executable('testdisplay', ['testdisplay.c',
> 'testdisplay_hotplug.c'],
>  	   dependencies : test_deps,
>  	   install_dir : libexecdir,
LGTM,
Acked-by: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
