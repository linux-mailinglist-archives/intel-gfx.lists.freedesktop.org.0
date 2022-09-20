Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C08A5BDC09
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 07:06:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BFD710E272;
	Tue, 20 Sep 2022 05:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9050A10E272;
 Tue, 20 Sep 2022 05:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663650395; x=1695186395;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LeXsLZmiahkOSXbwuPC6ksPmdGKRDbHdAzw2PJNzDyI=;
 b=Tw4uhGIUDo0Fv57HkWxHg9gE4OLGcCe4CxN+pvVzZAlZWd5zlUdcmBL0
 cojxXTaY3prRO715zioEM3vyl1x63JTQBCIJKeJer5sYiizAMfUheEhxQ
 cV4xI7bnQLdi2ZaOeGurv32hsKrs6eq1Cmb5dLig8Mck8yzgdQxk1esMR
 R1coEx+iWkw78YnvCGCFK2m/vKxXZBOymZk7vBmw4pNSOadno+L8iP3W5
 U7KQc6DF3YRyvLO9CLML1ZENwEys6VfSJ42Q1mIr73lMQ4bU3nskwo8kH
 lKqSgB+wRf5i0DRF8OjM7cbh/ACq3dSahvKndxv0hoKaWvkfopxU/Mdjh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286645206"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="286645206"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 22:06:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="761157133"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2022 22:06:34 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.59.34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id D79D7580713;
 Mon, 19 Sep 2022 22:06:32 -0700 (PDT)
Date: Tue, 20 Sep 2022 07:06:30 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20220920070630.1f34dd9c@maurocar-mobl2>
In-Reply-To: <20220913120441.146757-3-janusz.krzysztofik@linux.intel.com>
References: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
 <20220913120441.146757-3-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] tests/core_hotunplug:
 Also unload audio before device unplug
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

On Tue, 13 Sep 2022 14:04:39 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Starting from commit e9c69e02b2f7 ("tests/core_hotunplug: Unload snd
> driver before i915 unbind") that replaced a former conservative workaround
> with a more liberal one but also moved it out of initial igt_fixture
> section to driver_unbind(), *plug* subtests (still blockisted in CI) can
> suffer from issues related to an audio driver using i915 hardware.  Fix it
> by adding a copy of the workaround in its current shape also to
> device_unplug() / bus_rescan() pair of functions.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>


> ---
>  tests/core_hotunplug.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index 733ea8efb0..c3756889c2 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -198,6 +198,21 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
>  {
>  	igt_require(priv->fd.sysfs_dev == -1);
>  
> +	/*
> +	 * FIXME: on some devices, the audio driver (snd_hda_intel)
> +	 * binds into the i915 driver. On such hardware, kernel warnings
> +	 * and errors may happen if i915 is unbind/removed before removing
> +	 * first the audio driver.
> +	 * So, add a logic that unloads the audio driver before trying to
> +	 * unbind i915 driver, reloading it when binding again.
> +	 */
> +	if (igt_audio_driver_unload(&priv->snd_driver)) {
> +		igt_skip("Audio driver %s in use, skipping test\n",
> +			 priv->snd_driver);
> +	} else if (priv->snd_driver) {
> +		igt_info("Unloaded audio driver %s\n", priv->snd_driver);
> +	}
> +
>  	priv->fd.sysfs_dev = openat(priv->fd.sysfs_bus, priv->dev_bus_addr,
>  				    O_DIRECTORY);
>  	igt_assert_fd(priv->fd.sysfs_dev);
> @@ -231,6 +246,13 @@ static void bus_rescan(struct hotunplug *priv, int timeout)
>  	igt_fail_on_f(faccessat(priv->fd.sysfs_bus, priv->dev_bus_addr,
>  				F_OK, 0),
>  		      "Fakely unplugged device not rediscovered (%s)!\n", priv->dev_bus_addr);
> +
> +	if (priv->snd_driver) {
> +		igt_info("Realoading %s\n", priv->snd_driver);
> +		igt_kmod_load(priv->snd_driver, NULL);
> +		free(priv->snd_driver);
> +		priv->snd_driver = NULL;
> +	}
>  }
>  
>  static void cleanup(struct hotunplug *priv)
