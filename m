Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DEE3B1B74
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 15:45:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49EC06E8EC;
	Wed, 23 Jun 2021 13:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 807B46E8EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 13:45:04 +0000 (UTC)
IronPort-SDR: Exar2rAdKuplmpcO0sHbyxvAy0QdX0Fw4igmuCWE5EdD1FQUl3UpuRbh/COvWQ9ap+7/iZu/0G
 Sgk1TlhG9WAg==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="271108062"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="271108062"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:45:03 -0700
IronPort-SDR: fHLB9SLiv6H2/KE0oZC8aXHKanPMzUN49mZXNPYfxQuXfsnvNp/eff6ggO542LNNr0PWXQG1TR
 EUMsJbvhkvsg==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="454654755"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:44:58 -0700
Date: Wed, 23 Jun 2021 16:44:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20210623134455.GA1965681@ideak-desk.fi.intel.com>
References: <20210621174415.1721198-1-imre.deak@intel.com>
 <s5h5yy6q8yh.wl-tiwai@suse.de>
 <20210622195813.GE1749688@ideak-desk.fi.intel.com>
 <s5hzgvhngw6.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5hzgvhngw6.wl-tiwai@suse.de>
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda: Release display power reference
 during shutdown/reboot
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
Cc: Thomas Voegtle <tv@lio96.de>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 23, 2021 at 10:07:21AM +0200, Takashi Iwai wrote:
> On Tue, 22 Jun 2021 21:58:13 +0200,
> Imre Deak wrote:
> > 
> > On Tue, Jun 22, 2021 at 04:18:14PM +0200, Takashi Iwai wrote:
> > > On Mon, 21 Jun 2021 19:44:15 +0200,
> > > Imre Deak wrote:
> > > > 
> > > > Make sure the HDA driver's display power reference is released during
> > > > shutdown/reboot.
> > > > 
> > > > During the shutdown/reboot sequence the pci device core calls the
> > > > pm_runtime_resume handler for all devices before calling the driver's
> > > > shutdown callback and so the HDA driver's runtime resume callback will
> > > > acquire a display power reference (on HSW/BDW). This triggers a power
> > > > reference held WARN on HSW/BDW in the i915 driver's subsequent shutdown
> > > > handler, which expects all display power references to be released by
> > > > that time.
> > > > 
> > > > Since the HDA controller is stopped in the shutdown handler in any case,
> > > > let's follow here the same sequence as the one during runtime suspend.
> > > > This will also reset the HDA link and drop the display power reference,
> > > > getting rid of the above WARN.
> > > 
> > > As kbuild bot suggested, __azx_runtime_suspend() is defined only with
> > > CONFIG_PM.  We need either moving the function out of ifdef CONFIG_PM
> > > block, or having CONFIG_PM conditional call there.
> > 
> > Thanks, missed that. I think we need to drop the power ref in the !CONFIG_PM
> > case as well (since AFAICS then the ref is held after the device is probed), so
> > I'd move __azx_runtime_suspend() out of the CONFIG_PM block (and perhaps rename
> > it to azx_shutdown_chip).
> > 
> > > I myself have no much preference,  but maybe the latter can be easier
> > > to be cherry-picked to stable kernels.
> > 
> > To my knowledge this only fixes the book-keeping in the i915 driver, so
> > not sure if it's a stable material.
> > 
> > Trying things now with !CONFIG_PM, I noticed that the HDA codec would still
> > keep a separate power reference (which was dropped for me with CONFIG_PM, as
> > the codec was runtime suspended). To fix that we'd need something like the
> > following (on top of the above changes in a separate patch), any
> > comments on it?:
> 
> Adding the common dev_shutdown sounds a bit like overkill.
> Since it's just a missing shutdown handling in the hd-audio codec
> side, does the patch like below work instead?

Yes, makes sense, I missed that the codec driver has a shutdown hook
already:/ It also fixes the problem.

I wondered about the the 1. codec -> 2. i915 shutdown hook ordering
guarantee, but I think that's given by the device_link we add between
i915 and the HDA controller dev and the codec dev being located on the
HDA controller's bus.

> If this works, feel free to fold into your patch.

Ok, will send them as separate patches, if they look ok, could you merge
them via the audio tree?

Thanks for the review,
Imre

> thanks,
> 
> Takashi
> 
> ---
> diff --git a/sound/pci/hda/hda_bind.c b/sound/pci/hda/hda_bind.c
> index 17a25e453f60..e8dee24c309d 100644
> --- a/sound/pci/hda/hda_bind.c
> +++ b/sound/pci/hda/hda_bind.c
> @@ -167,8 +167,11 @@ static void hda_codec_driver_shutdown(struct device *dev)
>  {
>  	struct hda_codec *codec = dev_to_hda_codec(dev);
>  
> -	if (!pm_runtime_suspended(dev) && codec->patch_ops.reboot_notify)
> -		codec->patch_ops.reboot_notify(codec);
> +	if (!pm_runtime_suspended(dev)) {
> +		if (codec->patch_ops.reboot_notify)
> +			codec->patch_ops.reboot_notify(codec);
> +		snd_hda_codec_display_power(codec, false);
> +	}
>  }
>  
>  int __hda_codec_driver_register(struct hda_codec_driver *drv, const char *name,
> diff --git a/sound/pci/hda/hda_codec.c b/sound/pci/hda/hda_codec.c
> index 5462f771c2f9..7a717e151156 100644
> --- a/sound/pci/hda/hda_codec.c
> +++ b/sound/pci/hda/hda_codec.c
> @@ -798,7 +798,7 @@ static unsigned int hda_set_power_state(struct hda_codec *codec,
>  				unsigned int power_state);
>  
>  /* enable/disable display power per codec */
> -static void codec_display_power(struct hda_codec *codec, bool enable)
> +void snd_hda_codec_display_power(struct hda_codec *codec, bool enable)
>  {
>  	if (codec->display_power_control)
>  		snd_hdac_display_power(&codec->bus->core, codec->addr, enable);
> @@ -810,7 +810,7 @@ void snd_hda_codec_register(struct hda_codec *codec)
>  	if (codec->registered)
>  		return;
>  	if (device_is_registered(hda_codec_dev(codec))) {
> -		codec_display_power(codec, true);
> +		snd_hda_codec_display_power(codec, true);
>  		pm_runtime_enable(hda_codec_dev(codec));
>  		/* it was powered up in snd_hda_codec_new(), now all done */
>  		snd_hda_power_down(codec);
> @@ -836,7 +836,7 @@ static int snd_hda_codec_dev_free(struct snd_device *device)
>  	 */
>  	if (codec->core.type == HDA_DEV_LEGACY)
>  		snd_hdac_device_unregister(&codec->core);
> -	codec_display_power(codec, false);
> +	snd_hda_codec_display_power(codec, false);
>  
>  	/*
>  	 * In the case of ASoC HD-audio bus, the device refcount is released in
> @@ -2893,7 +2893,7 @@ static int hda_codec_runtime_suspend(struct device *dev)
>  	    (codec_has_clkstop(codec) && codec_has_epss(codec) &&
>  	     (state & AC_PWRST_CLK_STOP_OK)))
>  		snd_hdac_codec_link_down(&codec->core);
> -	codec_display_power(codec, false);
> +	snd_hda_codec_display_power(codec, false);
>  	return 0;
>  }
>  
> @@ -2905,7 +2905,7 @@ static int hda_codec_runtime_resume(struct device *dev)
>  	if (!codec->card)
>  		return 0;
>  
> -	codec_display_power(codec, true);
> +	snd_hda_codec_display_power(codec, true);
>  	snd_hdac_codec_link_up(&codec->core);
>  	hda_call_codec_resume(codec);
>  	pm_runtime_mark_last_busy(dev);
> diff --git a/sound/pci/hda/hda_local.h b/sound/pci/hda/hda_local.h
> index 4c5589c10f1d..8d2503e8dad8 100644
> --- a/sound/pci/hda/hda_local.h
> +++ b/sound/pci/hda/hda_local.h
> @@ -709,6 +709,8 @@ void snd_hdmi_write_eld_info(struct hdmi_eld *eld,
>  #define SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE 80
>  void snd_print_channel_allocation(int spk_alloc, char *buf, int buflen);
>  
> +void snd_hda_codec_display_power(struct hda_codec *codec, bool enable);
> +
>  /*
>   */
>  #define codec_err(codec, fmt, args...) \
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
