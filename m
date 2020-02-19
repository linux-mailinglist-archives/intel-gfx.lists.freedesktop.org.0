Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C731645AF
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 14:37:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D2E6E7DD;
	Wed, 19 Feb 2020 13:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04B436E7DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 13:37:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 05:37:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="315393933"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 19 Feb 2020 05:37:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Feb 2020 15:37:47 +0200
Date: Wed, 19 Feb 2020 15:37:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200219133747.GS13686@intel.com>
References: <20200219014230.145601-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219014230.145601-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Deactive FBC in
 fastsets when disabled by parameter
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

On Tue, Feb 18, 2020 at 05:42:28PM -0800, Jos=E9 Roberto de Souza wrote:
> Most of the kms_frontbuffer_tracking tests disables the feature being
> tested, draw, get the CRC then enable the feature, draw again, get the
> CRC and check if it matches.
> Some times it is able to do that with a fastset, so
> intel_pre_plane_update() is executed but intel_fbc_can_flip_nuke() was
> not checking if FBC is now enabled in this CRTC leaving FBC active and
> causing the warning bellow in __intel_fbc_disable()
> =

> [IGT] kms_frontbuffer_tracking: starting subtest fbc-1p-pri-indfb-multidr=
aw
> Setting dangerous option enable_fbc - tainting kernel
> i915 0000:00:02.0: [drm:i915_edp_psr_debug_set [i915]] Setting PSR debug =
to f
> i915 0000:00:02.0: [drm:intel_psr_debug_set [i915]] Invalid debug mask f
> i915 0000:00:02.0: [drm:i915_edp_psr_debug_set [i915]] Setting PSR debug =
to 1
> i915 0000:00:02.0: [drm:intel_atomic_check [i915]] [CONNECTOR:215:eDP-1] =
Limiting display bpp to 24 instead of EDID bpp 24, requested bpp 36, max pl=
atform bpp 36
> [drm:intel_dp_compute_config [i915]] DP link computation with max lane co=
unt 2 max rate 270000 max bpp 24 pixel clock 138120KHz
> [drm:intel_dp_compute_config [i915]] Force DSC en =3D 0
> [drm:intel_dp_compute_config [i915]] DP lane count 2 clock 270000 bpp 24
> [drm:intel_dp_compute_config [i915]] DP link rate required 414360 availab=
le 540000
> i915 0000:00:02.0: [drm:intel_atomic_check [i915]] hw max bpp: 24, pipe b=
pp: 24, dithering: 0
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [CRTC:91:pipe A] e=
nable: yes [fastset]
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] active: yes, outpu=
t_types: EDP (0x100), output format: RGB
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] cpu_transcoder: ED=
P, pipe bpp: 24, dithering: 0
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] dp m_n: lanes: 2; =
gmch_m: 6436858, gmch_n: 8388608, link_m: 268202, link_n: 524288, tu: 64
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] audio: 0, infofram=
es: 0, infoframes enabled: 0x0
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] requested mode:
> [drm:drm_mode_debug_printmodeline] Modeline "1920x1080": 60 138120 1920 1=
968 2018 2052 1080 1084 1086 1122 0x48 0xa
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] adjusted mode:
> [drm:drm_mode_debug_printmodeline] Modeline "1920x1080": 60 138120 1920 1=
968 2018 2052 1080 1084 1086 1122 0x48 0xa
> [drm:intel_dump_pipe_config [i915]] crtc timings: 138120 1920 1968 2018 2=
052 1080 1084 1086 1122, type: 0x48 flags: 0xa
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] port clock: 270000=
, pipe src size: 1920x1080, pixel rate 138120
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] linetime: 119, ips=
 linetime: 0
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] num_scalers: 2, sc=
aler_users: 0x0, scaler_id: -1
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] pch pfit: pos: 0x0=
0000000, size: 0x00000000, disabled, force thru: no
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] ips: 0, double wid=
e: 0
> [drm:icl_dump_hw_state [i915]] dpll_hw_state: cfgcr0: 0x1c001a5, cfgcr1: =
0x8b, mg_refclkin_ctl: 0x0, hg_clktop2_coreclkctl1: 0x0, mg_clktop2_hsclkct=
l: 0x0, mg_pll_div0: 0x0, mg_pll_div2: 0x0, mg_pll_lf: 0x0, mg_pll_frac_loc=
k: 0x0, mg_pll_ssc: 0x0, mg_pll_bias: 0x0, mg_pll_tdc_coldst_bias: 0x0
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] csc_mode: 0x0 gamm=
a_mode: 0x0 gamma_enable: 0 csc_enable: 0
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] MST master transco=
der: <invalid>
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [PLANE:31:plane 1A=
] fb: [FB:262] 1920x1080 format =3D XR24 little-endian (0x34325258), visibl=
e: yes
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] 	rotation: 0x1, sc=
aler: -1
> i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] 	src: 1920.000000x=
1080.000000+0.000000+0.000000 dst: 1920x1080+0+0
> i915 0000:00:02.0: [drm:intel_psr_disable_locked [i915]] Disabling PSR1
> i915 0000:00:02.0: [drm:intel_ddi_update_pipe [i915]] Panel doesn't suppo=
rt DRRS
> ------------[ cut here ]------------
> i915 0000:00:02.0: drm_WARN_ON(fbc->active)
> WARNING: CPU: 4 PID: 1175 at drivers/gpu/drm/i915/display/intel_fbc.c:973=
 __intel_fbc_disable+0xa5/0x130 [i915]
> Modules linked in: snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec=
_generic i915 mei_hdcp x86_pkg_temp_thermal coretemp crct10dif_pclmul snd_h=
da_intel crc32_pclmul snd_intel_dspcfg snd_hda_codec ghash_clmulni_intel sn=
d_hwdep snd_hda_core cdc_ether e1000e usbnet mii snd_pcm ptp mei_me pps_cor=
e mei thunderbolt intel_lpss_pci prime_numbers
> CPU: 4 PID: 1175 Comm: kms_frontbuffer Tainted: G     U            5.5.0-=
CI-Trybot_5651+ #1
> Hardware name: Intel Corporation Ice Lake Client Platform/IceLake U DDR4 =
SODIMM PD RVP TLC, BIOS ICLSFWR1.R00.3234.A01.1906141750 06/14/2019
> RIP: 0010:__intel_fbc_disable+0xa5/0x130 [i915]
> Code: 8b 67 50 4d 85 e4 0f 84 8f 00 00 00 e8 44 33 30 e1 48 c7 c1 72 f6 4=
c a0 4c 89 e2 48 89 c6 48 c7 c7 42 f6 4c a0 e8 0b 9d ce e0 <0f> 0b eb 90 48=
 8b 7b 18 4c 8b 67 50 4d 85 e4 74 6d e8 15 33 30 e1
> RSP: 0018:ffffc90000613b68 EFLAGS: 00010282
> RAX: 0000000000000000 RBX: ffff8884799d0000 RCX: 0000000000000006
> RDX: 0000000000001905 RSI: ffff888495dac970 RDI: ffffffff823731a1
> RBP: ffff88847c05d000 R08: ffff888495dac970 R09: 0000000000000000
> R10: ffffc90000613b88 R11: 0000000000000000 R12: ffff88849bba7e40
> R13: ffff8884799d0000 R14: ffff888498564000 R15: 0000000000000000
> FS:  00007f8157f08300(0000) GS:ffff8884a0000000(0000) knlGS:0000000000000=
000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007ffdbfea2eb8 CR3: 000000049d1cc001 CR4: 0000000000760ee0
> PKRU: 55555554
> Call Trace:
>  intel_fbc_disable+0x4a/0x50 [i915]
>  intel_update_crtc+0x12c/0x1d0 [i915]
>  skl_commit_modeset_enables+0x14d/0x600 [i915]
>  intel_atomic_commit_tail+0x30d/0x1480 [i915]
>  ? queue_work_on+0x31/0x70
>  ? intel_atomic_commit_ready+0x3f/0x48 [i915]
>  ? __i915_sw_fence_complete+0x1a0/0x250 [i915]
>  intel_atomic_commit+0x312/0x390 [i915]
>  intel_psr_fastset_force+0x119/0x150 [i915]
>  i915_edp_psr_debug_set+0x53/0x70 [i915]
>  simple_attr_write+0xb0/0xd0
>  full_proxy_write+0x51/0x80
>  vfs_write+0xb9/0x1d0
>  ksys_write+0x9f/0xe0
>  do_syscall_64+0x4f/0x220
>  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> RIP: 0033:0x7f8157240281
> Code: c3 0f 1f 84 00 00 00 00 00 48 8b 05 59 8d 20 00 c3 0f 1f 84 00 00 0=
0 00 00 8b 05 8a d1 20 00 85 c0 75 16 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff=
 ff 77 57 f3 c3 0f 1f 44 00 00 41 54 55 49 89 d4 53
> RSP: 002b:00007ffdbfea59d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f8157240281
> RDX: 0000000000000003 RSI: 00007f8157901152 RDI: 0000000000000008
> RBP: 0000000000000003 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 00007f8157901152
> R13: 0000000000000008 R14: 00005589d298dce0 R15: 0000000000000000
> irq event stamp: 55208
> hardirqs last  enabled at (55207): [<ffffffff8112f3fc>] vprintk_emit+0xcc=
/0x330
> hardirqs last disabled at (55208): [<ffffffff81001ca0>] trace_hardirqs_of=
f_thunk+0x1a/0x1c
> softirqs last  enabled at (54926): [<ffffffff81e00385>] __do_softirq+0x38=
5/0x47f
> softirqs last disabled at (54915): [<ffffffff810ba15a>] irq_exit+0xba/0xc0
> ---[ end trace afa50c52e5a512bb ]---
> [drm:__intel_fbc_disable [i915]] Disabling FBC on pipe A
> i915 0000:00:02.0: [drm:verify_connector_state [i915]] [CONNECTOR:215:eDP=
-1]
> i915 0000:00:02.0: [drm:intel_atomic_commit_tail [i915]] [CRTC:91:pipe A]
> [drm:intel_ddi_get_config [i915]] [ENCODER:214:DDI A] Fec status: 0
> i915 0000:00:02.0: [drm:verify_single_dpll_state.isra.150 [i915]] DPLL 0
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index ddf8d3bb7a7d..a6038fe74f63 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -856,6 +856,9 @@ static bool intel_fbc_can_flip_nuke(const struct inte=
l_crtc_state *crtc_state)
>  	if (drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
>  		return false;
>  =

> +	if (!crtc_state->enable_fbc)
> +		return false;

The code is still quite the horror show, but from the looks of things
we'd want this check in intel_fbc_can_activate() instead.

With the check relocated this is
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

PS. Oh dear, we still have that crtc_state->enable_fbc mess in there.
I should have patches to eliminate that tucked away in a branch
somewhere...

> +
>  	if (!params->plane_visible)
>  		return false;
>  =

> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
