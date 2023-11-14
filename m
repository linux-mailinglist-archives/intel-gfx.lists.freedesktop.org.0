Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2A57EAE95
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 12:06:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF1210E204;
	Tue, 14 Nov 2023 11:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86DBF10E1FE;
 Tue, 14 Nov 2023 11:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699960009; x=1731496009;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ED4qeN413K5mMaalFzUaQpnRJCyeAIpYZxUrfnwAsNY=;
 b=Zqy05YKZhntmrpvwYmAS3o6D6pHofxmNuH6quYU98iUHYnVa12EUxWm2
 M58FZ8dOSy/eNaglvsKkqgtWRdFAP0LaYqYXVL+Km07+9Ut2zDlV/ga89
 /4WvQICxIEHHqaPnVL+jqA8vIronJEBQjbGh4qTtikwy1tWiPto1ynNEM
 JWN68m3/rjahcz3Ve2J1/uUPfoNHil9dmfyRxHBOr//Sfh0pObpSPXhgv
 ufzVGYsCdO2CSQXNSH7J0gMNGPnDjckCyj2quq+czht5WS9vezHsx/KZ2
 ZiQATY8fcNYpcRY7oLIX5Iwb95s7PBOF3aotTKZALKfJJQInqOW3LyNoq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="387796031"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="387796031"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 03:06:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="758142091"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="758142091"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 14 Nov 2023 03:06:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Nov 2023 13:06:45 +0200
Date: Tue, 14 Nov 2023 13:06:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: maarten.lankhorst@linux.intel.com
Message-ID: <ZVNUxZzCGcxQzqJX@intel.com>
References: <20231002193847.7134-1-maarten.lankhorst@linux.intel.com>
 <20231002193847.7134-11-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231002193847.7134-11-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 11/14] ALSA: hda/intel: Move
 snd_hdac_i915_init to before probe_work.
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, alsa-devel@alsa-project.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 02, 2023 at 09:38:44PM +0200, maarten.lankhorst@linux.intel.com wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> 
> Now that we can use -EPROBE_DEFER, it's no longer required to spin off
> the snd_hdac_i915_init into a workqueue.
> 
> Use the -EPROBE_DEFER mechanism instead, which must be returned in the
> probe function.

This completely broke i915 audio!

I also can't see any trace of this stuff ever being posted to 
intel-gfx so it never went through the CI.

Please fix or revert ASAP.

> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  sound/pci/hda/hda_intel.c | 54 +++++++++++++++++++--------------------
>  1 file changed, 27 insertions(+), 27 deletions(-)
> 
> diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
> index e42ad0e816e1..9dad3607596a 100644
> --- a/sound/pci/hda/hda_intel.c
> +++ b/sound/pci/hda/hda_intel.c
> @@ -2135,6 +2135,33 @@ static int azx_probe(struct pci_dev *pci,
>  
>  	pci_set_drvdata(pci, card);
>  
> +#ifdef CONFIG_SND_HDA_I915
> +	/* bind with i915 if needed */
> +	if (chip->driver_caps & AZX_DCAPS_I915_COMPONENT) {
> +		err = snd_hdac_i915_init(azx_bus(chip), false);
> +		if (err < 0) {
> +			/* if the controller is bound only with HDMI/DP
> +			 * (for HSW and BDW), we need to abort the probe;
> +			 * for other chips, still continue probing as other
> +			 * codecs can be on the same link.
> +			 */
> +			if (HDA_CONTROLLER_IN_GPU(pci)) {
> +				goto out_free;
> +			} else {
> +				/* don't bother any longer */
> +				chip->driver_caps &= ~AZX_DCAPS_I915_COMPONENT;
> +			}
> +		}
> +
> +		/* HSW/BDW controllers need this power */
> +		if (HDA_CONTROLLER_IN_GPU(pci))
> +			hda->need_i915_power = true;
> +	}
> +#else
> +	if (HDA_CONTROLLER_IN_GPU(pci))
> +		dev_err(card->dev, "Haswell/Broadwell HDMI/DP must build in CONFIG_SND_HDA_I915\n");
> +#endif
> +
>  	err = register_vga_switcheroo(chip);
>  	if (err < 0) {
>  		dev_err(card->dev, "Error registering vga_switcheroo client\n");
> @@ -2162,11 +2189,6 @@ static int azx_probe(struct pci_dev *pci,
>  	}
>  #endif /* CONFIG_SND_HDA_PATCH_LOADER */
>  
> -#ifndef CONFIG_SND_HDA_I915
> -	if (HDA_CONTROLLER_IN_GPU(pci))
> -		dev_err(card->dev, "Haswell/Broadwell HDMI/DP must build in CONFIG_SND_HDA_I915\n");
> -#endif
> -
>  	if (schedule_probe)
>  		schedule_delayed_work(&hda->probe_work, 0);
>  
> @@ -2264,28 +2286,6 @@ static int azx_probe_continue(struct azx *chip)
>  	to_hda_bus(bus)->bus_probing = 1;
>  	hda->probe_continued = 1;
>  
> -	/* bind with i915 if needed */
> -	if (chip->driver_caps & AZX_DCAPS_I915_COMPONENT) {
> -		err = snd_hdac_i915_init(bus, true);
> -		if (err < 0) {
> -			/* if the controller is bound only with HDMI/DP
> -			 * (for HSW and BDW), we need to abort the probe;
> -			 * for other chips, still continue probing as other
> -			 * codecs can be on the same link.
> -			 */
> -			if (HDA_CONTROLLER_IN_GPU(pci)) {
> -				goto out_free;
> -			} else {
> -				/* don't bother any longer */
> -				chip->driver_caps &= ~AZX_DCAPS_I915_COMPONENT;
> -			}
> -		}
> -
> -		/* HSW/BDW controllers need this power */
> -		if (HDA_CONTROLLER_IN_GPU(pci))
> -			hda->need_i915_power = true;
> -	}
> -
>  	/* Request display power well for the HDA controller or codec. For
>  	 * Haswell/Broadwell, both the display HDA controller and codec need
>  	 * this power. For other platforms, like Baytrail/Braswell, only the
> -- 
> 2.40.1

-- 
Ville Syrjälä
Intel
