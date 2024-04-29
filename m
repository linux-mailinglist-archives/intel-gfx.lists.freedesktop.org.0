Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E17EC8B62E8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 21:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554D010E1A1;
	Mon, 29 Apr 2024 19:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1045 seconds by postgrey-1.36 at gabe;
 Mon, 29 Apr 2024 19:54:01 UTC
Received: from mail.sig21.net (mail.sig21.net [217.197.84.222])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7618110E1A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 19:54:01 +0000 (UTC)
Received: from localhorst ([127.0.0.1]) by mail.sig21.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <js@sig21.net>) id 1s1WlZ-0002Xz-Ix 
 for intel-gfx@lists.freedesktop.org; Mon, 29 Apr 2024 21:34:22 +0200
Received: from js by abc.local with local (Exim 4.97)
 (envelope-from <js@sig21.net>) id 1s1WlV-000000001Lv-07QA
 for intel-gfx@lists.freedesktop.org; Mon, 29 Apr 2024 21:34:17 +0200
Date: Mon, 29 Apr 2024 21:34:17 +0200
From: Johannes Stezenbach <js@sig21.net>
To: intel-gfx@lists.freedesktop.org
Subject: i915 IVB hangup after resume from s2mem since v6.6.x
Message-ID: <Zi_2OWwG0JGI2j2B@sig21.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Hi,

I updated the Linux kernel on an old machine from v6.5.9
to current v6.8.8 and found the display failed after resume
from suspend to RAM. Then I tried v6.7.9 and v6.6.29, both
also failed. v6.5.9 works.

- display connected via display port: hangup

- I also tried HDMI with v6.6.29: garbage (color noise) after wakeup,
  after a bit of switching between Linux virtual consoles
  the display came back to live, first flickering between
  color noise and actual output, then stable output

CPU/GPU: Core i5-3550
00:02.0 VGA compatible controller: Intel Corporation Xeon E3-1200 v2/3rd Gen Core processor Graphics Controller (rev 09)
00:02.0 0300: 8086:0152 (rev 09)


HDMI generates this error in kernel log:

[    C0] i915 0000:00:02.0: [drm] *ERROR* uncleared pch fifo underrun on pch transcoder A
[    C0] i915 0000:00:02.0: [drm] *ERROR* PCH transcoder A FIFO underrun


DP genrates this error spew on v6.6.29:

 [    C3] i915 0000:00:02.0: [drm] *ERROR* uncleared pch fifo underrun on pch transcoder A
 [    C3] i915 0000:00:02.0: [drm] *ERROR* PCH transcoder A FIFO underrun
 [ T3502] PM: suspend entry (deep)
...
 [ T3927] ------------[ cut here ]------------
 [ T3927] i915 0000:00:02.0: drm_WARN_ON((intel_de_read(dev_priv, intel_dp->output_reg) & (1 << 31)) == 0)
 [ T3927] WARNING: CPU: 2 PID: 3927 at drivers/gpu/drm/i915/display/g4x_dp.c:417 intel_dp_link_down.isra.0+0x2e4/0x300
 [ T3927] Modules linked in: mt76x0u mt76x0_common mt76x02_usb mt76_usb mt76x02_lib mt76 mac80211 kvm_intel cfg80211 kv>
 [ T3927] CPU: 2 PID: 3927 Comm: kworker/u8:26 Not tainted 6.6.29 #1
 [ T3927] Hardware name: System manufacturer System Product Name/P8H77-V, BIOS 1905 10/27/2014
 [ T3927] Workqueue: events_unbound async_run_entry_fn
 [ T3927] RIP: 0010:intel_dp_link_down.isra.0+0x2e4/0x300
 [ T3927] Code: 48 8b 5f 50 48 85 db 75 03 48 8b 1f e8 c5 0d 07 00 48 c7 c1 70 8c ac 89 48 89 da 48 c7 c7 f1 16 9d 89 4>
 [ T3927] RSP: 0018:ffffa41d41b37a68 EFLAGS: 00010246
 [ T3927] RAX: 0000000000000000 RBX: ffff9df340d79380 RCX: 0000000000000000
 [ T3927] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
 [ T3927] RBP: ffff9df346478000 R08: 0000000000000000 R09: 0000000000000000
 [ T3927] R10: 0000000000000000 R11: 0000000000000000 R12: ffff9df34647ad68
 [ T3927] R13: ffff9df34649e000 R14: 0000000000000001 R15: 0000000000000000
 [ T3927] FS:  0000000000000000(0000) GS:ffff9df64f800000(0000) knlGS:0000000000000000
 [ T3927] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
 [ T3927] CR2: 00007f026e63418c CR3: 000000032bc50006 CR4: 00000000001706e0
 [ T3927] Call Trace:
 [ T3927]  <TASK>
 [ T3927]  ? __warn+0x80/0x160
 [ T3927]  ? intel_dp_link_down.isra.0+0x2e4/0x300
 [ T3927]  ? report_bug+0x19e/0x1d0
 [ T3927]  ? handle_bug+0x40/0x80
 [ T3927]  ? exc_invalid_op+0x13/0x70
 [ T3927]  ? asm_exc_invalid_op+0x16/0x20
 [ T3927]  ? intel_dp_link_down.isra.0+0x2e4/0x300
 [ T3927]  ? intel_dp_link_down.isra.0+0x2e4/0x300
 [ T3927]  g4x_post_disable_dp+0x2e/0x120
 [ T3927]  intel_encoders_post_disable+0x72/0x90
 [ T3927]  ilk_crtc_disable+0x80/0xe0
 [ T3927]  intel_atomic_commit_tail+0x404/0xed0
 [ T3927]  ? intel_atomic_commit+0x374/0x3c0
 [ T3927]  ? intel_atomic_commit+0x30a/0x3c0
 [ T3927]  intel_atomic_commit+0x374/0x3c0
 [ T3927]  drm_atomic_commit+0x96/0xd0
 [ T3927]  ? __pfx___drm_printfn_info+0x10/0x10
 [ T3927]  drm_atomic_helper_disable_all+0x19a/0x1b0
 [ T3927]  drm_atomic_helper_suspend+0xd5/0x240
 [ T3927]  intel_display_driver_suspend+0x28/0x70
 [ T3927]  i915_drm_suspend+0x42/0xf0
 [ T3927]  pci_pm_suspend+0x73/0x170
 [ T3927]  ? __pfx_pci_pm_suspend+0x10/0x10
 [ T3927]  dpm_run_callback+0x52/0x190
 [ T3927]  __device_suspend+0xf3/0x4b0
 [ T3927]  ? process_one_work+0x1ad/0x510
 [ T3927]  async_suspend+0x1a/0x60
 [ T3927]  async_run_entry_fn+0x30/0x160
 [ T3927]  ? process_one_work+0x1ad/0x510
 [ T3927]  process_one_work+0x219/0x510
 [ T3927]  worker_thread+0x1d6/0x3e0
 [ T3927]  ? __pfx_worker_thread+0x10/0x10
 [ T3927]  kthread+0xf6/0x130
 [ T3927]  ? __pfx_kthread+0x10/0x10
 [ T3927]  ret_from_fork+0x30/0x50
 [ T3927]  ? __pfx_kthread+0x10/0x10
 [ T3927]  ret_from_fork_asm+0x1b/0x30
 [ T3927]  </TASK>
 [ T3927] ---[ end trace 0000000000000000 ]---
 [ T3502] ACPI: PM: Preparing to enter system sleep state S3
 [ T3502] ACPI: PM: Saving platform NVS memory
 [ T3502] Disabling non-boot CPUs ...
...
 [ T3502] ACPI: PM: Waking up from system sleep state S3
 [ T3928] i915 0000:00:02.0: vgaarb: VGA decodes changed: olddecodes=io+mem,decodes=io+mem:owns=io+mem
 [ T3502] PM: suspend exit
 [    C0] i915 0000:00:02.0: [drm] *ERROR* uncleared pch fifo underrun on pch transcoder A
 [    C0] i915 0000:00:02.0: [drm] *ERROR* PCH transcoder A FIFO underrun
 [    C0] sysrq: Emergency Sync
 [    T8] Emergency Sync complete
 [    C0] sysrq: Emergency Remount R/O


and on v6.8.8:

 [    C3] i915 0000:00:02.0: [drm] *ERROR* uncleared pch fifo underrun on pch transcoder A
 [    C3] i915 0000:00:02.0: [drm] *ERROR* PCH transcoder A FIFO underrun
 [T10083] PM: suspend entry (deep)
...
 [T10083] ACPI: PM: Waking up from system sleep state S3
 [T10083] serial 00:06: activated
 [T10569] i915 0000:00:02.0: vgaarb: VGA decodes changed: olddecodes=io+mem,decodes=io+mem:owns=io+mem
...
 [T10083] PM: suspend exit
 [    C0] i915 0000:00:02.0: [drm] *ERROR* uncleared pch fifo underrun on pch transcoder A
 [    C0] i915 0000:00:02.0: [drm] *ERROR* PCH transcoder A FIFO underrun
...
 [   T37] INFO: task kworker/1:1:47 blocked for more than 122 seconds.
 [   T37]       Not tainted 6.8.8 #1
 [   T37] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
 [   T37] task:kworker/1:1     state:D stack:0     pid:47    tgid:47    ppid:2      flags:0x00004000
 [   T37] Workqueue: i915-unordered i915_hotplug_work_func
 [   T37] Call Trace:
 [   T37]  <TASK>
 [   T37]  __schedule+0x4c9/0x1810
 [   T37]  ? find_held_lock+0x2b/0x90
 [   T37]  ? find_held_lock+0x2b/0x90
 [   T37]  schedule+0x49/0x150
 [   T37]  schedule_preempt_disabled+0x18/0x30
 [   T37]  __ww_mutex_lock.constprop.0+0x90e/0x12d0
 [   T37]  ? modeset_lock+0x17d/0x1e0
 [   T37]  ? modeset_lock+0x17d/0x1e0
 [   T37]  modeset_lock+0x17d/0x1e0
 [   T37]  drm_helper_probe_detect_ctx+0x7b/0x120
 [   T37]  intel_hotplug_detect_connector+0x43/0x120
 [   T37]  intel_hdmi_hotplug+0xe/0x30
 [   T37]  i915_hotplug_work_func+0x2af/0x3e0
 [   T37]  ? process_one_work+0x1ad/0x510
 [   T37]  process_one_work+0x219/0x510
 [   T37]  worker_thread+0x1d6/0x3e0
 [   T37]  ? __pfx_worker_thread+0x10/0x10
 [   T37]  kthread+0xf6/0x130
 [   T37]  ? __pfx_kthread+0x10/0x10
 [   T37]  ret_from_fork+0x30/0x50
 [   T37]  ? __pfx_kthread+0x10/0x10
 [   T37]  ret_from_fork_asm+0x1b/0x30
 [   T37]  </TASK>
 [   T37] INFO: task Xorg:3197 blocked for more than 122 seconds.
 [   T37]       Not tainted 6.8.8 #1
 [   T37] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
 [   T37] task:Xorg            state:D stack:0     pid:3197  tgid:3197  ppid:3185   flags:0x00400002
 [   T37] Call Trace:
 [   T37]  <TASK>
 [   T37]  __schedule+0x4c9/0x1810
 [   T37]  ? find_held_lock+0x2b/0x90
 [   T37]  schedule+0x49/0x150
 [   T37]  drm_vblank_work_flush+0x92/0xf0
 [   T37]  ? __pfx_autoremove_wake_function+0x10/0x10
 [   T37]  intel_wait_for_vblank_workers+0x4b/0x90
 [   T37]  intel_atomic_commit_tail+0x747/0x1080
 [   T37]  ? find_held_lock+0x2b/0x90
 [   T37]  ? local_clock_noinstr+0x9/0xc0
 [   T37]  ? _raw_spin_unlock+0x29/0x60
 [   T37]  ? intel_atomic_commit+0x2f3/0x340
 [   T37]  ? intel_atomic_commit+0x299/0x340
 [   T37]  intel_atomic_commit+0x2f3/0x340
 [   T37]  drm_atomic_commit+0x96/0xd0
 [   T37]  ? __pfx___drm_printfn_info+0x10/0x10
 [   T37]  drm_mode_gamma_set_ioctl+0x3c5/0x590
 [   T37]  ? __pfx_drm_mode_gamma_set_ioctl+0x10/0x10
 [   T37]  drm_ioctl_kernel+0xbc/0x110
 [   T37]  drm_ioctl+0x284/0x500
 [   T37]  ? __pfx_drm_mode_gamma_set_ioctl+0x10/0x10
 [   T37]  __x64_sys_ioctl+0xa9/0xd0
 [   T37]  do_syscall_64+0x7b/0x140
 [   T37]  ? local_clock_noinstr+0x9/0xc0
 [   T37]  ? lock_release+0x14a/0x400
 [   T37]  ? trace_hardirqs_on_prepare+0x3c/0xb0
 [   T37]  ? syscall_exit_to_user_mode+0x9c/0x1a0
 [   T37]  ? do_syscall_64+0x87/0x140
 [   T37]  ? do_syscall_64+0x87/0x140
 [   T37]  ? do_syscall_64+0x87/0x140
 [   T37]  ? trace_hardirqs_on_prepare+0x3c/0xb0
 [   T37]  entry_SYSCALL_64_after_hwframe+0x78/0x80
 [   T37] RIP: 0033:0x7f0a152195cb
 [   T37] RSP: 002b:00007ffe12bd6410 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
 [   T37] RAX: ffffffffffffffda RBX: 0000000000000007 RCX: 00007f0a152195cb
 [   T37] RDX: 00007ffe12bd64a0 RSI: 00000000c02064a5 RDI: 000000000000000f
 [   T37] RBP: 00007ffe12bd64a0 R08: 0000564b17a70950 R09: 0000564b17a70b50
 [   T37] R10: 0000564b17a70750 R11: 0000000000000246 R12: 00000000c02064a5
 [   T37] R13: 000000000000000f R14: 0000000000000003 R15: 00007ffe12bd6560
 [   T37]  </TASK>
 [   T37]
 [   T37] Showing all locks held in the system:
 [   T37] 1 lock held by khungtaskd/37:
 [   T37]  #0: ffffffff87d601c0 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x32/0x110
 [   T37] 6 locks held by kworker/1:1/47:
 [   T37]  #0: ffff927000c09548 ((wq_completion)i915-unordered){....}-{0:0}, at: process_one_work+0x1ad/0x510
 [   T37]  #1: ffffb1d6801bbe50 ((work_completion)(&(&i915->display.hotplug.hotplug_work)->work)){....}-{0:0}, at: proc>
 [   T37]  #2: ffff9270074084f0 (&dev->mode_config.mutex){....}-{3:3}, at: i915_hotplug_work_func+0x58/0x3e0
 [   T37]  #3: ffffffff87e4d680 (drm_connector_list_iter){....}-{0:0}, at: i915_hotplug_work_func+0x1fc/0x3e0
 [   T37]  #4: ffffb1d6801bbce0 (crtc_ww_class_acquire){....}-{0:0}, at: drm_helper_probe_detect_ctx+0x4b/0x120
 [   T37]  #5: ffff927007408590 (crtc_ww_class_mutex){....}-{3:3}, at: modeset_lock+0x17d/0x1e0
 [   T37] 1 lock held by in:imklog/2976:
 [   T37]  #0: ffff9270012698d8 (&f->f_pos_lock){....}-{3:3}, at: __fdget_pos+0x52/0x80
 [   T37] 2 locks held by Xorg/3197:
 [   T37]  #0: ffffb1d682027bf8 (crtc_ww_class_acquire){....}-{0:0}, at: drm_mode_gamma_set_ioctl+0x15d/0x590
 [   T37]  #1: ffff927007408590 (crtc_ww_class_mutex){....}-{3:3}, at: modeset_lock+0x17d/0x1e0
 [   T37] 2 locks held by kworker/u8:61/10605:
 [   T37]  #0: ffff9270001da748 ((wq_completion)phy2){....}-{0:0}, at: process_one_work+0x1ad/0x510
 [   T37]  #1: ffffb1d68213fe50 ((work_completion)(&(&dev->cal_work)->work)){....}-{0:0}, at: process_one_work+0x1ad/0x>
 [   T37]
 [   T37] =============================================


I hope you have ideas about fixes to try, bisect testing takes
much time which I don't have...


Best Regards,
Johannes
