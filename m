Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33615695EC1
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 10:18:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3A010E830;
	Tue, 14 Feb 2023 09:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5843910E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 09:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676366308; x=1707902308;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YI55ih0oazKAtjzIMKBv5cvZnaMwdTV5MFJUBsw8Rjg=;
 b=QFg3C44WLgpdcDa0CWU+JQNPOcnp+ciP6vs3rWDIzNid1zIBlTZcSpQI
 1RR3JjQ09w8ruSXXMDQDUIUS7Jjzh1oPmrtu5W7EBRM9Qr9C3J3hHmB+E
 Y3+fcxw2fsG0e6Pokw9cADpYbAslhNHFgBKibLO12YiG2noLMZnD5e3pK
 Z4y9fZ84d3ziZxkZ5yBJ/gYy8FATpiILhVF+RmnyAQWoVJ8Jt25IR15cp
 o041Ni+xmPoNOEmXgd92cQSkOwsJ6JCM+KOQgAxFF9OZbjZDdh5Uds9Qn
 PlH3z2nJ3e2KL9eeOSyRzggKOsD1Tl1f4CxuSXKs2N25MZVoGED/7Yvbs g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="329745097"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="329745097"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:18:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="671159900"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="671159900"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:18:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208114300.3123934-4-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208114300.3123934-1-imre.deak@intel.com>
 <20230208114300.3123934-4-imre.deak@intel.com>
Date: Tue, 14 Feb 2023 11:18:24 +0200
Message-ID: <87o7pwtxjz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/dgfx,
 mtl+: Disable display functionality if the display is not present
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

On Wed, 08 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> DG1/DG2 and MTL+ has added a new display-present HW flag. Check this
> flag and if cleared, disable the driver's display functionality.
>
> So far the missing check resulted in running the display initialization
> sequence, and the WARNs below, due to the display register accesses
> timing out:
>
> [    3.902843] ------------[ cut here ]------------
> [    3.902848] i915 0000:03:00.0: drm_WARN_ON(intel_de_wait_for_set(dev_priv, ((const i915_reg_t){ .reg = (0x42000) }), (1 << (27 - (pg))), 1))
> [    3.902879] WARNING: CPU: 6 PID: 462 at drivers/gpu/drm/i915/display/intel_display_power_well.c:326 gen9_wait_for_power_well_fuses+0x71/0x80 [i915]
> [    3.903009] Modules linked in: hid_sensor_hub intel_ishtp_hid i915(+) rtsx_pci_sdmmc drm_buddy mmc_core drm_display_helper crct10dif_pclmul nvme cec crc32_pclmul intel_ish_ipc crc32c_intel ucsi_acpi hid_multitouch nvme_core ghash_clmulni_intel typec_ucsi rtsx_pci ttm sha512_ssse3 serio_raw intel_ishtp typec video i2c_hid_acpi i2c_hid wmi pinctrl_tigerlake ip6_tables ip_tables x_tables fuse
> [    3.903021] CPU: 6 PID: 462 Comm: systemd-udevd Tainted: G     U             6.2.0-rc6+ #50
> [    3.903023] Hardware name: LENOVO 82VB/LNVNB161216, BIOS KMCN09WW 04/26/2022
> [    3.903023] RIP: 0010:gen9_wait_for_power_well_fuses+0x71/0x80 [i915]
> [    3.903105] Code: 48 8b 5f 50 48 85 db 75 03 48 8b 1f e8 98 bb 0d e9 48 c7 c1 00 65 a1 c0 48 89 da 48 c7 c7 4b c5 a3 c0 48 89 c6 e8 e3 df 53 e9 <0f> 0b 5b c3 cc cc cc cc 0f 1f 80 00 00 00 00 90 90 90 90 90 90 90
> [    3.903106] RSP: 0018:ffffa7cec0b07a98 EFLAGS: 00010292
> [    3.903107] RAX: 0000000000000080 RBX: ffff9a05430eaaa0 RCX: 0000000000000000
> [    3.903108] RDX: 0000000000000001 RSI: ffffffffaa7ab69e RDI: 00000000ffffffff
> [    3.903108] RBP: ffff9a0552ba2020 R08: ffffffffab062ce0 R09: 00000000abd3ffc2
> [    3.903109] R10: ffffffffffffffff R11: 0000000000000081 R12: 0000000000000000
> [    3.903109] R13: ffff9a05532a9cb0 R14: ffffffffc09e1670 R15: ffff9a0543132000
> [    3.903110] FS:  00007f24d0fe5b40(0000) GS:ffff9a0ccf780000(0000) knlGS:0000000000000000
> [    3.903110] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    3.903111] CR2: 00005643d7a31a28 CR3: 0000000111614002 CR4: 0000000000770ee0
> [    3.903112] PKRU: 55555554
> [    3.903112] Call Trace:
> [    3.903113]  <TASK>
> [    3.903114]  hsw_power_well_enable+0x12f/0x1a0 [i915]
> [    3.903191]  intel_power_well_enable+0x21/0x70 [i915]
> [    3.903265]  icl_display_core_init+0x92/0x6a0 [i915]
> [    3.903346]  intel_power_domains_init_hw+0x1da/0x5b0 [i915]
> [    3.903422]  intel_modeset_init_noirq+0x60/0x250 [i915]
> [    3.903497]  i915_driver_probe+0x562/0xe10 [i915]
> [    3.903557]  ? i915_pci_probe+0x87/0x180 [i915]
> [    3.903617]  local_pci_probe+0x3e/0x80
> [    3.903621]  pci_device_probe+0xb3/0x210
> [    3.903622]  really_probe+0xdb/0x380
> [    3.903624]  ? pm_runtime_barrier+0x50/0x90
> [    3.903626]  __driver_probe_device+0x78/0x170
> [    3.903627]  driver_probe_device+0x1f/0x90
> [    3.903628]  __driver_attach+0xce/0x1c0
> [    3.903629]  ? __pfx___driver_attach+0x10/0x10
> [    3.903630]  bus_for_each_dev+0x5f/0x90
> [    3.903631]  bus_add_driver+0x1ae/0x200
> [    3.903632]  driver_register+0x89/0xe0
> [    3.903634]  i915_init+0x1f/0x7f [i915]
> [    3.903695]  ? __pfx_init_module+0x10/0x10 [i915]
> [    3.903751]  do_one_initcall+0x43/0x220
> [    3.903753]  ? kmalloc_trace+0x26/0x90
> [    3.903756]  do_init_module+0x4a/0x200
> [    3.903758]  __do_sys_init_module+0x157/0x180
> [    3.903760]  do_syscall_64+0x58/0xc0
> [    3.903762]  ? do_syscall_64+0x67/0xc0
> [    3.903762]  ? exc_page_fault+0x70/0x170
> [    3.903764]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
>
> Bspec: 49189, 53112
>
> v2: (Jani)
> - Change "Display fused off" dmesg info to "Display not present".
> - Zero only runtime->pipe_mask, other fields being zeroed based on this
>   later.
> - Detect display presence already before the fused-off checks and only for
>   HAS_DISPLAY().
>
> Reported-and-tested-by: iczero <iczero@hellomouse.net>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8015
> Cc: iczero <iczero@hellomouse.net>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h          | 3 +++
>  drivers/gpu/drm/i915/intel_device_info.c | 8 ++++++++
>  2 files changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 596efc940ee70..a22a0fa299645 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -116,6 +116,9 @@
>   *  #define GEN8_BAR                    _MMIO(0xb888)
>   */
>  
> +#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> +#define   DEPRESENT			REG_BIT(9)
> +
>  #define GU_CNTL				_MMIO(0x101010)
>  #define   LMEM_INIT			REG_BIT(7)
>  #define   DRIVERFLR			REG_BIT(31)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 98769e5f2c3d1..e07deb4630f97 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -436,6 +436,14 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  			runtime->num_sprites[pipe] = 1;
>  	}
>  
> +	if (HAS_DISPLAY(dev_priv) &&
> +	    (IS_DGFX(dev_priv) || DISPLAY_VER(dev_priv) >= 14) &&
> +	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT)) {
> +		drm_info(&dev_priv->drm, "Display not preset, disabling\n");
> +
> +		runtime->pipe_mask = 0;
> +	}
> +
>  	if (HAS_DISPLAY(dev_priv) && IS_GRAPHICS_VER(dev_priv, 7, 8) &&
>  	    HAS_PCH_SPLIT(dev_priv)) {
>  		u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);

-- 
Jani Nikula, Intel Open Source Graphics Center
