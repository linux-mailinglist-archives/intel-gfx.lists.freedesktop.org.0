Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A149ABB64F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 09:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0E4910E226;
	Mon, 19 May 2025 07:38:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OVbNf7N1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A560610E20B
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 May 2025 07:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747640300; x=1779176300;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=nKBuv9fSwPFJR4ca2JX41OVI4PEZRxaiih02GkXtlWk=;
 b=OVbNf7N1pOuQ7AP1vt30UiZb97qZlMboB5TmrQXRu2U0E6WqCn73zTFw
 BRZ+PlRaBPstdzPZydRpcAQdtk2y7gdlSoaU42DjZW64zaYb+e8VMVcO0
 SuCx2JV9cumNuzWUGSpjGf0oQB3dQJIaed6rixYTPK/07zEtZmrfoAFnB
 AKS1DORHd3WIpHRqLvu+dDyMGP9F4+8wMHtxhM5NGhIdI/fD5dQDqdd+V
 7uP2SoSCUrtbK7X1tFXSZFmoA7AdGAklJVZkFig0/+fP/U/ngavvC/PoS
 JAzWtsWrVOJg9L/1q8iAOs+Iq73LU5ehDtIi5pvbOoOX0vskSEyylwlwA w==;
X-CSE-ConnectionGUID: zfO8+BrlS2uzPDiTeDOJIw==
X-CSE-MsgGUID: +5cf5E4cQwCcciw9tDKosA==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="60920744"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="60920744"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:38:20 -0700
X-CSE-ConnectionGUID: SMAiXZXpRxOPCHCKnNufTQ==
X-CSE-MsgGUID: BL7TGmu8R8uYybQsgSncjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="170200706"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:38:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Roberto CORRADO <i@corradoroberto.it>, intel-gfx@lists.freedesktop.org
Subject: Re: intel_lvds.c:214 intel_pre_enable_lvds+0x388/0x3a0 [i915]
In-Reply-To: <82EA575C65B543E683EBEFB20BEF7792@corradoroberto.it>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <82EA575C65B543E683EBEFB20BEF7792@corradoroberto.it>
Date: Mon, 19 May 2025 10:38:14 +0300
Message-ID: <87wmaduk2h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
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

On Sun, 18 May 2025, "Roberto CORRADO" <i@corradoroberto.it> wrote:
> Hangs up physical console on my OLD i3 Toshiba Tecra A11 as bellow...

Please file a bug at gitlab with the instructions given at [1].

BR,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


>
> """
> May 18 21:56:35 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:53 tecra kernel: i915 0000:00:02.0: [drm] drm_WARN_ON((val &=
 ((u32)(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(in=
t) =3D=3D sizeof(*(8 ? ((void *)((long)((16) > (31)) * 0l)) : (int *)8))), =
(16) > (31), 0))); })))) + (((~((0UL))) - (((1UL)) << (16)) + 1) & (~((0UL)=
) >> (32 - 1 - (31))))) + ((int)(sizeof(struct { int:(-!!((sizeof(int) =3D=
=3D sizeof(*(8 ? ((void *)((long)(31) * 0l)) : (int *)8))) && (sizeof(int) =
=3D=3D sizeof(*(8 ? ((void *)((long)(16) * 0l)) : (int *)8))) && ((16) < 0 =
|| (31) > 31 || (16) > (31)))); })))))) !=3D ((u32)((((typeof(((u32)(((((in=
t)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) =3D=3D size=
of(*(8 ? ((void *)((long)((16) > (31)) * 0l)) : (int *)8))), (16) > (31), 0=
))); })))) + (((~((0UL))) - (((1UL)) << (16)) + 1) & (~((0UL)) >> (32 - 1 -=
 (31))))) + ((int)(sizeof(struct { int:(-!!((sizeof(int) =3D=3D sizeof(*(8 =
? ((void *)((long)(31) * 0l)) : (int *)8))) && (sizeof(int) =3D=3D sizeof(*=
(8 ? ((void *)((long)(16) * 0l)) : (int *)8))) && ((16) < 0 || (31) > 31 ||=
 (16) > (31)))); })))))))(0xabcd
> May 18 21:58:53 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/i915/display/intel_lvds.c:214 intel_pre_enable_lvds+0x388/0x3a0 [i915]
> May 18 21:58:53 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:53 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Not tainted 6.12.25 #1
> May 18 21:58:53 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:53 tecra kernel: Workqueue: events console_callback
> May 18 21:58:53 tecra kernel: EIP: intel_pre_enable_lvds+0x388/0x3a0 [i91=
5]
> May 18 21:58:53 tecra kernel: Code: 26 00 8b 43 08 8b 50 2c 85 d2 75 02 8=
b 10 89 55 e0 e8 3c 22 d1 d4 68 7c 77 dd f8 8b 55 e0 52 50 68 0b f2 de f8 e=
8 88 c0 04 d4 <0f> 0b 83 c4 10 e9 0c fd ff ff 66 90 2e 8d b4 26 00 00 00 00=
 8d 74
> May 18 21:58:54 tecra kernel: EAX: 000003ff EBX: c312a000 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: 000c7204 EDI: 00000003 EBP: c561bbec E=
SP: c561bbbc
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 08057700 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  ? intel_lvds_get_config+0x110/0x110 [i915]
> May 18 21:58:54 tecra kernel:  intel_encoders_pre_enable+0x6b/0x80 [i915]
> May 18 21:58:54 tecra kernel:  ilk_crtc_enable+0x9a/0x200 [i915]
> May 18 21:58:54 tecra kernel:  intel_enable_crtc+0xe7/0x100 [i915]
> May 18 21:58:54 tecra kernel:  intel_commit_modeset_enables+0x43/0xc0 [i9=
15]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0x876/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  ? flush_workqueue_prep_pwqs+0x106/0x130
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] panel assertion fa=
ilure, pipe A regs locked
> May 18 21:58:54 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/i915/display/intel_pps.c:1809 assert_pps_unlocked+0x103/0x2d0 [i915]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: events console_callback
> May 18 21:58:54 tecra kernel: EIP: assert_pps_unlocked+0x103/0x2d0 [i915]
> May 18 21:58:54 tecra kernel: Code: be b3 11 00 00 00 0f 84 7c cc 02 00 8=
b 46 08 8b 70 2c 85 f6 75 02 8b 30 e8 7a c0 d0 d4 53 56 50 68 4c e1 dd f8 e=
8 cd 5e 04 d4 <0f> 0b 83 c4 10 eb 9a 8d b6 00 00 00 00 8d 48 04 83 c0 08 89=
 c2 89
> May 18 21:58:54 tecra kernel: EAX: 00000044 EBX: 00000041 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: c1951490 EDI: 00000000 EBP: c561bbd8 E=
SP: c561bba8
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 08057700 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  ilk_pch_enable+0x7d/0x660 [i915]
> May 18 21:58:54 tecra kernel:  ilk_crtc_enable+0x17a/0x200 [i915]
> May 18 21:58:54 tecra kernel:  intel_enable_crtc+0xe7/0x100 [i915]
> May 18 21:58:54 tecra kernel:  intel_commit_modeset_enables+0x43/0xc0 [i9=
15]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0x876/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  ? flush_workqueue_prep_pwqs+0x106/0x130
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] PCH DPLL A asserti=
on failure (expected on, current off)
> May 18 21:58:54 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/i915/display/intel_dpll_mgr.c:184 assert_shared_dpll+0xf7/0x120 [i915]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: events console_callback
> May 18 21:58:54 tecra kernel: EIP: assert_shared_dpll+0xf7/0x120 [i915]
> May 18 21:58:54 tecra kernel: Code: 8b 46 08 8b 58 2c 85 db 74 31 89 55 a=
c 89 4d b0 e8 4e 26 db d4 57 8b 55 ac 52 8b 4d b0 51 53 50 68 44 de db f8 e=
8 99 c4 0e d4 <0f> 0b 83 c4 18 e9 48 ff ff ff 8d b4 26 00 00 00 00 8b 18 eb=
 cb e8
> May 18 21:58:54 tecra kernel: EAX: 00000050 EBX: c1951490 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: c312a000 EDI: f8dea755 EBP: c561bbd8 E=
SP: c561bb6c
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 08057700 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  ilk_pch_enable+0xd8/0x660 [i915]
> May 18 21:58:54 tecra kernel:  ilk_crtc_enable+0x17a/0x200 [i915]
> May 18 21:58:54 tecra kernel:  intel_enable_crtc+0xe7/0x100 [i915]
> May 18 21:58:54 tecra kernel:  intel_commit_modeset_enables+0x43/0xc0 [i9=
15]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0x876/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  ? flush_workqueue_prep_pwqs+0x106/0x130
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* failed to =
enable transcoder A
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] vblank wait timed =
out on crtc 0
> May 18 21:58:54 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/drm_vblank.c:1307 drm_wait_one_vblank+0x1d9/0x1f0 [drm]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: events console_callback
> May 18 21:58:54 tecra kernel: EIP: drm_wait_one_vblank+0x1d9/0x1f0 [drm]
> May 18 21:58:54 tecra kernel: Code: 2d 14 9f d4 85 ff 0f 85 af fe ff ff 8=
b 43 08 8b 78 2c 85 ff 75 02 8b 38 e8 74 6a 65 d5 56 57 50 68 d4 35 41 f8 e=
8 c7 08 99 d4 <0f> 0b 83 c4 10 e9 87 fe ff ff e8 18 2e b3 d5 2e 8d b4 26 00=
 00 00
> May 18 21:58:54 tecra kernel: EAX: 00000038 EBX: c312a000 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: 00000000 EDI: c1951490 EBP: c561bbfc E=
SP: c561bbbc
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 08057700 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  ? nsec_high+0xa0/0xa0
> May 18 21:58:54 tecra kernel:  drm_crtc_wait_one_vblank+0x12/0x20 [drm]
> May 18 21:58:54 tecra kernel:  intel_crtc_wait_for_next_vblank+0xd/0x20 [=
i915]
> May 18 21:58:54 tecra kernel:  ilk_crtc_enable+0x167/0x200 [i915]
> May 18 21:58:54 tecra kernel:  intel_enable_crtc+0xe7/0x100 [i915]
> May 18 21:58:54 tecra kernel:  intel_commit_modeset_enables+0x43/0xc0 [i9=
15]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0x876/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  ? flush_workqueue_prep_pwqs+0x106/0x130
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] vblank wait timed =
out on crtc 0
> May 18 21:58:54 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/drm_vblank.c:1307 drm_wait_one_vblank+0x1d9/0x1f0 [drm]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: events console_callback
> May 18 21:58:54 tecra kernel: EIP: drm_wait_one_vblank+0x1d9/0x1f0 [drm]
> May 18 21:58:54 tecra kernel: Code: 2d 14 9f d4 85 ff 0f 85 af fe ff ff 8=
b 43 08 8b 78 2c 85 ff 75 02 8b 38 e8 74 6a 65 d5 56 57 50 68 d4 35 41 f8 e=
8 c7 08 99 d4 <0f> 0b 83 c4 10 e9 87 fe ff ff e8 18 2e b3 d5 2e 8d b4 26 00=
 00 00
> May 18 21:58:54 tecra kernel: EAX: 00000038 EBX: c312a000 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: 00000000 EDI: c1951490 EBP: c561bbfc E=
SP: c561bbbc
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 08057700 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  ? nsec_high+0xa0/0xa0
> May 18 21:58:54 tecra kernel:  drm_crtc_wait_one_vblank+0x12/0x20 [drm]
> May 18 21:58:54 tecra kernel:  intel_crtc_wait_for_next_vblank+0xd/0x20 [=
i915]
> May 18 21:58:54 tecra kernel:  ilk_crtc_enable+0x16e/0x200 [i915]
> May 18 21:58:54 tecra kernel:  intel_enable_crtc+0xe7/0x100 [i915]
> May 18 21:58:54 tecra kernel:  intel_commit_modeset_enables+0x43/0xc0 [i9=
15]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0x876/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  ? flush_workqueue_prep_pwqs+0x106/0x130
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] flip_done timed out
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] drm_WARN_ON(!pll_a=
ctive)
> May 18 21:58:54 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/i915/display/intel_pch_display.c:531 ilk_pch_get_config+0x1dd/0x1f0 [i91=
5]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: events console_callback
> May 18 21:58:54 tecra kernel: EIP: ilk_pch_get_config+0x1dd/0x1f0 [i915]
> May 18 21:58:54 tecra kernel: Code: 2e 8d 74 26 00 8b 45 ec 8b 40 08 8b 7=
0 2c 85 f6 75 02 8b 30 e8 e4 d6 d8 d4 68 4e b9 de f8 56 50 68 3e b9 de f8 e=
8 33 75 0c d4 <0f> 0b 83 c4 10 eb 8c 2e 8d b4 26 00 00 00 00 8d 74 26 00 3e=
 8d 74
> May 18 21:58:54 tecra kernel: EAX: 00000031 EBX: ca606000 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: c1951490 EDI: c312a37c EBP: c561bbcc E=
SP: c561bb98
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 0a044624 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  ilk_get_pipe_config+0x16b/0x1d0 [i915]
> May 18 21:58:54 tecra kernel:  intel_crtc_get_pipe_config+0x1f/0x40 [i915]
> May 18 21:58:54 tecra kernel:  intel_modeset_verify_crtc+0xb0/0x480 [i915]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0xbcd/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] FDI dotclock and e=
ncoder dotclock mismatch, fdi: 72857, encoder: 0
> May 18 21:58:54 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/i915/display/intel_modeset_verify.c:103 intel_modeset_verify_crtc+0x3bb/=
0x480 [i915]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: events console_callback
> May 18 21:58:54 tecra kernel: EIP: intel_modeset_verify_crtc+0x3bb/0x480 =
[i915]
> May 18 21:58:54 tecra kernel: Code: 40 08 8b 50 2c 85 d2 75 02 8b 10 89 5=
5 d8 89 4d dc e8 09 17 d9 d4 8b 4d dc 51 53 8b 55 d8 52 50 68 10 71 dc f8 e=
8 55 b5 0c d4 <0f> 0b 83 c4 14 e9 a3 fe ff ff 8d 76 00 8b 45 e4 80 b8 b3 11=
 00 00
> May 18 21:58:54 tecra kernel: EAX: 0000005b EBX: 00011c99 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: c932e400 EDI: c231b000 EBP: c561bc64 E=
SP: c561bc10
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 0a044624 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0xbcd/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] mismatch in pixel_rate (expected 72857, found 0)
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] mismatch in dpll_hw_state=20=20
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* expected:
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* dpll_hw_st=
ate: dpll: 0x88046004, dpll_md: 0x0, fp0: 0x21105, fp1: 0x21105
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* found:
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* dpll_hw_st=
ate: dpll: 0x0, dpll_md: 0x0, fp0: 0x21105, fp1: 0x21105
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] mismatch in hw.pipe_mode.crtc_clock (expected 72857, found 0)
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] mismatch in hw.adjusted_mode.crtc_clock (expected 72857, found 0)
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] mismatch in port_clock (expected 72857, found 0)
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] pipe state doesn't=
 match!
> May 18 21:58:54 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/i915/display/intel_modeset_verify.c:223 intel_modeset_verify_crtc+0x2ad/=
0x480 [i915]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: events console_callback
> May 18 21:58:54 tecra kernel: EIP: intel_modeset_verify_crtc+0x2ad/0x480 =
[i915]
> May 18 21:58:54 tecra kernel: Code: 11 00 00 00 0f 84 dc fa 0a 00 8b 45 e=
4 8b 40 08 8b 58 2c 85 db 75 02 8b 18 e8 0f 18 d9 d4 53 50 68 60 71 dc f8 e=
8 63 b6 0c d4 <0f> 0b 83 c4 0c 8b 45 e0 31 d2 b9 ca b4 de f8 e8 ff 90 fa ff=
 8b 45
> May 18 21:58:54 tecra kernel: EAX: 00000032 EBX: c1951490 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: c932e400 EDI: c231b000 EBP: c561bc64 E=
SP: c561bc18
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 0a044624 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0xbcd/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] PCH DPLL A: pll on=
 state mismatch (expected 1, found 0)
> May 18 21:58:54 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/i915/display/intel_dpll_mgr.c:4635 verify_single_dpll_state+0x2b7/0x400 =
[i915]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: events console_callback
> May 18 21:58:54 tecra kernel: EIP: verify_single_dpll_state+0x2b7/0x400 [=
i915]
> May 18 21:58:54 tecra kernel: Code: 85 d2 0f 84 f3 00 00 00 89 55 a0 89 4=
d a8 e8 10 9a db d4 57 8b 4d a8 51 ff 75 a4 8b 55 a0 52 50 68 f4 d4 db f8 e=
8 59 38 0f d4 <0f> 0b 83 c4 18 e9 04 fe ff ff 8d b4 26 00 00 00 00 0f b6 3b=
 0f b6
> May 18 21:58:54 tecra kernel: EAX: 00000050 EBX: c312ad44 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: c231b000 EDI: 00000000 EBP: c561bbe4 E=
SP: c561bb68
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 0a044624 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  ? __radix_tree_delete+0x8e/0x130
> May 18 21:58:54 tecra kernel:  intel_shared_dpll_state_verify+0x3d/0x190 =
[i915]
> May 18 21:58:54 tecra kernel:  intel_modeset_verify_crtc+0x205/0x480 [i91=
5]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0xbcd/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] PCH DPLL A: pll hw=
 state mismatch
> May 18 21:58:54 tecra kernel: WARNING: CPU: 0 PID: 15250 at drivers/gpu/d=
rm/i915/display/intel_dpll_mgr.c:4664 verify_single_dpll_state+0x15f/0x400 =
[i915]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 0 UID: 0 PID: 15250 Comm: kworker/0:1 =
Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: events console_callback
> May 18 21:58:54 tecra kernel: EIP: verify_single_dpll_state+0x15f/0x400 [=
i915]
> May 18 21:58:54 tecra kernel: Code: 00 00 00 0f 84 20 69 0d 00 8b 45 b0 8=
b 40 08 8b 58 2c 85 db 75 02 8b 18 e8 5e 9b db d4 57 53 50 68 e0 d7 db f8 e=
8 b1 39 0f d4 <0f> 0b 83 c4 10 2e 8d b4 26 00 00 00 00 8d 74 26 00 8b 45 f0=
 64 2b
> May 18 21:58:54 tecra kernel: EAX: 0000003a EBX: c1951490 ECX: 00000002 E=
DX: 00000002
> May 18 21:58:54 tecra kernel: ESI: c312a000 EDI: f8dea8c5 EBP: c561bbe4 E=
SP: c561bb70
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010246
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 0a044624 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  ? __radix_tree_delete+0x8e/0x130
> May 18 21:58:54 tecra kernel:  intel_shared_dpll_state_verify+0x3d/0x190 =
[i915]
> May 18 21:58:54 tecra kernel:  intel_modeset_verify_crtc+0x205/0x480 [i91=
5]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0xbcd/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_commit_atomic+0x1b3/0x1=
e0 [drm]
> May 18 21:58:54 tecra kernel:  drm_client_modeset_dpms+0x6a/0x210 [drm]
> May 18 21:58:54 tecra kernel:  drm_fb_helper_blank+0xf4/0x120 [drm_kms_he=
lper]
> May 18 21:58:54 tecra kernel:  intel_fbdev_blank+0x15/0x50 [i915]
> May 18 21:58:54 tecra kernel:  fb_blank+0x47/0x90
> May 18 21:58:54 tecra kernel:  fbcon_blank+0x165/0x370
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xdd/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xd1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xcb/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xc5/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xbf/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb9/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xb3/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xad/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa7/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0xa1/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x9b/0xf0
> May 18 21:58:54 tecra kernel:  ? __switch_to_asm+0x95/0xf0
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? lock_timer_base+0x6f/0x90
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  ? __mod_timer+0x10a/0x340
> May 18 21:58:54 tecra kernel:  ? fbcon_resize+0x2c0/0x2c0
> May 18 21:58:54 tecra kernel:  do_unblank_screen+0xa1/0x150
> May 18 21:58:54 tecra kernel:  poke_blanked_console+0xb7/0xc0
> May 18 21:58:54 tecra kernel:  console_callback+0x11f/0x170
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* flip_done =
timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] commit wait timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* flip_done =
timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CONNECTOR=
:64:LVDS-1] commit wait timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* flip_done =
timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [PLANE:32:=
primary A] commit wait timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] flip_done timed out
> May 18 21:58:54 tecra kernel: PM: suspend entry (deep)
> May 18 21:58:54 tecra kernel: Filesystems sync: 0.431 seconds
> May 18 21:58:54 tecra kernel: Freezing user space processes
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* flip_done =
timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] commit wait timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* flip_done =
timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CONNECTOR=
:64:LVDS-1] commit wait timed out
> May 18 21:58:54 tecra kernel: Freezing user space processes failed after =
20.003 seconds (3 tasks refusing to freeze, wq_busy=3D0):
> May 18 21:58:54 tecra kernel: task:syslogd         state:D stack:0     pi=
d:806   tgid:806   ppid:1      flags:0x00004006
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  __schedule+0x421/0x13a0
> May 18 21:58:54 tecra kernel:  schedule+0x28/0x130
> May 18 21:58:54 tecra kernel:  schedule_timeout+0x10d/0x140
> May 18 21:58:54 tecra kernel:  __down_common+0xd8/0x1a0
> May 18 21:58:54 tecra kernel:  __down+0x17/0x20
> May 18 21:58:54 tecra kernel:  down+0x4a/0x60
> May 18 21:58:54 tecra kernel:  console_lock+0x21/0x70
> May 18 21:58:54 tecra kernel:  con_write+0x2a/0x40
> May 18 21:58:54 tecra kernel:  ? con_put_char+0x30/0x30
> May 18 21:58:54 tecra kernel:  n_tty_write+0x12c/0x4f0
> May 18 21:58:54 tecra kernel:  ? swake_up_all+0xb0/0xb0
> May 18 21:58:54 tecra kernel:  ? echo_char.isra.0+0xb0/0xb0
> May 18 21:58:54 tecra kernel:  file_tty_write.isra.0+0x154/0x270
> May 18 21:58:54 tecra kernel:  tty_write+0xf/0x20
> May 18 21:58:54 tecra kernel:  do_iter_readv_writev+0x1ce/0x220
> May 18 21:58:54 tecra kernel:  vfs_writev+0xca/0x340
> May 18 21:58:54 tecra kernel:  do_writev+0x7e/0x170
> May 18 21:58:54 tecra kernel:  __ia32_sys_writev+0x17/0x20
> May 18 21:58:54 tecra kernel:  ia32_sys_call+0x2200/0x2500
> May 18 21:58:54 tecra kernel:  __do_fast_syscall_32+0x50/0xd0
> May 18 21:58:54 tecra kernel:  do_fast_syscall_32+0x29/0x70
> May 18 21:58:54 tecra kernel:  do_SYSENTER_32+0x15/0x20
> May 18 21:58:54 tecra kernel:  entry_SYSENTER_32+0x98/0xf9
> May 18 21:58:54 tecra kernel: EIP: 0xb7f7d569
> May 18 21:58:54 tecra kernel: EAX: ffffffda EBX: 00000008 ECX: bffa8e38 E=
DX: 00000009
> May 18 21:58:54 tecra kernel: ESI: 00000000 EDI: 00000000 EBP: 00000000 E=
SP: bffa8cc0
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 0000 GS: 0033 SS: 007=
b EFLAGS: 00000246
> May 18 21:58:54 tecra kernel: task:gpm             state:D stack:0     pi=
d:1178  tgid:1178  ppid:1      flags:0x00000006
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  __schedule+0x421/0x13a0
> May 18 21:58:54 tecra kernel:  ? pick_eevdf+0x35f/0x440
> May 18 21:58:54 tecra kernel:  schedule+0x28/0x130
> May 18 21:58:54 tecra kernel:  schedule_timeout+0x10d/0x140
> May 18 21:58:54 tecra kernel:  __down_common+0xd8/0x1a0
> May 18 21:58:54 tecra kernel:  __down+0x17/0x20
> May 18 21:58:54 tecra kernel:  down+0x4a/0x60
> May 18 21:58:54 tecra kernel:  console_lock+0x21/0x70
> May 18 21:58:54 tecra kernel:  set_selection_kernel+0x21/0x700
> May 18 21:58:54 tecra kernel:  set_selection_user+0x69/0xb0
> May 18 21:58:54 tecra kernel:  tioclinux+0xdc/0x2d0
> May 18 21:58:54 tecra kernel:  vt_ioctl+0xa2d/0x1320
> May 18 21:58:54 tecra kernel:  ? vt_waitactive+0x1a0/0x1a0
> May 18 21:58:54 tecra kernel:  tty_ioctl+0x147/0x930
> May 18 21:58:54 tecra kernel:  ? do_statx_fd+0xc1/0x100
> May 18 21:58:54 tecra kernel:  ? __tty_hangup.part.0+0x310/0x310
> May 18 21:58:54 tecra kernel:  __ia32_sys_ioctl+0x2d7/0xb30
> May 18 21:58:54 tecra kernel:  ? debug_smp_processor_id+0x12/0x20
> May 18 21:58:54 tecra kernel:  ? fpregs_assert_state_consistent+0x25/0x60
> May 18 21:58:54 tecra kernel:  ia32_sys_call+0x1c54/0x2500
> May 18 21:58:54 tecra kernel:  __do_fast_syscall_32+0x50/0xd0
> May 18 21:58:54 tecra kernel:  do_fast_syscall_32+0x29/0x70
> May 18 21:58:54 tecra kernel:  do_SYSENTER_32+0x15/0x20
> May 18 21:58:54 tecra kernel:  entry_SYSENTER_32+0x98/0xf9
> May 18 21:58:54 tecra kernel: EIP: 0xb7f0f569
> May 18 21:58:54 tecra kernel: EAX: ffffffda EBX: 00000006 ECX: 0000541c E=
DX: bfbbc475
> May 18 21:58:54 tecra kernel: ESI: b7dedff4 EDI: 00000000 EBP: bfbbc448 E=
SP: bfbbc430
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 0000 GS: 0033 SS: 007=
b EFLAGS: 00000292
> May 18 21:58:54 tecra kernel: task:agetty          state:D stack:0     pi=
d:1187  tgid:1187  ppid:1      flags:0x00000006
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  __schedule+0x421/0x13a0
> May 18 21:58:54 tecra kernel:  schedule+0x28/0x130
> May 18 21:58:54 tecra kernel:  schedule_timeout+0x10d/0x140
> May 18 21:58:54 tecra kernel:  __down_common+0xd8/0x1a0
> May 18 21:58:54 tecra kernel:  __down+0x17/0x20
> May 18 21:58:54 tecra kernel:  down+0x4a/0x60
> May 18 21:58:54 tecra kernel:  console_lock+0x21/0x70
> May 18 21:58:54 tecra kernel:  do_con_write+0x65/0x20c0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  ? n_tty_read+0x3ec/0x590
> May 18 21:58:54 tecra kernel:  ? _copy_to_iter+0x9c/0x770
> May 18 21:58:54 tecra kernel:  ? preempt_count_add+0x75/0xd0
> May 18 21:58:54 tecra kernel:  ? _raw_spin_lock_irqsave+0x19/0x50
> May 18 21:58:54 tecra kernel:  con_write+0x11/0x40
> May 18 21:58:54 tecra kernel:  ? con_put_char+0x30/0x30
> May 18 21:58:54 tecra kernel:  n_tty_write+0x12c/0x4f0
> May 18 21:58:54 tecra kernel:  ? swake_up_all+0xb0/0xb0
> May 18 21:58:54 tecra kernel:  ? echo_char.isra.0+0xb0/0xb0
> May 18 21:58:54 tecra kernel:  file_tty_write.isra.0+0x154/0x270
> May 18 21:58:54 tecra kernel:  ? redirected_tty_write+0xc0/0xc0
> May 18 21:58:54 tecra kernel:  tty_write+0xf/0x20
> May 18 21:58:54 tecra kernel:  vfs_write+0x27e/0x470
> May 18 21:58:54 tecra kernel:  ksys_write+0x69/0xe0
> May 18 21:58:54 tecra kernel:  __ia32_sys_write+0x15/0x20
> May 18 21:58:54 tecra kernel:  ia32_sys_call+0x1ed2/0x2500
> May 18 21:58:54 tecra kernel:  __do_fast_syscall_32+0x50/0xd0
> May 18 21:58:54 tecra kernel:  do_fast_syscall_32+0x29/0x70
> May 18 21:58:54 tecra kernel:  do_SYSENTER_32+0x15/0x20
> May 18 21:58:54 tecra kernel:  entry_SYSENTER_32+0x98/0xf9
> May 18 21:58:54 tecra kernel: EIP: 0xb7fac569
> May 18 21:58:54 tecra kernel: EAX: ffffffda EBX: 00000001 ECX: bfcd9874 E=
DX: 00000001
> May 18 21:58:54 tecra kernel: ESI: 00000000 EDI: 00000000 EBP: 00000000 E=
SP: bfcd97b0
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 0000 GS: 0033 SS: 007=
b EFLAGS: 00000246
> May 18 21:58:54 tecra kernel: OOM killer enabled.
> May 18 21:58:54 tecra kernel: Restarting tasks ... done.
> May 18 21:58:54 tecra kernel: random: crng reseeded on system resumption
> May 18 21:58:54 tecra kernel: PM: suspend exit
> May 18 21:58:54 tecra kernel: PM: suspend entry (s2idle)
> May 18 21:58:54 tecra kernel: Filesystems sync: 0.805 seconds
> May 18 21:58:54 tecra kernel: Freezing user space processes
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* flip_done =
timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [PLANE:32:=
primary A] commit wait timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] flip_done timed out
> May 18 21:58:54 tecra kernel: Freezing user space processes completed (el=
apsed 12.043 seconds)
> May 18 21:58:54 tecra kernel: OOM killer disabled.
> May 18 21:58:54 tecra kernel: Freezing remaining freezable tasks
> May 18 21:58:54 tecra kernel: Freezing remaining freezable tasks complete=
d (elapsed 0.000 seconds)
> May 18 21:58:54 tecra kernel: printk: Suspending console(s) (use no_conso=
le_suspend to debug)
> May 18 21:58:54 tecra kernel: serial 00:06: disabled
> May 18 21:58:54 tecra kernel: sd 0:0:0:0: [sda] Synchronizing SCSI cache
> May 18 21:58:54 tecra kernel: ata1.00: Entering standby power mode
> May 18 21:58:54 tecra kernel: e1000e: EEE TX LPI TIMER: 00000000
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* flip_done =
timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CRTC:47:p=
ipe A] commit wait timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* flip_done =
timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [CONNECTOR=
:64:LVDS-1] commit wait timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* flip_done =
timed out
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] *ERROR* [PLANE:32:=
primary A] commit wait timed out
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] pipe_off wait time=
d out
> May 18 21:58:54 tecra kernel: WARNING: CPU: 3 PID: 16746 at drivers/gpu/d=
rm/i915/display/intel_display.c:315 intel_disable_transcoder+0x258/0x300 [i=
915]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 3 UID: 0 PID: 16746 Comm: kworker/u16:=
11 Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: async async_run_entry_fn
> May 18 21:58:54 tecra kernel: EIP: intel_disable_transcoder+0x258/0x300 [=
i915]
> May 18 21:58:54 tecra kernel: Code: 83 c4 10 85 c9 0f 84 74 ff ff ff 8b 4=
6 08 8b 58 2c 85 db 0f 84 aa 00 00 00 e8 f4 ff dd d4 53 50 68 58 6c db f8 e=
8 48 9e 11 d4 <0f> 0b 83 c4 0c e9 4b ff ff ff 8d b6 00 00 00 00 8b 55 e8 89=
 d8 e8
> May 18 21:58:54 tecra kernel: EAX: 00000030 EBX: c1951490 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: c312a000 EDI: c312a37c EBP: c31edd18 E=
SP: c31edcf0
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 0a0ae5b0 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  ilk_crtc_disable+0x57/0xd0 [i915]
> May 18 21:58:54 tecra kernel:  intel_old_crtc_state_disables+0xa7/0x150 [=
i915]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0x4d1/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_atomic_helper_disable_all+0x182/0x1a0 =
[drm_kms_helper]
> May 18 21:58:54 tecra kernel:  drm_atomic_helper_suspend+0x94/0x230 [drm_=
kms_helper]
> May 18 21:58:54 tecra kernel:  intel_display_driver_suspend+0x31/0x50 [i9=
15]
> May 18 21:58:54 tecra kernel:  i915_drm_suspend.isra.0+0x5a/0x110 [i915]
> May 18 21:58:54 tecra kernel:  i915_pm_suspend+0x23/0x30 [i915]
> May 18 21:58:54 tecra kernel:  pci_pm_suspend+0x70/0x160
> May 18 21:58:54 tecra kernel:  ? pci_pm_freeze+0xc0/0xc0
> May 18 21:58:54 tecra kernel:  dpm_run_callback+0x21/0xd0
> May 18 21:58:54 tecra kernel:  device_suspend+0xf6/0x3e0
> May 18 21:58:54 tecra kernel:  ? device_suspend+0x3e0/0x3e0
> May 18 21:58:54 tecra kernel:  async_suspend+0x1b/0x30
> May 18 21:58:54 tecra kernel:  async_run_entry_fn+0x26/0xa0
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> May 18 21:58:54 tecra kernel: ------------[ cut here ]------------
> May 18 21:58:54 tecra kernel: i915 0000:00:02.0: [drm] PCH DPLL A asserti=
on failure (expected on, current off)
> May 18 21:58:54 tecra kernel: WARNING: CPU: 3 PID: 16746 at drivers/gpu/d=
rm/i915/display/intel_dpll_mgr.c:184 assert_shared_dpll+0xf7/0x120 [i915]
> May 18 21:58:54 tecra kernel: Modules linked in: qrtr 8021q garp mrp stp =
llc ipv6 tun zram snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_ge=
neric snd_hda_scodec_component uvcvideo uvc videobuf2_vmalloc videobuf2_mem=
ops videobuf2_v4l2 videobuf2_common videodev mc btusb btrtl btintel btbcm b=
tmtk bluetooth mei_pxp i915 gpio_ich joydev intel_powerclamp coretemp drm_b=
uddy kvm_intel ttm ath9k drm_display_helper kvm ath9k_common cec ath9k_hw a=
th rc_core irqbypass drm_kms_helper snd_hda_intel mac80211 sdhci_pci psmous=
e snd_intel_dspcfg tpm_infineon intel_cstate serio_raw snd_intel_sdw_acpi c=
qhci cfg80211 drm acpi_cpufreq mei_me lpc_ich snd_hda_codec sdhci i2c_algo_=
bit toshiba_acpi toshiba_bluetooth quickstart industrialio toshiba_haps i2c=
_core rfkill mei mfd_core e1000e mmc_core sparse_keymap ehci_pci snd_hda_co=
re ehci_hcd intel_agp intel_gtt tpm_tis tpm_tis_core agpgart video snd_hwde=
p snd_pcm intel_ips wmi evdev snd_timer snd soundcore loop
> May 18 21:58:54 tecra kernel: CPU: 3 UID: 0 PID: 16746 Comm: kworker/u16:=
11 Tainted: G        W          6.12.25 #1
> May 18 21:58:54 tecra kernel: Tainted: [W]=3DWARN
> May 18 21:58:54 tecra kernel: Hardware name: TOSHIBA TECRA A11/Portable P=
C, BIOS Version 3.50   10/23/2012
> May 18 21:58:54 tecra kernel: Workqueue: async async_run_entry_fn
> May 18 21:58:54 tecra kernel: EIP: assert_shared_dpll+0xf7/0x120 [i915]
> May 18 21:58:54 tecra kernel: Code: 8b 46 08 8b 58 2c 85 db 74 31 89 55 a=
c 89 4d b0 e8 4e 26 db d4 57 8b 55 ac 52 8b 4d b0 51 53 50 68 44 de db f8 e=
8 99 c4 0e d4 <0f> 0b 83 c4 18 e9 48 ff ff ff 8d b4 26 00 00 00 00 8b 18 eb=
 cb e8
> May 18 21:58:54 tecra kernel: EAX: 00000050 EBX: c1951490 ECX: 00000002 E=
DX: 80000002
> May 18 21:58:54 tecra kernel: ESI: c312a000 EDI: f8dea755 EBP: c31edcf0 E=
SP: c31edc84
> May 18 21:58:54 tecra kernel: DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 006=
8 EFLAGS: 00010286
> May 18 21:58:54 tecra kernel: CR0: 80050033 CR2: 0a0ae5b0 CR3: 0e974000 C=
R4: 000026f0
> May 18 21:58:54 tecra kernel: Call Trace:
> May 18 21:58:54 tecra kernel:  intel_disable_shared_dpll+0xac/0x1a0 [i915]
> May 18 21:58:54 tecra kernel:  ilk_crtc_disable+0xa2/0xd0 [i915]
> May 18 21:58:54 tecra kernel:  intel_old_crtc_state_disables+0xa7/0x150 [=
i915]
> May 18 21:58:54 tecra kernel:  intel_atomic_commit_tail+0x4d1/0x1160 [i91=
5]
> May 18 21:58:54 tecra kernel:  ? complete+0x59/0x70
> May 18 21:58:54 tecra kernel:  intel_atomic_commit+0x28e/0x2d0 [i915]
> May 18 21:58:54 tecra kernel:  ? skl_commit_modeset_enables+0x590/0x590 [=
i915]
> May 18 21:58:54 tecra kernel:  drm_atomic_commit+0x88/0xc0 [drm]
> May 18 21:58:54 tecra kernel:  ? drm_plane_get_damage_clips.cold+0x20/0x2=
0 [drm]
> May 18 21:58:54 tecra kernel:  drm_atomic_helper_disable_all+0x182/0x1a0 =
[drm_kms_helper]
> May 18 21:58:54 tecra kernel:  drm_atomic_helper_suspend+0x94/0x230 [drm_=
kms_helper]
> May 18 21:58:54 tecra kernel:  intel_display_driver_suspend+0x31/0x50 [i9=
15]
> May 18 21:58:54 tecra kernel:  i915_drm_suspend.isra.0+0x5a/0x110 [i915]
> May 18 21:58:54 tecra kernel:  i915_pm_suspend+0x23/0x30 [i915]
> May 18 21:58:54 tecra kernel:  pci_pm_suspend+0x70/0x160
> May 18 21:58:54 tecra kernel:  ? pci_pm_freeze+0xc0/0xc0
> May 18 21:58:54 tecra kernel:  dpm_run_callback+0x21/0xd0
> May 18 21:58:54 tecra kernel:  device_suspend+0xf6/0x3e0
> May 18 21:58:54 tecra kernel:  ? device_suspend+0x3e0/0x3e0
> May 18 21:58:54 tecra kernel:  async_suspend+0x1b/0x30
> May 18 21:58:54 tecra kernel:  async_run_entry_fn+0x26/0xa0
> May 18 21:58:54 tecra kernel:  process_one_work+0x13a/0x300
> May 18 21:58:54 tecra kernel:  worker_thread+0x2c4/0x3b0
> May 18 21:58:54 tecra kernel:  kthread+0xe9/0x110
> May 18 21:58:54 tecra kernel:  ? rescuer_thread+0x470/0x470
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork+0x38/0x60
> May 18 21:58:54 tecra kernel:  ? kthread_park+0x90/0x90
> May 18 21:58:54 tecra kernel:  ret_from_fork_asm+0x12/0x1c
> May 18 21:58:54 tecra kernel:  entry_INT80_32+0xf0/0xf0
> May 18 21:58:54 tecra kernel: ---[ end trace 0000000000000000 ]---
> """

--=20
Jani Nikula, Intel
