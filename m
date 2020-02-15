Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F67615FF3F
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 17:20:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9187F6E22D;
	Sat, 15 Feb 2020 16:20:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CC86E22D
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Feb 2020 16:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1581783602;
 bh=GV2bO+K3BBjG8099+gXOw00KLzwouWCa0j3JtlJMHIA=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=MsW84Y1emIJqWo9ObILRkTprra2DBmyD14Q7+MKnY1QkaV64rZ7Y26WCRDsGdvohF
 03KtN/A6pPy9LS+h59xCvgAx+omWhyTVANHqb/ioTZHl8FGl0XMdg0z+Eb1LoANlB4
 eo+sNW87YN7YBuWSARKMUUKUXx54j/uIlndW8MGk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.24] ([77.10.148.10]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MNsw4-1ine700i6q-00ODdo; Sat, 15
 Feb 2020 17:20:02 +0100
To: intel-gfx <intel-gfx@lists.freedesktop.org>
From: =?UTF-8?Q?Toralf_F=c3=b6rster?= <toralf.foerster@gmx.de>
Autocrypt: addr=toralf.foerster@gmx.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <4012acc4-2620-e7f9-ac3c-aa4f00ea8e40@gmx.de>
Date: Sat, 15 Feb 2020 17:20:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:J+mHjPE/LCC8GHuH2T7Xa7z5qbvpdn9sPfgj7aeGKdXAxHFRfdl
 OJeqI0umscpgdOtM1tSOiyPw0KSoy7WjU2MpTfFBqqnaatYUX6uyeUQK33JlJRIpqbBvV3j
 WZpzBzbCRgNRp0amJLrT43MA4LlMy80gQ5dpkUMZCCm4YBHrK4JI6ZQT3vKCZAJjqj0/dlD
 7a49/8qQw7jQMzg+I7PNw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NB9T6OF902A=:f1OFadbmG4Ncu3ZqKTyiKc
 IAye11Ioo1nYgAWl9XXWFdC/LiKiTSsJa6haUFUPMJiskmeLgofRjONf3S6BQH9SnIg4wB5mI
 s1RFOH3IthhQghA3uE2xBpO9UnR7ujQgxi6rXzqmARhUPL8TGaySL0jw/k3e/ww8/02i0hTq2
 xhvgUHGDbsYUGxef4hzZ3uPhA8InN7oxK2unmbPke2REgKD5JbL4k0IIYLn1Kr0fnG9SxdsZK
 qrZx2MT9mGQAHBldCV2IsqYAoH6H98G2kdp+EKKG7nWNGCzf2djM4x8w8St1fXPId21SyYHkN
 kMFILX6teGvalTFO7qSdsNm3mKoWFOHFBzM7TVL9zsGVWXyPg50viercv2fSBkz/12IYoZM4V
 yk5LqAcMvX0FoqM4uMhUp3FgN/HSGJroYJR24DgDm1CwSoBdJhdI1JnR3hh8BHHecW1C8PpTx
 njLl2RymmBpdm6iJ8LZHhEP9KfwmfwCvVK41oEXjJiIAkBeANnZRWL/vt5qzgTdj2x9RmGdQ6
 8kacyYAm2P3QVcF3T5/m9NhB9xURZq2xuAmIcoStfUMHoYjMzJvs86fmE2N3S/OWQbd34NGhy
 Waxx9ixpRTw/8/qTl8UpPDNGYlf1k8/a1JTQNjfwDEuQfh45WEPU3W1Cdwx43rNXuBsMazfEx
 O4OqouF5yI3ccuciF95uWiGVm/SvroXjm2+NuP/Pkd+8J7zlkgjXE/+pvRCnMkEsHIrrxPizv
 nKnjX8v0lowiVVB7HDp92U6G0oxKMlPdIX/aOUzUTt81O1stllqGvspWj8rwJQa/xZ67B4wbD
 3JoGjx2CFP1IeFwhNSqDSIuEwkfK0OwpbsJUVfpWR4yo1Ru3GXPiFr/bHYo8+mAP6XPyinGtE
 NDcZmJUoK8cmb689VkyEzb52+uURMVBvu9pEsg3VEvJ+jVLzZwhlyBbEqAVqjU7MsmqwOMlAs
 t35YLMddxzuXis8os1K65P25FaT7FDLhISizpqyfXOOLZA25WvytyN5fQgM9MfQmDu/Bc5frv
 mQdUAqgT7FR3anSZ24rGnC28XprwLo4EZGum4Z9gbzxopxPodgYxQA+ajMdAPbeRJFghXcO+w
 h3I7objn/VWyv6L8DARersstDZlNArWyGiabncJAzkyIsIMBrr0w8zRiqUQb3PKqmSAdMhtRQ
 xZ2DZLNsLze3Uj5biDmmFsYZr/4kI4CkPbEJlCnJsSUgjFZDGqGvvqjpKyi6skP6uluDU/I06
 mDdD4G+kQlEKNegz4
Subject: [Intel-gfx] kernel 5.5.4: BUG: kernel NULL pointer dereference,
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
Cc: Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since 5.5.1 I do experience hangs under a hardend Gerntoo Linux + KDE, neither mouse nor keyboard are then working anymore, power off is the only one.
The syslog tells:


Feb 15 12:56:31 t44 kernel: BUG: kernel NULL pointer dereference, address: 0000000000000000
Feb 15 12:56:31 t44 kernel: #PF: supervisor instruction fetch in kernel mode
Feb 15 12:56:31 t44 kernel: #PF: error_code(0x0010) - not-present page
Feb 15 12:56:31 t44 kernel: PGD 0 P4D 0 
Feb 15 12:56:31 t44 kernel: Oops: 0010 [#1] SMP PTI
Feb 15 12:56:31 t44 kernel: CPU: 0 PID: 3401 Comm: X Tainted: G                T 5.5.4 #2
Feb 15 12:56:31 t44 kernel: Hardware name: LENOVO 20AQCTO1WW/20AQCTO1WW, BIOS GJET92WW (2.42 ) 03/03/2017
Feb 15 12:56:31 t44 kernel: RIP: 0010:0x0
Feb 15 12:56:31 t44 kernel: Code: Bad RIP value.
Feb 15 12:56:31 t44 kernel: RSP: 0018:ffff9d8780917a40 EFLAGS: 00010087
Feb 15 12:56:31 t44 kernel: RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000919dd
Feb 15 12:56:31 t44 kernel: RDX: 0000000000000000 RSI: ffff8b13d4024b08 RDI: ffff8b149d88a400
Feb 15 12:56:31 t44 kernel: RBP: ffff8b149d88a400 R08: 0000000000000000 R09: ffff8b13d4024100
Feb 15 12:56:31 t44 kernel: R10: 0000000000000002 R11: 0000000000000005 R12: ffff9d8780917a48
Feb 15 12:56:31 t44 kernel: R13: 0000000000000000 R14: ffff8b14aa17ae00 R15: ffff8b14a39a02c0
Feb 15 12:56:31 t44 kernel: FS:  00007f8c162148c0(0000) GS:ffff8b14b2600000(0000) knlGS:0000000000000000
Feb 15 12:56:31 t44 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
Feb 15 12:56:31 t44 kernel: CR2: ffffffffffffffd6 CR3: 0000000323998005 CR4: 00000000001606f0
Feb 15 12:56:31 t44 kernel: Call Trace:
Feb 15 12:56:31 t44 kernel:  dma_fence_signal_locked+0x85/0xc0
Feb 15 12:56:31 t44 kernel:  i915_request_retire+0x259/0x2a0 [i915]
Feb 15 12:56:31 t44 kernel:  i915_request_create+0x3f/0xc0 [i915]
Feb 15 12:56:31 t44 kernel:  i915_gem_do_execbuffer+0x973/0x17d0 [i915]
Feb 15 12:56:31 t44 kernel:  i915_gem_execbuffer2_ioctl+0xe9/0x3a0 [i915]
Feb 15 12:56:31 t44 kernel:  ? i915_gem_execbuffer_ioctl+0x2c0/0x2c0 [i915]
Feb 15 12:56:31 t44 kernel:  drm_ioctl_kernel+0xae/0x100 [drm]
Feb 15 12:56:31 t44 kernel:  drm_ioctl+0x223/0x400 [drm]
Feb 15 12:56:31 t44 kernel:  ? i915_gem_execbuffer_ioctl+0x2c0/0x2c0 [i915]
Feb 15 12:56:31 t44 kernel:  do_vfs_ioctl+0x4d4/0x760
Feb 15 12:56:31 t44 kernel:  ksys_ioctl+0x5b/0x90
Feb 15 12:56:31 t44 kernel:  __x64_sys_ioctl+0x15/0x20
Feb 15 12:56:31 t44 kernel:  do_syscall_64+0x46/0x100
Feb 15 12:56:31 t44 kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Feb 15 12:56:31 t44 kernel: RIP: 0033:0x7f8c1644d137
Feb 15 12:56:31 t44 kernel: Code: 00 00 00 75 0c 48 c7 c0 ff ff ff ff 48 83 c4 18 c3 e8 2d d4 01 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 19 ed 0c 00 f7 d8 64 89 01 48
Feb 15 12:56:31 t44 kernel: RSP: 002b:00007ffc2e8fabc8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Feb 15 12:56:31 t44 kernel: RAX: ffffffffffffffda RBX: 00007ffc2e8fac10 RCX: 00007f8c1644d137
Feb 15 12:56:31 t44 kernel: RDX: 00007ffc2e8fac10 RSI: 0000000040406469 RDI: 000000000000000d
Feb 15 12:56:31 t44 kernel: RBP: 0000000040406469 R08: 0000561136d07680 R09: 0000000000000202
Feb 15 12:56:31 t44 kernel: R10: 0000000000000000 R11: 0000000000000246 R12: 0000561136cca130
Feb 15 12:56:31 t44 kernel: R13: 000000000000000d R14: 00007f8c15c2cc48 R15: 0000000000000000
Feb 15 12:56:31 t44 kernel: Modules linked in: af_packet bridge stp llc ip6table_filter ip6_tables xt_MASQUERADE iptable_nat nf_nat nf_log_ipv4 nf_log_common xt_LOG xt_limit xt_recent xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 iptable_filter ip_tables uvcvideo videobuf2_vmalloc videobuf2_memops videobuf2_v4l2 videodev videobuf2_common btusb btrtl btbcm btintel bluetooth ecdh_generic ecc rmi_smbus rmi_core mousedev x86_pkg_temp_thermal coretemp i915 kvm_intel kvm irqbypass intel_gtt snd_hda_codec_realtek snd_hda_codec_generic i2c_algo_bit input_leds drm_kms_helper snd_hda_intel wmi_bmof snd_intel_dspcfg cfbfillrect iwlmvm psmouse syscopyarea cfbimgblt aesni_intel glue_helper crypto_simd pcspkr snd_hda_codec atkbd sysfillrect cryptd ehci_pci iwlwifi ehci_hcd sysimgblt fb_sys_fops e1000e cfbcopyarea thinkpad_acpi snd_hda_core i2c_i801 drm snd_pcm ac battery ledtrig_audio tpm_tis tpm_tis_core drm_panel_orientation_quirks snd_timer tpm rng_core agpgart snd i2c_core wmi soundc
 ore thermal evdev
Feb 15 12:56:31 t44 kernel: CR2: 0000000000000000
Feb 15 12:56:31 t44 kernel: ---[ end trace 0efcb8355216bb62 ]---
Feb 15 12:56:31 t44 kernel: RIP: 0010:0x0
Feb 15 12:56:31 t44 kernel: Code: Bad RIP value.
Feb 15 12:56:31 t44 kernel: RSP: 0018:ffff9d8780917a40 EFLAGS: 00010087
Feb 15 12:56:31 t44 kernel: RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000919dd
Feb 15 12:56:31 t44 kernel: RDX: 0000000000000000 RSI: ffff8b13d4024b08 RDI: ffff8b149d88a400
Feb 15 12:56:31 t44 kernel: RBP: ffff8b149d88a400 R08: 0000000000000000 R09: ffff8b13d4024100
Feb 15 12:56:31 t44 kernel: R10: 0000000000000002 R11: 0000000000000005 R12: ffff9d8780917a48
Feb 15 12:56:31 t44 kernel: R13: 0000000000000000 R14: ffff8b14aa17ae00 R15: ffff8b14a39a02c0
Feb 15 12:56:31 t44 kernel: FS:  00007f8c162148c0(0000) GS:ffff8b14b2600000(0000) knlGS:0000000000000000
Feb 15 12:56:31 t44 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
Feb 15 12:56:31 t44 kernel: CR2: ffffffffffffffd6 CR3: 0000000323998005 CR4: 00000000001606f0
Feb 15 12:57:01 t44 CROND[6715]: (root) CMD (/usr/lib/sa/sa1 30 2 -S XALL)
Feb 15 12:57:06 t44 kernel: elogind-daemon[1422]: Power key pressed.
Feb 15 12:57:06 t44 kernel: elogind-daemon[1422]: New session c134 of user tfoerste.
Feb 15 12:57:06 t44 kernel: elogind-daemon[1422]: Removed session c134.
Feb 15 17:12:40 t44 syslog-ng[1897]: syslog-ng starting up; version='3.22.1'


5.4.x are fine

-- 
Toralf
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
