Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F046397ABA
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 21:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C8676EAD5;
	Tue,  1 Jun 2021 19:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 948976EAD5
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 19:31:56 +0000 (UTC)
IronPort-SDR: KKirntOLyZS1xQPHHFCbpMoIlFnoG/EG0AwjmTPR4IPoBx/Nkah/zEhepZwz6VTPj4iMyfg+Yv
 O7SKfU9gPFFA==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="203617837"
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="203617837"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 12:31:54 -0700
IronPort-SDR: PCxlyZktI0q8TsW81GiHM4XiYmvUaWL8KMLE6cVQK4R2kY/frb5qjXfgpep1l6bQnxr5sx5olj
 iWtYzDIktxqA==
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="482629815"
Received: from anqiangu-mobl.ccr.corp.intel.com (HELO intel.com)
 ([10.254.34.92])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 12:31:53 -0700
Date: Tue, 1 Jun 2021 15:31:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, matthew.auld@intel.com
Message-ID: <YLaLKKAC+sVlnxUO@intel.com>
References: <CAPM=9ty556wmf6cvtNLPOYUTNXiPc-vhAXF4w=LT+DBpMf-1+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPM=9ty556wmf6cvtNLPOYUTNXiPc-vhAXF4w=LT+DBpMf-1+Q@mail.gmail.com>
Subject: Re: [Intel-gfx] regression on fedora 5.12 on Lenovo T400
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 25, 2021 at 04:28:20PM +1000, Dave Airlie wrote:
> https://bugzilla.redhat.com/show_bug.cgi?id=1964252
> 
> dmesg below.
> Feel free to point me at any fixes already in flight.

Hi Dave,

sorry for the delay here, but I'd like to just confirm if we are on the
same page that this got fixed with this patch:

036867e93ebf ("drm/i915/gem: Pin the L-shape quirked object as unshrinkable")

is this your current understanding?

> 
> Dave.
> 
> [  140.302041] list_add double add: new=ffff9ed109790fe0,
> prev=ffff9ed109790fe0, next=ffff9ed109465b38.
> [  140.302076] ------------[ cut here ]------------
> [  140.302078] kernel BUG at lib/list_debug.c:29!
> [  140.302091] invalid opcode: 0000 [#1] SMP PTI
> [  140.302097] CPU: 1 PID: 1712 Comm: Xorg Kdump: loaded Tainted: G
>       I       5.12.5-300.fc34.x86_64 #1
> [  140.302103] Hardware name: LENOVO 6475H82/6475H82, BIOS 7UET91WW
> (3.21 ) 12/06/2010
> [  140.302106] RIP: 0010:__list_add_valid.cold+0x26/0x3f
> [  140.302117] Code: ee c1 a6 ff 4c 89 c1 48 c7 c7 f8 4d 41 9b e8 12
> 2c fe ff 0f 0b 48 89 f2 4c 89 c1 48 89 fe 48 c7 c7 a8 4e 41 9b e8 fb
> 2b fe ff <0f> 0b 48 89 d1 4c 89 c6 4c 89 ca 48 c7 c7 50 4e 41 9b e8 e4
> 2b fe
> [  140.302122] RSP: 0018:ffffad63c0cbfcf8 EFLAGS: 00010082
> [  140.302127] RAX: 0000000000000058 RBX: ffff9ed109790d00 RCX: 0000000000000000
> [  140.302131] RDX: ffff9ed137ca6720 RSI: ffff9ed137c985c0 RDI: ffff9ed137c985c0
> [  140.302135] RBP: ffff9ed109465b38 R08: 0000000000000000 R09: ffffad63c0cbfb30
> [  140.302139] R10: ffffad63c0cbfb28 R11: ffffffff9bb45f28 R12: ffff9ed109460000
> [  140.302142] R13: 0000000000000246 R14: ffff9ed109465b20 R15: ffff9ed109790fe0
> [  140.302146] FS:  00007f0edf882a80(0000) GS:ffff9ed137c80000(0000)
> knlGS:0000000000000000
> [  140.302151] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  140.302155] CR2: 00007f0ed7ba2001 CR3: 000000011ff34000 CR4: 00000000000406e0
> [  140.302159] Call Trace:
> [  140.302166]  __i915_gem_object_make_shrinkable+0xa5/0xe0 [i915]
> [  140.302330]  i915_gem_object_set_tiling+0x4fe/0x530 [i915]
> [  140.302473]  i915_gem_set_tiling_ioctl+0x112/0x250 [i915]
> [  140.302613]  ? i915_gem_object_set_tiling+0x530/0x530 [i915]
> [  140.302755]  drm_ioctl_kernel+0x86/0xd0 [drm]
> [  140.302819]  drm_ioctl+0x20f/0x3c0 [drm]
> [  140.302870]  ? i915_gem_object_set_tiling+0x530/0x530 [i915]
> [  140.303013]  __x64_sys_ioctl+0x82/0xb0
> [  140.303020]  do_syscall_64+0x33/0x40
> [  140.303026]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> [  140.303033] RIP: 0033:0x7f0ee01070ab
> [  140.303038] Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff ff ff ff 5b 5d
> 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa b8 10 00 00
> 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 95 bd 0c 00 f7 d8 64 89
> 01 48
> [  140.303043] RSP: 002b:00007ffc7bf48ff8 EFLAGS: 00000246 ORIG_RAX:
> 0000000000000010
> [  140.303048] RAX: ffffffffffffffda RBX: 000055c6591c78d0 RCX: 00007f0ee01070ab
> [  140.303052] RDX: 00007ffc7bf49010 RSI: 00000000c0106461 RDI: 0000000000000011
> [  140.303056] RBP: 00007ffc7bf49060 R08: 000055c6583b39e0 R09: 0000000000000000
> [  140.303059] R10: 00007f0ee01d3a00 R11: 0000000000000246 R12: 0000000000000000
> [  140.303063] R13: 000055c6583b38c0 R14: 00000000c0106461 R15: 00007ffc7bf49010
> [  140.303069] Modules linked in: xt_CHECKSUM xt_MASQUERADE
> xt_conntrack ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc
> nft_objref nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw ip6table_security iptable_nat nf_nat
> nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw
> iptable_security ip_set nf_tables nfnetlink ip6table_filter ip6_tables
> iptable_filter sunrpc coretemp kvm_intel iTCO_wdt kvm intel_pmc_bxt
> mei_wdt iTCO_vendor_support snd_hda_codec_conexant
> snd_hda_codec_generic snd_hda_intel snd_intel_dspcfg
> snd_intel_sdw_acpi irqbypass snd_hda_codec joydev snd_hda_core
> snd_hwdep pcspkr wmi_bmof snd_seq i2c_i801 i2c_smbus thinkpad_acpi
> snd_seq_device snd_pcm platform_profile snd_timer ledtrig_audio snd
> rfkill soundcore mei_me mei lpc_ich zram ip_tables i915 i2c_algo_bit
> drm_kms_helper cec e1000e
> [  140.303171]  firewire_ohci serio_raw firewire_core drm yenta_socket
> crc_itu_t wmi video fuse
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
