Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D4369EFBC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F0510E425;
	Wed, 22 Feb 2023 07:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA7AC10E425
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677052742; x=1708588742;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=w7f79xOB5YOwAJBx3cAzIXPVs4k72/EjIYIM/+URmts=;
 b=KhDi9R8u07ETXtwzdItumgKDTcGbXcl93y1hR4RMJBHGXRc8wnCQdH3Y
 qDQjBbiO4mcvGqonJDKo7Xmj+xnqenx3KCJCz/7Y3YGN2+9dm430/aH+J
 rGlCfhxi/XqjceUHgPopmAdCuNmd4WKPnngtRc17Lm3xWImJnrPjTRyzW
 MnCJ+GnGrdIbUSrl9tB5IJvdyLkNcRbkII9yLwZdqFqTVAghtEAcbEhDU
 LS5L9CXmWDubBdvzK/5GnKjLl7/g+KsPHCsl2V5sLIO6UxgENluV+D2E/
 rOKmGiPW0J5F5gQS/v0KLczlZnWuL2UkHmCIoLzLT6vmqPTIdnoFkdIcy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="313235335"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="313235335"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:58:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="621811224"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="621811224"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.51])
 ([10.213.26.51])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:58:48 -0800
Message-ID: <3b9670a5-9aa7-fe72-8572-8619cea8b16e@intel.com>
Date: Wed, 22 Feb 2023 08:58:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230208114300.3123934-1-imre.deak@intel.com>
 <20230208114300.3123934-2-imre.deak@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230208114300.3123934-2-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 08.02.2023 12:42, Imre Deak wrote:
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

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_fbdev.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 81b41148e592b..e719202d831f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -632,7 +632,13 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
>   	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>   	struct fb_info *info;
>   
> -	if (!ifbdev || !ifbdev->vma)
> +	if (!ifbdev)
> +		return;
> +
> +	if (drm_WARN_ON(&dev_priv->drm, !HAS_DISPLAY(dev_priv)))
> +		return;
> +
> +	if (!ifbdev->vma)
>   		goto set_suspend;
>   
>   	info = ifbdev->helper.info;

