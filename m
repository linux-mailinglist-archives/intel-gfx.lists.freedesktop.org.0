Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE823285CA
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 17:59:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4916E843;
	Mon,  1 Mar 2021 16:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC413898C8;
 Mon,  1 Mar 2021 16:59:49 +0000 (UTC)
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1BA9650E4;
 Mon,  1 Mar 2021 16:59:48 +0000 (UTC)
Date: Mon, 1 Mar 2021 11:59:46 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: LKML <linux-kernel@vger.kernel.org>
Message-ID: <20210301115946.295279c1@gandalf.local.home>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: [Intel-gfx] [WARNING] v5.12-rc1 in intel_pipe_disable tracepoint
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On my test box with latest v5.12-rc1, running with all trace events
enabled, I consistently trigger this warning.

It appears to get triggered by the trace_intel_pipe_disable() code.

-- Steve

 ------------[ cut here ]------------
 i915 0000:00:02.0: drm_WARN_ON_ONCE(drm_drv_uses_atomic_modeset(dev))
 WARNING: CPU: 7 PID: 1258 at drivers/gpu/drm/drm_vblank.c:728 drm_crtc_vblank_helper_get_vblank_timestamp_internal+0x319/0x330 [drm]
 Modules linked in: ebtable_filter ebtables bridge stp llc vsock vmw_vmci ipt_REJECT nf_reject_ipv4 iptable_filter ip6t_REJECT nf_reject_ipv6 xt_state xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ip6table_filter ip6_tables snd_hda_codec_hdmi snd_h
ek snd_hda_codec_generic ledtrig_audio snd_hda_intel snd_intel_dspcfg snd_hda_codec joydev snd_hwdep intel_rapl_msr snd_hda_core hp_wmi i915 iTCO_wdt snd_seq intel_rapl_common iTCO_vendor_support wmi_bmof sparse_keymap snd_seq_device rfkill snd_pcm x86_pkg_t
d_timer i2c_algo_bit drm_kms_helper mei_me intel_powerclamp snd mei soundcore i2c_i801 drm coretemp lpc_ich e1000e kvm_intel i2c_smbus kvm irqbypass crct10dif_pclmul crc32_pclmul crc32c_intel serio_raw ghash_clmulni_intel video tpm_infineon wmi ip_tables
 CPU: 7 PID: 1258 Comm: Xorg Tainted: G        W         5.12.0-rc1-test+ #12
 Hardware name: Hewlett-Packard HP Compaq Pro 6300 SFF/339A, BIOS K01 v03.03 07/14/2016
 RIP: 0010:drm_crtc_vblank_helper_get_vblank_timestamp_internal+0x319/0x330 [drm]
 Code: 4c 8b 6f 50 4d 85 ed 75 03 4c 8b 2f e8 60 92 45 c2 48 c7 c1 28 a5 3c c0 4c 89 ea 48 c7 c7 15 5a 3c c0 48 89 c6 e8 1f e7 7b c2 <0f> 0b e9 e2 fe ff ff e8 fb 6c 81 c2 66 66 2e 0f 1f 84 00 00 00 00
 RSP: 0018:ffffb77580ea7920 EFLAGS: 00010082
 RAX: 0000000000000000 RBX: ffff8afe500c0000 RCX: 0000000000000000
 RDX: 0000000000000004 RSI: ffffffff833c86b8 RDI: 0000000000000001
 RBP: ffffb77580ea7990 R08: 000000700c782173 R09: 0000000000000000
 R10: 0000000000000001 R11: 0000000000000001 R12: 0000000000000000
 R13: ffff8afe41c7eff0 R14: ffffffffc05e0410 R15: ffff8afe456a2bf8
 FS:  00007f8f91869f00(0000) GS:ffff8afe5aa00000(0000) knlGS:0000000000000000
 CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
 CR2: 00007f9523a6cad0 CR3: 0000000001b78002 CR4: 00000000001706e0
 Call Trace:
  drm_get_last_vbltimestamp+0xaa/0xc0 [drm]
  drm_update_vblank_count+0x90/0x2d0 [drm]
  drm_crtc_accurate_vblank_count+0x3e/0xc0 [drm]
  intel_crtc_get_vblank_counter+0x43/0x50 [i915]
  trace_event_raw_event_intel_pipe_disable+0x87/0x110 [i915]
  intel_disable_pipe+0x1a8/0x210 [i915]
  ilk_crtc_disable+0x85/0x390 [i915]
  intel_old_crtc_state_disables.isra.0+0x5c/0x110 [i915]
  intel_atomic_commit_tail+0xf5d/0x1460 [i915]
  ? complete+0x18/0x40
  intel_atomic_commit+0x345/0x3c0 [i915]
  drm_atomic_connector_commit_dpms+0xd7/0x100 [drm]
  set_property_atomic+0xcc/0x160 [drm]
  drm_mode_obj_set_property_ioctl+0xbd/0x100 [drm]
  ? drm_connector_set_obj_prop+0x90/0x90 [drm]
  drm_connector_property_set_ioctl+0x39/0x60 [drm]
  drm_ioctl_kernel+0xad/0x100 [drm]
  drm_ioctl+0x1ec/0x390 [drm]
  ? drm_connector_set_obj_prop+0x90/0x90 [drm]
  ? sched_clock_cpu+0x10/0xd0
  ? lock_release+0x155/0x410
  __x64_sys_ioctl+0x83/0xb0
  do_syscall_64+0x33/0x40
  entry_SYSCALL_64_after_hwframe+0x44/0xae
 RIP: 0033:0x7f8f91ce535b
 Code: 0f 1e fa 48 8b 05 2d 9b 0c 00 64 c7 00 26 00 00 00 48 c7 c0 ff ff ff ff c3 66 0f 1f 44 00 00 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d fd 9a 0c 00 f7 d8 64 89 01 48
 RSP: 002b:00007ffcb4603378 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
 RAX: ffffffffffffffda RBX: 00007ffcb46033b0 RCX: 00007f8f91ce535b
 RDX: 00007ffcb46033b0 RSI: 00000000c01064ab RDI: 000000000000000e
 RBP: 00000000c01064ab R08: 000055d68f44ba60 R09: 0000000000000000
 R10: 000055d68f44ba60 R11: 0000000000000246 R12: 000055d68f5e0010
 R13: 000000000000000e R14: 0000000000000000 R15: 000055d68e2275c0
 ---[ end trace d18216ba28a2f0e8 ]---

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
