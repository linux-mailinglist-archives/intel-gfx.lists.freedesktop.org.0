Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CA8132D41
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 18:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D27889DA6;
	Tue,  7 Jan 2020 17:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 118F189DA6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 17:40:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 09:40:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,406,1571727600"; d="scan'208";a="217818528"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 07 Jan 2020 09:40:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Jan 2020 19:40:48 +0200
Date: Tue, 7 Jan 2020 19:40:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200107174048.GI1208@intel.com>
References: <20200107170922.153612-1-jose.souza@intel.com>
 <20200107170922.153612-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107170922.153612-2-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 rebased 2/2] drm/i915/display: Fix
 warning about MST and DDI restrictions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 07, 2020 at 09:09:22AM -0800, Jos=E9 Roberto de Souza wrote:
> Capturing the restrictions of the BSpec pages bellow:
> =

> SKL and CNL do not support MST in DDI E, DDI E only support 2 lanes
> and it is mostly used to support a 4 lanes eDP panel together with
> DDI A.
> ICL's DDI E support MST just like other ports but DDI A is still eDP
> and MIPI only.
> TGL supports MST in any DDI, including DDI A but TGL has it's own
> ddi_pre_enable_dp function already without any warning.
> =

> [  215.579791] ------------[ cut here ]------------
> [  215.579794] WARN_ON(is_mst && (port =3D=3D PORT_A || port =3D=3D PORT_=
E))
> [  215.579875] WARNING: CPU: 0 PID: 268 at drivers/gpu/drm/i915/display/i=
ntel_ddi.c:3576 intel_ddi_pre_enable+0x124/0xea0 [i915]
> [  215.579878] Modules linked in: snd_hda_codec_hdmi snd_hda_codec_realte=
k snd_hda_codec_generic i915 btusb btrtl btbcm btintel bluetooth prime_numb=
ers snd_hda_intel snd_intel_dspcfg snd_hda_codec e1000e snd_hwdep snd_hda_c=
ore asix mei_hdcp cdc_ether x86_pkg_temp_thermal mei_me snd_pcm r8152 coret=
emp usbnet mei crct10dif_pclmul mii ptp ecdh_generic crc32_pclmul i2c_i801 =
ecc pps_core ghash_clmulni_intel thunderbolt
> [  215.579905] CPU: 0 PID: 268 Comm: kworker/0:2 Tainted: G        W     =
    5.4.0-rc8-zeh+ #1307
> [  215.579907] Hardware name: Intel Corporation Ice Lake Client Platform/=
IceLake U DDR4 SODIMM PD RVP TLC, BIOS ICLSFWR1.R00.3201.A00.1905140358 05/=
14/2019
> [  215.579912] Workqueue: events_long drm_dp_mst_link_probe_work
> [  215.579975] RIP: 0010:intel_ddi_pre_enable+0x124/0xea0 [i915]
> [  215.579978] Code: ff 8b 7c 24 10 89 44 24 30 85 ff 74 1f f7 44 24 18 f=
b ff ff ff 75 15 48 c7 c6 98 fa 48 a0 48 c7 c7 d3 df 4a a0 e8 cf d5 d0 e0 <=
0f> 0b 0f b6 4c 24 2c 41 8b b5 04 06 00 00 4c 89 e7 41 0f b6 95 0c
> [  215.579980] RSP: 0018:ffffc90001a5f990 EFLAGS: 00010286
> [  215.579984] RAX: 0000000000000000 RBX: ffff88848356a000 RCX: 000000000=
0000000
> [  215.579986] RDX: 0000000000001df1 RSI: ffff88849340c998 RDI: ffffffff8=
21489c5
> [  215.579989] RBP: ffff88848356a000 R08: 00000000c021a419 R09: 000000000=
0000000
> [  215.579991] R10: 0000000000000000 R11: 0000000000000000 R12: ffff88848=
356a118
> [  215.579994] R13: ffff88847f39c000 R14: ffff88847fe70000 R15: ffff88848=
356a000
> [  215.579996] FS:  0000000000000000(0000) GS:ffff88849f800000(0000) knlG=
S:0000000000000000
> [  215.579999] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  215.580001] CR2: 000055d3d5a26bc0 CR3: 0000000480ba6005 CR4: 000000000=
0760ef0
> [  215.580004] PKRU: 55555554
> [  215.580006] Call Trace:
> [  215.580014]  ? drm_dp_mst_topology_put_port+0x6f/0x130
> [  215.580072]  intel_mst_pre_enable_dp+0x14b/0x170 [i915]
> [  215.580129]  intel_encoders_pre_enable+0x76/0x90 [i915]
> [  215.580191]  haswell_crtc_enable+0x84/0x880 [i915]
> [  215.580266]  intel_update_crtc+0x1e4/0x200 [i915]
> [  215.580333]  skl_commit_modeset_enables+0x287/0x420 [i915]
> [  215.580405]  intel_atomic_commit_tail+0x332/0x14e0 [i915]
> [  215.580410]  ? queue_work_on+0x41/0x70
> [  215.580489]  intel_atomic_commit+0x31e/0x350 [i915]
> [  215.580500]  drm_client_modeset_commit_atomic+0x18b/0x220
> [  215.580523]  drm_client_modeset_commit_force+0x4d/0x180
> [  215.580531]  drm_fb_helper_restore_fbdev_mode_unlocked+0x46/0xa0
> [  215.580538]  drm_fb_helper_set_par+0x27/0x50
> [  215.580543]  drm_fb_helper_hotplug_event.part.0+0xa7/0xc0
> [  215.580549]  drm_kms_helper_hotplug_event+0x21/0x30
> [  215.580553]  process_one_work+0x25b/0x5b0
> [  215.580566]  worker_thread+0x4b/0x3b0
> [  215.580578]  kthread+0x100/0x140
> [  215.580581]  ? process_one_work+0x5b0/0x5b0
> [  215.580585]  ? kthread_park+0x80/0x80
> [  215.580591]  ret_from_fork+0x24/0x50
> [  215.580603] irq event stamp: 1393930
> [  215.580606] hardirqs last  enabled at (1393929): [<ffffffff8112a013>] =
vprintk_emit+0x143/0x330
> [  215.580609] hardirqs last disabled at (1393930): [<ffffffff81001cfa>] =
trace_hardirqs_off_thunk+0x1a/0x20
> [  215.580613] softirqs last  enabled at (1393434): [<ffffffff81c00389>] =
__do_softirq+0x389/0x47f
> [  215.580618] softirqs last disabled at (1393423): [<ffffffff810b7199>] =
irq_exit+0xa9/0xc0
> [  215.580621] ---[ end trace afd44ea9caa6373e ]---
> =

> BSpec: 4217
> BSpec: 14004
> BSpec: 20584
> BSpec: 50583
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 2e4e178f7ed4..cfea06ed50f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3533,7 +3533,10 @@ static void hsw_ddi_pre_enable_dp(struct intel_enc=
oder *encoder,
>  	bool is_mst =3D intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>  	int level =3D intel_ddi_dp_level(intel_dp);
>  =

> -	WARN_ON(is_mst && (port =3D=3D PORT_A || port =3D=3D PORT_E));
> +	if (INTEL_GEN(dev_priv) < 11)
> +		WARN_ON(is_mst && (port =3D=3D PORT_A || port =3D=3D PORT_E));
> +	else
> +		WARN_ON(is_mst && port =3D=3D PORT_A);

intel_ddi_port_has_mst() or some such thing might make this less ugly.
Could be shared with the MST init code as well. Though not sure this
WARN really provides any serious benefit so could maybe just nuke it.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  =

>  	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
>  				 crtc_state->lane_count, is_mst);
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
