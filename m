Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB161506C2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:18:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE216E375;
	Mon,  3 Feb 2020 13:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5620E6E364
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:18:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 05:17:40 -0800
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="223934997"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 05:17:39 -0800
Date: Mon, 3 Feb 2020 15:17:23 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200203131723.GC24673@ideak-desk.fi.intel.com>
References: <20200203093110.4138277-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203093110.4138277-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Defer application of
 initial chv_phy_control
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
Reply-To: imre.deak@intel.com
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 03, 2020 at 09:31:08AM +0000, Chris Wilson wrote:
> To write to the DISPLAY_PHY_CONTROL requires holding the powerwells,
> which during early resume we have not yet acquired until later in
> intel_display_power_init_hw(). So compute the initial chv_phy_control,
> but leave the HW unset until we first acquire the powerwell.
> 
> <7> [120.055984] i915 0000:00:02.0: [drm:intel_power_domains_init_hw [i915]] rawclk rate: 200000 kHz
> <4> [120.056381] ------------[ cut here ]------------
> <4> [120.056621] i915 0000:00:02.0: Unclaimed write to register 0x1e0100
> <4> [120.056924] WARNING: CPU: 1 PID: 164 at drivers/gpu/drm/i915/intel_uncore.c:1166 __unclaimed_reg_debug+0x69/0x80 [i915]
> <4> [120.056935] Modules linked in: vgem snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic btusb btrtl btbcm btintel i915 bluetooth coretemp crct10dif_pclmul crc32_pclmul snd_hda_intel snd_intel_dspcfg snd_hda_codec ghash_clmulni_intel snd_hwdep ecdh_generic ecc snd_hda_core r8169 snd_pcm lpc_ich realtek pinctrl_cherryview i2c_designware_pci prime_numbers
> <4> [120.057027] CPU: 1 PID: 164 Comm: kworker/u4:3 Tainted: G     U            5.5.0-CI-CI_DRM_7854+ #1
> <4> [120.057038] Hardware name:  /NUC5CPYB, BIOS PYBSWCEL.86A.0055.2016.0812.1130 08/12/2016
> <4> [120.057058] Workqueue: events_unbound async_run_entry_fn
> <4> [120.057275] RIP: 0010:__unclaimed_reg_debug+0x69/0x80 [i915]
> <4> [120.057289] Code: 48 8b 78 18 48 8b 5f 50 48 85 db 74 2d e8 1f a0 3f e1 45 89 e8 48 89 e9 48 89 da 48 89 c6 48 c7 c7 00 8c 48 a0 e8 67 82 df e0 <0f> 0b 83 2d ce e2 2b 00 01 5b 5d 41 5c 41 5d c3 48 8b 1f eb ce 66
> <4> [120.057301] RSP: 0018:ffffc90000bcfd08 EFLAGS: 00010082
> <4> [120.057315] RAX: 0000000000000000 RBX: ffff888079919b60 RCX: 0000000000000003
> <4> [120.057326] RDX: 0000000080000003 RSI: 0000000000000000 RDI: 00000000ffffffff
> <4> [120.057336] RBP: ffffffffa04c9f4e R08: 0000000000000000 R09: 0000000000000001
> <4> [120.057348] R10: 0000000025c3d560 R11: 000000006815f798 R12: 0000000000000000
> <4> [120.057359] R13: 00000000001e0100 R14: 0000000000000286 R15: ffffffff8234a76b
> <4> [120.057371] FS:  0000000000000000(0000) GS:ffff888074b00000(0000) knlGS:0000000000000000
> <4> [120.057382] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [120.057393] CR2: 000055f4197df0d8 CR3: 000000006f326000 CR4: 00000000001006e0
> <4> [120.057404] Call Trace:
> <4> [120.057635]  fwtable_write32+0x114/0x1d0 [i915]
> <4> [120.057892]  intel_power_domains_init_hw+0x4ff/0x650 [i915]
> <4> [120.058150]  intel_power_domains_resume+0x3d/0x70 [i915]
> <4> [120.058363]  i915_drm_resume_early+0x97/0xd0 [i915]
> <4> [120.058575]  ? i915_resume_switcheroo+0x30/0x30 [i915]
> <4> [120.058594]  dpm_run_callback+0x64/0x280
> <4> [120.058626]  device_resume_early+0xa7/0xe0
> <4> [120.058652]  async_resume_early+0x14/0x40
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1089
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 64943179c05e..492668d5a193 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5163,11 +5163,10 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
>  		dev_priv->chv_phy_assert[DPIO_PHY1] = true;
>  	}
>  
> -	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> -		       dev_priv->chv_phy_control);
> -
>  	drm_dbg_kms(&dev_priv->drm, "Initial PHY_CONTROL=0x%08x\n",
>  		    dev_priv->chv_phy_control);
> +
> +	/* Defer application of initial phy_control to enabling the powerwell */

Ok in case nothing was enabled, but if a cmn power well was enabled we
should still write it to enable power saving.

>  }
>  
>  static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
> -- 
> 2.25.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
