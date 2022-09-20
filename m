Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4DE5BDC50
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 07:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B76D210E283;
	Tue, 20 Sep 2022 05:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E4310E27A;
 Tue, 20 Sep 2022 05:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663651425; x=1695187425;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+UjGH4Tov7Xnm6QKQkz2zkLegNyg4+dN4JBg7EsNajQ=;
 b=kv+BgKYtzcvA828NTQsQ8I7u8TDIk+ROCX7pKN9FRGOoUSH4Ac1KS4ot
 TpOK0NtfrvUI7tJEjzLJgHfB3iIZTb4vH3vH2DvIeJN7FGcTU/DlcUI00
 FxpMoaAlmY512YIW1cXbqalSd5ug7H23vy91jjdeQtbl3P6AeK0n8+yhw
 chTWNCDQ9+1vw72KXoWb6mRXvOsdoR6xYBDOizcrty+epZAfInB0mGOAJ
 IJI2A1Tt1EiaN0Q9br6jwlgC/txURrR/k9mAWt61C3Y684rkNcD/kqdc/
 9EShavvFWakgseAVL+z6FEh7CADoEcRJ8qyreDqOhIlMQwJY0OiCOHHJp A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="300976825"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="300976825"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 22:23:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="649439090"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 19 Sep 2022 22:23:45 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.59.34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 05BE6580713;
 Mon, 19 Sep 2022 22:23:43 -0700 (PDT)
Date: Tue, 20 Sep 2022 07:23:41 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20220920072341.57c0433b@maurocar-mobl2>
In-Reply-To: <20220913120441.146757-4-janusz.krzysztofik@linux.intel.com>
References: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
 <20220913120441.146757-4-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4] tests/core_hotunplug:
 Don't apply i915 workarounds on other platforms
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Sep 2022 14:04:40 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Starting from commit 0edabd8a4a08 ("core_hotunplug: fix audio unbind
> logic") audio modules are unloaded unconditionally before graphics driver
> unbind.  This is required for i915 to be unbound cleanly from a graphics
> device.  However, we have no indications that non-Intel platforms require
> the same.

Actually, there was a much more generic solution merged, but that depends
on a patch upstream to lib/module not applied. See:

	https://lore.kernel.org/all/cover.1651348913.git.mchehab@kernel.org/

So, we ended reverting the changes on this changeset:

	03706cd84099 ("lib/igt_kmod: remove the conditional audio removal code")

In any case, other drivers may have similar issues, if the audio driver
binds into the video driver. So, I would place any chipset-specific logic
for the current logic inside igt_audio_driver_unload(), as this will make it
more generic, as any other audio driver unbind needs will be self-contained
inside the library, and, if some day Kernel lib/modules.c gets fixed to
properly report bind (as proposed on my patchset), the library will get
the hack to have the snd-hda-intel name hardcoded on it, and the code
will work with any GPU/snd audio driver combination.

> Since we care for other platforms using this test and contributing to it,
> not developing their own, keep i915 workarounds limited to i915 devices.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/core_hotunplug.c | 58 +++++++++++++++++++++++-------------------
>  1 file changed, 32 insertions(+), 26 deletions(-)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index c3756889c2..29cb26ab12 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -55,6 +55,7 @@ struct hotunplug {
>  	bool need_healthcheck;
>  	bool has_intel_perf;
>   	char *snd_driver;
> +	int chipset;
>  };
>  
>  /* Helpers */
> @@ -140,19 +141,20 @@ static void prepare(struct hotunplug *priv)
>  static void driver_unbind(struct hotunplug *priv, const char *prefix,
>  			  int timeout)
>  {
> -	/*
> -	 * FIXME: on some devices, the audio driver (snd_hda_intel)
> -	 * binds into the i915 driver. On such hardware, kernel warnings
> -	 * and errors may happen if i915 is unbind/removed before removing
> -	 * first the audio driver.
> -	 * So, add a logic that unloads the audio driver before trying to
> -	 * unbind i915 driver, reloading it when binding again.
> -	 */
> -	if (igt_audio_driver_unload(&priv->snd_driver)) {
> -		igt_skip("Audio driver %s in use, skipping test\n",
> -			 priv->snd_driver);
> -	} else if (priv->snd_driver) {
> -		igt_info("Unloaded audio driver %s\n", priv->snd_driver);
> +	if (priv->chipset == DRIVER_INTEL) {
> +		/*
> +		 * FIXME: on some devices, the audio driver (snd_hda_intel)
> +		 * binds into the i915 driver. On such hardware, kernel warnings
> +		 * and errors may happen if i915 is unbind/removed before removing
> +		 * first the audio driver.
> +		 * So, add a logic that unloads the audio driver before trying to
> +		 * unbind i915 driver, reloading it when binding again.
> +		 */
> +		if (igt_audio_driver_unload(&priv->snd_driver))
> +			igt_skip("Audio driver %s in use, skipping test\n",
> +				 priv->snd_driver);
> +		else if (priv->snd_driver)
> +			igt_info("Unloaded audio driver %s\n", priv->snd_driver);
>  	}
>  
>  	local_debug("%sunbinding the driver from the device\n", prefix);
> @@ -198,19 +200,20 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
>  {
>  	igt_require(priv->fd.sysfs_dev == -1);
>  
> -	/*
> -	 * FIXME: on some devices, the audio driver (snd_hda_intel)
> -	 * binds into the i915 driver. On such hardware, kernel warnings
> -	 * and errors may happen if i915 is unbind/removed before removing
> -	 * first the audio driver.
> -	 * So, add a logic that unloads the audio driver before trying to
> -	 * unbind i915 driver, reloading it when binding again.
> -	 */
> -	if (igt_audio_driver_unload(&priv->snd_driver)) {
> -		igt_skip("Audio driver %s in use, skipping test\n",
> -			 priv->snd_driver);
> -	} else if (priv->snd_driver) {
> -		igt_info("Unloaded audio driver %s\n", priv->snd_driver);
> +	if (priv->chipset == DRIVER_INTEL) {
> +		/*
> +		 * FIXME: on some devices, the audio driver (snd_hda_intel)
> +		 * binds into the i915 driver. On such hardware, kernel warnings
> +		 * and errors may happen if i915 is unbind/removed before removing
> +		 * first the audio driver.
> +		 * So, add a logic that unloads the audio driver before trying to
> +		 * unbind i915 driver, reloading it when binding again.
> +		 */
> +		if (igt_audio_driver_unload(&priv->snd_driver))
> +			igt_skip("Audio driver %s in use, skipping test\n",
> +				 priv->snd_driver);
> +		else if (priv->snd_driver)
> +			igt_info("Unloaded audio driver %s\n", priv->snd_driver);
>  	}
>  
>  	priv->fd.sysfs_dev = openat(priv->fd.sysfs_bus, priv->dev_bus_addr,
> @@ -625,6 +628,7 @@ igt_main
>  		.need_healthcheck = true,
>  		.has_intel_perf = false,
>  		.snd_driver	= NULL,
> +		.chipset	= DRIVER_ANY,
>  	};
>  
>  	igt_fixture {
> @@ -634,6 +638,8 @@ igt_main
>  		igt_skip_on_f(fd_drm < 0, "No known DRM device found\n");
>  
>  		if (is_i915_device(fd_drm)) {
> +			priv.chipset = DRIVER_INTEL;
> +
>  			gem_quiescent_gpu(fd_drm);
>  			igt_require_gem(fd_drm);
>  
