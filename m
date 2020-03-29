Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B98C6197E27
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291C36E3EB;
	Mon, 30 Mar 2020 14:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from services.gouders.net (services.gouders.net [141.101.32.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5C389E39
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Mar 2020 20:39:32 +0000 (UTC)
Received: from localhost (ltea-047-066-044-139.pools.arcor-ip.net
 [47.66.44.139]) (authenticated bits=0)
 by services.gouders.net (8.14.8/8.14.8) with ESMTP id 02TKbM8l004961
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 29 Mar 2020 22:37:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
 t=1585514243; bh=dQh45ICH7RqGCgu5p0jLsvDJQIisElPA6vTZ88ixsZM=;
 h=From:To:Subject:In-Reply-To:References:Date;
 b=G8MA0LakvKTxvUVzxvg6RyNVZrOMC9Yw98q4VEsn/3mqT95YQS/p0+OuR8nmuTRyU
 r9+UppJNUb29cgW9blfYmKhHi6wdyASTm35Q5miGBTgB9coh+JQdvjr7gMm8G4DjV0
 b0n2Q3td7JtN1q7AewEzPPwj6+//SjFEqp2UkcPU=
From: Dirk Gouders <dirk@gouders.net>
To: intel-gfx@lists.freedesktop.org,
 Linux Kernel <linux-kernel@vger.kernel.org>
In-Reply-To: <ghpncvidjz.fsf@gouders.net> (Dirk Gouders's message of "Sun, 29
 Mar 2020 13:52:00 +0200")
References: <ghpncvidjz.fsf@gouders.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
Date: Sun, 29 Mar 2020 22:37:22 +0200
Message-ID: <gh369q99tp.fsf@gouders.net>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 30 Mar 2020 14:16:11 +0000
Subject: Re: [Intel-gfx] Kernel 5.2 to current: possible i915 related
 problems
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some additional information:

I tried to get more information by using netconsole with kernel
5.6.0-rc7+.  After some time, the system stopped to respond and I
checked the messages sent to the remote machine.  Unfortunately they
gave no other information than the local logfile.

Dirk

Dirk Gouders <dirk@gouders.net> writes:

> Hello,
>
> because of the current pandemic situation the usage of my laptop has
> changed.  It is now running at home 24/7 with a monitor attached to it
> and after about 12 days running a somewhat older kernel (5.2), it
> stopped working.
>
> After a reboot I found some information in the syslog that I attach to
> this mail.  The next hang happened one day later but without any
> information.
>
> With a current 5.6.0-rc7+ I seem to get more frequent hangs but without any
> information in the log file and somewhat non-reproducable.  Today, I
> experienced two hangs when starting xterms or other programs but after
> this (and necessary reboots) I am unable to reproduce a hang.
>
> Perhaps, someone has suggestion for me how to produce debugging
> information that survives the hangs and reboots.
>
> Dirk
>
> ------------------------------------------------------------------------
> Mar 27 19:36:51 lena kernel: [drm:intel_cpu_fifo_underrun_irq_handler
> [i915]] *ERROR* CPU pipe B FIFO underrun
> Mar 27 21:45:19 lena kernel: usb 1-1: USB disconnect, device number 15
> Mar 27 21:45:19 lena kernel: sd 2:0:0:0: [sdb] Synchronizing SCSI cache
> Mar 27 21:45:19 lena kernel: sd 2:0:0:0: [sdb] Synchronize Cache(10)
> failed: Result: hostbyte=DID_NO_CONNECT driverbyte=DRIVER_OK
> Mar 27 22:00:53 lena kernel: [drm:intel_cpu_fifo_underrun_irq_handler
> [i915]] *ERROR* CPU pipe B FIFO underrun
> Mar 27 23:46:13 lena kernel: ------------[ cut here ]------------
> Mar 27 23:46:13 lena kernel: vblank wait timed out on crtc 1
> Mar 27 23:46:13 lena kernel: WARNING: CPU: 0 PID: 4221 at drm_wait_one_vblank+0xfa/0x12a [drm]
> Mar 27 23:46:13 lena kernel: Modules linked in: usblp uas usb_storage
> uvcvideo videobuf2_vmalloc videobuf2_memops videobuf2_v4l2
> videobuf2_common snd_hda_codec
> _hdmi snd_hda_codec_realtek snd_hda_codec_generic crc32_pclmul
> crc32c_intel ghash_clmulni_intel i915 aesni_intel drm_kms_helper
> cfbfillrect crypto_simd glue_he
> lper syscopyarea cfbimgblt sysfillrect sysimgblt snd_hda_intel
> fb_sys_fops cfbcopyarea snd_hda_codec sdhci_acpi drm xhci_pci
> snd_hwdep sdhci drm_panel_orientat
> ion_quirks snd_hda_core intel_gtt mmc_core xhci_hcd iosf_mbi
> Mar 27 23:46:13 lena kernel: CPU: 0 PID: 4221 Comm: X Not tainted 5.2.0+ #44
> Mar 27 23:46:13 lena kernel: Hardware name: Acer Aspire ES1-131/Garp_BA, BIOS V1.23 06/22/2016
> Mar 27 23:46:13 lena kernel: RIP: 0010:drm_wait_one_vblank+0xfa/0x12a [drm]
> Mar 27 23:46:13 lena kernel: Code: 89 e7 e8 31 eb 74 e1 49 89 c4 eb bf
> 48 89 e6 4c 89 f7 e8 d5 b5 ff e0 45 85 e4 75 10 89 de 48 c7 c7 cf de
> 0d a0 e8 2e bd fc e
> 0 <0f> 0b 89 de 48 89 ef e8 82 fe ff ff 48 8b 44 24 28 65 48 33 04 25
> Mar 27 23:46:13 lena kernel: RSP: 0018:ffffc90000e73ac0 EFLAGS: 00010296
> Mar 27 23:46:13 lena kernel: RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000007
> Mar 27 23:46:13 lena kernel: RDX: 0000000000000000 RSI: 0000000000000002 RDI: ffff888277a163a0
> Mar 27 23:46:13 lena kernel: RBP: ffff888271b40000 R08: 0000000000000306 R09: 0000000000000001
> Mar 27 23:46:13 lena kernel: R10: ffffc90000e739d0 R11: 000597d6da905e00 R12: 0000000000000000
> Mar 27 23:46:13 lena kernel: R13: 0000000000bd6280 R14: ffff8882765eb160 R15: 0000000000000001
> Mar 27 23:46:13 lena kernel: FS:  00007f6d744bd200(0000) GS:ffff888277a00000(0000) knlGS:0000000000000000
> Mar 27 23:46:13 lena kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Mar 27 23:46:13 lena kernel: CR2: 00007f6d6f20d000 CR3: 0000000268a70000 CR4: 00000000001006f0
> Mar 27 23:46:13 lena kernel: Call Trace:
> Mar 27 23:46:13 lena kernel: ? wait_woken+0x68/0x68
> Mar 27 23:46:13 lena kernel: intel_pre_plane_update+0x165/0x1ea [i915]
> Mar 27 23:46:13 lena kernel: intel_atomic_commit_tail+0xcb/0xf10 [i915]
> Mar 27 23:46:13 lena kernel: ? flush_workqueue+0x2ab/0x2d4
> Mar 27 23:46:13 lena kernel: intel_atomic_commit+0x23a/0x248 [i915]
> Mar 27 23:46:13 lena kernel: drm_atomic_connector_commit_dpms+0xc0/0xda [drm]
> Mar 27 23:46:13 lena kernel: drm_mode_obj_set_property_ioctl+0x133/0x241 [drm]
> Mar 27 23:46:13 lena kernel: ? drm_connector_set_obj_prop+0x67/0x67 [drm]
> Mar 27 23:46:13 lena kernel: drm_connector_property_set_ioctl+0x39/0x53 [drm]
> Mar 27 23:46:13 lena kernel: drm_ioctl_kernel+0x8e/0xe2 [drm]
> Mar 27 23:46:13 lena kernel: drm_ioctl+0x1fd/0x2dc [drm]
> Mar 27 23:46:13 lena kernel: ? drm_connector_set_obj_prop+0x67/0x67 [drm]
> Mar 27 23:46:13 lena kernel: ? hrtimer_cancel+0xc/0x16
> Mar 27 23:46:13 lena kernel: ? schedule_hrtimeout_range_clock+0xb3/0xef
> Mar 27 23:46:13 lena kernel: ? hrtimer_init+0x2/0x2
> Mar 27 23:46:13 lena kernel: vfs_ioctl+0x19/0x26
> Mar 27 23:46:13 lena kernel: do_vfs_ioctl+0x52c/0x554
> Mar 27 23:46:13 lena kernel: ? wake_up_q+0x4e/0x4e
> Mar 27 23:46:13 lena kernel: ksys_ioctl+0x39/0x58
> Mar 27 23:46:13 lena kernel: __x64_sys_ioctl+0x11/0x14
> Mar 27 23:46:13 lena kernel: do_syscall_64+0x4a/0xf4
> Mar 27 23:46:13 lena kernel: entry_SYSCALL_64_after_hwframe+0x44/0xa9
> Mar 27 23:46:13 lena kernel: RIP: 0033:0x7f6d74ce12b7
> Mar 27 23:46:13 lena kernel: Code: 00 00 00 75 0c 48 c7 c0 ff ff ff ff
> 48 83 c4 18 c3 e8 cd d2 01 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00
> b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d a9 cb 0c 00
> f7 d8 64 89 01 48
> Mar 27 23:46:13 lena kernel: RSP: 002b:00007fff62f16b58 EFLAGS: 00003246 ORIG_RAX: 0000000000000010
> Mar 27 23:46:13 lena kernel: RAX: ffffffffffffffda RBX: 000055cc6071deb0 RCX: 00007f6d74ce12b7
> Mar 27 23:46:13 lena kernel: RDX: 00007fff62f16b90 RSI: 00000000c01064ab RDI: 000000000000000c
> Mar 27 23:46:13 lena kernel: RBP: 00007fff62f16b90 R08: 0000000000000057 R09: 00007f6d71394000
> Mar 27 23:46:13 lena kernel: R10: 0000000000000001 R11: 0000000000003246 R12: 00000000c01064ab
> Mar 27 23:46:13 lena kernel: R13: 000000000000000c R14: 00007f6d71394001 R15: 0000000000000000
> Mar 27 23:46:13 lena kernel: ---[ end trace 5361d6be40e0aaf8 ]---
> Mar 28 01:13:22 lena kernel: [drm:drm_atomic_helper_wait_for_flip_done
> [drm_kms_helper]] *ERROR* [CRTC:63:pipe B] flip_done timed out
> Mar 28 01:23:22 lena kernel: ------------[ cut here ]------------
> Mar 28 01:23:22 lena kernel: vblank wait timed out on crtc 1
> Mar 28 01:23:22 lena kernel: WARNING: CPU: 0 PID: 4221 at drm_wait_one_vblank+0xfa/0x12a [drm]
> Mar 28 01:23:22 lena kernel: Modules linked in: usblp uas usb_storage
> uvcvideo videobuf2_vmalloc videobuf2_memops videobuf2_v4l2
> videobuf2_common snd_hda_codec_hdmi snd_hda_codec_realtek
> snd_hda_codec_generic crc32_pclmul crc32c_intel ghash_clmulni_intel
> i915 aesni_intel drm_kms_helper cfbfillrect crypto_simd glue_helper
> syscopyarea cfbimgblt sysfillrect sysimgblt snd_hda_intel fb_sys_fops
> cfbcopyarea snd_hda_codec sdhci_acpi drm xhci_pci snd_hwdep sdhci
> drm_panel_orientation_quirks snd_hda_core intel_gtt mmc_core xhci_hcd
> iosf_mbi
> Mar 28 01:23:22 lena kernel: CPU: 0 PID: 4221 Comm: X Tainted: G        W         5.2.0+ #44
> Mar 28 01:23:22 lena kernel: Hardware name: Acer Aspire ES1-131/Garp_BA, BIOS V1.23 06/22/2016
> Mar 28 01:23:22 lena kernel: RIP: 0010:drm_wait_one_vblank+0xfa/0x12a [drm]
> Mar 28 01:23:22 lena kernel: Code: 89 e7 e8 31 eb 74 e1 49 89 c4 eb bf
> 48 89 e6 4c 89 f7 e8 d5 b5 ff e0 45 85 e4 75 10 89 de 48 c7 c7 cf de
> 0d a0 e8 2e bd fc e0 <0f> 0b 89 de 48 89 ef e8 82 fe ff ff 48 8b 44 24
> 28 65 48 33 04 25
> Mar 28 01:23:22 lena kernel: RSP: 0018:ffffc90000e73ac0 EFLAGS: 00010296
> Mar 28 01:23:22 lena kernel: RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000007
> Mar 28 01:23:22 lena kernel: RDX: 0000000000000000 RSI: 0000000000000002 RDI: ffff888277a163a0
> Mar 28 01:23:22 lena kernel: RBP: ffff888271b40000 R08: 0000000000000338 R09: 0000000000000001
> Mar 28 01:23:22 lena kernel: R10: ffffc90000e739d0 R11: 0005a05257e63800 R12: 0000000000000000
> Mar 28 01:23:22 lena kernel: R13: 0000000000c25711 R14: ffff8882765eb160 R15: 0000000000000001
> Mar 28 01:23:22 lena kernel: FS:  00007f6d744bd200(0000) GS:ffff888277a00000(0000) knlGS:0000000000000000
> Mar 28 01:23:22 lena kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Mar 28 01:23:22 lena kernel: CR2: 00007f6d6dcb0000 CR3: 0000000268a70000 CR4: 00000000001006f0
> Mar 28 01:23:22 lena kernel: Call Trace:
> Mar 28 01:23:22 lena kernel: ? wait_woken+0x68/0x68
> Mar 28 01:23:22 lena kernel: intel_pre_plane_update+0x165/0x1ea [i915]
> Mar 28 01:23:22 lena kernel: intel_atomic_commit_tail+0xcb/0xf10 [i915]
> Mar 28 01:23:22 lena kernel: ? flush_workqueue+0x2ab/0x2d4
> Mar 28 01:23:22 lena kernel: intel_atomic_commit+0x23a/0x248 [i915]
> Mar 28 01:23:22 lena kernel: drm_atomic_connector_commit_dpms+0xc0/0xda [drm]
> Mar 28 01:23:22 lena kernel: drm_mode_obj_set_property_ioctl+0x133/0x241 [drm]
> Mar 28 01:23:22 lena kernel: ? drm_connector_set_obj_prop+0x67/0x67 [drm]
> Mar 28 01:23:22 lena kernel: drm_connector_property_set_ioctl+0x39/0x53 [drm]
> Mar 28 01:23:22 lena kernel: drm_ioctl_kernel+0x8e/0xe2 [drm]
> Mar 28 01:23:22 lena kernel: drm_ioctl+0x1fd/0x2dc [drm]
> Mar 28 01:23:22 lena kernel: ? drm_connector_set_obj_prop+0x67/0x67 [drm]
> Mar 28 01:23:22 lena kernel: ? hrtimer_cancel+0xc/0x16
> Mar 28 01:23:22 lena kernel: ? schedule_hrtimeout_range_clock+0xb3/0xef
> Mar 28 01:23:22 lena kernel: ? hrtimer_init+0x2/0x2
> Mar 28 01:23:22 lena kernel: vfs_ioctl+0x19/0x26
> Mar 28 01:23:22 lena kernel: do_vfs_ioctl+0x52c/0x554
> Mar 28 01:23:22 lena kernel: ? wake_up_q+0x4e/0x4e
> Mar 28 01:23:22 lena kernel: ksys_ioctl+0x39/0x58
> Mar 28 01:23:22 lena kernel: __x64_sys_ioctl+0x11/0x14
> Mar 28 01:23:22 lena kernel: do_syscall_64+0x4a/0xf4
> Mar 28 01:23:22 lena kernel: entry_SYSCALL_64_after_hwframe+0x44/0xa9
> Mar 28 01:23:22 lena kernel: RIP: 0033:0x7f6d74ce12b7
> Mar 28 01:23:22 lena kernel: Code: 00 00 00 75 0c 48 c7 c0 ff ff ff ff
> 48 83 c4 18 c3 e8 cd d2 01 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00
> b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d a9 cb 0c 00
> f7 d8 64 89 01 48
> Mar 28 01:23:22 lena kernel: RSP: 002b:00007fff62f16b58 EFLAGS: 00003246 ORIG_RAX: 0000000000000010
> Mar 28 01:23:22 lena kernel: RAX: ffffffffffffffda RBX: 000055cc6071deb0 RCX: 00007f6d74ce12b7
> Mar 28 01:23:22 lena kernel: RDX: 00007fff62f16b90 RSI: 00000000c01064ab RDI: 000000000000000c
> Mar 28 01:23:22 lena kernel: RBP: 00007fff62f16b90 R08: 0000000000000057 R09: 00007f6d71394000
> Mar 28 01:23:22 lena kernel: R10: 0000000000000001 R11: 0000000000003246 R12: 00000000c01064ab
> Mar 28 01:23:22 lena kernel: R13: 000000000000000c R14: 00007f6d71394001 R15: 0000000000000000
> Mar 28 01:23:22 lena kernel: ---[ end trace 5361d6be40e0aaf9 ]---
> Mar 28 02:30:26 lena syslog-ng[3629]: Log statistics;
> processed='global(internal_queue_length)=0',
> queued='global(scratch_buffers_count)=1026497183744',
> queued='global(scratch_buffers_bytes)=0',
> processed='global(msg_clones)=0', processed='center(received)=3403',
> processed='source(src)=3403', processed='center(queued)=6806',
> processed='destination(console_all)=3403',
> processed='src.internal(src#1)=107',
> stamp='src.internal(src#1)=1585315826',
> processed='destination(mail)=2359',
> processed='destination(messages)=1044',
> processed='global(sdata_updates)=8',
> processed='global(payload_reallocs)=2439'
> Mar 28 03:55:25 lena kernel: [drm:drm_atomic_helper_wait_for_flip_done
> [drm_kms_helper]] *ERROR* [CRTC:63:pipe B] flip_done timed out
> Mar 28 03:55:35 lena kernel:
> [drm:drm_atomic_helper_wait_for_dependencies [drm_kms_helper]] *ERROR*
> [CRTC:63:pipe B] flip_done timed out
> Mar 28 03:55:45 lena kernel:
> [drm:drm_atomic_helper_wait_for_dependencies [drm_kms_helper]] *ERROR*
> [CONNECTOR:87:HDMI-A-1] flip_done timed out
> Mar 28 03:55:55 lena kernel: [drm:drm_atomic_helper_wait_for_flip_done
> [drm_kms_helper]] *ERROR* [CRTC:63:pipe B] flip_done timed out
> Mar 28 04:05:55 lena kernel: ------------[ cut here ]------------
> Mar 28 04:05:55 lena kernel: vblank wait timed out on crtc 1
> Mar 28 04:05:55 lena kernel: WARNING: CPU: 0 PID: 4221 at drm_wait_one_vblank+0xfa/0x12a [drm]
> Mar 28 04:05:55 lena kernel: Modules linked in: usblp uas usb_storage
> uvcvideo videobuf2_vmalloc videobuf2_memops videobuf2_v4l2
> videobuf2_common snd_hda_codec_hdmi snd_hda_codec_realtek
> snd_hda_codec_generic crc32_pclmul crc32c_intel ghash_clmulni_intel
> i915 aesni_intel drm_kms_helper cfbfillrect crypto_simd glue_helper
> syscopyarea cfbimgblt sysfillrect sysimgblt snd_hda_intel fb_sys_fops
> cfbcopyarea snd_hda_codec sdhci_acpi drm xhci_pci snd_hwdep sdhci
> drm_panel_orientation_quirks snd_hda_core intel_gtt mmc_core xhci_hcd
> iosf_mbi
> Mar 28 04:05:55 lena kernel: CPU: 0 PID: 4221 Comm: X Tainted: G        W         5.2.0+ #44
> Mar 28 04:05:55 lena kernel: Hardware name: Acer Aspire ES1-131/Garp_BA, BIOS V1.23 06/22/2016
> Mar 28 04:05:55 lena kernel: RIP: 0010:drm_wait_one_vblank+0xfa/0x12a [drm]
> Mar 28 04:05:55 lena kernel: Code: 89 e7 e8 31 eb 74 e1 49 89 c4 eb bf
> 48 89 e6 4c 89 f7 e8 d5 b5 ff e0 45 85 e4 75 10 89 de 48 c7 c7 cf de
> 0d a0 e8 2e bd fc e0 <0f> 0b 89 de 48 89 ef e8 82 fe ff ff 48 8b 44 24
> 28 65 48 33 04 25
> Mar 28 04:05:55 lena kernel: RSP: 0018:ffffc90000e73ac0 EFLAGS: 00010296
> Mar 28 04:05:55 lena kernel: RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000007
> Mar 28 04:05:55 lena kernel: RDX: 0000000000000000 RSI: 0000000000000002 RDI: ffff888277a163a0
> Mar 28 04:05:55 lena kernel: RBP: ffff888271b40000 R08: 000000000000036d R09: 0000000000000001
> Mar 28 04:05:55 lena kernel: R10: ffffc90000e739d0 R11: 0005ae83a6d4cf00 R12: 0000000000000000
> Mar 28 04:05:55 lena kernel: R13: 0000000000ca9ef5 R14: ffff8882765eb160 R15: 0000000000000001
> Mar 28 04:05:55 lena kernel: FS:  00007f6d744bd200(0000) GS:ffff888277a00000(0000) knlGS:0000000000000000
> Mar 28 04:05:55 lena kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Mar 28 04:05:55 lena kernel: CR2: 00007f6d6dcb0000 CR3: 0000000268a70000 CR4: 00000000001006f0
> Mar 28 04:05:55 lena kernel: Call Trace:
> Mar 28 04:05:55 lena kernel: ? wait_woken+0x68/0x68
> Mar 28 04:05:55 lena kernel: intel_pre_plane_update+0x165/0x1ea [i915]
> Mar 28 04:05:55 lena kernel: intel_atomic_commit_tail+0xcb/0xf10 [i915]
> Mar 28 04:05:55 lena kernel: ? flush_workqueue+0x2ab/0x2d4
> Mar 28 04:05:55 lena kernel: intel_atomic_commit+0x23a/0x248 [i915]
> Mar 28 04:05:55 lena kernel: drm_atomic_connector_commit_dpms+0xc0/0xda [drm]
> Mar 28 04:05:55 lena kernel: drm_mode_obj_set_property_ioctl+0x133/0x241 [drm]
> Mar 28 04:05:55 lena kernel: ? drm_connector_set_obj_prop+0x67/0x67 [drm]
> Mar 28 04:05:55 lena kernel: drm_connector_property_set_ioctl+0x39/0x53 [drm]
> Mar 28 04:05:55 lena kernel: drm_ioctl_kernel+0x8e/0xe2 [drm]
> Mar 28 04:05:55 lena kernel: ? ___sys_recvmsg+0x1a0/0x1ce
> Mar 28 04:05:55 lena kernel: drm_ioctl+0x1fd/0x2dc [drm]
> Mar 28 04:05:55 lena kernel: ? drm_connector_set_obj_prop+0x67/0x67 [drm]
> Mar 28 04:05:55 lena kernel: ? vfs_writev+0xd3/0x100
> Mar 28 04:05:55 lena kernel: ? timerqueue_del+0x2c/0x3a
> Mar 28 04:05:55 lena kernel: ? __remove_hrtimer+0x28/0x61
> Mar 28 04:05:55 lena kernel: vfs_ioctl+0x19/0x26
> Mar 28 04:05:55 lena kernel: do_vfs_ioctl+0x52c/0x554
> Mar 28 04:05:55 lena kernel: ? __se_sys_setitimer+0xa8/0xf0
> Mar 28 04:05:55 lena kernel: ksys_ioctl+0x39/0x58
> Mar 28 04:05:55 lena kernel: __x64_sys_ioctl+0x11/0x14
> Mar 28 04:05:55 lena kernel: do_syscall_64+0x4a/0xf4
> Mar 28 04:05:55 lena kernel: entry_SYSCALL_64_after_hwframe+0x44/0xa9
> Mar 28 04:05:55 lena kernel: RIP: 0033:0x7f6d74ce12b7
> Mar 28 04:05:55 lena kernel: Code: 00 00 00 75 0c 48 c7 c0 ff ff ff ff
> 48 83 c4 18 c3 e8 cd d2 01 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00
> b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d a9 cb 0c 00
> f7 d8 64 89 01 48
> Mar 28 04:05:55 lena kernel: RSP: 002b:00007fff62f16b58 EFLAGS: 00003246 ORIG_RAX: 0000000000000010
> Mar 28 04:05:55 lena kernel: RAX: ffffffffffffffda RBX: 000055cc6071deb0 RCX: 00007f6d74ce12b7
> Mar 28 04:05:55 lena kernel: RDX: 00007fff62f16b90 RSI: 00000000c01064ab RDI: 000000000000000c
> Mar 28 04:05:55 lena kernel: RBP: 00007fff62f16b90 R08: 0000000000000057 R09: 00007f6d71394000
> Mar 28 04:05:55 lena kernel: R10: 0000000000000001 R11: 0000000000003246 R12: 00000000c01064ab
> Mar 28 04:05:55 lena kernel: R13: 000000000000000c R14: 00007f6d71394001 R15: 0000000000000000
> Mar 28 04:05:55 lena kernel: ---[ end trace 5361d6be40e0aafa ]---
> Mar 28 04:49:14 lena kernel: ------------[ cut here ]------------
> Mar 28 04:49:14 lena kernel: vblank wait timed out on crtc 1
> Mar 28 04:49:14 lena kernel: WARNING: CPU: 2 PID: 4221 at drm_wait_one_vblank+0xfa/0x12a [drm]
> Mar 28 04:49:14 lena kernel: Modules linked in: usblp uas usb_storage
> uvcvideo videobuf2_vmalloc videobuf2_memops videobuf2_v4l2
> videobuf2_common snd_hda_codec_hdmi snd_hda_codec_realtek
> snd_hda_codec_generic crc32_pclmul crc32c_intel ghash_clmulni_intel
> i915 aesni_intel drm_kms_helper cfbfillrect crypto_simd glue_helper
> syscopyarea cfbimgblt sysfillrect sysimgblt snd_hda_intel fb_sys_fops
> cfbcopyarea snd_hda_codec sdhci_acpi drm xhci_pci snd_hwdep sdhci
> drm_panel_orientation_quirks snd_hda_core intel_gtt mmc_core xhci_hcd
> iosf_mbi
> Mar 28 04:49:14 lena kernel: CPU: 2 PID: 4221 Comm: X Tainted: G        W         5.2.0+ #44
> Mar 28 04:49:14 lena kernel: Hardware name: Acer Aspire ES1-131/Garp_BA, BIOS V1.23 06/22/2016
> Mar 28 04:49:14 lena kernel: RIP: 0010:drm_wait_one_vblank+0xfa/0x12a [drm]
> Mar 28 04:49:14 lena kernel: Code: 89 e7 e8 31 eb 74 e1 49 89 c4 eb bf
> 48 89 e6 4c 89 f7 e8 d5 b5 ff e0 45 85 e4 75 10 89 de 48 c7 c7 cf de
> 0d a0 e8 2e bd fc e0 <0f> 0b 89 de 48 89 ef e8 82 fe ff ff 48 8b 44 24
> 28 65 48 33 04 25
> Mar 28 04:49:14 lena kernel: RSP: 0018:ffffc90000e73ac0 EFLAGS: 00010296
> Mar 28 04:49:14 lena kernel: RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000007
> Mar 28 04:49:14 lena kernel: RDX: 0000000000000000 RSI: 0000000000000002 RDI: ffff888277b163a0
> Mar 28 04:49:14 lena kernel: RBP: ffff888271b40000 R08: 000000000000039f R09: 0000000000000001
> Mar 28 04:49:14 lena kernel: R10: ffffc90000e739d0 R11: 0005b24bca063000 R12: 0000000000000000
> Mar 28 04:49:14 lena kernel: R13: 0000000000ccd1e6 R14: ffff8882765eb160 R15: 0000000000000001
> Mar 28 04:49:14 lena kernel: FS:  00007f6d744bd200(0000) GS:ffff888277b00000(0000) knlGS:0000000000000000
> Mar 28 04:49:14 lena kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Mar 28 04:49:14 lena kernel: CR2: 00007f6d6dcb0000 CR3: 0000000268a70000 CR4: 00000000001006e0
> Mar 28 04:49:14 lena kernel: Call Trace:
> Mar 28 04:49:14 lena kernel: ? wait_woken+0x68/0x68
> Mar 28 04:49:14 lena kernel: intel_pre_plane_update+0x165/0x1ea [i915]
> Mar 28 04:49:14 lena kernel: intel_atomic_commit_tail+0xcb/0xf10 [i915]
> Mar 28 04:49:14 lena kernel: ? flush_workqueue+0x2ab/0x2d4
> Mar 28 04:49:14 lena kernel: intel_atomic_commit+0x23a/0x248 [i915]
> Mar 28 04:49:14 lena kernel: drm_atomic_connector_commit_dpms+0xc0/0xda [drm]
> Mar 28 04:49:14 lena kernel: drm_mode_obj_set_property_ioctl+0x133/0x241 [drm]
> Mar 28 04:49:14 lena kernel: ? drm_connector_set_obj_prop+0x67/0x67 [drm]
> Mar 28 04:49:14 lena kernel: drm_connector_property_set_ioctl+0x39/0x53 [drm]
> Mar 28 04:49:14 lena kernel: drm_ioctl_kernel+0x8e/0xe2 [drm]
> Mar 28 04:49:14 lena kernel: drm_ioctl+0x1fd/0x2dc [drm]
> Mar 28 04:49:14 lena kernel: ? drm_connector_set_obj_prop+0x67/0x67 [drm]
> Mar 28 04:49:14 lena kernel: ? hrtimer_cancel+0xc/0x16
> Mar 28 04:49:14 lena kernel: ? schedule_hrtimeout_range_clock+0xb3/0xef
> Mar 28 04:49:14 lena kernel: ? hrtimer_init+0x2/0x2
> Mar 28 04:49:14 lena kernel: vfs_ioctl+0x19/0x26
> Mar 28 04:49:14 lena kernel: do_vfs_ioctl+0x52c/0x554
> Mar 28 04:49:14 lena kernel: ? wake_up_q+0x4e/0x4e
> Mar 28 04:49:14 lena kernel: ksys_ioctl+0x39/0x58
> Mar 28 04:49:14 lena kernel: __x64_sys_ioctl+0x11/0x14
> Mar 28 04:49:14 lena kernel: do_syscall_64+0x4a/0xf4
> Mar 28 04:49:14 lena kernel: entry_SYSCALL_64_after_hwframe+0x44/0xa9
> Mar 28 04:49:14 lena kernel: RIP: 0033:0x7f6d74ce12b7
> Mar 28 04:49:14 lena kernel: Code: 00 00 00 75 0c 48 c7 c0 ff ff ff ff
> 48 83 c4 18 c3 e8 cd d2 01 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00
> b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d a9 cb 0c 00
> f7 d8 64 89 01 48
> Mar 28 04:49:14 lena kernel: RSP: 002b:00007fff62f16b58 EFLAGS: 00003246 ORIG_RAX: 0000000000000010
> Mar 28 04:49:14 lena kernel: RAX: ffffffffffffffda RBX: 000055cc6071deb0 RCX: 00007f6d74ce12b7
> Mar 28 04:49:14 lena kernel: RDX: 00007fff62f16b90 RSI: 00000000c01064ab RDI: 000000000000000c
> Mar 28 04:49:14 lena kernel: RBP: 00007fff62f16b90 R08: 0000000000000057 R09: 00007f6d71394000
> Mar 28 04:49:14 lena kernel: R10: 0000000000000001 R11: 0000000000003246 R12: 00000000c01064ab
> Mar 28 04:49:14 lena kernel: R13: 000000000000000c R14: 00007f6d71394001 R15: 0000000000000000
> Mar 28 04:49:14 lena kernel: ---[ end trace 5361d6be40e0aafb ]---
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
