Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B115FC41D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 13:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABB610E3E7;
	Wed, 12 Oct 2022 11:09:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB95B10E3F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 11:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665572936; x=1697108936;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Wl99qAwE+6IS4Szn4r6VmvL31a6M5h95NBYB5fxOEus=;
 b=UgkG7SCpvK9MID4pxwqMe3+eUHdTQBFLvlcxqBmlbPeQBGd2PmRUBMy8
 vv++8lHiqZz7CVUCMuqO5uorOEToCyGjvJHC8VjmdD8NL/3oXMkB29v/3
 M0E6qtqJq56b045Pt77SRn2Gtft40vehpzHkyAGK3qsqWuQp8w627N+J4
 R/KglDFFz6efwYOtpwrsJ0+mV8+K9jp+EfJrMtHeLotERZF4v2crRWQwo
 VrPeEeDwB8xOP88tcjpKk/zdn/Ks2RBfMiNDlA+P3oG3qWhyGrcif4g2b
 BTlxLwhG+c2w/Co4zkAtfFyzozOkOlOszcOxthFXFiKjSLIuwzXvNYNlQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302376417"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="302376417"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 04:08:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="715882423"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="715882423"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2022 04:08:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Oct 2022 14:08:53 +0300
Date: Wed, 12 Oct 2022 14:08:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y0agRYHsjTfGdKwo@intel.com>
References: <20221011170011.17198-23-ville.syrjala@linux.intel.com>
 <20221012104936.30911-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221012104936.30911-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 22/22] drm/i915/audio: Resume HSW/BDW HDA
 controller around ELD access
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 12, 2022 at 01:49:36PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On HSW/BDW the hardware ELD buffer does not work if the controller
> is suspended. I'm not 100% which thing in there is needed to make it
> work (at least just forcing the controller into D0 with setpci is
> not enough). But a full runtime resume seems to do the trick here
> at least, and so far it looks like this doesn't even deadlock or
> anything.
> 
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 38 ++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 328c47719fd8..467f3f260969 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -23,6 +23,7 @@
>  
>  #include <linux/component.h>
>  #include <linux/kernel.h>
> +#include <linux/pm_runtime.h>
>  
>  #include <drm/drm_edid.h>
>  #include <drm/i915_component.h>
> @@ -480,6 +481,16 @@ hsw_audio_config_update(struct intel_encoder *encoder,
>  		hsw_hdmi_audio_config_update(encoder, crtc_state);
>  }
>  
> +static struct pci_dev *hsw_hda_controller(struct drm_i915_private *i915)
> +{
> +	int domain = pci_domain_nr(to_pci_dev(i915->drm.dev)->bus);
> +
> +	if (!IS_HASWELL(i915) && !IS_BROADWELL(i915))
> +		return NULL;
> +
> +	return pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(3, 0));
> +}
> +
>  static int hsw_eld_buffer_size(struct drm_i915_private *i915,
>  			       enum transcoder cpu_transcoder)
>  {
> @@ -497,8 +508,14 @@ static void hsw_audio_codec_get_config(struct intel_encoder *encoder,
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 *eld = (u32 *)crtc_state->eld;
>  	int eld_buffer_size, len, i;
> +	struct pci_dev *hsw_hdac;
>  	u32 tmp;
>  
> +	/* on HSW/BDW ELD access doesn't work if the HDA controller is supended */
> +	hsw_hdac = hsw_hda_controller(i915);
> +	if (hsw_hdac)
> +		pm_runtime_get_sync(&hsw_hdac->dev);
> +
>  	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
>  	if ((tmp & AUDIO_ELD_VALID(cpu_transcoder)) == 0)
>  		return;
> @@ -511,6 +528,9 @@ static void hsw_audio_codec_get_config(struct intel_encoder *encoder,
>  
>  	for (i = 0; i < len; i++)
>  		eld[i] = intel_de_read(i915, HSW_AUD_EDID_DATA(cpu_transcoder));
> +
> +	if (hsw_hdac)
> +		pm_runtime_put(&hsw_hdac->dev);

Maybe these should be put_autosuspend()? Shrug. The runtime pm api
remains as impenetrable as ever.

-- 
Ville Syrjälä
Intel
