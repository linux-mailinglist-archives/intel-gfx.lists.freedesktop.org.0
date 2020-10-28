Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D550929CF25
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 10:14:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 438736E4A5;
	Wed, 28 Oct 2020 09:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8BC6E4A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 09:14:29 +0000 (UTC)
IronPort-SDR: etuteNrfiIIX1O3LlKrVwPmI0U5kz0VkKyCiGNQnM/Kl/vCVrkuS53pMhFqNIeRQLsQB73bCC7
 hs1W+WlFOdjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="229869236"
X-IronPort-AV: E=Sophos;i="5.77,425,1596524400"; d="scan'208";a="229869236"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 02:14:29 -0700
IronPort-SDR: 675NCGvko+KGDub06lypNoJQb0ZRJL7gW0pVpUEMf03LdjKnRu2ojTavGKSgSpw9vGOsLLHo3u
 QrAnQe8S+Yrg==
X-IronPort-AV: E=Sophos;i="5.77,425,1596524400"; d="scan'208";a="468653067"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 02:14:27 -0700
Date: Wed, 28 Oct 2020 14:30:50 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201028090050.GI29526@intel.com>
References: <20201027160928.3665377-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027160928.3665377-1-imre.deak@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix encoder lookup during PSR
 atomic check
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Tseng,
 William" <william.tseng@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-10-27 at 21:39:28 +0530, Imre Deak wrote:
> The atomic check hooks must look up the encoder to be used with a
> connector from the connector's atomic state, and not assume that it's
> the connector's current attached encoder. The latter one can change
> under the atomic check func, or can be unset yet as in the case of MST
> connectors.
I have also observed the similar crash while using DP-MST setup.
Looks good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> This fixes
> [    7.940719] Oops: 0000 [#1] SMP NOPTI
> [    7.944407] CPU: 2 PID: 143 Comm: kworker/2:2 Not tainted 5.6.0-1023-oem #23-Ubuntu
> [    7.952102] Hardware name: Dell Inc. Latitude 7320/, BIOS 88.87.11 09/07/2020
> [    7.959278] Workqueue: events output_poll_execute [drm_kms_helper]
> [    7.965511] RIP: 0010:intel_psr_atomic_check+0x37/0xa0 [i915]
> [    7.971327] Code: 80 2d 06 00 00 20 74 42 80 b8 34 71 00 00 00 74 39 48 8b 72 08 48 85 f6 74 30 80 b8 f8 71 00 00 00 74 27 4c 8b 87 80 04 00 00 <41> 8b 78 78 83 ff 08 77 19 31 c9 83 ff 05 77 19 48 81 c1 20 01 00
> [    7.977541] input: PS/2 Generic Mouse as /devices/platform/i8042/serio1/input/input5
> [    7.990154] RSP: 0018:ffffb864c073fac8 EFLAGS: 00010202
> [    7.990155] RAX: ffff8c5d55ce0000 RBX: ffff8c5d54519000 RCX: 0000000000000000
> [    7.990155] RDX: ffff8c5d55cb30c0 RSI: ffff8c5d89a0c800 RDI: ffff8c5d55fcf800
> [    7.990156] RBP: ffffb864c073fac8 R08: 0000000000000000 R09: ffff8c5d55d9f3a0
> [    7.990156] R10: ffff8c5d55cb30c0 R11: 0000000000000009 R12: ffff8c5d55fcf800
> [    7.990156] R13: ffff8c5d55cb30c0 R14: ffff8c5d56989cc0 R15: ffff8c5d56989cc0
> [    7.990158] FS:  0000000000000000(0000) GS:ffff8c5d8e480000(0000) knlGS:0000000000000000
> [    8.047193] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    8.052970] CR2: 0000000000000078 CR3: 0000000856500005 CR4: 0000000000760ee0
> [    8.060137] PKRU: 55555554
> [    8.062867] Call Trace:
> [    8.065361]  intel_digital_connector_atomic_check+0x53/0x130 [i915]
> [    8.071703]  intel_dp_mst_atomic_check+0x5b/0x200 [i915]
> [    8.077074]  drm_atomic_helper_check_modeset+0x1db/0x790 [drm_kms_helper]
> [    8.083942]  intel_atomic_check+0x92/0xc50 [i915]
> [    8.088705]  ? drm_plane_check_pixel_format+0x4f/0xb0 [drm]
> [    8.094345]  ? drm_atomic_plane_check+0x7a/0x3a0 [drm]
> [    8.099548]  drm_atomic_check_only+0x2b1/0x450 [drm]
> [    8.104573]  drm_atomic_commit+0x18/0x50 [drm]
> [    8.109070]  drm_client_modeset_commit_atomic+0x1c9/0x200 [drm]
> [    8.115056]  drm_client_modeset_commit_force+0x55/0x160 [drm]
> [    8.120866]  drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xb0 [drm_kms_helper]
> [    8.128415]  drm_fb_helper_set_par+0x34/0x50 [drm_kms_helper]
> [    8.134225]  drm_fb_helper_hotplug_event.part.0+0xb4/0xe0 [drm_kms_helper]
> [    8.141150]  drm_fb_helper_hotplug_event+0x1c/0x30 [drm_kms_helper]
> [    8.147481]  intel_fbdev_output_poll_changed+0x6f/0xa0 [i915]
> [    8.153287]  drm_kms_helper_hotplug_event+0x2c/0x40 [drm_kms_helper]
> [    8.159709]  output_poll_execute+0x1aa/0x1c0 [drm_kms_helper]
> [    8.165506]  process_one_work+0x1e8/0x3b0
> [    8.169561]  worker_thread+0x4d/0x400
> [    8.173249]  kthread+0x104/0x140
> [    8.176515]  ? process_one_work+0x3b0/0x3b0
> [    8.180726]  ? kthread_park+0x90/0x90
> [    8.184416]  ret_from_fork+0x1f/0x40
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2361
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/2486
> Reported-by: William Tseng <william.tseng@intel.com>
> Reported-by: Cooper Chiou <cooper.chiou@intel.com>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index b2544102e7b1..1576c3722d0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1884,7 +1884,7 @@ void intel_psr_atomic_check(struct drm_connector *connector,
>  		return;
>  
>  	intel_connector = to_intel_connector(connector);
> -	dig_port = enc_to_dig_port(intel_attached_encoder(intel_connector));
> +	dig_port = enc_to_dig_port(to_intel_encoder(new_state->best_encoder));
>  	if (dev_priv->psr.dp != &dig_port->dp)
>  		return;
>  
> -- 
> 2.25.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
