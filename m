Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D7428EE6A
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 10:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC246EC2E;
	Thu, 15 Oct 2020 08:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A906D6E0CC;
 Thu, 15 Oct 2020 08:23:42 +0000 (UTC)
IronPort-SDR: SNDF/Nx7wuTQv0hCCa4obb8CcQa7qxVB8TnlQuxxJJG85hVBOnYXQh3D3vjpLcCnFKk0hmLmWu
 EYlNWONgh8VA==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="145607573"
X-IronPort-AV: E=Sophos;i="5.77,378,1596524400"; d="scan'208";a="145607573"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 01:23:42 -0700
IronPort-SDR: gcHR9oSPX8zXFzAsfhQT2vXFmR1ceMD2a2L1UwMItRVzqwN2i9bQlKoAVzFQzHEvZpeFQz1giu
 Mp5vTylWJrfQ==
X-IronPort-AV: E=Sophos;i="5.77,378,1596524400"; d="scan'208";a="464204728"
Received: from mbernato-z370.igk.intel.com ([10.102.30.7])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 01:23:40 -0700
Message-ID: <19482560cb22b16f296d193284a8c700436b8362.camel@linux.intel.com>
From: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>, 
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 09:15:00 +0200
In-Reply-To: <20201013110234.17680-1-janusz.krzysztofik@linux.intel.com>
References: <20201013110234.17680-1-janusz.krzysztofik@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] tests/core_hotunplug:
 Restore i915 debugfs health check
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
Cc: Adam Miszczak <adam.miszczak@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-10-13 at 13:02 +0200, Janusz Krzysztofik wrote:
> Removal of igt_fork_hang_detector() from local_i915_healthcheck() by
> commit 1fbd127bd4e1 ("core_hotplug: Teach the healthcheck how to
> check
> execution status") resulted in unintentional removal of an important
> though implicit test feature of detecting, reporting as failures and
> recovering from potential misses of debugfs subdirs of hot rebound
> i915
> devices.  As a consequence, unexpected failures or skips of other
> unrelated but subsequently run tests have been observed on CI.
> 
> On the other hand, removal of the debugfs issue detection and subtest
> failures from right after hot rebinding the driver enabled the better
> version of the i915 GPU health check fixed by the same commit to
> detect
> and report other issues potentially triggered by device late close.
> 
> Restore the missing test feature by introducing an explicit sysfs
> health check, not limited to i915,  that verifies existence of device
> sysfs and debugfs areas.  Also, split hotrebind/hotreplug scenarios
> into a pair of each, one that performs the health check right after
> hot
> rebind/replug and delegates the device late close step to a follow up
> recovery phase, while the other one checks device health only after
> late closing it.
> 
> v2: Give GPU health check a better chance to detect issues - run it
>     before sysfs health checks.
> v3: Run sysfs health check on any hardware, not only i915.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com
> >
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
> Even if the root cause has occurred to be sitting on the IGT lib side
> and has been already fixed by commit 937526629344 ("lib: Don't fail
> debugfs lookup on an expected absent drm device"), I think we should
> restore the debugfs health check just in case new issues with similar
> symptoms appear in the future and start affecting subsequent tests
> silently.
> 
> Thanks,
> Janusz
> 
>  tests/core_hotunplug.c | 68 ++++++++++++++++++++++++++++++++++++++
> ----
>  1 file changed, 62 insertions(+), 6 deletions(-)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index 70669c590..cdc07c85d 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -308,7 +308,7 @@ static void node_healthcheck(struct hotunplug
> *priv, unsigned flags)
>  		priv->failure = "Unrecoverable test failure";
>  		if (local_i915_healthcheck(fd_drm, "") &&
>  		    (!(flags & FLAG_RECOVER) ||
> local_i915_recover(fd_drm)))
> -			priv->failure = "Healthcheck failure!";
> +			priv->failure = "GPU healthcheck failure!";
>  		else
>  			priv->failure = NULL;
>  
> @@ -317,6 +317,16 @@ static void node_healthcheck(struct hotunplug
> *priv, unsigned flags)
>  		priv->failure = NULL;
>  	}
>  
> +	if (!priv->failure) {
> +		char path[200];
> +
> +		priv->failure = "Device sysfs healthckeck failure!";
> +		local_debug("%s\n", "running device sysfs
> healthcheck");
> +		igt_assert(igt_sysfs_path(fd_drm, path, sizeof(path)));
> +		igt_assert(igt_debugfs_path(fd_drm, path,
> sizeof(path)));
> +		priv->failure = NULL;
> +	}
> +

LGTM,
Reviewed-by: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>

>  	fd_drm = close_device(fd_drm, "", "health checked ");
>  	if (closed || fd_drm < -1)	/* update status for
> post_healthcheck */
>  		priv->fd.drm_hc = fd_drm;
> @@ -437,7 +447,7 @@ static void hotunplug_rescan(struct hotunplug
> *priv)
>  	healthcheck(priv, false);
>  }
>  
> -static void hotrebind_lateclose(struct hotunplug *priv)
> +static void hotrebind(struct hotunplug *priv)
>  {
>  	igt_assert_eq(priv->fd.drm, -1);
>  	igt_assert_eq(priv->fd.drm_hc, -1);
> @@ -448,6 +458,30 @@ static void hotrebind_lateclose(struct hotunplug
> *priv)
>  	driver_bind(priv, 0);
>  
>  	healthcheck(priv, false);
> +}
> +
> +static void hotreplug(struct hotunplug *priv)
> +{
> +	igt_assert_eq(priv->fd.drm, -1);
> +	igt_assert_eq(priv->fd.drm_hc, -1);
> +	priv->fd.drm = local_drm_open_driver(false, "", " for hot
> replug");
> +
> +	device_unplug(priv, "hot ", 60);
> +
> +	bus_rescan(priv, 0);
> +
> +	healthcheck(priv, false);
> +}
> +
> +static void hotrebind_lateclose(struct hotunplug *priv)
> +{
> +	igt_assert_eq(priv->fd.drm, -1);
> +	igt_assert_eq(priv->fd.drm_hc, -1);
> +	priv->fd.drm = local_drm_open_driver(false, "", " for hot
> rebind");
> +
> +	driver_unbind(priv, "hot ", 60);
> +
> +	driver_bind(priv, 0);
>  
>  	priv->fd.drm = close_device(priv->fd.drm, "late ", "unbound ");
>  	igt_assert_eq(priv->fd.drm, -1);
> @@ -465,8 +499,6 @@ static void hotreplug_lateclose(struct hotunplug
> *priv)
>  
>  	bus_rescan(priv, 0);
>  
> -	healthcheck(priv, false);
> -
>  	priv->fd.drm = close_device(priv->fd.drm, "late ", "removed ");
>  	igt_assert_eq(priv->fd.drm, -1);
>  
> @@ -570,7 +602,31 @@ igt_main
>  		post_healthcheck(&priv);
>  
>  	igt_subtest_group {
> -		igt_describe("Check if the driver hot unbound from a
> still open device can be cleanly rebound, then the old instance
> released");
> +		igt_describe("Check if the driver can be cleanly
> rebound to a device with a still open hot unbound driver instance");
> +		igt_subtest("hotrebind")
> +			hotrebind(&priv);
> +
> +		igt_fixture
> +			recover(&priv);
> +	}
> +
> +	igt_fixture
> +		post_healthcheck(&priv);
> +
> +	igt_subtest_group {
> +		igt_describe("Check if a hot unplugged and still open
> device can be cleanly restored");
> +		igt_subtest("hotreplug")
> +			hotreplug(&priv);
> +
> +		igt_fixture
> +			recover(&priv);
> +	}
> +
> +	igt_fixture
> +		post_healthcheck(&priv);
> +
> +	igt_subtest_group {
> +		igt_describe("Check if a hot unbound driver instance
> still open after hot rebind can be cleanly released");
>  		igt_subtest("hotrebind-lateclose")
>  			hotrebind_lateclose(&priv);
>  
> @@ -582,7 +638,7 @@ igt_main
>  		post_healthcheck(&priv);
>  
>  	igt_subtest_group {
> -		igt_describe("Check if a still open while hot unplugged
> device can be cleanly restored, then the old instance released");
> +		igt_describe("Check if an instance of a still open
> while hot replugged device can be cleanly released");
>  		igt_subtest("hotreplug-lateclose")
>  			hotreplug_lateclose(&priv);
>  

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
