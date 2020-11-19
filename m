Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E410F2B88E3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 01:04:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31ED089994;
	Thu, 19 Nov 2020 00:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1618589994
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 00:04:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23035964-1500050 for multiple; Thu, 19 Nov 2020 00:04:40 +0000
MIME-Version: 1.0
In-Reply-To: <20201118194925.GA18513@labuser-Z97X-UD5H>
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
 <20201118194925.GA18513@labuser-Z97X-UD5H>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Navare, Manasi" <manasi.d.navare@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 00:04:44 +0000
Message-ID: <160574428408.20188.14023076916252132505@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [CI 00/15] Rebased remaining big joiner series
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

Quoting Navare, Manasi (2020-11-18 19:49:25)
> Series pushed to dinq

Oops on boot:

<1>[   44.315382] BUG: unable to handle page fault for address: ffffc90049e02100
<1>[   44.315422] #PF: supervisor read access in kernel mode
<1>[   44.315442] #PF: error_code(0x0000) - not-present page
<6>[   44.315462] PGD 100000067 P4D 100000067 PUD 0
<4>[   44.315497] Oops: 0000 [#1] PREEMPT SMP NOPTI
<4>[   44.315522] CPU: 7 PID: 276 Comm: systemd-udevd Tainted: G     U            5.10.0-rc3-CI-CI_DRM_9355+ #1
<4>[   44.315552] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake Y LPDDR4x T4 Crb, BIOS TGLSFWI1.R00.2527.A03.2001170231 01/17/2020
<4>[   44.315981] RIP: 0010:gen12_fwtable_read32+0x6f/0x2f0 [i915]
<4>[   44.316016] Code: c6 48 8b 43 08 8b b0 98 0d 00 00 85 f6 0f 85 53 01 00 00 89 ee 48 89 df e8 fe a6 ff ff 85 c0 0f 85 bc 00 00 00 89 e8 48 03 03 <44> 8b 38 48 8b 43 08 8b 90 98 0d 00 00 85 d2 0f 85 a8 01 00 00 4c
16893]  hsw_crtc_enable+0x188/0x780 [i915]
<4>[   44.317423]  intel_enable_crtc+0x56/0x70 [i915]
<4>[   44.317931]  skl_commit_modeset_enables+0x34a/0x530 [i915]
<4>[   44.318444]  intel_atomic_commit_tail+0x3a0/0x1330 [i915]
<4>[   44.318488]  ? queue_work_on+0x5e/0x70
<4>[   44.318965]  intel_atomic_commit+0x371/0x3f0 [i915]
<4>[   44.319458]  intel_initial_commit+0x156/0x1e0 [i915]
<4>[   44.319949]  intel_modeset_init_nogem+0xb59/0x1c00 [i915]
<4>[   44.320336]  i915_driver_probe+0x79c/0xd90 [i915]
<4>[   44.320374]  ? __pm_runtime_resume+0x4f/0x80
<4>[   44.320741]  i915_pci_probe+0x43/0x1d0 [i915]
<4>[   44.320772]  ? _raw_spin_unlock_irqrestore+0x2f/0x50
<4>[   44.320804]  pci_device_probe+0x9e/0x110
<4>[   44.320830]  really_probe+0x1c4/0x430
<4>[   44.320852]  driver_probe_device+0xd9/0x140
<4>[   44.320875]  device_driver_attach+0x4a/0x50
<4>[   44.320897]  __driver_attach+0x83/0x140
<4>[   44.320917]  ? device_driver_attach+0x50/0x50
<4>[   44.320938]  ? device_driver_attach+0x50/0x50
89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 1f f6 2c 00 f7 d8 64 89 01 48
<4>[   44.321749] RSP: 002b:00007ffda8ea9358 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
<4>[   44.321782] RAX: ffffffffffffffda RBX: 000056004d10ffc0 RCX: 00007fad885f5839
<4>[   44.321808] RDX: 0000000000000000 RSI: 000056004d0f5490 RDI: 000000000000000f
<4>[   44.321834] RBP: 000056004d0f5490 R08: 0000000000000000 R09: 00007ffda8ea9470
<4>[   44.321859] R10: 000000000000000f R11: 0000000000000246 R12: 0000000000000000
<4>[   44.321884] R13: 000056004d0f20c0 R14: 0000000000020000 R15: 0000000000000000
<4>[   44.321921] Modules linked in: i915(+) mei_hdcp x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul snd_hda_intel snd_intel_dspcfg ghash_clmulni_intel snd_hda_codec cdc_ether snd_hwdep usbnet snd_hda_core mii e1000e ptp snd_pcm pps_core mei_me mei prime_numbers intel_lpss_pci(+)
<4>[   44.322105] CR2: ffffc90049e02100
<4>[   44.322130] ---[ end trace 87c6ef683da5ac08 ]---
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
