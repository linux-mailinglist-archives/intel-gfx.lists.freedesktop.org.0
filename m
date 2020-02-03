Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 788001508F2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 16:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82A16E397;
	Mon,  3 Feb 2020 15:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F26BD6E397
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 15:00:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 06:54:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="263443530"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 03 Feb 2020 06:54:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Feb 2020 16:54:43 +0200
Date: Mon, 3 Feb 2020 16:54:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200203145443.GF13686@intel.com>
References: <20200201103159.3596604-1-chris@chris-wilson.co.uk>
 <20200203145016.216692-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203145016.216692-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Defer application of
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 03, 2020 at 02:50:16PM +0000, Chris Wilson wrote:
> To write to the DISPLAY_PHY_CONTROL requires holding the powerwells,
> which during early resume we have not yet acquired until later in
> intel_display_power_init_hw(). So compute the initial chv_phy_control,
> but leave the HW unset until we first acquire the powerwell.
> =

> <7> [120.055984] i915 0000:00:02.0: [drm:intel_power_domains_init_hw [i91=
5]] rawclk rate: 200000 kHz
> <4> [120.056381] ------------[ cut here ]------------
> <4> [120.056621] i915 0000:00:02.0: Unclaimed write to register 0x1e0100
> <4> [120.056924] WARNING: CPU: 1 PID: 164 at drivers/gpu/drm/i915/intel_u=
ncore.c:1166 __unclaimed_reg_debug+0x69/0x80 [i915]
> <4> [120.056935] Modules linked in: vgem snd_hda_codec_hdmi snd_hda_codec=
_realtek snd_hda_codec_generic btusb btrtl btbcm btintel i915 bluetooth cor=
etemp crct10dif_pclmul crc32_pclmul snd_hda_intel snd_intel_dspcfg snd_hda_=
codec ghash_clmulni_intel snd_hwdep ecdh_generic ecc snd_hda_core r8169 snd=
_pcm lpc_ich realtek pinctrl_cherryview i2c_designware_pci prime_numbers
> <4> [120.057027] CPU: 1 PID: 164 Comm: kworker/u4:3 Tainted: G     U     =
       5.5.0-CI-CI_DRM_7854+ #1
> <4> [120.057038] Hardware name:  /NUC5CPYB, BIOS PYBSWCEL.86A.0055.2016.0=
812.1130 08/12/2016
> <4> [120.057058] Workqueue: events_unbound async_run_entry_fn
> <4> [120.057275] RIP: 0010:__unclaimed_reg_debug+0x69/0x80 [i915]
> <4> [120.057289] Code: 48 8b 78 18 48 8b 5f 50 48 85 db 74 2d e8 1f a0 3f=
 e1 45 89 e8 48 89 e9 48 89 da 48 89 c6 48 c7 c7 00 8c 48 a0 e8 67 82 df e0=
 <0f> 0b 83 2d ce e2 2b 00 01 5b 5d 41 5c 41 5d c3 48 8b 1f eb ce 66
> <4> [120.057301] RSP: 0018:ffffc90000bcfd08 EFLAGS: 00010082
> <4> [120.057315] RAX: 0000000000000000 RBX: ffff888079919b60 RCX: 0000000=
000000003
> <4> [120.057326] RDX: 0000000080000003 RSI: 0000000000000000 RDI: 0000000=
0ffffffff
> <4> [120.057336] RBP: ffffffffa04c9f4e R08: 0000000000000000 R09: 0000000=
000000001
> <4> [120.057348] R10: 0000000025c3d560 R11: 000000006815f798 R12: 0000000=
000000000
> <4> [120.057359] R13: 00000000001e0100 R14: 0000000000000286 R15: fffffff=
f8234a76b
> <4> [120.057371] FS:  0000000000000000(0000) GS:ffff888074b00000(0000) kn=
lGS:0000000000000000
> <4> [120.057382] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [120.057393] CR2: 000055f4197df0d8 CR3: 000000006f326000 CR4: 0000000=
0001006e0
> <4> [120.057404] Call Trace:
> <4> [120.057635]  fwtable_write32+0x114/0x1d0 [i915]
> <4> [120.057892]  intel_power_domains_init_hw+0x4ff/0x650 [i915]
> <4> [120.058150]  intel_power_domains_resume+0x3d/0x70 [i915]
> <4> [120.058363]  i915_drm_resume_early+0x97/0xd0 [i915]
> <4> [120.058575]  ? i915_resume_switcheroo+0x30/0x30 [i915]
> <4> [120.058594]  dpm_run_callback+0x64/0x280
> <4> [120.058626]  device_resume_early+0xa7/0xe0
> <4> [120.058652]  async_resume_early+0x14/0x40
> =

> v2: Write our expected value of DISPLAY_PHY_CONTROL during sync_hw, so
> that it should always match the driver state after resume.
> =

> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1089
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 64943179c05e..b01e9c51da7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1780,6 +1780,13 @@ static void chv_set_pipe_power_well(struct drm_i91=
5_private *dev_priv,
>  	vlv_punit_put(dev_priv);
>  }
>  =

> +static void chv_pipe_power_well_sync_hw(struct drm_i915_private *dev_pri=
v,
> +				       struct i915_power_well *power_well)
> +{
> +	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> +		       dev_priv->chv_phy_control);

Done after the we grab the init domain, so should work now

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +}
> +
>  static void chv_pipe_power_well_enable(struct drm_i915_private *dev_priv,
>  				       struct i915_power_well *power_well)
>  {
> @@ -2762,7 +2769,7 @@ static const struct i915_power_well_ops i9xx_always=
_on_power_well_ops =3D {
>  };
>  =

>  static const struct i915_power_well_ops chv_pipe_power_well_ops =3D {
> -	.sync_hw =3D i9xx_power_well_sync_hw_noop,
> +	.sync_hw =3D chv_pipe_power_well_sync_hw,
>  	.enable =3D chv_pipe_power_well_enable,
>  	.disable =3D chv_pipe_power_well_disable,
>  	.is_enabled =3D chv_pipe_power_well_enabled,
> @@ -5163,11 +5170,10 @@ static void chv_phy_control_init(struct drm_i915_=
private *dev_priv)
>  		dev_priv->chv_phy_assert[DPIO_PHY1] =3D true;
>  	}
>  =

> -	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> -		       dev_priv->chv_phy_control);
> -
>  	drm_dbg_kms(&dev_priv->drm, "Initial PHY_CONTROL=3D0x%08x\n",
>  		    dev_priv->chv_phy_control);
> +
> +	/* Defer application of initial phy_control to enabling the powerwell */
>  }
>  =

>  static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
> -- =

> 2.25.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
