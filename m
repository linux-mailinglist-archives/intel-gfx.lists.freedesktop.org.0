Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0811B32A28F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 15:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045816E95B;
	Tue,  2 Mar 2021 14:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6329A6E974;
 Tue,  2 Mar 2021 14:51:40 +0000 (UTC)
IronPort-SDR: CdZoHmF/05l0BnUFHQXn+/IIUyh1gJViTGWkqx995FMz3igP7yzAoYYtt6toljeuBH3zTC4uOu
 otnwla1XUrcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="184400731"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="184400731"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 06:51:34 -0800
IronPort-SDR: bAByi1EsF+UlW5bHKaX0U5/hFytRjCPqGCrb0T3np9xmfy+EvHgllPXpCcsPhbKgu8nHzLELut
 NwPi1WQY08jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="406079818"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 02 Mar 2021 06:51:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Mar 2021 16:51:30 +0200
Date: Tue, 2 Mar 2021 16:51:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YD5Q8mA6y4/qcelo@intel.com>
References: <20210302120040.94435-1-hdegoede@redhat.com>
 <20210302120040.94435-3-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210302120040.94435-3-hdegoede@redhat.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH resend 2/2] drm/i915/display: Make
 vlv_find_free_pps() skip pipes which are in use for non DP purposes
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 02, 2021 at 01:00:40PM +0100, Hans de Goede wrote:
> As explained by a long comment block, on VLV intel_setup_outputs()
> sometimes thinks there might be an eDP panel connected while there is non=
e.
> In this case intel_setup_outputs() will call intel_dp_init() to check.
> =

> In this scenario vlv_find_free_pps() ends up selecting pipe A for the pps,
> even though this might be in use for non DP purposes. When this is the ca=
se
> then the assert_pipe() in vlv_force_pll_on() will fail when called from
> vlv_power_sequencer_kick().

The idea is that you *can* select a PPS from a pipe used for a non-DP
port since those don't care about the PPS stuff. So this doesn't seem
correct.

a) I would like to see the VBT for this machine
b) I wonder if the DSI PLL is sufficient for getting the PPS going?
c) If we do need the normal DPLL is there any harm to DSI in enabling it?

> =

> This happens on a Voyo winpad A15, leading to the following WARN/backtrac=
e:
> =

> [    8.661531] ------------[ cut here ]------------
> [    8.661590] transcoder A assertion failure (expected off, current on)
> [    8.661647] WARNING: CPU: 2 PID: 243 at drivers/gpu/drm/i915/display/i=
ntel_display.c:1288 assert_pipe+0x125/0xc20 [i915]
> [    8.661822] Modules linked in: i915(E+) mmc_block crct10dif_pclmul crc=
32_pclmul crc32c_intel ghash_clmulni_intel i2c_algo_bit drm_kms_helper cec =
drm drm_privacy_screen_helper video(E) sdhci_acpi sdhci i2c_hid pwm_lpss_pl=
atform pwm_lpss mmc_core i2c_dev fuse
> [    8.661944] CPU: 2 PID: 243 Comm: systemd-udevd Tainted: G            =
E     5.11.0-rc5+ #228
> [    8.661954] Hardware name: To be filled by O.E.M. To be filled by O.E.=
M./Aptio CRB, BIOS 5.6.5 11/20/2014
> [    8.661961] RIP: 0010:assert_pipe+0x125/0xc20 [i915]
> [    8.662050] Code: c7 c2 e5 39 4a c0 74 c9 48 c7 c6 53 3b 4a c0 83 fb 0=
6 77 0a 89 db 48 8b 34 dd 80 38 45 c0 48 c7 c7 c8 ff 47 c0 e8 13 6c 8f df <=
0f> 0b e9 1d ff ff ff 89 db 48 8b 34 dd 80 38 45 c0 eb a0 48 c7 c2
> [    8.662058] RSP: 0018:ffffa939c0557690 EFLAGS: 00010286
> [    8.662071] RAX: 0000000000000039 RBX: 0000000000000000 RCX: ffff89c67=
bd19058
> [    8.662078] RDX: 00000000ffffffd8 RSI: 0000000000000027 RDI: ffff89c67=
bd19050
> [    8.662085] RBP: ffff89c64a3c0000 R08: 0000000000000001 R09: 000000000=
0000001
> [    8.662091] R10: ffffa939c05574c0 R11: ffffffffa0961248 R12: 000000000=
0000009
> [    8.662098] R13: 0000000000000000 R14: 00000000e0000000 R15: ffff89c64=
a3c0000
> [    8.662105] FS:  00007fe824e42380(0000) GS:ffff89c67bd00000(0000) knlG=
S:0000000000000000
> [    8.662113] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    8.662120] CR2: 00007fffdc770558 CR3: 0000000106ab8000 CR4: 000000000=
01006e0
> [    8.662127] Call Trace:
> [    8.662148]  assert_pipe+0xa9e/0xc20 [i915]
> [    8.662252]  vlv_force_pll_on+0xfb/0x1b0 [i915]
> [    8.662344]  intel_dp_sync_state+0xd92/0x2e70 [i915]
> [    8.662448]  intel_dp_sync_state+0x1908/0x2e70 [i915]
> [    8.662541]  intel_dp_sync_state+0x1a3e/0x2e70 [i915]
> [    8.662620]  ? recalibrate_cpu_khz+0x10/0x10
> [    8.662633]  ? ktime_get_with_offset+0xad/0x160
> [    8.662658]  intel_dp_sync_state+0x1f21/0x2e70 [i915]
> [    8.662788]  intel_dp_encoder_suspend+0x41f/0x14b0 [i915]
> [    8.662875]  ? drm_dp_dpcd_access+0x50/0xf0 [drm_kms_helper]
> [    8.662940]  ? __mutex_lock+0x7e/0x7a0
> [    8.662950]  ? drm_dp_dpcd_access+0x50/0xf0 [drm_kms_helper]
> [    8.662982]  ? drm_dp_dpcd_access+0x50/0xf0 [drm_kms_helper]
> [    8.663025]  intel_dp_encoder_suspend+0xdf3/0x14b0 [i915]
> [    8.663112]  ? find_held_lock+0x2b/0x80
> [    8.663132]  drm_dp_dpcd_access+0x62/0xf0 [drm_kms_helper]
> [    8.663181]  drm_dp_dpcd_read+0xb6/0xf0 [drm_kms_helper]
> [    8.663223]  drm_dp_read_dpcd_caps+0x20/0x110 [drm_kms_helper]
> [    8.663262]  intel_dp_init_connector+0x79e/0x1010 [i915]
> [    8.663366]  intel_dp_init+0x251/0x480 [i915]
> [    8.663453]  intel_modeset_init_nogem+0x1998/0x1b70 [i915]
> [    8.663540]  ? intel_pcode_init+0x3b6b/0x5d60 [i915]
> [    8.663625]  i915_driver_probe+0x5d5/0xcb0 [i915]
> [    8.663734]  ? drm_privacy_screen_get+0x163/0x1a0 [drm_privacy_screen_=
helper]
> [    8.663759]  i915_params_free+0x11a/0x200 [i915]
> [    8.663830]  ? __pm_runtime_resume+0x58/0x90
> [    8.663849]  local_pci_probe+0x42/0x80
> [    8.663869]  pci_device_probe+0xd9/0x190
> [    8.663892]  really_probe+0xf2/0x440
> [    8.663915]  driver_probe_device+0xe1/0x150
> [    8.663930]  device_driver_attach+0xa8/0xb0
> [    8.663948]  __driver_attach+0x8c/0x150
> [    8.663957]  ? device_driver_attach+0xb0/0xb0
> [    8.663966]  ? device_driver_attach+0xb0/0xb0
> [    8.663979]  bus_for_each_dev+0x67/0x90
> [    8.663998]  bus_add_driver+0x12e/0x1f0
> [    8.664015]  driver_register+0x8b/0xe0
> [    8.664025]  ? 0xffffffffc055a000
> [    8.664039]  init_module+0x62/0x7c [i915]
> [    8.664127]  do_one_initcall+0x5b/0x2d0
> [    8.664143]  ? rcu_read_lock_sched_held+0x3f/0x80
> [    8.664155]  ? kmem_cache_alloc_trace+0x292/0x2c0
> [    8.664178]  do_init_module+0x5c/0x260
> [    8.664194]  __do_sys_init_module+0x13d/0x1a0
> [    8.664247]  do_syscall_64+0x33/0x40
> [    8.664260]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [    8.664272] RIP: 0033:0x7fe825d9a6be
> [    8.664284] Code: 48 8b 0d bd 27 0c 00 f7 d8 64 89 01 48 83 c8 ff c3 6=
6 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 49 89 ca b8 af 00 00 00 0f 05 <=
48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 8a 27 0c 00 f7 d8 64 89 01 48
> [    8.664293] RSP: 002b:00007fffdc778028 EFLAGS: 00000246 ORIG_RAX: 0000=
0000000000af
> [    8.664307] RAX: ffffffffffffffda RBX: 00005573f0770cf0 RCX: 00007fe82=
5d9a6be
> [    8.664314] RDX: 00007fe825ed035a RSI: 000000000052b0a0 RDI: 00005573f=
112ae10
> [    8.664321] RBP: 00005573f112ae10 R08: 00005573f112ae10 R09: 00007fffd=
c774f70
> [    8.664328] R10: 00005573f0759010 R11: 0000000000000246 R12: 00007fe82=
5ed035a
> [    8.664334] R13: 00005573f077e1e0 R14: 0000000000000007 R15: 00005573f=
077f2d0
> [    8.664379] irq event stamp: 126913
> [    8.664385] hardirqs last  enabled at (126919): [<ffffffff9f162af9>] c=
onsole_unlock+0x4e9/0x600
> [    8.664397] hardirqs last disabled at (126924): [<ffffffff9f162a6c>] c=
onsole_unlock+0x45c/0x600
> [    8.664406] softirqs last  enabled at (126624): [<ffffffff9fe01112>] a=
sm_call_irq_on_stack+0x12/0x20
> [    8.664416] softirqs last disabled at (126619): [<ffffffff9fe01112>] a=
sm_call_irq_on_stack+0x12/0x20
> [    8.664426] ---[ end trace 5049606d4dbfaebc ]---
> =

> Add a check for the combination of the DPLL not being enabled (indicating
> that DP is not active on the pipe), while the pipe is enabled; and when
> both conditions are true don't use the pipe for pps. This fixes the above
> WARN/backtrace. After this the attempt to detect the non existing eDP
> panel on port B results in the following 2 info messages:
> =

> [    8.461967] i915 0000:00:02.0: [drm] Pipe A is used for non DP, not us=
ing it for pps
> [    8.675304] i915 0000:00:02.0: [drm] failed to retrieve link info, dis=
abling eDP
> =

> Indicating that everything is working as it should.
> =

> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index f20ba71f4307..757e82825919 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -121,6 +121,7 @@ static enum pipe vlv_find_free_pps(struct drm_i915_pr=
ivate *dev_priv)
>  {
>  	struct intel_encoder *encoder;
>  	unsigned int pipes =3D (1 << PIPE_A) | (1 << PIPE_B);
> +	enum pipe pipe;
>  =

>  	/*
>  	 * We don't have power sequencer currently.
> @@ -146,6 +147,27 @@ static enum pipe vlv_find_free_pps(struct drm_i915_p=
rivate *dev_priv)
>  		}
>  	}
>  =

> +	/*
> +	 * If the DPLL is not enabled and the pipe is enabled then the pipe is
> +	 * in use for non DP uses. In this case we *must* not use it for pps.
> +	 * This may happen when PIPE A is used for a DSI panel, yet the VLV code
> +	 * in intel_setup_outputs() thinks port B may be used for eDP and calls
> +	 * intel_dp_init() to check.
> +	 */
> +	for (pipe =3D PIPE_A; pipe <=3D PIPE_B; pipe++) {
> +		if (!(pipes & (1 << pipe)))
> +			continue;
> +
> +		if (intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE)
> +			continue;
> +
> +		if (intel_pipe_is_enabled(dev_priv, (enum transcoder)pipe)) {
> +			drm_info(&dev_priv->drm, "Pipe %c is used for non DP, not using it fo=
r pps\n",
> +				 pipe_name(pipe));
> +			pipes &=3D ~(1 << pipe);
> +		}
> +	}
> +
>  	if (pipes =3D=3D 0)
>  		return INVALID_PIPE;
>  =

> -- =

> 2.30.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
