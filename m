Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB0A4FC0DE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 17:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC2C10E15D;
	Mon, 11 Apr 2022 15:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7E410E15D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 15:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649691278; x=1681227278;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/ue2M8LfE8aaJ2eYSaJeR3nFLslhaVwHS0VeOb3w97k=;
 b=jPMesVoAEghBn+NY24gg0XlXtEzfXgtsjDurvtv1plhHXegR9ZeVeMzE
 xRYWOiDK75oK2bExZAosjX2lEBaTXvHMnnc6Kfgld6yxI2l4cWx3WuOuT
 TlcNjpNSCkqnXwEeYmQoylJRa+pP7W0cBwcTo4wkyfTVDN3NlnQr68n7k
 32bFpKaTJdICThd/qQbYTbnmtPRGHN8GwrgEKnP5KgTrOjiKfPW8ZA84A
 GUPt+x7E4xELkxU5YZDcdklvFmkcwlZpc9J8entB6YlB1axeXl4ZrKcIM
 Mls+Hea5g1xtl7MVUwRwjpw1352on0xam5VmUPG3FONVBCsWNi9kIE6G2 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="259740489"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="259740489"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 08:34:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="572258261"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 08:34:36 -0700
Date: Mon, 11 Apr 2022 08:34:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YlRKizF+0co0sKwt@mdroper-desk1.amr.corp.intel.com>
References: <20220410061537.4187383-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220410061537.4187383-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Do not explode on phy
 calibration error
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

On Sat, Apr 09, 2022 at 11:15:36PM -0700, Lucas De Marchi wrote:
> When the PHY fails on calibration we were previously skipping the ddi
> initialization. However the driver is not really prepared for that,
> ultimately leading to a NULL pointer dereference:
> 
> [   75.748348] i915 0000:03:00.0: [drm:intel_modeset_init_nogem [i915]] SNPS PHY A failed to calibrate; output will not be used.
> ...
> [   75.750336] i915 0000:03:00.0: [drm:intel_modeset_setup_hw_state [i915]] [CRTC:80:pipe A] hw state readout: enabled
> ...
> 
> ( no DDI A/PHY A )
> [   75.753080] i915 0000:03:00.0: [drm:intel_modeset_setup_hw_state [i915]] [ENCODER:235:DDI B/PHY B] hw state readout: disabled, pipe A
> [   75.753164] i915 0000:03:00.0: [drm:intel_modeset_setup_hw_state [i915]] [ENCODER:245:DDI C/PHY C] hw state readout: disabled, pipe A
> ...
> [   75.754425] i915 0000:03:00.0: [drm] *ERROR* crtc 80: Can't calculate constants, dotclock = 0!
> [   75.765558] i915 0000:03:00.0: drm_WARN_ON_ONCE(drm_drv_uses_atomic_modeset(dev))
> [   75.765569] WARNING: CPU: 5 PID: 1759 at drivers/gpu/drm/drm_vblank.c:728 drm_crtc_vblank_helper_get_vblank_timestamp_internal+0x347/0x360
> ...
> [   75.781230] BUG: kernel NULL pointer dereference, address: 000000000000007c
> [   75.788198] #PF: supervisor read access in kernel mode
> [   75.793347] #PF: error_code(0x0000) - not-present page
> [   75.798480] PGD 0 P4D 0
> [   75.801019] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [   75.805377] CPU: 5 PID: 1759 Comm: modprobe Tainted: G        W         5.18.0-rc1-demarchi+ #199
> [   75.827613] RIP: 0010:icl_aux_power_well_disable+0x3b/0x200 [i915]
> [   75.833890] Code: 83 ec 30 65 48 8b 04 25 28 00 00 00 48 89 44 24 28 48 8b 06 0f b6 70 1c f6 40 20 04 8d 56 fa 0f 45 f2 e8 88 bd ff ff 48 89 ef <8b> 70 7c e8 ed 67 ff ff 48 89 ef 89 c6 e8 73 67 ff ff 84 c0 75 0a
> [   75.852629] RSP: 0018:ffffc90003a7fb30 EFLAGS: 00010246
> [   75.857852] RAX: 0000000000000000 RBX: ffff8881145e8f10 RCX: 0000000000000000
> [   75.864978] RDX: ffff888115220840 RSI: 0000000000000000 RDI: ffff888115220000
> [   75.872106] RBP: ffff888115220000 R08: ffff88888effffe8 R09: 00000000fffdffff
> [   75.879234] R10: ffff88888e200000 R11: ffff88888ed00000 R12: ffff8881145e8f10
> [   75.886363] R13: 0000000000000001 R14: ffff888115223240 R15: 0000000000000000
> [   75.893490] FS:  00007ff6e753a740(0000) GS:ffff88888f680000(0000) knlGS:0000000000000000
> [   75.901573] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   75.907313] CR2: 000000000000007c CR3: 00000001216a6001 CR4: 0000000000770ee0
> [   75.914446] PKRU: 55555554
> [   75.917153] Call Trace:
> [   75.919603]  <TASK>
> [   75.921709]  intel_power_domains_sanitize_state+0x88/0xb0 [i915]
> [   75.927814]  intel_modeset_init_nogem+0x317/0xef0 [i915]
> [   75.933205]  i915_driver_probe+0x5f6/0xdf0 [i915]
> [   75.937976]  i915_pci_probe+0x51/0x1d0 [i915]
> 
> We skip the initialization of PHY A, but later we try to find out what is the phy
> for that power well and dereference dig_port, which is NULL.
> 
> Failing the PHY calibration could be left as a warning or error, like it
> was before commit b4eb76d82a0e ("drm/i915/dg2: Skip output init on PHY
> calibration failure"). However that often fails for outputs not being
> used, which would make the warning/error appear on systems that have no
> visible issues. Anyway, there is still a need to fix those failures,
> but that is left for later.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index cec578efc4bd..027cc4cc38d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4300,9 +4300,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	if (intel_phy_is_snps(dev_priv, phy) &&
>  	    dev_priv->snps_phy_failed_calibration & BIT(phy)) {
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "SNPS PHY %c failed to calibrate; output will not be used.\n",
> +			    "SNPS PHY %c failed to calibrate, proceeding anyway\n",
>  			    phy_name(phy));
> -		return;
>  	}
>  
>  	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
> -- 
> 2.35.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
