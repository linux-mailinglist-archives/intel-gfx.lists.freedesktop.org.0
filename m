Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4C0695EB7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 10:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133E210E830;
	Tue, 14 Feb 2023 09:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B6210E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 09:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676366224; x=1707902224;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SIw5/uurHfRjpQsDLE3dgVVGS+FTD+vyQYvXOCl0w0E=;
 b=cUXoYmorPNCYBICH8pB9B2h8Q0FyN2bjdOQHbg4VRE5wtjpZ2NnamLle
 SIwhMbUC6qknNZyBUvKmJo87xux6MDeYavSAD4ppDwBUATmKJeIkzqaFY
 GP0bh4ScqgRotZrjX4y8CzwJpKb0VASSKrvrsXoJdEMHhibrvFFkfBZkd
 e6LQ4L1gMWIVBTIXyPdJG3i/hv9V+2BY17nWJckKUdnHlUlb0fxa1ZehO
 XsGNjDnu5GU/OOCNwyFpfzFwMqqTUn/c9fSdS8iYCKBXqoLJly9QNTAdm
 F7u9w9cSXA+9VBIJ5zF0dvE6+gvWtBIwPj6HNVAfbcQqEr5Ycy0qJh9Sl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="332431375"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="332431375"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:17:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="618994802"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="618994802"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:17:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208114300.3123934-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208114300.3123934-1-imre.deak@intel.com>
 <20230208114300.3123934-2-imre.deak@intel.com>
Date: Tue, 14 Feb 2023 11:17:00 +0200
Message-ID: <87r0ustxmb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915: Fix system suspend without
 fbdev being initialized
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> If fbdev is not initialized for some reason - in practice on platforms
> without display - suspending fbdev should be skipped during system
> suspend, fix this up. While at it add an assert that suspending fbdev
> only happens with the display present.
>
> This fixes the following:
>
> [   91.227923] PM: suspend entry (s2idle)
> [   91.254598] Filesystems sync: 0.025 seconds
> [   91.270518] Freezing user space processes
> [   91.272266] Freezing user space processes completed (elapsed 0.001 seconds)
> [   91.272686] OOM killer disabled.
> [   91.272872] Freezing remaining freezable tasks
> [   91.274295] Freezing remaining freezable tasks completed (elapsed 0.001 seconds)
> [   91.659622] BUG: kernel NULL pointer dereference, address: 00000000000001c8
> [   91.659981] #PF: supervisor write access in kernel mode
> [   91.660252] #PF: error_code(0x0002) - not-present page
> [   91.660511] PGD 0 P4D 0
> [   91.660647] Oops: 0002 [#1] PREEMPT SMP NOPTI
> [   91.660875] CPU: 4 PID: 917 Comm: bash Not tainted 6.2.0-rc7+ #54
> [   91.661185] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS edk2-20221117gitfff6d81270b5-9.fc37 unknown
> [   91.661680] RIP: 0010:mutex_lock+0x19/0x30
> [   91.661914] Code: 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f 44 00 00 53 48 89 fb e8 62 d3 ff ff 31 c0 65 48 8b 14 25 00 15 03 00 <f0> 48 0f b1 13 75 06 5b c3 cc cc cc cc 48 89 df 5b eb b4 0f 1f 40
> [   91.662840] RSP: 0018:ffffa1e8011ffc08 EFLAGS: 00010246
> [   91.663087] RAX: 0000000000000000 RBX: 00000000000001c8 RCX: 0000000000000000
> [   91.663440] RDX: ffff8be455eb0000 RSI: 0000000000000001 RDI: 00000000000001c8
> [   91.663802] RBP: ffff8be459440000 R08: ffff8be459441f08 R09: ffffffff8e1432c0
> [   91.664167] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000001
> [   91.664532] R13: 00000000000001c8 R14: 0000000000000000 R15: ffff8be442f4fb20
> [   91.664905] FS:  00007f28ffc16740(0000) GS:ffff8be4bb900000(0000) knlGS:0000000000000000
> [   91.665334] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   91.665626] CR2: 00000000000001c8 CR3: 0000000114926006 CR4: 0000000000770ee0
> [   91.665988] PKRU: 55555554
> [   91.666131] Call Trace:
> [   91.666265]  <TASK>
> [   91.666381]  intel_fbdev_set_suspend+0x97/0x1b0 [i915]
> [   91.666738]  i915_drm_suspend+0xb9/0x100 [i915]
> [   91.667029]  pci_pm_suspend+0x78/0x170
> [   91.667234]  ? __pfx_pci_pm_suspend+0x10/0x10
> [   91.667461]  dpm_run_callback+0x47/0x150
> [   91.667673]  __device_suspend+0x10a/0x4e0
> [   91.667880]  dpm_suspend+0x134/0x270
> [   91.668069]  dpm_suspend_start+0x79/0x80
> [   91.668272]  suspend_devices_and_enter+0x11b/0x890
> [   91.668526]  pm_suspend.cold+0x270/0x2fc
> [   91.668737]  state_store+0x46/0x90
> [   91.668916]  kernfs_fop_write_iter+0x11b/0x200
> [   91.669153]  vfs_write+0x1e1/0x3a0
> [   91.669336]  ksys_write+0x53/0xd0
> [   91.669510]  do_syscall_64+0x58/0xc0
> [   91.669699]  ? syscall_exit_to_user_mode_prepare+0x18e/0x1c0
> [   91.669980]  ? syscall_exit_to_user_mode_prepare+0x18e/0x1c0
> [   91.670278]  ? syscall_exit_to_user_mode+0x17/0x40
> [   91.670524]  ? do_syscall_64+0x67/0xc0
> [   91.670717]  ? __irq_exit_rcu+0x3d/0x140
> [   91.670931]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> [   91.671202] RIP: 0033:0x7f28ffd14284
>
> Fixes: f8cc091e0530 ("drm/i915/fbdev: suspend HPD before fbdev unregistration")
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8015
> Tested-by: iczero <iczero@hellomouse.net>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: iczero <iczero@hellomouse.net>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Cc: <stable@vger.kernel.org> # v6.1+
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 81b41148e592b..e719202d831f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -632,7 +632,13 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
>  	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>  	struct fb_info *info;
>  
> -	if (!ifbdev || !ifbdev->vma)
> +	if (!ifbdev)
> +		return;
> +
> +	if (drm_WARN_ON(&dev_priv->drm, !HAS_DISPLAY(dev_priv)))
> +		return;
> +
> +	if (!ifbdev->vma)
>  		goto set_suspend;
>  
>  	info = ifbdev->helper.info;

-- 
Jani Nikula, Intel Open Source Graphics Center
