Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F1415082C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 15:15:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C551F6EC07;
	Mon,  3 Feb 2020 14:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68646EC07
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 14:15:00 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 06:15:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="234673849"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 03 Feb 2020 06:14:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Feb 2020 16:14:56 +0200
Date: Mon, 3 Feb 2020 16:14:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200203141456.GE13686@intel.com>
References: <20200203093110.4138277-1-chris@chris-wilson.co.uk>
 <20200203131723.GC24673@ideak-desk.fi.intel.com>
 <158073636146.20090.9353332253775822958@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158073636146.20090.9353332253775822958@skylake-alporthouse-com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 03, 2020 at 01:26:01PM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2020-02-03 13:17:23)
> > On Mon, Feb 03, 2020 at 09:31:08AM +0000, Chris Wilson wrote:
> > > To write to the DISPLAY_PHY_CONTROL requires holding the powerwells,
> > > which during early resume we have not yet acquired until later in
> > > intel_display_power_init_hw(). So compute the initial chv_phy_control,
> > > but leave the HW unset until we first acquire the powerwell.
> > > =

> > > <7> [120.055984] i915 0000:00:02.0: [drm:intel_power_domains_init_hw =
[i915]] rawclk rate: 200000 kHz
> > > <4> [120.056381] ------------[ cut here ]------------
> > > <4> [120.056621] i915 0000:00:02.0: Unclaimed write to register 0x1e0=
100
> > > <4> [120.056924] WARNING: CPU: 1 PID: 164 at drivers/gpu/drm/i915/int=
el_uncore.c:1166 __unclaimed_reg_debug+0x69/0x80 [i915]
> > > <4> [120.056935] Modules linked in: vgem snd_hda_codec_hdmi snd_hda_c=
odec_realtek snd_hda_codec_generic btusb btrtl btbcm btintel i915 bluetooth=
 coretemp crct10dif_pclmul crc32_pclmul snd_hda_intel snd_intel_dspcfg snd_=
hda_codec ghash_clmulni_intel snd_hwdep ecdh_generic ecc snd_hda_core r8169=
 snd_pcm lpc_ich realtek pinctrl_cherryview i2c_designware_pci prime_numbers
> > > <4> [120.057027] CPU: 1 PID: 164 Comm: kworker/u4:3 Tainted: G     U =
           5.5.0-CI-CI_DRM_7854+ #1
> > > <4> [120.057038] Hardware name:  /NUC5CPYB, BIOS PYBSWCEL.86A.0055.20=
16.0812.1130 08/12/2016
> > > <4> [120.057058] Workqueue: events_unbound async_run_entry_fn
> > > <4> [120.057275] RIP: 0010:__unclaimed_reg_debug+0x69/0x80 [i915]
> > > <4> [120.057289] Code: 48 8b 78 18 48 8b 5f 50 48 85 db 74 2d e8 1f a=
0 3f e1 45 89 e8 48 89 e9 48 89 da 48 89 c6 48 c7 c7 00 8c 48 a0 e8 67 82 d=
f e0 <0f> 0b 83 2d ce e2 2b 00 01 5b 5d 41 5c 41 5d c3 48 8b 1f eb ce 66
> > > <4> [120.057301] RSP: 0018:ffffc90000bcfd08 EFLAGS: 00010082
> > > <4> [120.057315] RAX: 0000000000000000 RBX: ffff888079919b60 RCX: 000=
0000000000003
> > > <4> [120.057326] RDX: 0000000080000003 RSI: 0000000000000000 RDI: 000=
00000ffffffff
> > > <4> [120.057336] RBP: ffffffffa04c9f4e R08: 0000000000000000 R09: 000=
0000000000001
> > > <4> [120.057348] R10: 0000000025c3d560 R11: 000000006815f798 R12: 000=
0000000000000
> > > <4> [120.057359] R13: 00000000001e0100 R14: 0000000000000286 R15: fff=
fffff8234a76b
> > > <4> [120.057371] FS:  0000000000000000(0000) GS:ffff888074b00000(0000=
) knlGS:0000000000000000
> > > <4> [120.057382] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > <4> [120.057393] CR2: 000055f4197df0d8 CR3: 000000006f326000 CR4: 000=
00000001006e0
> > > <4> [120.057404] Call Trace:
> > > <4> [120.057635]  fwtable_write32+0x114/0x1d0 [i915]
> > > <4> [120.057892]  intel_power_domains_init_hw+0x4ff/0x650 [i915]
> > > <4> [120.058150]  intel_power_domains_resume+0x3d/0x70 [i915]
> > > <4> [120.058363]  i915_drm_resume_early+0x97/0xd0 [i915]
> > > <4> [120.058575]  ? i915_resume_switcheroo+0x30/0x30 [i915]
> > > <4> [120.058594]  dpm_run_callback+0x64/0x280
> > > <4> [120.058626]  device_resume_early+0xa7/0xe0
> > > <4> [120.058652]  async_resume_early+0x14/0x40
> > > =

> > > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1089
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++---
> > >  1 file changed, 2 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/dri=
vers/gpu/drm/i915/display/intel_display_power.c
> > > index 64943179c05e..492668d5a193 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -5163,11 +5163,10 @@ static void chv_phy_control_init(struct drm_i=
915_private *dev_priv)
> > >               dev_priv->chv_phy_assert[DPIO_PHY1] =3D true;
> > >       }
> > >  =

> > > -     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > > -                    dev_priv->chv_phy_control);
> > > -
> > >       drm_dbg_kms(&dev_priv->drm, "Initial PHY_CONTROL=3D0x%08x\n",
> > >                   dev_priv->chv_phy_control);
> > > +
> > > +     /* Defer application of initial phy_control to enabling the pow=
erwell */
> > =

> > Ok in case nothing was enabled, but if a cmn power well was enabled we
> > should still write it to enable power saving.
> =

> Would that be a good candidate for sync_hw?

Hmm, yeah moving the write into the chv pipe pw .sync_hw()
seems like a sensible idea to me.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
