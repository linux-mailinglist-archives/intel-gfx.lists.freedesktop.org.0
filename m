Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D132B8CEB
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 09:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8578A6E505;
	Thu, 19 Nov 2020 08:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B33B66E505
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 08:14:06 +0000 (UTC)
IronPort-SDR: KEar+mWMcZJGNqDDFYPEroWQXpE64i3u5PrHHa63iBpUNqUWgA3y0+VMieX74Nm4i8WYvVkn+G
 KAXHYD0JwxAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="235396662"
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="235396662"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 00:14:00 -0800
IronPort-SDR: IGkgJQthw8DWD/IGIPkHGSIoDkHRarHNqCvpYoNuofTo40wwc0R/FTKKS+9Q/7+z+jQ2PkS+JO
 rdGfqbhDmWhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="368677057"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Nov 2020 00:14:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 00:14:00 -0800
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 00:13:59 -0800
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.1713.004;
 Thu, 19 Nov 2020 08:13:58 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [CI 00/15] Rebased remaining big joiner series
Thread-Index: AQHWvRpL4MubiaJx10STYrIw6hyrmqnOTaGAgACqDYCAACXhwA==
Date: Thu, 19 Nov 2020 08:13:58 +0000
Message-ID: <ceb45d7d435d426f970957ef6d1db9be@intel.com>
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
 <20201118194925.GA18513@labuser-Z97X-UD5H>
 <20201119055803.GA28088@labuser-Z97X-UD5H>
In-Reply-To: <20201119055803.GA28088@labuser-Z97X-UD5H>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 00/15] Rebased remaining big joiner series
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, =


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Na=
vare,
> Manasi
> Sent: torstai 19. marraskuuta 2020 7.58
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Subject: Re: [Intel-gfx] [CI 00/15] Rebased remaining big joiner series
> =

> On Wed, Nov 18, 2020 at 11:49:25AM -0800, Navare, Manasi wrote:
> > Series pushed to dinq
> >
> > Manasi
> =

> By Chris Wilson:
> =

> Oops on boot:
> =

> <1>[   44.315382] BUG: unable to handle page fault for address: ffffc9004=
9e02100
> <1>[   44.315422] #PF: supervisor read access in kernel mode
> <1>[   44.315442] #PF: error_code(0x0000) - not-present page
> <6>[   44.315462] PGD 100000067 P4D 100000067 PUD 0
> <4>[   44.315497] Oops: 0000 [#1] PREEMPT SMP NOPTI
> <4>[   44.315522] CPU: 7 PID: 276 Comm: systemd-udevd Tainted: G     U
> 5.10.0-rc3-CI-CI_DRM_9355+ #1
> <4>[   44.315552] Hardware name: Intel Corporation Tiger Lake Client
> Platform/TigerLake Y LPDDR4x T4 Crb, BIOS TGLSFWI1.R00.2527.A03.2001170231
> 01/17/2020
> <4>[   44.315981] RIP: 0010:gen12_fwtable_read32+0x6f/0x2f0 [i915]
> <4>[   44.316016] Code: c6 48 8b 43 08 8b b0 98 0d 00 00 85 f6 0f 85 53 0=
1 00 00 89
> ee 48 89 df e8 fe a6 ff ff 85 c0 0f 85 bc 00 00 00 89 e8 48 03 03 <44> 8b=
 38 48 8b 43
> 08 8b 90 98 0d 00 00 85 d2 0f 85 a8 01 00 00 4c
> 16893]  hsw_crtc_enable+0x188/0x780 [i915]
> <4>[   44.317423]  intel_enable_crtc+0x56/0x70 [i915]
> <4>[   44.317931]  skl_commit_modeset_enables+0x34a/0x530 [i915]
> <4>[   44.318444]  intel_atomic_commit_tail+0x3a0/0x1330 [i915]
> <4>[   44.318488]  ? queue_work_on+0x5e/0x70
> <4>[   44.318965]  intel_atomic_commit+0x371/0x3f0 [i915]
> <4>[   44.319458]  intel_initial_commit+0x156/0x1e0 [i915]
> <4>[   44.319949]  intel_modeset_init_nogem+0xb59/0x1c00 [i915]
> <4>[   44.320336]  i915_driver_probe+0x79c/0xd90 [i915]
> <4>[   44.320374]  ? __pm_runtime_resume+0x4f/0x80
> <4>[   44.320741]  i915_pci_probe+0x43/0x1d0 [i915]
> <4>[   44.320772]  ? _raw_spin_unlock_irqrestore+0x2f/0x50
> <4>[   44.320804]  pci_device_probe+0x9e/0x110
> <4>[   44.320830]  really_probe+0x1c4/0x430
> <4>[   44.320852]  driver_probe_device+0xd9/0x140
> <4>[   44.320875]  device_driver_attach+0x4a/0x50
> <4>[   44.320897]  __driver_attach+0x83/0x140
> <4>[   44.320917]  ? device_driver_attach+0x50/0x50
> <4>[   44.320938]  ? device_driver_attach+0x50/0x50
> 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3=
 48 8b 0d 1f
> f6 2c 00 f7 d8 64 89 01 48
> <4>[   44.321749] RSP: 002b:00007ffda8ea9358 EFLAGS: 00000246 ORIG_RAX:
> 0000000000000139
> <4>[   44.321782] RAX: ffffffffffffffda RBX: 000056004d10ffc0 RCX:
> 00007fad885f5839
> <4>[   44.321808] RDX: 0000000000000000 RSI: 000056004d0f5490 RDI:
> 000000000000000f
> <4>[   44.321834] RBP: 000056004d0f5490 R08: 0000000000000000 R09:
> 00007ffda8ea9470
> <4>[   44.321859] R10: 000000000000000f R11: 0000000000000246 R12:
> 0000000000000000
> <4>[   44.321884] R13: 000056004d0f20c0 R14: 0000000000020000 R15:
> 0000000000000000
> <4>[   44.321921] Modules linked in: i915(+) mei_hdcp x86_pkg_temp_thermal
> coretemp crct10dif_pclmul crc32_pclmul snd_hda_intel snd_intel_dspcfg
> ghash_clmulni_intel snd_hda_codec cdc_ether snd_hwdep usbnet snd_hda_core=
 mii
> e1000e ptp snd_pcm pps_core mei_me mei prime_numbers intel_lpss_pci(+)
> <4>[   44.322105] CR2: ffffc90049e02100
> <4>[   44.322130] ---[ end trace 87c6ef683da5ac08 ]---
> =

> =

> But Chris, we havent seen this on CI nor in our testing.
It was at least on https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904=
/index.html?testfilter=3Dboot =


> =

> Manasi
> =

> >
> > On Tue, Nov 17, 2020 at 11:47:03AM -0800, Manasi Navare wrote:
> > >
> > >
> > > Maarten Lankhorst (4):
> > >   drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
> > >   drm/i915: Try to make bigjoiner work in atomic check
> > >   drm/i915: Add bigjoiner aware plane clipping checks
> > >   drm/i915: Add debugfs dumping for bigjoiner, v3.
> > >
> > > Manasi Navare (3):
> > >   drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner sla=
ve
> > >   drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner
> > >   drm/i915: HW state readout for Bigjoiner case
> > >
> > > Ville Syrj=E4l=E4 (8):
> > >   drm/i915: Copy the plane hw state directly for Y planes
> > >   drm/i915: Add crtcs affected by bigjoiner to the state
> > >   drm/i915: Add planes affected by bigjoiner to the state
> > >   drm/i915: Get the uapi state from the correct plane when bigjoiner =
is
> > >     used
> > >   drm/i915: Disable legacy cursor fastpath for bigjoiner
> > >   drm/i915: Fix cursor src/dst rectangle with bigjoiner
> > >   drm/i915: Add bigjoiner state dump
> > >   drm/i915: Enable bigjoiner
> > >
> > >  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
> > >  .../gpu/drm/i915/display/intel_atomic_plane.c | 131 +++-
> > >  .../gpu/drm/i915/display/intel_atomic_plane.h |   9 +-
> > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  69 +-
> > >  drivers/gpu/drm/i915/display/intel_display.c  | 696 ++++++++++++++--=
--
> > >  drivers/gpu/drm/i915/display/intel_display.h  |   3 +-
> > >  .../drm/i915/display/intel_display_debugfs.c  |  25 +-
> > >  .../drm/i915/display/intel_display_types.h    |  10 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c       | 100 ++-
> > >  drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
> > >  drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
> > >  drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
> > >  drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
> > >  drivers/gpu/drm/i915/display/intel_vdsc.c     | 201 ++---
> > >  drivers/gpu/drm/i915/display/intel_vdsc.h     |   6 +-
> > >  16 files changed, 953 insertions(+), 327 deletions(-)
> > >
> > > --
> > > 2.19.1
> > >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
