Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBADD162C5D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 18:17:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965C76E369;
	Tue, 18 Feb 2020 17:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 324 seconds by postgrey-1.36 at gabe;
 Sun, 16 Feb 2020 03:32:04 UTC
Received: from r3-19.sinamail.sina.com.cn (r3-19.sinamail.sina.com.cn
 [202.108.3.19])
 by gabe.freedesktop.org (Postfix) with SMTP id D7E846E1E5
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Feb 2020 03:32:04 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([222.131.68.206])
 by sina.com with ESMTP
 id 5E48B66B0000DA82; Sun, 16 Feb 2020 11:26:37 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 39261115073461
From: Hillf Danton <hdanton@sina.com>
To: Toralf Foerster <toralf.foerster@gmx.de>
Date: Sun, 16 Feb 2020 11:26:25 +0800
Message-Id: <20200216032625.11452-1-hdanton@sina.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Feb 2020 17:16:57 +0000
Subject: Re: [Intel-gfx] kernel 5.5.4: BUG: kernel NULL pointer dereference,
 address: 000000000000000
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
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2020-02-15 16:20 UTC Toralf Foerster wrote:
> Since 5.5.1 I do experience hangs under a hardend Gerntoo Linux + KDE, neither mouse nor keyboard are then working anymore, power off is the only one.
> The syslog tells:
> 
> 
> Feb 15 12:56:31 t44 kernel: BUG: kernel NULL pointer dereference, address: 0000000000000000
> Feb 15 12:56:31 t44 kernel: #PF: supervisor instruction fetch in kernel mode
> Feb 15 12:56:31 t44 kernel: #PF: error_code(0x0010) - not-present page
> Feb 15 12:56:31 t44 kernel: PGD 0 P4D 0 
> Feb 15 12:56:31 t44 kernel: Oops: 0010 [#1] SMP PTI
> Feb 15 12:56:31 t44 kernel: CPU: 0 PID: 3401 Comm: X Tainted: G                T 5.5.4 #2
> Feb 15 12:56:31 t44 kernel: Hardware name: LENOVO 20AQCTO1WW/20AQCTO1WW, BIOS GJET92WW (2.42 ) 03/03/2017
> Feb 15 12:56:31 t44 kernel: RIP: 0010:0x0
> Feb 15 12:56:31 t44 kernel: Code: Bad RIP value.
> Feb 15 12:56:31 t44 kernel: RSP: 0018:ffff9d8780917a40 EFLAGS: 00010087
> Feb 15 12:56:31 t44 kernel: RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000919dd
> Feb 15 12:56:31 t44 kernel: RDX: 0000000000000000 RSI: ffff8b13d4024b08 RDI: ffff8b149d88a400
> Feb 15 12:56:31 t44 kernel: RBP: ffff8b149d88a400 R08: 0000000000000000 R09: ffff8b13d4024100
> Feb 15 12:56:31 t44 kernel: R10: 0000000000000002 R11: 0000000000000005 R12: ffff9d8780917a48
> Feb 15 12:56:31 t44 kernel: R13: 0000000000000000 R14: ffff8b14aa17ae00 R15: ffff8b14a39a02c0
> Feb 15 12:56:31 t44 kernel: FS:  00007f8c162148c0(0000) GS:ffff8b14b2600000(0000) knlGS:0000000000000000
> Feb 15 12:56:31 t44 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Feb 15 12:56:31 t44 kernel: CR2: ffffffffffffffd6 CR3: 0000000323998005 CR4: 00000000001606f0
> Feb 15 12:56:31 t44 kernel: Call Trace:
> Feb 15 12:56:31 t44 kernel:  dma_fence_signal_locked+0x85/0xc0
> Feb 15 12:56:31 t44 kernel:  i915_request_retire+0x259/0x2a0 [i915]
> Feb 15 12:56:31 t44 kernel:  i915_request_create+0x3f/0xc0 [i915]
> Feb 15 12:56:31 t44 kernel:  i915_gem_do_execbuffer+0x973/0x17d0 [i915]
> Feb 15 12:56:31 t44 kernel:  i915_gem_execbuffer2_ioctl+0xe9/0x3a0 [i915]
> Feb 15 12:56:31 t44 kernel:  ? i915_gem_execbuffer_ioctl+0x2c0/0x2c0 [i915]
> Feb 15 12:56:31 t44 kernel:  drm_ioctl_kernel+0xae/0x100 [drm]
> Feb 15 12:56:31 t44 kernel:  drm_ioctl+0x223/0x400 [drm]
> Feb 15 12:56:31 t44 kernel:  ? i915_gem_execbuffer_ioctl+0x2c0/0x2c0 [i915]
> Feb 15 12:56:31 t44 kernel:  do_vfs_ioctl+0x4d4/0x760
> Feb 15 12:56:31 t44 kernel:  ksys_ioctl+0x5b/0x90
> Feb 15 12:56:31 t44 kernel:  __x64_sys_ioctl+0x15/0x20
> Feb 15 12:56:31 t44 kernel:  do_syscall_64+0x46/0x100
> Feb 15 12:56:31 t44 kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> Feb 15 12:56:31 t44 kernel: RIP: 0033:0x7f8c1644d137
> Feb 15 12:56:31 t44 kernel: Code: 00 00 00 75 0c 48 c7 c0 ff ff ff ff 48 83 c4 18 c3 e8 2d d4 01 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 19 ed 0c 00 f7 d8 64 89 01 48
> Feb 15 12:56:31 t44 kernel: RSP: 002b:00007ffc2e8fabc8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> Feb 15 12:56:31 t44 kernel: RAX: ffffffffffffffda RBX: 00007ffc2e8fac10 RCX: 00007f8c1644d137
> Feb 15 12:56:31 t44 kernel: RDX: 00007ffc2e8fac10 RSI: 0000000040406469 RDI: 000000000000000d
> Feb 15 12:56:31 t44 kernel: RBP: 0000000040406469 R08: 0000561136d07680 R09: 0000000000000202
> Feb 15 12:56:31 t44 kernel: R10: 0000000000000000 R11: 0000000000000246 R12: 0000561136cca130
> Feb 15 12:56:31 t44 kernel: R13: 000000000000000d R14: 00007f8c15c2cc48 R15: 0000000000000000
> Feb 15 12:56:31 t44 kernel: Modules linked in: af_packet bridge stp llc ip6table_filter ip6_tables xt_MASQUERADE iptable_nat nf_nat nf_log_ipv4 nf_log_common xt_LOG xt_limit xt_recent xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 iptable_filter ip_tables uvcvideo videobuf2_vmalloc videobuf2_memops videobuf2_v4l2 videodev videobuf2_common btusb btrtl btbcm btintel bluetooth ecdh_generic ecc rmi_smbus rmi_core mousedev x86_pkg_temp_thermal coretemp i915 kvm_intel kvm irqbypass intel_gtt snd_hda_codec_realtek snd_hda_codec_generic i2c_algo_bit input_leds drm_kms_helper snd_hda_intel wmi_bmof snd_intel_dspcfg cfbfillrect iwlmvm psmouse syscopyarea cfbimgblt aesni_intel glue_helper crypto_simd pcspkr snd_hda_codec atkbd sysfillrect cryptd ehci_pci iwlwifi ehci_hcd sysimgblt fb_sys_fops e1000e cfbcopyarea thinkpad_acpi snd_hda_core i2c_i801 drm snd_pcm ac battery ledtrig_audio tpm_tis tpm_tis_core drm_panel_orientation_quirks snd_timer tpm rng_core agpgart snd i2c_core wmi soun
 dcore thermal evdev
> Feb 15 12:56:31 t44 kernel: CR2: 0000000000000000
> Feb 15 12:56:31 t44 kernel: ---[ end trace 0efcb8355216bb62 ]---
> Feb 15 12:56:31 t44 kernel: RIP: 0010:0x0
> Feb 15 12:56:31 t44 kernel: Code: Bad RIP value.
> Feb 15 12:56:31 t44 kernel: RSP: 0018:ffff9d8780917a40 EFLAGS: 00010087
> Feb 15 12:56:31 t44 kernel: RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000919dd
> Feb 15 12:56:31 t44 kernel: RDX: 0000000000000000 RSI: ffff8b13d4024b08 RDI: ffff8b149d88a400
> Feb 15 12:56:31 t44 kernel: RBP: ffff8b149d88a400 R08: 0000000000000000 R09: ffff8b13d4024100
> Feb 15 12:56:31 t44 kernel: R10: 0000000000000002 R11: 0000000000000005 R12: ffff9d8780917a48
> Feb 15 12:56:31 t44 kernel: R13: 0000000000000000 R14: ffff8b14aa17ae00 R15: ffff8b14a39a02c0
> Feb 15 12:56:31 t44 kernel: FS:  00007f8c162148c0(0000) GS:ffff8b14b2600000(0000) knlGS:0000000000000000
> Feb 15 12:56:31 t44 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Feb 15 12:56:31 t44 kernel: CR2: ffffffffffffffd6 CR3: 0000000323998005 CR4: 00000000001606f0
> Feb 15 12:57:01 t44 CROND[6715]: (root) CMD (/usr/lib/sa/sa1 30 2 -S XALL)
> Feb 15 12:57:06 t44 kernel: elogind-daemon[1422]: Power key pressed.
> Feb 15 12:57:06 t44 kernel: elogind-daemon[1422]: New session c134 of user tfoerste.
> Feb 15 12:57:06 t44 kernel: elogind-daemon[1422]: Removed session c134.
> Feb 15 17:12:40 t44 syslog-ng[1897]: syslog-ng starting up; version='3.22.1'
> 
> 
> 5.4.x are fine

Hi Toralf

Thanks for your report.

Looks like a stray lock counts for the above NULL dereference.

Btw, send pure text message please.

--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -254,8 +254,7 @@ bool i915_request_retire(struct i915_req
 
 	spin_lock_irq(&rq->lock);
 	i915_request_mark_complete(rq);
-	if (!i915_request_signaled(rq))
-		dma_fence_signal_locked(&rq->fence);
+	dma_fence_signal(&rq->fence);
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
 		i915_request_cancel_breadcrumb(rq);
 	if (i915_request_has_waitboost(rq)) {

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
