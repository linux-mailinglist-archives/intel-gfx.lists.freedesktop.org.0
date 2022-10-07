Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7DF5F7926
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 15:42:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DEA510E2E0;
	Fri,  7 Oct 2022 13:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D722310E2E0
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 13:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665150155; x=1696686155;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=egLkWfNtibXaPKN2peGCKaDZKCsA6fz1WIQjH/Y75Qg=;
 b=OCww4RKhSc+w3R13rKXEulmJpcG8r1TrHY9Yc+vlAiu/tErTmDz/AfGP
 FwpcSpb7q5ceBqD+zhUnvqpckqSiyLG3AEp7vNxsuMXysx0S7c8vtzexq
 uMcsynjMDCrEc82O43EMiNeeADG3+7vSt0ohIfvDnbz14XIsmq97RX6LS
 6JD5rGARIQ3JRsKmDMb54gqEPeV385UbMhCx2OL/dd1XqoSALODOaKocv
 Vr27qM7hxLIN31p8KNEeqVIvVwMVxG4OT6JKnsJn7K4OuxKYkhaqfPt8y
 rLwqdZqfpEcNsJv1a9psX3nb1fqGjt0pp3Szm3kYNGzYtDf5fiSfDxKsF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="390031442"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="390031442"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 06:42:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="625149287"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="625149287"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 07 Oct 2022 06:42:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Oct 2022 16:42:31 +0300
Date: Fri, 7 Oct 2022 16:42:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Y0Asx/oVs+DCTNaM@intel.com>
References: <20221007133307.3805735-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221007133307.3805735-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix simulated GPU reset wrt.
 encoder HW readout
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 07, 2022 at 04:33:07PM +0300, Imre Deak wrote:
> The GPU reset involves a display suspend/resume sequence, but this is
> done without suspending/resuming the encoders. The encoder HW readout
> code during resume however assumes that the encoders were
> suspended/resumed, at least on TypeC platforms where the TC PHYs must be
> left in a disconnected state during encoder-suspend, and the PHY's TypeC
> mode must be initialized already during encoder-resume.
> 
> Since the above issue occurs only in case the display recovery during
> GPU reset is simulated in CI tests (on new platforms w/o the GPU reset
> clobbering the display), this patch fixes the issue by simply restoring
> the saved display state in this case w/o doing a display HW state
> readout / sanitization first. This also fixes the WARN below introduced
> by
> 
> commit a82796a2e332 ("drm/i915: Fix TypeC mode initialization during system resume")
> 
> <4> [319.983309] ------------[ cut here ]------------
> <4> [319.983313] i915 0000:00:02.0: drm_WARN_ON(dig_port->tc_link_refcount != 1)
> <4> [319.983341] WARNING: CPU: 10 PID: 268 at drivers/gpu/drm/i915/display/intel_tc.c:751
> intel_tc_port_sanitize_mode+0x239/0x290 [i915]
> <4> [319.983407] Modules linked in: fuse snd_hda_codec_hdmi i915 x86_pkg_temp_thermal mei_hdcp coretemp wmi_bmof
> r8153_ecm cdc_ether kvm_intel usbnet r8152 mii kvm prime_numbers snd_hda_intel ttm snd_intel_dspcfg irqbypass
> drm_buddy e1000e crct10dif_pclmul snd_hda_codec crc32_pclmul drm_display_helper ptp snd_hwdep ghash_clmulni_intel
> snd_hda_core drm_kms_helper pps_core mei_me syscopyarea video i2c_i801 snd_pcm sysfillrect i2c_smbus sysimgblt mei
> fb_sys_fops intel_lpss_pci wmi
> <4> [319.983483] CPU: 10 PID: 268 Comm: kworker/10:1H Not tainted 6.0.0-rc7-CI_DRM_12200-g394e575b57e9+ #1
> <4> [319.983486] Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-P LP5 RVP, BIOS
> ADLPFWI1.R00.2313.A00.2107301001 07/30/2021
> <4> [319.983488] Workqueue: events_highpri heartbeat [i915]
> <4> [319.983536] RIP: 0010:intel_tc_port_sanitize_mode+0x239/0x290 [i915]
> <4> [319.983600] Code: 85 d2 75 03 48 8b 17 48 89 14 24 e8 e1 dc 2d e1 48 8b 14 24 48 c7 c1 f8 db 5b a0 48 c7 c7 3e
> 3c 5e a0 48 89 c6 e8 45 d7 66 e1 <0f> 0b e9 20 fe ff ff 0f 0b 49 c7 c0 8b 3c 5e a0 e9 9e fe ff ff 48
> <4> [319.983601] RSP: 0018:ffffc90001617a30 EFLAGS: 00010286
> <4> [319.983604] RAX: 0000000000000000 RBX: ffff88811f9d2000 RCX: 0000000000000001
> <4> [319.983606] RDX: 0000000080000001 RSI: ffffffff8231e8cd RDI: 00000000ffffffff
> <4> [319.983607] RBP: ffff888121e98000 R08: 0000000000000000 R09: c0000000ffffc134
> <4> [319.983608] R10: 00000000000d6078 R11: ffffc900016178c8 R12: ffff88811f9d3838
> <4> [319.983609] R13: ffff88811f9d397d R14: ffff888121e98000 R15: 0000000000000000
> <4> [319.983611] FS:  0000000000000000(0000) GS:ffff8882a7300000(0000) knlGS:0000000000000000
> <4> [319.983612] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [319.983613] CR2: 00007fe7397f1e18 CR3: 0000000006612003 CR4: 0000000000770ee0
> <4> [319.983615] PKRU: 55555554
> <4> [319.983616] Call Trace:
> <4> [319.983617]  <TASK>
> <4> [319.983621]  intel_ddi_sync_state+0x3f/0x90 [i915]
> <4> [319.983698]  intel_modeset_setup_hw_state+0x3a3/0x1440 [i915]
> <4> [319.983777]  ? intel_gt_reset_global+0xeb/0x160 [i915]
> <4> [319.983839]  ? __intel_display_resume+0x15/0xe0 [i915]
> <4> [319.983909]  __intel_display_resume+0x15/0xe0 [i915]
> <4> [319.983979]  intel_display_finish_reset+0x58/0x130 [i915]
> <4> [319.984048]  intel_gt_reset_global+0xf3/0x160 [i915]
> <4> [319.984107]  ? intel_reset_guc.cold.62+0x5d/0x5d [i915]
> <4> [319.984189]  ? 0xffffffff81000000
> <4> [319.984192]  ? queue_work_node+0x90/0x90
> <4> [319.984202]  intel_gt_handle_error+0x2c2/0x410 [i915]
> <4> [319.984267]  ? _raw_spin_unlock_irqrestore+0x54/0x70
> <4> [319.984271]  ? lockdep_hardirqs_on+0xbf/0x140
> <4> [319.984276]  ? intel_guc_find_hung_context+0x19e/0x1d0 [i915]
> <4> [319.984352]  reset_engine+0x99/0xd0 [i915]
> <4> [319.984399]  ? __drm_printfn_seq_file+0x20/0x20
> <4> [319.984406]  heartbeat+0x4cd/0x4f0 [i915]
> <4> [319.984454]  process_one_work+0x272/0x5b0
> <4> [319.984461]  worker_thread+0x37/0x370
> <4> [319.984465]  ? process_one_work+0x5b0/0x5b0
> <4> [319.984467]  kthread+0xed/0x120
> <4> [319.984470]  ? kthread_complete_and_exit+0x20/0x20
> <4> [319.984474]  ret_from_fork+0x1f/0x30
> <4> [319.984484]  </TASK>
> <4> [319.984485] irq event stamp: 36107
> <4> [319.984487] hardirqs last  enabled at (36113): [<ffffffff811391d6>] __up_console_sem+0x66/0x70
> <4> [319.984492] hardirqs last disabled at (36118): [<ffffffff811391bb>] __up_console_sem+0x4b/0x70
> <4> [319.984494] softirqs last  enabled at (34316): [<ffffffff81e00323>] __do_softirq+0x323/0x48e
> <4> [319.984497] softirqs last disabled at (34309): [<ffffffff810c16b8>] irq_exit_rcu+0xb8/0xe0
> <4> [319.984499] ---[ end trace 0000000000000000 ]---
> 
> v2:
> - Instead of trying to fix the suspend/resume sequence, restore simply
>   the state w/o the HW readout/sanitization step. (Ville)
> 
> References: https://lore.kernel.org/intel-gfx/20221005175251.3586272-1-imre.deak@intel.com/T/#mcfac180a67f6048096d09fa04347aa088291fafb
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/7021
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 24 ++++++++++++++------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8c3bd9ba0d748..b147ea79c566a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -830,6 +830,20 @@ intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
>  	return y;
>  }
>  
> +static int
> +intel_display_commit_duplicated_state(struct intel_atomic_state *state,
> +				      struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	int ret;
> +
> +	ret = drm_atomic_helper_commit_duplicated_state(&state->base, ctx);
> +
> +	drm_WARN_ON(&i915->drm, ret == -EDEADLK);
> +
> +	return ret;
> +}
> +
>  static int
>  __intel_display_resume(struct drm_i915_private *i915,
>  		       struct drm_atomic_state *state,
> @@ -837,7 +851,7 @@ __intel_display_resume(struct drm_i915_private *i915,
>  {
>  	struct drm_crtc_state *crtc_state;
>  	struct drm_crtc *crtc;
> -	int i, ret;
> +	int i;
>  
>  	intel_modeset_setup_hw_state(i915, ctx);
>  	intel_vga_redisable(i915);
> @@ -863,11 +877,7 @@ __intel_display_resume(struct drm_i915_private *i915,
>  	if (!HAS_GMCH(i915))
>  		to_intel_atomic_state(state)->skip_intermediate_wm = true;
>  
> -	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
> -
> -	drm_WARN_ON(&i915->drm, ret == -EDEADLK);
> -
> -	return ret;
> +	return intel_display_commit_duplicated_state(to_intel_atomic_state(state), ctx);
>  }
>  
>  static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
> @@ -959,7 +969,7 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
>  	/* reset doesn't touch the display */
>  	if (!gpu_reset_clobbers_display(i915)) {
>  		/* for testing only restore the display */
> -		ret = __intel_display_resume(i915, state, ctx);
> +		ret = intel_display_commit_duplicated_state(to_intel_atomic_state(state), ctx);
>  		if (ret)
>  			drm_err(&i915->drm,
>  				"Restoring old state failed with %i\n", ret);
> -- 
> 2.37.1

-- 
Ville Syrj�l�
Intel
