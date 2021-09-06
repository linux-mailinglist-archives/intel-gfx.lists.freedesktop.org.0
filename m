Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDE140198F
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 12:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68355897D0;
	Mon,  6 Sep 2021 10:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1175897D0
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 10:14:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="199467701"
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="199467701"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 03:14:20 -0700
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="691615684"
Received: from ljdobbs-mobl1.ger.corp.intel.com (HELO [10.213.197.10])
 ([10.213.197.10])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 03:14:15 -0700
To: jim.cromie@gmail.com, Petri Latvala <petri.latvala@intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jigar Bhatt <jigar.bhatt@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <20210831202133.2165222-1-jim.cromie@gmail.com>
 <163045309469.10657.6449873390681387525@emeril.freedesktop.org>
 <CAJfuBxyNmoFJJ5Auh4DW0cQy13o17i8c=uDYcmfJYF+jVsrhqA@mail.gmail.com>
 <1f670a6b-af77-0e07-880e-57b1e28bfc7b@linux.intel.com>
 <YTIcl3pp+ut4z6Ct@platvala-desk.ger.corp.intel.com>
 <CAJfuBxz2R6HL0x=z=g029jU3qFoHiMUEFb5Y-7spUgZnd2mZ8Q@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8ef8baa5-02f8-626f-e714-636c5a8799d3@linux.intel.com>
Date: Mon, 6 Sep 2021 11:14:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAJfuBxz2R6HL0x=z=g029jU3qFoHiMUEFb5Y-7spUgZnd2mZ8Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdXNl?=
 =?utf-8?q?_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug_=28rev2=29?=
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


On 05/09/2021 18:35, jim.cromie@gmail.com wrote:
> On Fri, Sep 3, 2021 at 6:58 AM Petri Latvala <petri.latvala@intel.com> wrote:
>>

[snip]

>> That tree's master ref does not get updated. It's only for storing tags.
>>
>> That test result comparison was too long to fit into patchwork so the
>> build information at the bottom is missing, but the BAT results have
>> it:
>>
>> IGT_6193: 080869f804cb86b25a38889e5ce9a870571cd8c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>>
>>
> 
> cool, thank you, all.
> 
> I built it, ran it, it crashed the box, which was running this patchset.

High level message seems top be - don't run the IGT suite with graphical 
desktop active. Although some failures shouldn't really happen, so there 
was some value in being this wild. :) More below..

[snip]

> Sep 04 11:22:02 frodo unknown: [IGT] device_reset: starting subtest
> unbind-reset-rebind
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:fb0
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:vtcon1
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:event5
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:input12
> Sep 04 11:22:02 frodo kernel: PM: Removing info for event_source:i915
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:drm_dp_aux0
> Sep 04 11:22:02 frodo kernel: PM: Removing info for i2c:i2c-3
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:intel_backlight
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:card0-eDP-1
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:drm_dp_aux1
> Sep 04 11:22:02 frodo kernel: PM: Removing info for i2c:i2c-4
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:card0-DP-1
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:card0
> Sep 04 11:22:02 frodo kernel: gnome-shell[1768]: segfault at 88 ip
> 00007f1a413df06e sp 00007ffe525c94a0 error 4 in
> iris_dri.so[7f1a40872000+e94000]
> Sep 04 11:22:02 frodo kernel: Code: 79 10 00 74 0f 66 83 fa 02 19 c0
> 83 e0 fb 83 c0 07 88 45 a0 48 8d 75 90 e8 bf f2 ff ff 80 7d a0 00 48
> 89 43 50 48 89 c2 74 2a <8b> 8a 88 00 00 00 8b 80 cc 00 00 00 48 8d 0c
> 49 89 43 20 48 c1 e1
> Sep 04 11:22:02 frodo kernel: PM: Removing info for No Bus:renderD128
> Sep 04 11:22:02 frodo audit[1768]: ANOM_ABEND auid=1000 uid=1000
> gid=1000 ses=3 pid=1768 comm="gnome-shell" exe="/usr/bin/gnome-shell"
> sig=11 res=1
> Sep 04 11:22:02 frodo gnome-shell[1768]: XXX: resource creation failed

Desktop did not like i915 get hot unloaded :), which is fine.

> Sep 04 11:22:02 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:02 frodo kernel: WARNING: CPU: 3 PID: 622706 at
> drivers/gpu/drm/drm_mode_config.c:538
> drm_mode_config_cleanup+0x465/0x480 [drm]

This likely should not happen and it's one for display folks to look at. 
Driver is supposed to disconnect the link between userspace and hardware 
in a safe way in case of hotunbind but obviously it did not quite manage 
it here. +Daniel as first instance to maybe triage this.

> Sep 04 11:22:02 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:02 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:02 frodo kernel: CPU: 3 PID: 622706 Comm: device_reset
> Tainted: G    B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:02 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:02 frodo kernel: RIP:
> 0010:drm_mode_config_cleanup+0x465/0x480 [drm]
> Sep 04 11:22:02 frodo kernel: Code: 48 48 c7 c7 20 19 52 c0 e8 18 f3
> ff ff 48 89 ef e8 80 39 ff ff 48 89 c3 48 85 c0 75 d7 48 89 ef e8 50
> 38 ff ff e9 dc fc ff ff <0f> 0b e9 85 fe ff ff 0f 0b e9 68 ff ff ff e8
> 88 e7 0b c9 0f 1f 84
> Sep 04 11:22:02 frodo kernel: RSP: 0000:ffff888117d27a58 EFLAGS: 00010212
> Sep 04 11:22:02 frodo kernel: RAX: ffff888101c9e008 RBX:
> ffff8881200409e8 RCX: ffffffffc04d86f0
> Sep 04 11:22:02 frodo kernel: RDX: dffffc0000000000 RSI:
> ffff888016c45500 RDI: ffff888120040740
> Sep 04 11:22:02 frodo kernel: RBP: ffff8881200409e8 R08:
> 0000000000000001 R09: 0000000000000000
> Sep 04 11:22:02 frodo kernel: R10: fffffbfff15cd65c R11:
> 0000000000000001 R12: ffff888120040000
> Sep 04 11:22:02 frodo kernel: R13: ffff888120040a10 R14:
> ffff888120040740 R15: 1ffff11022fa4f4d
> Sep 04 11:22:02 frodo kernel: FS:  00007fa3e6b0ca40(0000)
> GS:ffff888216b80000(0000) knlGS:0000000000000000
> Sep 04 11:22:02 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:02 frodo kernel: CR2: 00007fbb47a2b128 CR3:
> 000000011b25c002 CR4: 00000000003706e0
> Sep 04 11:22:02 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:02 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:02 frodo kernel: Call Trace:
> Sep 04 11:22:02 frodo kernel:  ? drm_mode_config_reset+0x210/0x210 [drm]
> Sep 04 11:22:02 frodo kernel:  ?
> intel_atomic_global_obj_cleanup+0x65/0x200 [i915]
> Sep 04 11:22:02 frodo kernel:
> intel_modeset_driver_remove_noirq+0x153/0x1d0 [i915]
> Sep 04 11:22:02 frodo kernel:  ? intel_modeset_driver_remove+0xd0/0xd0 [i915]
> Sep 04 11:22:02 frodo kernel:  i915_driver_remove+0xb3/0x130 [i915]
> Sep 04 11:22:02 frodo kernel:  i915_pci_remove+0x2a/0x40 [i915]
> Sep 04 11:22:02 frodo kernel:  pci_device_remove+0x6e/0x100
> Sep 04 11:22:02 frodo kernel:  __device_release_driver+0x220/0x360
> Sep 04 11:22:02 frodo kernel:  device_driver_detach+0x67/0xf0
> Sep 04 11:22:02 frodo kernel:  unbind_store+0x14d/0x160
> Sep 04 11:22:02 frodo kernel:  ? sysfs_file_ops+0xa0/0xa0
> Sep 04 11:22:02 frodo kernel:  kernfs_fop_write_iter+0x1c3/0x260
> Sep 04 11:22:02 frodo kernel:  new_sync_write+0x24c/0x370
> Sep 04 11:22:02 frodo kernel:  ? new_sync_read+0x360/0x360
> Sep 04 11:22:02 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:02 frodo kernel:  ? up_read_non_owner+0x130/0x140
> Sep 04 11:22:02 frodo kernel:  ? mark_usage+0x1a0/0x1a0
> Sep 04 11:22:02 frodo kernel:  ? build_open_flags+0x240/0x240
> Sep 04 11:22:02 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:02 frodo kernel:  vfs_write+0x35f/0x490
> Sep 04 11:22:02 frodo kernel:  ksys_write+0xc9/0x160
> Sep 04 11:22:02 frodo kernel:  ? __ia32_sys_read+0x40/0x40
> Sep 04 11:22:02 frodo kernel:  ? __task_pid_nr_ns+0xad/0x240
> Sep 04 11:22:02 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:02 frodo kernel:  ? lockdep_hardirqs_on_prepare+0xe/0x220
> Sep 04 11:22:02 frodo kernel:  ? syscall_enter_from_user_mode+0x21/0x70
> Sep 04 11:22:02 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:02 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:02 frodo kernel: RIP: 0033:0x7fa3e808f877
> Sep 04 11:22:02 frodo kernel: Code: 75 05 48 83 c4 58 c3 e8 37 4e ff
> ff 0f 1f 80 00 00 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75
> 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89
> 54 24 18 48 89 74 24
> Sep 04 11:22:02 frodo kernel: RSP: 002b:00007fff9d666b98 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000001
> Sep 04 11:22:02 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007fff9d666c3c RCX: 00007fa3e808f877
> Sep 04 11:22:02 frodo kernel: RDX: 000000000000000c RSI:
> 00007fff9d666c3c RDI: 0000000000000005
> Sep 04 11:22:02 frodo kernel: RBP: 0000000000000005 R08:
> 0000000000edf7a0 R09: 00007fa3e80354e0
> Sep 04 11:22:02 frodo kernel: R10: 0000000000000000 R11:
> 0000000000000246 R12: 000000000000000c
> Sep 04 11:22:02 frodo kernel: R13: 0000000000000000 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:02 frodo kernel: irq event stamp: 0
> Sep 04 11:22:02 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:02 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:02 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:02 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:02 frodo kernel: ---[ end trace 8700b470f2bed28e ]---
> Sep 04 11:22:02 frodo kernel: [leaked fb] framebuffer[113]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]         allocated by = gnome-shell
> Sep 04 11:22:02 frodo kernel: [leaked fb]         refcount=1
> Sep 04 11:22:02 frodo kernel: [leaked fb]         format=XR24
> little-endian (0x34325258)
> Sep 04 11:22:02 frodo kernel: [leaked fb]         modifier=0x100000000000001
> Sep 04 11:22:02 frodo kernel: [leaked fb]         size=1366x768
> Sep 04 11:22:02 frodo kernel: [leaked fb]         layers:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 size[0]=1366x768
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 pitch[0]=5632
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 offset[0]=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 obj[0]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         name=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         refcount=3
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         start=00000000
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         size=5242880
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         imported=no
> Sep 04 11:22:02 frodo kernel: [leaked fb] framebuffer[97]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]         allocated by = gnome-shell
> Sep 04 11:22:02 frodo kernel: [leaked fb]         refcount=1
> Sep 04 11:22:02 frodo kernel: [leaked fb]         format=AR24
> little-endian (0x34325241)
> Sep 04 11:22:02 frodo kernel: [leaked fb]         modifier=0x0
> Sep 04 11:22:02 frodo kernel: [leaked fb]         size=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]         layers:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 size[0]=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 pitch[0]=1024
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 offset[0]=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 obj[0]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         name=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         refcount=3
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         start=00000000
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         size=262144
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         imported=no
> Sep 04 11:22:02 frodo kernel: [leaked fb] framebuffer[119]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]         allocated by = gnome-shell
> Sep 04 11:22:02 frodo kernel: [leaked fb]         refcount=1
> Sep 04 11:22:02 frodo kernel: [leaked fb]         format=AR24
> little-endian (0x34325241)
> Sep 04 11:22:02 frodo kernel: [leaked fb]         modifier=0x0
> Sep 04 11:22:02 frodo kernel: [leaked fb]         size=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]         layers:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 size[0]=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 pitch[0]=1024
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 offset[0]=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 obj[0]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         name=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         refcount=3
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         start=00000000
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         size=262144
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         imported=no
> Sep 04 11:22:02 frodo kernel: [leaked fb] framebuffer[120]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]         allocated by = gnome-shell
> Sep 04 11:22:02 frodo kernel: [leaked fb]         refcount=1
> Sep 04 11:22:02 frodo kernel: [leaked fb]         format=AR24
> little-endian (0x34325241)
> Sep 04 11:22:02 frodo kernel: [leaked fb]         modifier=0x0
> Sep 04 11:22:02 frodo kernel: [leaked fb]         size=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]         layers:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 size[0]=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 pitch[0]=1024
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 offset[0]=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 obj[0]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         name=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         refcount=3
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         start=00000000
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         size=262144
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         imported=no
> Sep 04 11:22:02 frodo kernel: [leaked fb] framebuffer[116]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]         allocated by = gnome-shell
> Sep 04 11:22:02 frodo kernel: [leaked fb]         refcount=1
> Sep 04 11:22:02 frodo kernel: [leaked fb]         format=AR24
> little-endian (0x34325241)
> Sep 04 11:22:02 frodo kernel: [leaked fb]         modifier=0x0
> Sep 04 11:22:02 frodo kernel: [leaked fb]         size=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]         layers:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 size[0]=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 pitch[0]=1024
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 offset[0]=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 obj[0]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         name=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         refcount=3
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         start=00000000
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         size=262144
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         imported=no
> Sep 04 11:22:02 frodo kernel: [leaked fb] framebuffer[152]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]         allocated by = gnome-shell
> Sep 04 11:22:02 frodo kernel: [leaked fb]         refcount=1
> Sep 04 11:22:02 frodo kernel: [leaked fb]         format=AR24
> little-endian (0x34325241)
> Sep 04 11:22:02 frodo kernel: [leaked fb]         modifier=0x0
> Sep 04 11:22:02 frodo kernel: [leaked fb]         size=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]         layers:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 size[0]=256x256
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 pitch[0]=1024
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 offset[0]=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                 obj[0]:
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         name=0
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         refcount=3
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         start=00000000
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         size=262144
> Sep 04 11:22:02 frodo kernel: [leaked fb]                         imported=no
> Sep 04 11:22:02 frodo kernel: PM: Removing info for i2c:i2c-0
> Sep 04 11:22:02 frodo kernel: PM: Removing info for i2c:i2c-1
> Sep 04 11:22:02 frodo kernel: PM: Removing info for i2c:i2c-2
> Sep 04 11:22:02 frodo kernel: PM: Adding info for No Bus:lo
> Sep 04 11:22:02 frodo audit: BPF prog-id=553 op=LOAD
> Sep 04 11:22:02 frodo audit: BPF prog-id=554 op=LOAD
> Sep 04 11:22:02 frodo audit: BPF prog-id=555 op=LOAD
> Sep 04 11:22:02 frodo audit[1]: SERVICE_START pid=1 uid=0
> auid=4294967295 ses=4294967295 msg='unit=systemd-coredump@147-622709-0
> comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=?
> terminal=? res=success'
> Sep 04 11:22:02 frodo audit[622712]: USER_AUTH pid=622712 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:authentication
> grantors=pam_permit acct="gdm" exe="/usr/libexec/gdm-session-worker"
> hostname=frodo addr=? terminal=/dev/tty1 res=success'
> Sep 04 11:22:02 frodo audit[622712]: USER_ACCT pid=622712 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:accounting
> grantors=pam_permit acct="gdm" exe="/usr/libexec/gdm-session-worker"
> hostname=frodo addr=? terminal=/dev/tty1 res=success'
> Sep 04 11:22:02 frodo audit[622712]: CRED_ACQ pid=622712 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:setcred grantors=pam_permit
> acct="gdm" exe="/usr/libexec/gdm-session-worker" hostname=frodo addr=?
> terminal=/dev/tty1 res=success'
> Sep 04 11:22:02 frodo systemd[1]: Started Process Core Dump (PID 622709/UID 0).
> Sep 04 11:22:02 frodo systemd[1]: Created slice User Slice of UID 42.
> Sep 04 11:22:02 frodo systemd[1]: Starting User Runtime Directory
> /run/user/42...
> Sep 04 11:22:02 frodo systemd-logind[885]: New session c2 of user gdm.
> Sep 04 11:22:02 frodo kernel: i915 0000:00:02.0: vgaarb: deactivate vga console
> Sep 04 11:22:02 frodo audit[1]: SERVICE_START pid=1 uid=0
> auid=4294967295 ses=4294967295 msg='unit=user-runtime-dir@42
> comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=?
> terminal=? res=success'
> Sep 04 11:22:02 frodo systemd[1]: Finished User Runtime Directory /run/user/42.
> Sep 04 11:22:02 frodo systemd[1]: Starting User Manager for UID 42...
> Sep 04 11:22:02 frodo kernel: i915 0000:00:02.0: [drm] Applying T12 delay quirk
> Sep 04 11:22:02 frodo kernel: PM: Adding info for i2c:i2c-0
> Sep 04 11:22:02 frodo kernel: PM: Adding info for i2c:i2c-1
> Sep 04 11:22:02 frodo kernel: PM: Adding info for i2c:i2c-2
> Sep 04 11:22:02 frodo kernel: i915 0000:00:02.0: [drm] Finished
> loading DMC firmware i915/skl_dmc_ver1_27.bin (v1.27)
> Sep 04 11:22:02 frodo audit[622728]: USER_ACCT pid=622728 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:accounting
> grantors=pam_unix,pam_localuser acct="gdm"
> exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=?
> res=success'
> Sep 04 11:22:02 frodo audit[622728]: CRED_ACQ pid=622728 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:setcred grantors=?
> acct="gdm" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=?
> res=failed'
> Sep 04 11:22:02 frodo uresourced[1091]: Setting resources on
> user-1000.slice (MemoryMin: 0, MemoryLow: 0, CPUWeight: 100, IOWeight:
> 100)
> Sep 04 11:22:02 frodo uresourced[1091]: Setting resources on
> user@1000.service (MemoryMin: 0, MemoryLow: 0, CPUWeight: 100,
> IOWeight: 100)
> Sep 04 11:22:02 frodo uresourced[1091]: Setting resources on
> user-42.slice (MemoryMin: 0, MemoryLow: 0, CPUWeight: 100, IOWeight:
> 100)
> Sep 04 11:22:02 frodo uresourced[1091]: Setting resources on
> user@42.service (MemoryMin: 0, MemoryLow: 0, CPUWeight: 100, IOWeight:
> 100)
> Sep 04 11:22:02 frodo uresourced[1091]: Setting resources on
> user.slice (MemoryMin: 0, MemoryLow: 0, CPUWeight: -, IOWeight: -)
> Sep 04 11:22:02 frodo systemd[622728]: pam_unix(systemd-user:session):
> session opened for user gdm(uid=42) by (uid=0)
> Sep 04 11:22:02 frodo audit[622728]: USER_START pid=622728 uid=0
> auid=42 ses=7 msg='op=PAM:session_open
> grantors=pam_selinux,pam_selinux,pam_loginuid,pam_keyinit,pam_limits,pam_systemd,pam_unix
> acct="gdm" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=?
> res=success'
> Sep 04 11:22:03 frodo audit: BPF prog-id=556 op=LOAD
> Sep 04 11:22:03 frodo audit: BPF prog-id=556 op=UNLOAD
> Sep 04 11:22:03 frodo systemd[622728]: Queued start job for default
> target Main User Target.
> Sep 04 11:22:03 frodo systemd[622728]: Created slice User Application Slice.
> Sep 04 11:22:03 frodo systemd[622728]: Condition check resulted in
> Mark boot as successful after the user session has run 2 minutes being
> skipped.
> Sep 04 11:22:03 frodo systemd[622728]: Started Daily Cleanup of User's
> Temporary Directories.
> Sep 04 11:22:03 frodo systemd[622728]: Reached target Paths.
> Sep 04 11:22:03 frodo systemd[622728]: Reached target Timers.
> Sep 04 11:22:03 frodo systemd[622728]: Starting D-Bus User Message Bus Socket.
> Sep 04 11:22:03 frodo systemd[622728]: Listening on PipeWire PulseAudio.
> Sep 04 11:22:03 frodo systemd[622728]: Listening on Multimedia System.
> Sep 04 11:22:03 frodo systemd[622728]: Starting Create User's Volatile
> Files and Directories...
> Sep 04 11:22:03 frodo systemd[622728]: Listening on D-Bus User Message
> Bus Socket.
> Sep 04 11:22:03 frodo systemd[622728]: Reached target Sockets.
> Sep 04 11:22:03 frodo systemd[622728]: Finished Create User's Volatile
> Files and Directories.
> Sep 04 11:22:03 frodo systemd[622728]: Reached target Basic System.
> Sep 04 11:22:03 frodo systemd[622728]: Reached target Main User Target.
> Sep 04 11:22:03 frodo audit[1]: SERVICE_START pid=1 uid=0
> auid=4294967295 ses=4294967295 msg='unit=user@42 comm="systemd"
> exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=?
> res=success'
> Sep 04 11:22:03 frodo systemd[622728]: Startup finished in 474ms.
> Sep 04 11:22:03 frodo systemd[1]: Started User Manager for UID 42.
> Sep 04 11:22:03 frodo systemd[1]: Started Session c2 of User gdm.
> Sep 04 11:22:03 frodo gdm-launch-environment][622712]:
> pam_unix(gdm-launch-environment:session): session opened for user
> gdm(uid=42) by (uid=0)
> Sep 04 11:22:03 frodo audit[622712]: USER_START pid=622712 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:session_open
> grantors=pam_keyinit,pam_keyinit,pam_limits,pam_systemd,pam_unix,pam_umask
> acct="gdm" exe="/usr/libexec/gdm-session-worker" hostname=frodo addr=?
> terminal=/dev/tty1 res=success'
> Sep 04 11:22:03 frodo systemd[622728]: Created slice User Core Session Slice.
> Sep 04 11:22:03 frodo systemd[622728]: Starting D-Bus User Message Bus...
> Sep 04 11:22:03 frodo kernel: rfkill: input handler enabled
> Sep 04 11:22:03 frodo dbus-broker-launch[622742]: Policy to allow
> eavesdropping in /usr/share/dbus-1/session.conf +31: Eavesdropping is
> deprecated and ignored
> Sep 04 11:22:03 frodo dbus-broker-launch[622742]: Policy to allow
> eavesdropping in /usr/share/dbus-1/session.conf +33: Eavesdropping is
> deprecated and ignored
> Sep 04 11:22:03 frodo systemd[622728]: Started D-Bus User Message Bus.
> Sep 04 11:22:03 frodo dbus-broker-lau[622742]: Ready
> Sep 04 11:22:03 frodo bluetoothd[791]: Endpoint unregistered:
> sender=:1.90 path=/MediaEndpoint/A2DPSource/ldac
> Sep 04 11:22:03 frodo bluetoothd[791]: Endpoint unregistered:
> sender=:1.90 path=/MediaEndpoint/A2DPSource/aac
> Sep 04 11:22:03 frodo bluetoothd[791]: Endpoint unregistered:
> sender=:1.90 path=/MediaEndpoint/A2DPSink/sbc
> Sep 04 11:22:03 frodo bluetoothd[791]: Endpoint unregistered:
> sender=:1.90 path=/MediaEndpoint/A2DPSource/sbc
> Sep 04 11:22:03 frodo bluetoothd[791]: Endpoint unregistered:
> sender=:1.90 path=/MediaEndpoint/A2DPSink/sbc_xq
> Sep 04 11:22:03 frodo bluetoothd[791]: Endpoint unregistered:
> sender=:1.90 path=/MediaEndpoint/A2DPSource/sbc_xq
> Sep 04 11:22:03 frodo bluetoothd[791]: Endpoint unregistered:
> sender=:1.90 path=/MediaEndpoint/A2DPSource/faststream
> Sep 04 11:22:03 frodo bluetoothd[791]: Endpoint unregistered:
> sender=:1.90 path=/MediaEndpoint/A2DPSource/faststream_duplex
> Sep 04 11:22:03 frodo gsd-media-keys[2026]: Unable to get default sink
> Sep 04 11:22:03 frodo gsd-media-keys[2026]: Unable to get default source
> Sep 04 11:22:03 frodo abrt-dump-journal-oops[867]:
> abrt-dump-journal-oops: Found oopses: 1
> Sep 04 11:22:03 frodo abrt-dump-journal-oops[867]:
> abrt-dump-journal-oops: Creating problem directories
> Sep 04 11:22:03 frodo gnome-session[622751]:
> gnome-session-binary[622751]: WARNING: Failed to upload environment to
> systemd: GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:22:03 frodo gnome-session-binary[622751]: WARNING: Failed to
> upload environment to systemd:
> GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:22:03 frodo gnome-session[622751]:
> gnome-session-binary[622751]: WARNING: Failed to reset failed state of
> units: GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:22:03 frodo gnome-session-binary[622751]: WARNING: Failed to
> reset failed state of units:
> GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:22:03 frodo gnome-session-binary[622751]: WARNING: Falling
> back to non-systemd startup procedure due to error:
> GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:22:03 frodo gnome-session[622751]:
> gnome-session-binary[622751]: WARNING: Falling back to non-systemd
> startup procedure due to error:
> GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:22:04 frodo abrt-server[622755]: Can't find kernel package
> corresponding to '5.14.0-lm1-00008-gf9f185054f04'
> Sep 04 11:22:04 frodo abrt-server[622755]: 'post-create' on
> '/var/spool/abrt/oops-2021-09-04-11:22:03-867-0' exited with 1
> Sep 04 11:22:04 frodo abrt-server[622755]: Deleting problem directory
> '/var/spool/abrt/oops-2021-09-04-11:22:03-867-0'
> Sep 04 11:22:04 frodo gnome-shell[622760]: Failed to create backend:
> No GPUs found
> Sep 04 11:22:04 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:04 frodo kernel: WARN_ON(!ww && vma->resv &&
> lock_is_held(&(&(vma->resv)->lock.base)->dep_map))
> Sep 04 11:22:04 frodo kernel: WARNING: CPU: 3 PID: 622706 at
> drivers/gpu/drm/i915/i915_vma.c:1045 i915_ggtt_pin+0x240/0x250 [i915]

+ Maarten to comment on this one.

Regards,

Tvrtko

> Sep 04 11:22:04 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:04 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:04 frodo kernel: CPU: 3 PID: 622706 Comm: device_reset
> Tainted: G    B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:04 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:04 frodo kernel: RIP: 0010:i915_ggtt_pin+0x240/0x250 [i915]
> Sep 04 11:22:04 frodo kernel: Code: ff 48 8d 78 68 be ff ff ff ff e8
> 7b 4e ca c8 85 c0 0f 84 45 fe ff ff 48 c7 c6 60 77 b4 c0 48 c7 c7 80
> 52 b4 c0 e8 74 f5 c1 c8 <0f> 0b e9 2b fe ff ff 66 0f 1f 84 00 00 00 00
> 00 0f 1f 44 00 00 48
> Sep 04 11:22:04 frodo kernel: RSP: 0018:ffff888117d27890 EFLAGS: 00010282
> Sep 04 11:22:04 frodo kernel: RAX: 0000000000000000 RBX:
> 0000000000000020 RCX: 0000000000000000
> Sep 04 11:22:04 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed1022fa4f04
> Sep 04 11:22:04 frodo kernel: RBP: ffff888122d8b950 R08:
> ffffffff8846096e R09: ffff888216bb0fcb
> Sep 04 11:22:04 frodo kernel: R10: ffffed1042d761f9 R11:
> 0000000000000001 R12: 0000000000000000
> Sep 04 11:22:04 frodo kernel: R13: ffff88811dcb3300 R14:
> 0000000000000000 R15: ffff88811dcb3420
> Sep 04 11:22:04 frodo kernel: FS:  00007fa3e6b0ca40(0000)
> GS:ffff888216b80000(0000) knlGS:0000000000000000
> Sep 04 11:22:04 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:04 frodo kernel: CR2: 00007fd42e48e9c0 CR3:
> 000000011b25c002 CR4: 00000000003706e0
> Sep 04 11:22:04 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:04 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:04 frodo kernel: Call Trace:
> Sep 04 11:22:04 frodo kernel:  ? i915_vma_instance+0x121/0x2b0 [i915]
> Sep 04 11:22:04 frodo kernel:  intel_gt_init+0xee/0x470 [i915]
> Sep 04 11:22:04 frodo kernel:  i915_gem_init+0x19d/0x2d0 [i915]
> Sep 04 11:22:04 frodo kernel:  i915_driver_probe+0x266/0x5b0 [i915]
> Sep 04 11:22:04 frodo kernel:  ? __radix_tree_preload+0xb0/0x300
> Sep 04 11:22:04 frodo kernel:  ? intel_runtime_resume+0x2b0/0x2b0 [i915]
> Sep 04 11:22:04 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:04 frodo kernel:  ? rpm_resume+0x1c8/0xbc0
> Sep 04 11:22:04 frodo kernel:  ? __mutex_lock+0x36b/0xa10
> Sep 04 11:22:04 frodo kernel:  i915_pci_probe+0xbb/0x2d0 [i915]
> Sep 04 11:22:04 frodo kernel:  ? i915_pci_remove+0x40/0x40 [i915]
> Sep 04 11:22:04 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:04 frodo kernel:  ? lockdep_hardirqs_on_prepare+0xe/0x220
> Sep 04 11:22:04 frodo kernel:  ? _raw_spin_unlock_irqrestore+0x4b/0x5d
> Sep 04 11:22:04 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:04 frodo kernel:  ? i915_pci_remove+0x40/0x40 [i915]
> Sep 04 11:22:04 frodo kernel:  local_pci_probe+0x74/0xc0
> Sep 04 11:22:04 frodo kernel:  pci_device_probe+0x1f1/0x310
> Sep 04 11:22:04 frodo kernel:  ? pci_device_remove+0x100/0x100
> Sep 04 11:22:04 frodo kernel:  ? sysfs_do_create_link_sd+0x76/0xd0
> Sep 04 11:22:04 frodo kernel:  really_probe+0x30e/0x5d0
> Sep 04 11:22:04 frodo kernel:  __driver_probe_device+0x18c/0x220
> Sep 04 11:22:04 frodo kernel:  device_driver_attach+0x6b/0x100
> Sep 04 11:22:04 frodo kernel:  bind_store+0xf1/0x150
> Sep 04 11:22:04 frodo kernel:  ? sysfs_file_ops+0xa0/0xa0
> Sep 04 11:22:04 frodo kernel:  kernfs_fop_write_iter+0x1c3/0x260
> Sep 04 11:22:04 frodo kernel:  new_sync_write+0x24c/0x370
> Sep 04 11:22:04 frodo kernel:  ? new_sync_read+0x360/0x360
> Sep 04 11:22:04 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:04 frodo kernel:  ? up_read_non_owner+0x130/0x140
> Sep 04 11:22:04 frodo kernel:  ? mark_usage+0x1a0/0x1a0
> Sep 04 11:22:04 frodo kernel:  ? build_open_flags+0x240/0x240
> Sep 04 11:22:04 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:04 frodo kernel:  vfs_write+0x35f/0x490
> Sep 04 11:22:04 frodo kernel:  ksys_write+0xc9/0x160
> Sep 04 11:22:04 frodo kernel:  ? __ia32_sys_read+0x40/0x40
> Sep 04 11:22:04 frodo kernel:  ? __task_pid_nr_ns+0xad/0x240
> Sep 04 11:22:04 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:04 frodo kernel:  ? lockdep_hardirqs_on_prepare+0xe/0x220
> Sep 04 11:22:04 frodo kernel:  ? syscall_enter_from_user_mode+0x21/0x70
> Sep 04 11:22:04 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:04 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:04 frodo kernel: RIP: 0033:0x7fa3e808f877
> Sep 04 11:22:04 frodo kernel: Code: 75 05 48 83 c4 58 c3 e8 37 4e ff
> ff 0f 1f 80 00 00 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75
> 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89
> 54 24 18 48 89 74 24
> Sep 04 11:22:04 frodo kernel: RSP: 002b:00007fff9d666b98 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000001
> Sep 04 11:22:04 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007fff9d666c3c RCX: 00007fa3e808f877
> Sep 04 11:22:04 frodo kernel: RDX: 000000000000000c RSI:
> 00007fff9d666c3c RDI: 0000000000000005
> Sep 04 11:22:04 frodo kernel: RBP: 0000000000000005 R08:
> 0000000000edf7a0 R09: 00007fa3e80354e0
> Sep 04 11:22:04 frodo kernel: R10: 0000000000000000 R11:
> 0000000000000246 R12: 000000000000000c
> Sep 04 11:22:04 frodo kernel: R13: 0000000000000000 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:04 frodo kernel: irq event stamp: 0
> Sep 04 11:22:04 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:04 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:04 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:04 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:04 frodo kernel: ---[ end trace 8700b470f2bed28f ]---
> Sep 04 11:22:04 frodo gnome-session[622751]:
> gnome-session-binary[622751]: WARNING: App 'org.gnome.Shell.desktop'
> exited with code 1
> Sep 04 11:22:04 frodo gnome-session-binary[622751]: WARNING: App
> 'org.gnome.Shell.desktop' exited with code 1
> Sep 04 11:22:04 frodo gnome-session-binary[622751]: Unrecoverable
> failure in required component org.gnome.Shell.desktop
> Sep 04 11:22:04 frodo kernel: PM: Adding info for event_source:i915
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:renderD129
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:card1
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:card1-eDP-1
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:intel_backlight
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:drm_dp_aux0
> Sep 04 11:22:04 frodo kernel: PM: Adding info for i2c:i2c-3
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:card1-DP-1
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:drm_dp_aux1
> Sep 04 11:22:04 frodo kernel: PM: Adding info for i2c:i2c-4
> Sep 04 11:22:04 frodo gdm-launch-environment][622712]:
> pam_unix(gdm-launch-environment:session): session closed for user gdm
> Sep 04 11:22:04 frodo audit[622712]: USER_END pid=622712 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:session_close
> grantors=pam_keyinit,pam_keyinit,pam_limits,pam_systemd,pam_unix,pam_umask
> acct="gdm" exe="/usr/libexec/gdm-session-worker" hostname=frodo addr=?
> terminal=/dev/tty1 res=success'
> Sep 04 11:22:04 frodo audit[622712]: CRED_DISP pid=622712 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:setcred grantors=pam_permit
> acct="gdm" exe="/usr/libexec/gdm-session-worker" hostname=frodo addr=?
> terminal=/dev/tty1 res=success'
> Sep 04 11:22:04 frodo gdm[1043]: Gdm: GdmDisplay: Session never
> registered, failing
> Sep 04 11:22:04 frodo gdm-launch-environment][622712]: GLib-GObject:
> g_object_unref: assertion 'G_IS_OBJECT (object)' failed
> Sep 04 11:22:04 frodo systemd[1]: session-c2.scope: Deactivated successfully.
> Sep 04 11:22:04 frodo kernel: [drm] Initialized i915 1.6.0 20201103
> for 0000:00:02.0 on minor 1
> Sep 04 11:22:04 frodo gdm[1043]: Gdm: Child process -622739 was already dead.
> Sep 04 11:22:04 frodo systemd-logind[885]: Session c2 logged out.
> Waiting for processes to exit.
> Sep 04 11:22:04 frodo gdm[1043]: Gdm: GdmDisplay: Session never
> registered, failing
> Sep 04 11:22:04 frodo systemd-logind[885]: Removed session c2.
> Sep 04 11:22:04 frodo gdm[1043]: Gdm: Child process -622739 was already dead.
> Sep 04 11:22:04 frodo audit[622773]: USER_AUTH pid=622773 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:authentication
> grantors=pam_permit acct="gdm" exe="/usr/libexec/gdm-session-worker"
> hostname=frodo addr=? terminal=/dev/tty1 res=success'
> Sep 04 11:22:04 frodo audit[622773]: USER_ACCT pid=622773 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:accounting
> grantors=pam_permit acct="gdm" exe="/usr/libexec/gdm-session-worker"
> hostname=frodo addr=? terminal=/dev/tty1 res=success'
> Sep 04 11:22:04 frodo audit[622773]: CRED_ACQ pid=622773 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:setcred grantors=pam_permit
> acct="gdm" exe="/usr/libexec/gdm-session-worker" hostname=frodo addr=?
> terminal=/dev/tty1 res=success'
> Sep 04 11:22:04 frodo systemd-logind[885]: New session c3 of user gdm.
> Sep 04 11:22:04 frodo systemd[1]: Started Session c3 of User gdm.
> Sep 04 11:22:04 frodo gdm-launch-environment][622773]:
> pam_unix(gdm-launch-environment:session): session opened for user
> gdm(uid=42) by (uid=0)
> Sep 04 11:22:04 frodo audit[622773]: USER_START pid=622773 uid=0
> auid=4294967295 ses=4294967295 msg='op=PAM:session_open
> grantors=pam_keyinit,pam_keyinit,pam_limits,pam_systemd,pam_unix,pam_umask
> acct="gdm" exe="/usr/libexec/gdm-session-worker" hostname=frodo addr=?
> terminal=/dev/tty1 res=success'
> Sep 04 11:22:04 frodo kernel: ACPI: video: Video Device [GFX0]
> (multi-head: yes  rom: no  post: no)
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:input35
> Sep 04 11:22:04 frodo kernel: input: Video Bus as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input35
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:event5
> Sep 04 11:22:04 frodo kernel: PM: Moving pci:0000:00:1f.3 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving hdaudio:hdaudioC0D0 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving hdaudio:hdaudioC0D2 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:card0 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:pcmC0D0p to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:pcmC0D0c to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:pcmC0D3p to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:pcmC0D7p to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:pcmC0D8p to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:pcmC0D9p to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:pcmC0D10p to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:hwC0D0 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:hwC0D2 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:input16 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:event9 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:input17 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:event10 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:input18 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:event11 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:input19 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:event12 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:input20 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:event13 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:input21 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:event14 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:input22 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:event15 to end of list
> Sep 04 11:22:04 frodo kernel: PM: Moving No Bus:controlC0 to end of list
> Sep 04 11:22:04 frodo kernel: snd_hda_intel 0000:00:1f.3: bound
> 0000:00:02.0 (ops i915_audio_component_bind_ops [i915])
> Sep 04 11:22:04 frodo kernel: i915 0000:00:02.0: [drm] DRM_I915_DEBUG enabled
> Sep 04 11:22:04 frodo kernel: i915 0000:00:02.0: [drm]
> DRM_I915_DEBUG_GEM enabled
> Sep 04 11:22:04 frodo kernel: i915 0000:00:02.0: [drm]
> DRM_I915_DEBUG_RUNTIME_PM enabled
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:fb0
> Sep 04 11:22:04 frodo kernel: fbcon: i915 (fb0) is primary device
> Sep 04 11:22:04 frodo kernel: PM: Adding info for No Bus:vtcon1
> Sep 04 11:22:04 frodo kernel: Console: switching to colour frame
> buffer device 170x48
> Sep 04 11:22:04 frodo kernel: i915 0000:00:02.0: [drm] fb0: i915 frame
> buffer device
> Sep 04 11:22:04 frodo uresourced[1091]: Setting resources on
> user.slice (MemoryMin: 262144000, MemoryLow: 0, CPUWeight: -,
> IOWeight: -)
> Sep 04 11:22:04 frodo uresourced[1091]: Setting resources on
> user-42.slice (MemoryMin: 262144000, MemoryLow: 0, CPUWeight: 500,
> IOWeight: 500)
> Sep 04 11:22:04 frodo uresourced[1091]: Setting resources on
> user@42.service (MemoryMin: 0, MemoryLow: 0, CPUWeight: 100, IOWeight:
> 100)
> Sep 04 11:22:04 frodo abrt-dump-journal-oops[867]: Reported 1 kernel
> oopses to Abrt
> Sep 04 11:22:05 frodo unknown: [IGT] device_reset: exiting, ret=0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> _XSERVTransSocketUNIXCreateListener: ...SocketCreateListener() failed
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> _XSERVTransMakeAllCOTSServerListeners: server already running
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> _XSERVTransSocketUNIXCreateListener: ...SocketCreateListener() failed
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> _XSERVTransMakeAllCOTSServerListeners: server already running
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (--) Log
> file renamed from "/var/lib/gdm/.local/share/xorg/Xorg.pid-622782.log"
> to "/var/lib/gdm/.local/share/xorg/Xorg.2.log"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: X.Org X Server 1.20.11
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: X Protocol
> Version 11, Revision 0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: Build
> Operating System:  5.11.10-200.fc33.x86_64
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: Current
> Operating System: Linux frodo 5.14.0-lm1-00008-gf9f185054f04 #780 SMP
> Thu Sep 2 02:56:53 MDT 2021 x86_64
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: Kernel
> command line: BOOT_IMAGE=(hd0,gpt2)/vmlinuz-5.14.0-lm1-00008-gf9f185054f04
> root=UUID=846cda1e-fb9a-4d07-acc6-8b072d8b9c6e ro
> rootflags=subvol=root pci=noaer rhgb dynamic_debug.verbose=3
> main.dyndbg=+p i915.dyndbg=+f
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: Build Date:
> 14 April 2021  12:00:00AM
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: Build ID:
> xorg-x11-server 1.20.11-1.fc34
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: Current
> version of pixman: 0.40.0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> Before reporting problems, check http://wiki.x.org
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         to
> make sure that you have the latest version.
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: Markers:
> (--) probed, (**) from config file, (==) default setting,
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         (++)
> from command line, (!!) notice, (II) informational,
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         (WW)
> warning, (EE) error, (NI) not implemented, (??) unknown.
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) Log
> file: "/var/lib/gdm/.local/share/xorg/Xorg.2.log", Time: Sat Sep  4
> 11:22:05 2021
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) Using
> config directory: "/etc/X11/xorg.conf.d"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) Using
> system config directory "/usr/share/X11/xorg.conf.d"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) No
> Layout section.  Using the first Screen section.
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) No
> screen section available. Using defaults.
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (**)
> |-->Screen "Default Screen Section" (0)
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (**) |
> |-->Monitor "<default monitor>"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) No
> monitor specified for screen "Default Screen Section".
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> Using a default monitor configuration.
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==)
> Automatically adding devices
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==)
> Automatically enabling devices
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==)
> Automatically adding GPU devices
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==)
> Automatically binding GPU devices
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) Max
> clients allowed: 256, resource mask: 0x1fffff
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) FontPath set to:
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> catalogue:/etc/X11/fontpath.d,
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         built-ins
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==)
> ModulePath set to "/usr/lib64/xorg/modules"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) The
> server relies on udev to provide the list of input devices.
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         If
> no devices become available, reconfigure udev or disable
> AutoAddDevices.
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Loader
> magic: 0x5613651d6a40
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Module
> ABI versions:
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> X.Org ANSI C Emulation: 0.4
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> X.Org Video Driver: 24.1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> X.Org XInput driver : 24.1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> X.Org Server Extension : 10.0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (++) using VT number 1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> systemd-logind: took control of session
> /org/freedesktop/login1/session/c3
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> xfree86: Adding drm device (/dev/dri/card1)
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> systemd-logind: got fd for /dev/dri/card1 226:1 fd 16 paused 0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (--)
> PCI:*(0@0:2:0) 8086:191b:1179:f840 rev 6, Mem @ 0xa1000000/16777216,
> 0x90000000/268435456, I/O @ 0x00005000/64, BIOS @ 0x????????/65536
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) LoadModule: "glx"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> /usr/lib64/xorg/modules/extensions/libglx.so
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Module
> glx: vendor="X.Org Foundation"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> compiled for 1.20.11, module version = 1.0.0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         ABI
> class: X.Org Server Extension, version 10.0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) Matched
> modesetting as autoconfigured driver 0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) Matched
> fbdev as autoconfigured driver 1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==) Matched
> vesa as autoconfigured driver 2
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==)
> Assigned the driver to the xf86ConfigLayout
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> LoadModule: "modesetting"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> /usr/lib64/xorg/modules/drivers/modesetting_drv.so
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Module
> modesetting: vendor="X.Org Foundation"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> compiled for 1.20.11, module version = 1.20.11
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> Module class: X.Org Video Driver
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         ABI
> class: X.Org Video Driver, version 24.1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> LoadModule: "fbdev"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> /usr/lib64/xorg/modules/drivers/fbdev_drv.so
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Module
> fbdev: vendor="X.Org Foundation"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> compiled for 1.20.10, module version = 0.5.0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> Module class: X.Org Video Driver
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         ABI
> class: X.Org Video Driver, version 24.1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> LoadModule: "vesa"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> /usr/lib64/xorg/modules/drivers/vesa_drv.so
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Module
> vesa: vendor="X.Org Foundation"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> compiled for 1.20.10, module version = 2.4.0
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> Module class: X.Org Video Driver
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         ABI
> class: X.Org Video Driver, version 24.1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modesetting: Driver for Modesetting Kernel Drivers: kms
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) FBDEV:
> driver for framebuffer: fbdev
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) VESA:
> driver for VESA chipsets: vesa
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> xf86EnableIOPorts: failed to set IOPL for I/O (Operation not
> permitted)
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): using drv /dev/dri/card1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (WW) Falling
> back to old probe method for fbdev
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> sub module "fbdevhw"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> LoadModule: "fbdevhw"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> /usr/lib64/xorg/modules/libfbdevhw.so
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Module
> fbdevhw: vendor="X.Org Foundation"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> compiled for 1.20.11, module version = 0.0.2
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         ABI
> class: X.Org Video Driver, version 24.1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (EE) open
> /dev/fb0: Permission denied
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (WW) VGA
> arbiter: cannot open kernel arbiter, no multi-card support
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Creating default Display subsection in Screen section
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> "Default Screen Section" for depth/fbbpp 24/32
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==)
> modeset(0): Depth 24, (==) framebuffer bpp 32
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==)
> modeset(0): RGB weight 888
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (==)
> modeset(0): Default visual is TrueColor
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> sub module "glamoregl"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II)
> LoadModule: "glamoregl"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> /usr/lib64/xorg/modules/libglamoregl.so
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]: (II) Module
> glamoregl: vendor="X.Org Foundation"
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:
> compiled for 1.20.11, module version = 1.0.1
> Sep 04 11:22:05 frodo /usr/libexec/gdm-x-session[622782]:         ABI
> class: X.Org ANSI C Emulation, version 0.4
> Sep 04 11:22:06 frodo kernel: Console: switching to colour dummy device 80x25
> Sep 04 11:22:06 frodo unknown: [IGT] device_reset: executing
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): glamor X acceleration enabled on Mesa Intel(R) HD Graphics
> 530 (SKL GT2)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): glamor initialized
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Output eDP-1 has no monitor section
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Output DP-1 has no monitor section
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): EDID for output eDP-1
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Manufacturer: LGD  Model: 4d0  Serial#: 0
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Year: 2015  Week: 0
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): EDID Version: 1.4
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Digital Display Input
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): 6 bits per channel
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Digital interface is DisplayPort
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Max Image Size [cm]: horiz.: 34  vert.: 19
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Gamma: 2.20
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): DPMS capabilities: StandBy Suspend Off
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Supported color encodings: RGB 4:4:4 YCrCb 4:4:4
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): First detailed timing is preferred mode
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Preferred mode is native pixel format and refresh rate
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): redX: 0.567 redY: 0.344   greenX: 0.332 greenY: 0.561
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): blueX: 0.159 blueY: 0.119   whiteX: 0.313 whiteY: 0.329
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Manufacturer's mask: 0
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Supported detailed timing:
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): clock: 76.3 MHz   Image Size:  344 x 194 mm
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): h_active: 1366  h_sync: 1414  h_sync_end 1446 h_blank_end
> 1610 h_border: 0
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): v_active: 768  v_sync: 771  v_sync_end 776 v_blanking: 790
> v_border: 0
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):  LG Display
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):  LP156WHB-TPK1
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): EDID (in hex):
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):         00ffffffffffff0030e4d00400000000
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):         0019010495221378ea42e59158558f28
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):         1e505400000001010101010101010101
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):         010101010101d01d56f4500016303020
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):         350058c2100000190000000000000000
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):         00000000000000000000000000fe004c
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):         4720446973706c61790a2020000000fe
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0):         004c503135365748422d54504b31001c
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Printing probed modes for output eDP-1
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1366x768"x60.0   76.32  1366 1414 1446 1610  768
> 771 776 790 -hsync -vsync (47.4 kHz eP)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1280x720"x120.0  156.12  1280 1376 1512 1744
> 720 721 724 746 doublescan -hsync +vsync (89.5 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1280x720"x120.0  120.75  1280 1304 1320 1360
> 720 721 724 740 doublescan +hsync -vsync (88.8 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1280x720"x59.9   74.50  1280 1344 1472 1664  720
> 723 728 748 -hsync +vsync (44.8 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1280x720"x59.7   63.75  1280 1328 1360 1440  720
> 723 728 741 +hsync -vsync (44.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1024x768"x120.1  133.47  1024 1100 1212 1400
> 768 768 770 794 doublescan -hsync +vsync (95.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1024x768"x60.0   65.00  1024 1048 1184 1344  768
> 771 777 806 -hsync -vsync (48.4 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "960x720"x120.0  117.00  960 1024 1128 1300  720
> 720 722 750 doublescan -hsync +vsync (90.0 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "928x696"x120.1  109.15  928 976 1088 1264  696
> 696 698 719 doublescan -hsync +vsync (86.4 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "896x672"x120.0  102.40  896 960 1060 1224  672
> 672 674 697 doublescan -hsync +vsync (83.7 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1024x576"x119.9   98.50  1024 1092 1200 1376
> 576 577 580 597 doublescan -hsync +vsync (71.6 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1024x576"x119.9   78.38  1024 1048 1064 1104
> 576 577 580 592 doublescan +hsync -vsync (71.0 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1024x576"x59.9   46.50  1024 1064 1160 1296  576
> 579 584 599 -hsync +vsync (35.9 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1024x576"x59.8   42.00  1024 1072 1104 1184  576
> 579 584 593 +hsync -vsync (35.5 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "960x600"x119.9   96.62  960 1028 1128 1296  600
> 601 604 622 doublescan -hsync +vsync (74.6 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "960x600"x120.0   77.00  960 984 1000 1040  600
> 601 604 617 doublescan +hsync -vsync (74.0 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "960x540"x119.9   86.50  960 1024 1124 1288  540
> 541 544 560 doublescan -hsync +vsync (67.2 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "960x540"x120.0   69.25  960 984 1000 1040  540
> 541 544 555 doublescan +hsync -vsync (66.6 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "960x540"x59.6   40.75  960 992 1088 1216  540
> 543 548 562 -hsync +vsync (33.5 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "960x540"x59.8   37.25  960 1008 1040 1120  540
> 543 548 556 +hsync -vsync (33.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "800x600"x120.0   81.00  800 832 928 1080  600
> 600 602 625 doublescan +hsync +vsync (75.0 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "800x600"x60.3   40.00  800 840 968 1056  600 601
> 605 628 +hsync +vsync (37.9 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "800x600"x56.2   36.00  800 824 896 1024  600 601
> 603 625 +hsync +vsync (35.2 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "840x525"x120.0   73.12  840 892 980 1120  525
> 526 529 544 doublescan -hsync +vsync (65.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "840x525"x119.8   59.50  840 864 880 920  525 526
> 529 540 doublescan +hsync -vsync (64.7 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "864x486"x59.9   32.50  864 888 968 1072  486 489
> 494 506 -hsync +vsync (30.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "864x486"x59.6   30.50  864 912 944 1024  486 489
> 494 500 +hsync -vsync (29.8 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "700x525"x120.0   61.00  700 744 820 940  525 526
> 532 541 doublescan +hsync +vsync (64.9 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "800x450"x119.9   59.12  800 848 928 1056  450
> 451 454 467 doublescan -hsync +vsync (56.0 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "800x450"x119.6   48.75  800 824 840 880  450 451
> 454 463 doublescan +hsync -vsync (55.4 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "640x512"x120.0   54.00  640 664 720 844  512 512
> 514 533 doublescan +hsync +vsync (64.0 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "700x450"x119.9   51.75  700 740 812 924  450 451
> 456 467 doublescan -hsync +vsync (56.0 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "700x450"x119.8   43.25  700 724 740 780  450 451
> 456 463 doublescan +hsync -vsync (55.4 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "640x480"x120.0   54.00  640 688 744 900  480 480
> 482 500 doublescan +hsync +vsync (60.0 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "640x480"x59.9   25.18  640 656 752 800  480 490
> 492 525 -hsync -vsync (31.5 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "720x405"x59.5   22.50  720 744 808 896  405 408
> 413 422 -hsync +vsync (25.1 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "720x405"x59.0   21.75  720 768 800 880  405 408
> 413 419 +hsync -vsync (24.7 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "684x384"x119.8   42.62  684 720 788 892  384 385
> 390 399 doublescan -hsync +vsync (47.8 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "684x384"x119.7   36.12  684 708 724 764  384 385
> 390 395 doublescan +hsync -vsync (47.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "640x400"x119.8   41.75  640 676 740 840  400 401
> 404 415 doublescan -hsync +vsync (49.7 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "640x400"x120.0   35.50  640 664 680 720  400 401
> 404 411 doublescan +hsync -vsync (49.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "640x360"x119.7   37.25  640 672 736 832  360 361
> 364 374 doublescan -hsync +vsync (44.8 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "640x360"x119.7   31.88  640 664 680 720  360 361
> 364 370 doublescan +hsync -vsync (44.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "640x360"x59.8   18.00  640 664 720 800  360 363
> 368 376 -hsync +vsync (22.5 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "640x360"x59.3   17.75  640 688 720 800  360 363
> 368 374 +hsync -vsync (22.2 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "512x384"x120.0   32.50  512 524 592 672  384 385
> 388 403 doublescan -hsync -vsync (48.4 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "512x288"x120.0   23.25  512 532 580 648  288 289
> 292 299 doublescan -hsync +vsync (35.9 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "512x288"x119.8   21.00  512 536 552 592  288 289
> 292 296 doublescan +hsync -vsync (35.5 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "480x270"x119.3   20.38  480 496 544 608  270 271
> 274 281 doublescan -hsync +vsync (33.5 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "480x270"x119.6   18.62  480 504 520 560  270 271
> 274 278 doublescan +hsync -vsync (33.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "400x300"x120.6   20.00  400 420 484 528  300 300
> 302 314 doublescan +hsync +vsync (37.9 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "400x300"x112.7   18.00  400 412 448 512  300 300
> 301 312 doublescan +hsync +vsync (35.2 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "432x243"x119.8   16.25  432 444 484 536  243 244
> 247 253 doublescan -hsync +vsync (30.3 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "432x243"x119.1   15.25  432 456 472 512  243 244
> 247 250 doublescan +hsync -vsync (29.8 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "320x240"x120.1   12.59  320 328 376 400  240 245
> 246 262 doublescan -hsync -vsync (31.5 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "360x202"x119.0   11.25  360 372 404 448  202 204
> 206 211 doublescan -hsync +vsync (25.1 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "360x202"x118.3   10.88  360 384 400 440  202 204
> 206 209 doublescan +hsync -vsync (24.7 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "320x180"x119.7    9.00  320 332 360 400  180 181
> 184 188 doublescan -hsync +vsync (22.5 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "320x180"x118.6    8.88  320 344 360 400  180 181
> 184 187 doublescan +hsync -vsync (22.2 kHz d)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): EDID for output DP-1
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Output eDP-1 connected
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Output DP-1 disconnected
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Using exact sizes for initial modes
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Output eDP-1 using initial mode 1366x768 +0+0
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (==)
> modeset(0): Using gamma correction (1.0, 1.0, 1.0)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (==)
> modeset(0): DPI set to (96, 96)
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> sub module "fb"
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II) LoadModule: "fb"
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> /usr/lib64/xorg/modules/libfb.so
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II) Module
> fb: vendor="X.Org Foundation"
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]:
> compiled for 1.20.11, module version = 1.0.0
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]:         ABI
> class: X.Org ANSI C Emulation, version 0.4
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> UnloadModule: "fbdev"
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II) Unloading fbdev
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> UnloadSubModule: "fbdevhw"
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II) Unloading fbdevhw
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> UnloadModule: "vesa"
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II) Unloading vesa
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (==)
> modeset(0): Backing store enabled
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (==)
> modeset(0): Silken mouse enabled
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Initializing kms color map for depth 24, 8 bpc.
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (==)
> modeset(0): DPMS enabled
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): [DRI2] Setup complete
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): [DRI2]   DRI driver: iris
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): [DRI2]   VDPAU driver: va_gl
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension Generic Event Extension
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension SHAPE
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension MIT-SHM
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension XInputExtension
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension XTEST
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension BIG-REQUESTS
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension SYNC
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension XKEYBOARD
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension XC-MISC
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension SECURITY
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension XFIXES
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension RENDER
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension RANDR
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension COMPOSITE
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension DAMAGE
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension MIT-SCREEN-SAVER
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension DOUBLE-BUFFER
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension RECORD
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension DPMS
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension Present
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension DRI3
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension X-Resource
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension XVideo
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension XVideo-MotionCompensation
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension SELinux
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> SELinux: Disabled on system
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension GLX
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II) AIGLX:
> Loaded and initialized iris
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II) GLX:
> Initialized DRI2 GL provider for screen 0
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension XFree86-VidModeExtension
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension XFree86-DGA
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> Initializing extension DRI2
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Damage tracking initialized
> Sep 04 11:22:06 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Setting screen physical size to 361 x 203
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device Power Button (/dev/input/event2)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Power
> Button: Applying InputClass "evdev keyboard catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Power
> Button: Applying InputClass "libinput keyboard catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Power
> Button: Applying InputClass "system-keyboard"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> LoadModule: "libinput"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) Loading
> /usr/lib64/xorg/modules/input/libinput_drv.so
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) Module
> libinput: vendor="X.Org Foundation"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]:
> compiled for 1.20.10, module version = 1.0.1
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]:
> Module class: X.Org XInput Driver
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]:         ABI
> class: X.Org XInput driver, version 24.1
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) Using
> input driver 'libinput' for 'Power Button'
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> systemd-logind: got fd for /dev/input/event2 13:66 fd 31 paused 0
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Power
> Button: always reports core events
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "Device" "/dev/input/event2"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "_source" "server/udev"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event2
> - Power Button: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event2
> - Power Button: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event2
> - Power Button: device removed
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "config_info" "udev:/sys/devices/LNXSYSTM:00/LNXPWRBN:00/input/input2/event2"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) XINPUT:
> Adding extended input device "Power Button" (type: KEYBOARD, id 6)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "xkb_layout" "us"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event2
> - Power Button: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event2
> - Power Button: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device Video Bus (/dev/input/event5)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Video
> Bus: Applying InputClass "evdev keyboard catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Video
> Bus: Applying InputClass "libinput keyboard catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Video
> Bus: Applying InputClass "system-keyboard"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) Using
> input driver 'libinput' for 'Video Bus'
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> systemd-logind: got fd for /dev/input/event5 13:69 fd 34 paused 0
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Video
> Bus: always reports core events
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "Device" "/dev/input/event5"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "_source" "server/udev"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event5
> - Video Bus: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event5
> - Video Bus: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event5
> - Video Bus: device removed
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "config_info" "udev:/sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input35/event5"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) XINPUT:
> Adding extended input device "Video Bus" (type: KEYBOARD, id 7)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "xkb_layout" "us"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event5
> - Video Bus: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event5
> - Video Bus: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device Power Button (/dev/input/event0)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Power
> Button: Applying InputClass "evdev keyboard catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Power
> Button: Applying InputClass "libinput keyboard catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Power
> Button: Applying InputClass "system-keyboard"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) Using
> input driver 'libinput' for 'Power Button'
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> systemd-logind: got fd for /dev/input/event0 13:64 fd 35 paused 0
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Power
> Button: always reports core events
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "Device" "/dev/input/event0"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "_source" "server/udev"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event0
> - Power Button: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event0
> - Power Button: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event0
> - Power Button: device removed
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "config_info" "udev:/sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input0/event0"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) XINPUT:
> Adding extended input device "Power Button" (type: KEYBOARD, id 8)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "xkb_layout" "us"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event0
> - Power Button: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event0
> - Power Button: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device Lid Switch (/dev/input/event1)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device TOSHIBA Web Camera - HD: TOSHIB
> (/dev/input/event8)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) TOSHIBA
> Web Camera - HD: TOSHIB: Applying InputClass "evdev keyboard catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) TOSHIBA
> Web Camera - HD: TOSHIB: Applying InputClass "libinput keyboard
> catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) TOSHIBA
> Web Camera - HD: TOSHIB: Applying InputClass "system-keyboard"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) Using
> input driver 'libinput' for 'TOSHIBA Web Camera - HD: TOSHIB'
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> systemd-logind: got fd for /dev/input/event8 13:72 fd 36 paused 0
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) TOSHIBA
> Web Camera - HD: TOSHIB: always reports core events
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "Device" "/dev/input/event8"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "_source" "server/udev"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event8
> - TOSHIBA Web Camera - HD: TOSHIB: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event8
> - TOSHIBA Web Camera - HD: TOSHIB: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event8
> - TOSHIBA Web Camera - HD: TOSHIB: device removed
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "config_info" "udev:/sys/devices/pci0000:00/0000:00:14.0/usb1/1-9/1-9:1.0/input/input15/event8"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) XINPUT:
> Adding extended input device "TOSHIBA Web Camera - HD: TOSHIB" (type:
> KEYBOARD, id 9)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "xkb_layout" "us"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event8
> - TOSHIBA Web Camera - HD: TOSHIB: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event8
> - TOSHIBA Web Camera - HD: TOSHIB: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device HDA Intel PCH Mic (/dev/input/event9)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device HDA Intel PCH Headphone
> (/dev/input/event10)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device HDA Intel PCH HDMI/DP,pcm=3
> (/dev/input/event11)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device HDA Intel PCH HDMI/DP,pcm=7
> (/dev/input/event12)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device HDA Intel PCH HDMI/DP,pcm=8
> (/dev/input/event13)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device HDA Intel PCH HDMI/DP,pcm=9
> (/dev/input/event14)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device HDA Intel PCH HDMI/DP,pcm=10
> (/dev/input/event15)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device AT Translated Set 2 keyboard
> (/dev/input/event3)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) AT
> Translated Set 2 keyboard: Applying InputClass "evdev keyboard
> catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) AT
> Translated Set 2 keyboard: Applying InputClass "libinput keyboard
> catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) AT
> Translated Set 2 keyboard: Applying InputClass "system-keyboard"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) Using
> input driver 'libinput' for 'AT Translated Set 2 keyboard'
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> systemd-logind: got fd for /dev/input/event3 13:67 fd 37 paused 0
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) AT
> Translated Set 2 keyboard: always reports core events
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "Device" "/dev/input/event3"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "_source" "server/udev"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event3
> - AT Translated Set 2 keyboard: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event3
> - AT Translated Set 2 keyboard: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event3
> - AT Translated Set 2 keyboard: device removed
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "config_info" "udev:/sys/devices/platform/i8042/serio0/input/input3/event3"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) XINPUT:
> Adding extended input device "AT Translated Set 2 keyboard" (type:
> KEYBOARD, id 10)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "xkb_layout" "us"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event3
> - AT Translated Set 2 keyboard: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event3
> - AT Translated Set 2 keyboard: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device ETPS/2 Elantech Touchpad
> (/dev/input/event4)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) ETPS/2
> Elantech Touchpad: Applying InputClass "evdev touchpad catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) ETPS/2
> Elantech Touchpad: Applying InputClass "libinput touchpad catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) Using
> input driver 'libinput' for 'ETPS/2 Elantech Touchpad'
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> systemd-logind: got fd for /dev/input/event4 13:68 fd 38 paused 0
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) ETPS/2
> Elantech Touchpad: always reports core events
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "Device" "/dev/input/event4"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "_source" "server/udev"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event4
> - ETPS/2 Elantech Touchpad: is tagged by udev as: Touchpad
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event4
> - ETPS/2 Elantech Touchpad: device is a touchpad
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event4
> - ETPS/2 Elantech Touchpad: device removed
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "config_info" "udev:/sys/devices/platform/i8042/serio2/input/input9/event4"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) XINPUT:
> Adding extended input device "ETPS/2 Elantech Touchpad" (type:
> TOUCHPAD, id 11)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "AccelerationScheme" "none"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) ETPS/2
> Elantech Touchpad: (accel) selected scheme none/0
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) ETPS/2
> Elantech Touchpad: (accel) acceleration factor: 2.000
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) ETPS/2
> Elantech Touchpad: (accel) acceleration threshold: 4
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event4
> - ETPS/2 Elantech Touchpad: is tagged by udev as: Touchpad
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event4
> - ETPS/2 Elantech Touchpad: device is a touchpad
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device ETPS/2 Elantech Touchpad
> (/dev/input/mouse0)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device PC Speaker (/dev/input/event6)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) No
> input driver specified, ignoring this device.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) This
> device may have been added with another device file.
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> config/udev: Adding input device Toshiba input device
> (/dev/input/event7)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Toshiba
> input device: Applying InputClass "evdev keyboard catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Toshiba
> input device: Applying InputClass "libinput keyboard catchall"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Toshiba
> input device: Applying InputClass "system-keyboard"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) Using
> input driver 'libinput' for 'Toshiba input device'
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II)
> systemd-logind: got fd for /dev/input/event7 13:71 fd 39 paused 0
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Toshiba
> input device: always reports core events
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "Device" "/dev/input/event7"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "_source" "server/udev"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event7
> - Toshiba input device: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event7
> - Toshiba input device: device is a keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event7
> - Toshiba input device: device removed
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "config_info" "udev:/sys/devices/virtual/input/input14/event7"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) XINPUT:
> Adding extended input device "Toshiba input device" (type: KEYBOARD,
> id 12)
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (**) Option
> "xkb_layout" "us"
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event7
> - Toshiba input device: is tagged by udev as: Keyboard
> Sep 04 11:22:07 frodo /usr/libexec/gdm-x-session[622782]: (II) event7
> - Toshiba input device: device is a keyboard
> Sep 04 11:22:07 frodo unknown: [IGT] device_reset: starting subtest reset-bound
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed write to
> register 0x44404
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf460 EFLAGS: 00010082
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9e8d RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e7e
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace060
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000044404 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  ? lock_acquire+0xce/0x3f0
> Sep 04 11:22:07 frodo kernel:  fwtable_write32+0x2b0/0x3f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? gen11_fwtable_write16+0x410/0x410 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  bdw_update_pipe_irq+0xbe/0x1d0 [i915]
> Sep 04 11:22:07 frodo kernel:  bdw_enable_vblank+0x82/0xc0 [i915]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_enable+0x186/0x250 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_get+0xc7/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  intel_pipe_update_start+0x1eb/0x630 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_usecs_to_scanlines+0x50/0x50 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_pre_update+0x6f/0x300 [i915]
> Sep 04 11:22:07 frodo kernel:  ? __switch_to+0x2a0/0x630
> Sep 04 11:22:07 frodo kernel:  ? do_wait_intr+0x110/0x110
> Sep 04 11:22:07 frodo kernel:  ? intel_pre_plane_update+0x2fd/0x920 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_enable+0x6d/0x510 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0xfb/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed290 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed read from
> register 0x44404
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf4b8 EFLAGS: 00010082
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9e98 RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e89
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace020
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000044404 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  fwtable_read32+0x23a/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? fwtable_read16+0x380/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  bdw_enable_vblank+0x82/0xc0 [i915]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_enable+0x186/0x250 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_get+0xc7/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  intel_pipe_update_start+0x1eb/0x630 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_usecs_to_scanlines+0x50/0x50 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_pre_update+0x6f/0x300 [i915]
> Sep 04 11:22:07 frodo kernel:  ? __switch_to+0x2a0/0x630
> Sep 04 11:22:07 frodo kernel:  ? do_wait_intr+0x110/0x110
> Sep 04 11:22:07 frodo kernel:  ? intel_pre_plane_update+0x2fd/0x920 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_enable+0x6d/0x510 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0xfb/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed291 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed read from
> register 0x70040
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf410 EFLAGS: 00010086
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9e83 RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e74
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace020
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000070040 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  fwtable_read32+0x23a/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? fwtable_read16+0x380/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_crtc_from_index+0x55/0x80 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_restore+0x191/0x390 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_get_last_vbltimestamp+0x160/0x160 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  bdw_enable_vblank+0xaa/0xc0 [i915]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_enable+0x186/0x250 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_get+0xc7/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  intel_pipe_update_start+0x1eb/0x630 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_usecs_to_scanlines+0x50/0x50 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_pre_update+0x6f/0x300 [i915]
> Sep 04 11:22:07 frodo kernel:  ? __switch_to+0x2a0/0x630
> Sep 04 11:22:07 frodo kernel:  ? do_wait_intr+0x110/0x110
> Sep 04 11:22:07 frodo kernel:  ? intel_pre_plane_update+0x2fd/0x920 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_enable+0x6d/0x510 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0xfb/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed292 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed read from
> register 0x70040
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf410 EFLAGS: 00010086
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9e83 RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e74
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace020
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000070040 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  fwtable_read32+0x23a/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? fwtable_read16+0x380/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_crtc_from_index+0x55/0x80 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_restore+0x1ae/0x390 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_get_last_vbltimestamp+0x160/0x160 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  bdw_enable_vblank+0xaa/0xc0 [i915]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_enable+0x186/0x250 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_get+0xc7/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  intel_pipe_update_start+0x1eb/0x630 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_usecs_to_scanlines+0x50/0x50 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_pre_update+0x6f/0x300 [i915]
> Sep 04 11:22:07 frodo kernel:  ? __switch_to+0x2a0/0x630
> Sep 04 11:22:07 frodo kernel:  ? do_wait_intr+0x110/0x110
> Sep 04 11:22:07 frodo kernel:  ? intel_pre_plane_update+0x2fd/0x920 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_enable+0x6d/0x510 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0xfb/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed293 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed read from
> register 0x70040
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf430 EFLAGS: 00010082
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9e87 RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e78
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace020
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000070040 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  fwtable_read32+0x23a/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? fwtable_read16+0x380/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_crtc_from_index+0x55/0x80 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_crtc_from_index+0x55/0x80 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_update_vblank_count+0xf3/0x410 [drm]
> Sep 04 11:22:07 frodo kernel:  ? store_vblank+0x120/0x120 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_enable+0x19b/0x250 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_get+0xc7/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  intel_pipe_update_start+0x1eb/0x630 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_usecs_to_scanlines+0x50/0x50 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_pre_update+0x6f/0x300 [i915]
> Sep 04 11:22:07 frodo kernel:  ? __switch_to+0x2a0/0x630
> Sep 04 11:22:07 frodo kernel:  ? do_wait_intr+0x110/0x110
> Sep 04 11:22:07 frodo kernel:  ? intel_pre_plane_update+0x2fd/0x920 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_enable+0x6d/0x510 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0xfb/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed294 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed read from
> register 0x70040
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf430 EFLAGS: 00010082
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9e87 RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e78
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace020
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000070040 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  fwtable_read32+0x23a/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? fwtable_read16+0x380/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_crtc_from_index+0x55/0x80 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_crtc_from_index+0x55/0x80 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_update_vblank_count+0x116/0x410 [drm]
> Sep 04 11:22:07 frodo kernel:  ? store_vblank+0x120/0x120 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_enable+0x19b/0x250 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_vblank_get+0xc7/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  intel_pipe_update_start+0x1eb/0x630 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_usecs_to_scanlines+0x50/0x50 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_pre_update+0x6f/0x300 [i915]
> Sep 04 11:22:07 frodo kernel:  ? __switch_to+0x2a0/0x630
> Sep 04 11:22:07 frodo kernel:  ? do_wait_intr+0x110/0x110
> Sep 04 11:22:07 frodo kernel:  ? intel_pre_plane_update+0x2fd/0x920 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_enable+0x6d/0x510 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0xfb/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed295 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed read from
> register 0x70040
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf560 EFLAGS: 00010082
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9ead RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e9e
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace020
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000070040 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  fwtable_read32+0x23a/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? fwtable_read16+0x380/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? ktime_get+0x21/0xc0
> Sep 04 11:22:07 frodo kernel:  ?
> seqcount_lockdep_reader_access.constprop.0+0x4d/0xc0
> Sep 04 11:22:07 frodo kernel:  intel_pipe_update_start+0x49c/0x630 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_usecs_to_scanlines+0x50/0x50 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_pre_update+0x6f/0x300 [i915]
> Sep 04 11:22:07 frodo kernel:  ? __switch_to+0x2a0/0x630
> Sep 04 11:22:07 frodo kernel:  ? do_wait_intr+0x110/0x110
> Sep 04 11:22:07 frodo kernel:  ? intel_pre_plane_update+0x2fd/0x920 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_fbc_enable+0x6d/0x510 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0xfb/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed296 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed write to
> register 0x70030
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf630 EFLAGS: 00010082
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9ec7 RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9eb8
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace060
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000070030 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  fwtable_write32+0x2b0/0x3f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_usecs_to_scanlines+0x50/0x50 [i915]
> Sep 04 11:22:07 frodo kernel:  ? gen11_fwtable_write16+0x410/0x410 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_pre_plane_update+0x2fd/0x920 [i915]
> Sep 04 11:22:07 frodo kernel:  ? bdw_set_pipemisc+0x187/0x390 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0x331/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed297 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed read from
> register 0x70040
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf5f0 EFLAGS: 00010082
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9ebf RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9eb0
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace020
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000070040 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  fwtable_read32+0x23a/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? fwtable_read16+0x380/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? do_raw_spin_unlock+0x86/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_pipe_update_end+0x4c/0x460 [i915]
> Sep 04 11:22:07 frodo kernel:  ? skl_detach_scalers+0x4c/0x90 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0x2b7/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed298 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:07 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: Unclaimed read from
> register 0x70040
> Sep 04 11:22:07 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:07 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:07 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:07 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:07 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:07 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:07 frodo kernel: RSP: 0018:ffff888120ecf4d0 EFLAGS: 00010082
> Sep 04 11:22:07 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9e9b RCX: 0000000000000000
> Sep 04 11:22:07 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e8c
> Sep 04 11:22:07 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:07 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace020
> Sep 04 11:22:07 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000070040 R15: ffff888122d810b8
> Sep 04 11:22:07 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:07 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:07 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:07 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:07 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:07 frodo kernel: Call Trace:
> Sep 04 11:22:07 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:07 frodo kernel:  fwtable_read32+0x23a/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? fwtable_read16+0x380/0x380 [i915]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? lock_acquire+0xce/0x3f0
> Sep 04 11:22:07 frodo kernel:  ? drm_crtc_from_index+0x55/0x80 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_update_vblank_count+0xf3/0x410 [drm]
> Sep 04 11:22:07 frodo kernel:  ? store_vblank+0x120/0x120 [drm]
> Sep 04 11:22:07 frodo kernel:  ? mark_usage+0x1a0/0x1a0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  drm_crtc_accurate_vblank_count+0x61/0x130 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_crtc_arm_vblank_event+0x87/0x100 [drm]
> Sep 04 11:22:07 frodo kernel:  intel_pipe_update_end+0x144/0x460 [i915]
> Sep 04 11:22:07 frodo kernel:  ? skl_detach_scalers+0x4c/0x90 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_update_crtc+0x2b7/0x6c0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:07 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:07 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:07 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:07 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:07 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:07 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:07 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:07 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:07 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:07 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:07 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:07 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:07 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:07 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:07 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:07 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:07 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:07 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:07 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:07 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:07 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:07 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:07 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:07 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:07 frodo kernel: irq event stamp: 0
> Sep 04 11:22:07 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:07 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:07 frodo kernel: ---[ end trace 8700b470f2bed299 ]---
> Sep 04 11:22:07 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:08 frodo kernel: i915 0000:00:02.0: [drm] *ERROR* Lost
> access to MMIO BAR; all registers now read back as 0xFFFFFFFF!
> Sep 04 11:22:08 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:22:08 frodo kernel: i915 0000:00:02.0: Unclaimed read from
> register 0x70040
> Sep 04 11:22:08 frodo kernel: WARNING: CPU: 2 PID: 622782 at
> drivers/gpu/drm/i915/intel_uncore.c:1267
> __unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:08 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:08 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:08 frodo kernel: CPU: 2 PID: 622782 Comm: Xorg Tainted: G
>     B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:08 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:08 frodo kernel: RIP: 0010:__unclaimed_reg_debug+0x134/0x160 [i915]
> Sep 04 11:22:08 frodo kernel: Code: c7 48 8b 55 00 48 89 ef 48 89 14
> 24 e8 65 d2 69 c8 48 8b 14 24 45 89 f0 4c 89 e1 48 89 c6 48 c7 c7 a0
> e0 ac c0 e8 70 a2 d4 c8 <0f> 0b 4c 89 ff e8 a2 0a e5 c7 49 8b 6d 08 48
> 8d bd 40 0f 00 00 e8
> Sep 04 11:22:08 frodo kernel: RSP: 0018:ffff888120ecf4d0 EFLAGS: 00010082
> Sep 04 11:22:08 frodo kernel: RAX: 0000000000000000 RBX:
> 1ffff110241d9e9b RCX: 0000000000000000
> Sep 04 11:22:08 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e8c
> Sep 04 11:22:08 frodo kernel: RBP: ffff888103f6c0c8 R08:
> ffffffff8846096e R09: ffff888216b30fcb
> Sep 04 11:22:08 frodo kernel: R10: ffffed1042d661f9 R11:
> 0000000000000001 R12: ffffffffc0ace020
> Sep 04 11:22:08 frodo kernel: R13: ffff888122d810b0 R14:
> 0000000000070040 R15: ffff888122d810b8
> Sep 04 11:22:08 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216b00000(0000) knlGS:0000000000000000
> Sep 04 11:22:08 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:08 frodo kernel: CR2: 00005613656c27e4 CR3:
> 0000000001ef8006 CR4: 00000000003706e0
> Sep 04 11:22:08 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:08 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:08 frodo kernel: Call Trace:
> Sep 04 11:22:08 frodo kernel:  ? check_for_unclaimed_mmio+0x1f0/0x1f0 [i915]
> Sep 04 11:22:08 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:08 frodo kernel:  fwtable_read32+0x23a/0x380 [i915]
> Sep 04 11:22:08 frodo kernel:  ? fwtable_read16+0x380/0x380 [i915]
> Sep 04 11:22:08 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:08 frodo kernel:  ? lock_acquire+0xce/0x3f0
> Sep 04 11:22:08 frodo kernel:  ? drm_crtc_from_index+0x55/0x80 [drm]
> Sep 04 11:22:08 frodo kernel:  drm_update_vblank_count+0x116/0x410 [drm]
> Sep 04 11:22:08 frodo kernel:  ? store_vblank+0x120/0x120 [drm]
> Sep 04 11:22:08 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:08 frodo kernel:  drm_crtc_accurate_vblank_count+0x61/0x130 [drm]
> Sep 04 11:22:08 frodo kernel:  drm_crtc_arm_vblank_event+0x87/0x100 [drm]
> Sep 04 11:22:08 frodo kernel:  intel_pipe_update_end+0x144/0x460 [i915]
> Sep 04 11:22:08 frodo kernel:  ? skl_detach_scalers+0x4c/0x90 [i915]
> Sep 04 11:22:08 frodo kernel:  intel_update_crtc+0x2b7/0x6c0 [i915]
> Sep 04 11:22:08 frodo kernel:  ? skl_ddb_allocation_overlaps+0x4c/0xb0 [i915]
> Sep 04 11:22:08 frodo kernel:  skl_commit_modeset_enables+0x26e/0x8f0 [i915]
> Sep 04 11:22:08 frodo kernel:  ? intel_commit_modeset_enables+0xe0/0xe0 [i915]
> Sep 04 11:22:08 frodo kernel:  ?
> intel_atomic_get_old_global_obj_state+0x69/0x80 [i915]
> Sep 04 11:22:08 frodo kernel:  intel_atomic_commit_tail+0x7bc/0x1350 [i915]
> Sep 04 11:22:08 frodo kernel:  ?
> intel_commit_modeset_disables+0x2f0/0x2f0 [i915]
> Sep 04 11:22:08 frodo kernel:  ? trace_hardirqs_on+0x1c/0xf0
> Sep 04 11:22:08 frodo kernel:  intel_atomic_commit+0x5f1/0x690 [i915]
> Sep 04 11:22:08 frodo kernel:
> drm_atomic_connector_commit_dpms+0x195/0x1d0 [drm]
> Sep 04 11:22:08 frodo kernel:  set_property_atomic+0x151/0x220 [drm]
> Sep 04 11:22:08 frodo kernel:  ? drm_mode_object_put+0xc0/0xc0 [drm]
> Sep 04 11:22:08 frodo kernel:  drm_mode_obj_set_property_ioctl+0x1a2/0x1f0 [drm]
> Sep 04 11:22:08 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:08 frodo kernel:  drm_connector_property_set_ioctl+0xb3/0xf0 [drm]
> Sep 04 11:22:08 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:08 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:08 frodo kernel:  ? drm_lease_owner+0x15/0x30 [drm]
> Sep 04 11:22:08 frodo kernel:  ? drm_is_current_master+0x59/0x70 [drm]
> Sep 04 11:22:08 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:22:08 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:22:08 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:22:08 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:22:08 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:22:08 frodo kernel:  ? drm_connector_set_obj_prop+0xd0/0xd0 [drm]
> Sep 04 11:22:08 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:22:08 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:22:08 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:08 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:08 frodo kernel:  ? __fget_files+0x121/0x230
> Sep 04 11:22:08 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:22:08 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:22:08 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:22:08 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:08 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:08 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:22:08 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:22:08 frodo kernel: RSP: 002b:00007ffc9e39fcc8 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:22:08 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39fd00 RCX: 00007f37342fd0ab
> Sep 04 11:22:08 frodo kernel: RDX: 00007ffc9e39fd00 RSI:
> 00000000c01064ab RDI: 0000000000000010
> Sep 04 11:22:08 frodo kernel: RBP: 00000000c01064ab R08:
> 000056136549fb58 R09: 0000000000000000
> Sep 04 11:22:08 frodo kernel: R10: 000056136549fb58 R11:
> 0000000000000246 R12: 00005613656c0720
> Sep 04 11:22:08 frodo kernel: R13: 0000000000000010 R14:
> 0000000000000000 R15: 0000000000000000
> Sep 04 11:22:08 frodo kernel: irq event stamp: 0
> Sep 04 11:22:08 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:08 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:08 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:22:08 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:22:08 frodo kernel: ---[ end trace 8700b470f2bed29a ]---
> Sep 04 11:22:08 frodo kernel: i915 0000:00:02.0: ready 1023ms after FLR
> Sep 04 11:22:08 frodo unknown: [IGT] device_reset: exiting, ret=0
> Sep 04 11:22:08 frodo kernel: Console: switching to colour frame
> buffer device 170x48
> Sep 04 11:22:09 frodo kernel: Console: switching to colour dummy device 80x25
> Sep 04 11:22:09 frodo unknown: [IGT] drm_import_export: executing
> Sep 04 11:22:10 frodo unknown: [IGT] drm_import_export: starting
> subtest import-close-race-flink
> Sep 04 11:22:16 frodo systemd-coredump[622717]: Process 1768
> (gnome-shell) of user 1000 dumped core.
> 
>                                                  Stack trace of thread 1768:
>                                                  #0  0x00007f1a413df06e
> iris_transfer_map (iris_dri.so + 0xcfa06e)
>                                                  #1  0x00007f1a41398901
> u_default_texture_subdata (iris_dri.so + 0xcb3901)
>                                                  #2  0x00007f1a408f641c
> st_TexSubImage (iris_dri.so + 0x21141c)
>                                                  #3  0x00007f1a40a8272b
> texture_sub_image (iris_dri.so + 0x39d72b)
>                                                  #4  0x00007f1a40a85a79
> texsubimage_err (iris_dri.so + 0x3a0a79)
>                                                  #5  0x00007f1a40a8bdd9
> _mesa_TexSubImage2D (iris_dri.so + 0x3a6dd9)
>                                                  #6  0x00007f1a47f6e5c0
> _cogl_texture_driver_upload_subregion_to_gl.lto_priv.0
> (libmutter-cogl-8.so.0 + 0x205c0)
>                                                  #7  0x00007f1a47f6d8b9
> _cogl_texture_2d_gl_copy_from_bitmap (libmutter-cogl-8.so.0 + 0x1f8b9)
>                                                  #8  0x00007f1a47f8fbf6
> _cogl_texture_2d_set_region (libmutter-cogl-8.so.0 + 0x41bf6)
>                                                  #9  0x00007f1a47f95076
> _cogl_texture_set_region (libmutter-cogl-8.so.0 + 0x47076)
>                                                  #10 0x00007f1a485d6d2a
> meta_wayland_surface_apply_state (libmutter-8.so.0 + 0x138d2a)
>                                                  #11 0x00007f1a485d77b0
> wl_surface_commit.lto_priv.0 (libmutter-8.so.0 + 0x1397b0)
>                                                  #12 0x00007f1a4795ac04
> ffi_call_unix64 (libffi.so.6 + 0x6c04)
>                                                  #13 0x00007f1a4795a107
> ffi_call (libffi.so.6 + 0x6107)
>                                                  #14 0x00007f1a47f22670
> wl_closure_invoke.constprop.0 (libwayland-server.so.0 + 0x9670)
>                                                  #15 0x00007f1a47f266e4
> wl_client_connection_data (libwayland-server.so.0 + 0xd6e4)
>                                                  #16 0x00007f1a47f2521a
> wl_event_loop_dispatch (libwayland-server.so.0 + 0xc21a)
>                                                  #17 0x00007f1a485ba08b
> wayland_event_source_dispatch (libmutter-8.so.0 + 0x11c08b)
>                                                  #18 0x00007f1a491d94cf
> g_main_context_dispatch (libglib-2.0.so.0 + 0x554cf)
>                                                  #19 0x00007f1a4922d4f8
> g_main_context_iterate.constprop.0 (libglib-2.0.so.0 + 0xa94f8)
>                                                  #20 0x00007f1a491d8a93
> g_main_loop_run (libglib-2.0.so.0 + 0x54a93)
>                                                  #21 0x00007f1a48569f12
> meta_run (libmutter-8.so.0 + 0xcbf12)
>                                                  #22 0x000055c3b574eca6
> main (gnome-shell + 0x2ca6)
>                                                  #23 0x00007f1a482f4b75
> __libc_start_main (libc.so.6 + 0x27b75)
>                                                  #24 0x000055c3b574eebe
> _start (gnome-shell + 0x2ebe)
> 
>                                                  Stack trace of thread 1772:
>                                                  #0  0x00007f1a483c25bf
> __poll (libc.so.6 + 0xf55bf)
>                                                  #1  0x00007f1a4922d48c
> g_main_context_iterate.constprop.0 (libglib-2.0.so.0 + 0xa948c)
>                                                  #2  0x00007f1a491d6c03
> g_main_context_iteration (libglib-2.0.so.0 + 0x52c03)
>                                                  #3  0x00007f1a491d6c51
> glib_worker_main (libglib-2.0.so.0 + 0x52c51)
>                                                  #4  0x00007f1a49207c42
> g_thread_proxy (libglib-2.0.so.0 + 0x83c42)
>                                                  #5  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #6  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1774:
>                                                  #0  0x00007f1a483c25bf
> __poll (libc.so.6 + 0xf55bf)
>                                                  #1  0x00007f1a4922d48c
> g_main_context_iterate.constprop.0 (libglib-2.0.so.0 + 0xa948c)
>                                                  #2  0x00007f1a491d8a93
> g_main_loop_run (libglib-2.0.so.0 + 0x54a93)
>                                                  #3  0x00007f1a49429d9a
> gdbus_shared_thread_func.lto_priv.0 (libgio-2.0.so.0 + 0x110d9a)
>                                                  #4  0x00007f1a49207c42
> g_thread_proxy (libglib-2.0.so.0 + 0x83c42)
>                                                  #5  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #6  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1777:
>                                                  #0  0x00007f1a483c25bf
> __poll (libc.so.6 + 0xf55bf)
>                                                  #1  0x00007f1a4922d48c
> g_main_context_iterate.constprop.0 (libglib-2.0.so.0 + 0xa948c)
>                                                  #2  0x00007f1a491d6c03
> g_main_context_iteration (libglib-2.0.so.0 + 0x52c03)
>                                                  #3  0x00007f1a4291f3ed
> dconf_gdbus_worker_thread (libdconfsettings.so + 0x73ed)
>                                                  #4  0x00007f1a49207c42
> g_thread_proxy (libglib-2.0.so.0 + 0x83c42)
>                                                  #5  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #6  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1788:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4089e42b
> util_queue_thread_func (iris_dri.so + 0x1b942b)
>                                                  #3  0x00007f1a4089deeb
> impl_thrd_routine (iris_dri.so + 0x1b8eeb)
>                                                  #4  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #5  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1789:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4089e42b
> util_queue_thread_func (iris_dri.so + 0x1b942b)
>                                                  #3  0x00007f1a4089deeb
> impl_thrd_routine (iris_dri.so + 0x1b8eeb)
>                                                  #4  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #5  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1790:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4089e42b
> util_queue_thread_func (iris_dri.so + 0x1b942b)
>                                                  #3  0x00007f1a4089deeb
> impl_thrd_routine (iris_dri.so + 0x1b8eeb)
>                                                  #4  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #5  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1791:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4089e42b
> util_queue_thread_func (iris_dri.so + 0x1b942b)
>                                                  #3  0x00007f1a4089deeb
> impl_thrd_routine (iris_dri.so + 0x1b8eeb)
>                                                  #4  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #5  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1792:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4089e42b
> util_queue_thread_func (iris_dri.so + 0x1b942b)
>                                                  #3  0x00007f1a4089deeb
> impl_thrd_routine (iris_dri.so + 0x1b8eeb)
>                                                  #4  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #5  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1828:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4603018d
> _ZN7mozilla6detail21ConditionVariableImpl4waitERNS0_9MutexImplE
> (libmozjs-78.so.0 + 0x8ac18d)
>                                                  #3  0x00007f1a460320b5
> _ZN7mozilla6detail21ConditionVariableImpl8wait_forERNS0_9MutexImplERKNS_16BaseTimeDurationINS_27TimeDurationValueCalculatorEEE
> (libmozjs-78.so.0 + 0x8ae0b5)
>                                                  #4  0x00007f1a459dc6d2
> _ZN2js12HelperThread10ThreadMainEPv (libmozjs-78.so.0 + 0x2586d2)
>                                                  #5  0x00007f1a459deaa9
> _ZN2js6detail16ThreadTrampolineIRFvPvEJPNS_12HelperThreadEEE5StartES2_
> (libmozjs-78.so.0 + 0x25aaa9)
>                                                  #6  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #7  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1829:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4603018d
> _ZN7mozilla6detail21ConditionVariableImpl4waitERNS0_9MutexImplE
> (libmozjs-78.so.0 + 0x8ac18d)
>                                                  #3  0x00007f1a460320b5
> _ZN7mozilla6detail21ConditionVariableImpl8wait_forERNS0_9MutexImplERKNS_16BaseTimeDurationINS_27TimeDurationValueCalculatorEEE
> (libmozjs-78.so.0 + 0x8ae0b5)
>                                                  #4  0x00007f1a459dc6d2
> _ZN2js12HelperThread10ThreadMainEPv (libmozjs-78.so.0 + 0x2586d2)
>                                                  #5  0x00007f1a459deaa9
> _ZN2js6detail16ThreadTrampolineIRFvPvEJPNS_12HelperThreadEEE5StartES2_
> (libmozjs-78.so.0 + 0x25aaa9)
>                                                  #6  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #7  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1830:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4603018d
> _ZN7mozilla6detail21ConditionVariableImpl4waitERNS0_9MutexImplE
> (libmozjs-78.so.0 + 0x8ac18d)
>                                                  #3  0x00007f1a460320b5
> _ZN7mozilla6detail21ConditionVariableImpl8wait_forERNS0_9MutexImplERKNS_16BaseTimeDurationINS_27TimeDurationValueCalculatorEEE
> (libmozjs-78.so.0 + 0x8ae0b5)
>                                                  #4  0x00007f1a459dc6d2
> _ZN2js12HelperThread10ThreadMainEPv (libmozjs-78.so.0 + 0x2586d2)
>                                                  #5  0x00007f1a459deaa9
> _ZN2js6detail16ThreadTrampolineIRFvPvEJPNS_12HelperThreadEEE5StartES2_
> (libmozjs-78.so.0 + 0x25aaa9)
>                                                  #6  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #7  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1831:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4603018d
> _ZN7mozilla6detail21ConditionVariableImpl4waitERNS0_9MutexImplE
> (libmozjs-78.so.0 + 0x8ac18d)
>                                                  #3  0x00007f1a460320b5
> _ZN7mozilla6detail21ConditionVariableImpl8wait_forERNS0_9MutexImplERKNS_16BaseTimeDurationINS_27TimeDurationValueCalculatorEEE
> (libmozjs-78.so.0 + 0x8ae0b5)
>                                                  #4  0x00007f1a459dc6d2
> _ZN2js12HelperThread10ThreadMainEPv (libmozjs-78.so.0 + 0x2586d2)
>                                                  #5  0x00007f1a459deaa9
> _ZN2js6detail16ThreadTrampolineIRFvPvEJPNS_12HelperThreadEEE5StartES2_
> (libmozjs-78.so.0 + 0x25aaa9)
>                                                  #6  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #7  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1833:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4603018d
> _ZN7mozilla6detail21ConditionVariableImpl4waitERNS0_9MutexImplE
> (libmozjs-78.so.0 + 0x8ac18d)
>                                                  #3  0x00007f1a460320b5
> _ZN7mozilla6detail21ConditionVariableImpl8wait_forERNS0_9MutexImplERKNS_16BaseTimeDurationINS_27TimeDurationValueCalculatorEEE
> (libmozjs-78.so.0 + 0x8ae0b5)
>                                                  #4  0x00007f1a459dc6d2
> _ZN2js12HelperThread10ThreadMainEPv (libmozjs-78.so.0 + 0x2586d2)
>                                                  #5  0x00007f1a459deaa9
> _ZN2js6detail16ThreadTrampolineIRFvPvEJPNS_12HelperThreadEEE5StartES2_
> (libmozjs-78.so.0 + 0x25aaa9)
>                                                  #6  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #7  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1834:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4603018d
> _ZN7mozilla6detail21ConditionVariableImpl4waitERNS0_9MutexImplE
> (libmozjs-78.so.0 + 0x8ac18d)
>                                                  #3  0x00007f1a460320b5
> _ZN7mozilla6detail21ConditionVariableImpl8wait_forERNS0_9MutexImplERKNS_16BaseTimeDurationINS_27TimeDurationValueCalculatorEEE
> (libmozjs-78.so.0 + 0x8ae0b5)
>                                                  #4  0x00007f1a459dc6d2
> _ZN2js12HelperThread10ThreadMainEPv (libmozjs-78.so.0 + 0x2586d2)
>                                                  #5  0x00007f1a459deaa9
> _ZN2js6detail16ThreadTrampolineIRFvPvEJPNS_12HelperThreadEEE5StartES2_
> (libmozjs-78.so.0 + 0x25aaa9)
>                                                  #6  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #7  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1835:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4603018d
> _ZN7mozilla6detail21ConditionVariableImpl4waitERNS0_9MutexImplE
> (libmozjs-78.so.0 + 0x8ac18d)
>                                                  #3  0x00007f1a460320b5
> _ZN7mozilla6detail21ConditionVariableImpl8wait_forERNS0_9MutexImplERKNS_16BaseTimeDurationINS_27TimeDurationValueCalculatorEEE
> (libmozjs-78.so.0 + 0x8ae0b5)
>                                                  #4  0x00007f1a459dc6d2
> _ZN2js12HelperThread10ThreadMainEPv (libmozjs-78.so.0 + 0x2586d2)
>                                                  #5  0x00007f1a459deaa9
> _ZN2js6detail16ThreadTrampolineIRFvPvEJPNS_12HelperThreadEEE5StartES2_
> (libmozjs-78.so.0 + 0x25aaa9)
>                                                  #6  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #7  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 2454:
>                                                  #0  0x00007f1a483c25bf
> __poll (libc.so.6 + 0xf55bf)
>                                                  #1  0x00007f19f900dd66
> poll_func (libpulse.so.0 + 0x34d66)
>                                                  #2  0x00007f19f8ff7471
> pa_mainloop_poll (libpulse.so.0 + 0x1e471)
>                                                  #3  0x00007f19f9001bbb
> pa_mainloop_iterate (libpulse.so.0 + 0x28bbb)
>                                                  #4  0x00007f19f9001c70
> pa_mainloop_run (libpulse.so.0 + 0x28c70)
>                                                  #5  0x00007f19f9011e6d
> thread (libpulse.so.0 + 0x38e6d)
>                                                  #6  0x00007f19f8fa70f3
> internal_thread_func (libpulsecommon-14.2.so + 0x5c0f3)
>                                                  #7  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #8  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1796:
>                                                  #0  0x00007f1a483c25bf
> __poll (libc.so.6 + 0xf55bf)
>                                                  #1  0x00007f1a4922d48c
> g_main_context_iterate.constprop.0 (libglib-2.0.so.0 + 0xa948c)
>                                                  #2  0x00007f1a491d8a93
> g_main_loop_run (libglib-2.0.so.0 + 0x54a93)
>                                                  #3  0x00007f1a48603db1
> input_thread (libmutter-8.so.0 + 0x165db1)
>                                                  #4  0x00007f1a49207c42
> g_thread_proxy (libglib-2.0.so.0 + 0x83c42)
>                                                  #5  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #6  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1795:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4089e42b
> util_queue_thread_func (iris_dri.so + 0x1b942b)
>                                                  #3  0x00007f1a4089deeb
> impl_thrd_routine (iris_dri.so + 0x1b8eeb)
>                                                  #4  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #5  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 1832:
>                                                  #0  0x00007f1a47974a8a
> __futex_abstimed_wait_common64 (libpthread.so.0 + 0x15a8a)
>                                                  #1  0x00007f1a4796e2c0
> pthread_cond_wait@@GLIBC_2.3.2 (libpthread.so.0 + 0xf2c0)
>                                                  #2  0x00007f1a4603018d
> _ZN7mozilla6detail21ConditionVariableImpl4waitERNS0_9MutexImplE
> (libmozjs-78.so.0 + 0x8ac18d)
>                                                  #3  0x00007f1a460320b5
> _ZN7mozilla6detail21ConditionVariableImpl8wait_forERNS0_9MutexImplERKNS_16BaseTimeDurationINS_27TimeDurationValueCalculatorEEE
> (libmozjs-78.so.0 + 0x8ae0b5)
>                                                  #4  0x00007f1a459dc6d2
> _ZN2js12HelperThread10ThreadMainEPv (libmozjs-78.so.0 + 0x2586d2)
>                                                  #5  0x00007f1a459deaa9
> _ZN2js6detail16ThreadTrampolineIRFvPvEJPNS_12HelperThreadEEE5StartES2_
> (libmozjs-78.so.0 + 0x25aaa9)
>                                                  #6  0x00007f1a47968299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #7  0x00007f1a483cd353
> __clone (libc.so.6 + 0x100353)
> Sep 04 11:22:16 frodo systemd[1]:
> systemd-coredump@147-622709-0.service: Deactivated successfully.
> Sep 04 11:22:16 frodo audit[1]: SERVICE_STOP pid=1 uid=0
> auid=4294967295 ses=4294967295 msg='unit=systemd-coredump@147-622709-0
> comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=?
> terminal=? res=success'
> Sep 04 11:22:16 frodo systemd[1]:
> systemd-coredump@147-622709-0.service: Consumed 11.266s CPU time.
> Sep 04 11:22:16 frodo kernel: PM: Removing info for No Bus:lo
> Sep 04 11:22:16 frodo xdg-desktop-por[4180]: Error reading events from
> display: Broken pipe
> Sep 04 11:22:16 frodo gnome-terminal-[2375]: Error reading events from
> display: Broken pipe
> Sep 04 11:22:16 frodo gsd-color[2000]: Error reading events from
> display: Broken pipe
> Sep 04 11:22:16 frodo gsd-keyboard[2020]: Error reading events from
> display: Broken pipe
> Sep 04 11:22:16 frodo gsd-wacom[2085]: Error reading events from
> display: Broken pipe
> Sep 04 11:22:16 frodo polkitd[799]: Unregistered Authentication Agent
> for unix-session:2 (system bus name :1.77, object path
> /org/freedesktop/PolicyKit1/AuthenticationAgent, locale en_US.UTF-8)
> (disconnected from bus)
> Sep 04 11:22:16 frodo evolution-alarm[2107]: Error reading events from
> display: Broken pipe
> Sep 04 11:22:16 frodo gsd-power[2034]: Error reading events from
> display: Broken pipe
> Sep 04 11:22:16 frodo gsd-media-keys[2026]: Error reading events from
> display: Broken pipe
> Sep 04 11:22:16 frodo kernel: gnome-shell (1768) used greatest stack
> depth: 20864 bytes left
> Sep 04 11:22:16 frodo systemd[1642]: org.gnome.Shell@wayland.service:
> Main process exited, code=dumped, status=11/SEGV
> Sep 04 11:22:16 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Power.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:16 frodo gnome-shell[3135]: (EE) failed to read Wayland
> events: Broken pipe
> Sep 04 11:22:16 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Keyboard.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:16 frodo audit: BPF prog-id=555 op=UNLOAD
> Sep 04 11:22:16 frodo audit: BPF prog-id=554 op=UNLOAD
> Sep 04 11:22:16 frodo audit: BPF prog-id=553 op=UNLOAD
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Wacom.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Color.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]: gnome-terminal-server.service:
> Main process exited, code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]: gnome-terminal-server.service:
> Failed with result 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]: gnome-terminal-server.service:
> Consumed 8min 33.044s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.MediaKeys.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Wacom.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Keyboard.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Color.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Color.service: Consumed 25.422s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Power.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Power.service: Consumed 1.310s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.MediaKeys.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.MediaKeys.service: Consumed 1.915s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]:
> app-gnome-org.gnome.Evolution\x2dalarm\x2dnotify-2107.scope: Consumed
> 1.153s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Wacom.service: Scheduled restart job, restart
> counter is at 1.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Color.service: Scheduled restart job, restart
> counter is at 1.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Power.service: Scheduled restart job, restart
> counter is at 1.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Keyboard.service: Scheduled restart job,
> restart counter is at 1.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.MediaKeys.service: Scheduled restart job,
> restart counter is at 1.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME color management service.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Color.service: Consumed 25.422s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]: Starting GNOME color management service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME keyboard
> configuration service.
> Sep 04 11:22:17 frodo kernel: Console: switching to colour frame
> buffer device 170x48
> Sep 04 11:22:17 frodo systemd[1642]: Starting GNOME keyboard
> configuration service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME keyboard shortcuts service.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.MediaKeys.service: Consumed 1.915s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]: Starting GNOME keyboard shortcuts
> service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME power management service.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Power.service: Consumed 1.310s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]: Starting GNOME power management service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME Wacom tablet support service.
> Sep 04 11:22:17 frodo systemd[1642]: Starting GNOME Wacom tablet
> support service...
> Sep 04 11:22:17 frodo systemd[1642]: xdg-desktop-portal-gtk.service:
> Main process exited, code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]: xdg-desktop-portal-gtk.service:
> Failed with result 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]: xdg-desktop-portal-gtk.service:
> Consumed 10.078s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]:
> vte-spawn-614504bd-77bd-4e97-a5cf-625fb12eb3cf.scope: Consumed 1h
> 23min 38.382s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]:
> vte-spawn-c1cd5496-61b5-4ede-a0ea-ddf4432b1a1b.scope: Consumed 15h
> 40min 16.035s CPU time.
> Sep 04 11:22:17 frodo audit: BPF prog-id=557 op=LOAD
> Sep 04 11:22:17 frodo audit: BPF prog-id=558 op=LOAD
> Sep 04 11:22:17 frodo audit: BPF prog-id=559 op=LOAD
> Sep 04 11:22:17 frodo audit[1]: SERVICE_START pid=1 uid=0
> auid=4294967295 ses=4294967295 msg='unit=systemd-coredump@148-622855-0
> comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=?
> terminal=? res=success'
> Sep 04 11:22:17 frodo systemd[1]: Started Process Core Dump (PID 622855/UID 0).
> Sep 04 11:22:17 frodo kernel: PM: Adding info for No Bus:lo
> Sep 04 11:22:17 frodo gsd-keyboard[622854]: Unable to init server:
> Could not connect: Connection refused
> Sep 04 11:22:17 frodo gsd-keyboard[622854]: Cannot open display:
> Sep 04 11:22:17 frodo gsd-color[622853]: Unable to init server: Could
> not connect: Connection refused
> Sep 04 11:22:17 frodo gsd-color[622853]: Cannot open display:
> Sep 04 11:22:17 frodo gsd-power[622857]: Unable to init server: Could
> not connect: Connection refused
> Sep 04 11:22:17 frodo gsd-power[622857]: Cannot open display:
> Sep 04 11:22:17 frodo gsd-media-keys[622856]: Unable to init server:
> Could not connect: Connection refused
> Sep 04 11:22:17 frodo gsd-media-keys[622856]: Cannot open display:
> Sep 04 11:22:17 frodo gsd-wacom[622858]: Unable to init server: Could
> not connect: Connection refused
> Sep 04 11:22:17 frodo gsd-wacom[622858]: Cannot open display:
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Color.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Keyboard.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.MediaKeys.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Power.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Wacom.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]: org.gnome.Shell@wayland.service:
> Failed with result 'core-dump'.
> Sep 04 11:22:17 frodo systemd[1642]: org.gnome.Shell@wayland.service:
> Triggering OnFailure= dependencies.
> Sep 04 11:22:17 frodo systemd[1642]: org.gnome.Shell@wayland.service:
> Consumed 42min 17.087s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.XSettings.service: Main process exited,
> code=exited, status=1/FAILURE
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Color.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME color management service.
> Sep 04 11:22:17 frodo audit[3125]: ANOM_ABEND auid=1000 uid=1000
> gid=1000 ses=3 pid=3125 comm="emacs" exe="/usr/bin/emacs-27.2" sig=6
> res=1
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Keyboard.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME keyboard
> configuration service.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.MediaKeys.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME keyboard shortcuts service.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Power.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME power management service.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Wacom.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME Wacom tablet support service.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.XSettings.service: Failed with result
> 'exit-code'.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped GNOME XSettings service.
> Sep 04 11:22:17 frodo systemd[1642]:
> org.gnome.SettingsDaemon.XSettings.service: Consumed 6.730s CPU time.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME Wayland
> Session (session: gnome).
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target Current graphical
> user session.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME Session.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME Wayland Session.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME session X11 services.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME session X11 services.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME Session
> (session: gnome).
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME accessibility target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME color
> management target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME date & time target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME maintenance
> of expirable data target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME keyboard
> configuration target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME keyboard
> shortcuts target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME power
> management target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME printer
> notifications target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME RFKill support target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME FreeDesktop
> screensaver target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME file sharing target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME smartcard target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME sound sample
> caching target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME USB protection target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME Wacom tablet
> support target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopped target GNOME XSettings target.
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME accessibility service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME date & time service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME maintenance of
> expirable data service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME printer
> notifications service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME RFKill support service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME FreeDesktop
> screensaver service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME file sharing service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME smartcard service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME sound sample
> caching service...
> Sep 04 11:22:17 frodo systemd[1642]: Stopping GNOME USB protection service...
> Sep 04 11:22:17 frodo systemd[1642]: Condition check resulted in
> Disable GNOME Shell extensions after failure being skipped.
> Sep 04 11:22:17 frodo systemd[1642]: Stopping User resource assignment daemon...
> Sep 04 11:22:17 frodo audit: BPF prog-id=560 op=LOAD
> Sep 04 11:22:17 frodo audit: BPF prog-id=561 op=LOAD
> Sep 04 11:22:17 frodo audit: BPF prog-id=562 op=LOAD
> Sep 04 11:22:17 frodo audit[1]: SERVICE_START pid=1 uid=0
> auid=4294967295 ses=4294967295 msg='unit=systemd-coredump@149-622868-0
> comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=?
> terminal=? res=success'
> Sep 04 11:22:17 frodo cupsd[895]: REQUEST localhost - - "POST /
> HTTP/1.1" 200 152 Cancel-Subscription client-error-not-found
> Sep 04 11:22:17 frodo systemd[1]: Started Process Core Dump (PID 622868/UID 0).
> Sep 04 11:22:17 frodo cupsd[895]: REQUEST localhost - - "POST /
> HTTP/1.1" 200 152 Cancel-Subscription client-error-not-found
> Sep 04 11:22:17 frodo kernel: PM: Adding info for No Bus:lo
> Sep 04 11:22:17 frodo systemd[1642]: Stopped User resource assignment daemon.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME maintenance of
> expirable data service.
> Sep 04 11:22:18 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Housekeeping.service: Consumed 17.801s CPU
> time.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME date & time service.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME accessibility service.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME RFKill support service.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME sound sample caching service.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME printer
> notifications service.
> Sep 04 11:22:18 frodo systemd[1642]:
> app-gnome-gnome\x2dsoftware\x2dservice-2137.scope: Consumed 21.320s
> CPU time.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME smartcard service.
> Sep 04 11:22:18 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Smartcard.service: Consumed 15.148s CPU time.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME FreeDesktop
> screensaver service.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME USB protection service.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped GNOME file sharing service.
> Sep 04 11:22:18 frodo systemd[1642]:
> org.gnome.SettingsDaemon.Sharing.service: Consumed 13.905s CPU time.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped target GNOME Session is
> initialized.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped target GNOME Session
> Manager is ready.
> Sep 04 11:22:18 frodo systemd[1642]: Stopped target GNOME Shell.
> Sep 04 11:22:18 frodo systemd[1642]: Stopping GNOME Session Manager
> (session: gnome)...
> Sep 04 11:22:18 frodo systemd-coredump[622860]: Process 622827
> (drm_import_expo) of user 0 dumped core.
> 
>                                                  Stack trace of thread 622827:
>                                                  #0  0x00007f4016e7b0ab
> ioctl (libc.so.6 + 0xf70ab)
>                                                  #1  0x00007f4016b1db10
> drmIoctl (libdrm.so.2 + 0x7b10)
>                                                  #2  0x00007f4016f7d93e
> drm_intel_gem_bo_alloc_internal (libdrm_intel.so.1 + 0x993e)
>                                                  #3  0x00007f4016f7ddd7
> drm_intel_gem_bo_alloc (libdrm_intel.so.1 + 0x9dd7)
>                                                  #4  0x00000000004017b0
> n/a (/home/jimc/projects/igt-gpu-tools.git/build/tests/drm_import_export
> + 0x17b0)
> Sep 04 11:22:18 frodo audit[1]: SERVICE_STOP pid=1 uid=0
> auid=4294967295 ses=4294967295 msg='unit=systemd-coredump@148-622855-0
> comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=?
> terminal=? res=success'
> Sep 04 11:22:18 frodo kernel: PM: Removing info for No Bus:lo
> Sep 04 11:22:18 frodo systemd[1]:
> systemd-coredump@148-622855-0.service: Deactivated successfully.
> Sep 04 11:22:18 frodo kernel:
> [drm:drm_atomic_helper_wait_for_flip_done [drm_kms_helper]] *ERROR*
> [CRTC:51:pipe A] flip_done timed out
> Sep 04 11:22:18 frodo audit: BPF prog-id=559 op=UNLOAD
> Sep 04 11:22:18 frodo audit: BPF prog-id=558 op=UNLOAD
> Sep 04 11:22:18 frodo audit: BPF prog-id=557 op=UNLOAD
> Sep 04 11:22:19 frodo kernel: PM: Removing info for No Bus:lo
> Sep 04 11:22:19 frodo gnome-session[1741]: gnome-session-binary[1741]:
> WARNING: Client '/org/gnome/SessionManager/Client22' failed to reply
> before timeout
> Sep 04 11:22:19 frodo gnome-session-binary[1741]: WARNING: Client
> '/org/gnome/SessionManager/Client22' failed to reply before timeout
> Sep 04 11:22:20 frodo abrtd[830]: Size of '/var/spool/abrt' >= 5000 MB
> (MaxCrashReportsSize), deleting old directory
> 'ccpp-2021-08-09-19:53:51.886954-2564'
> Sep 04 11:22:21 frodo systemd-coredump[622869]: Process 3125 (emacs)
> of user 1000 dumped core.
> 
>                                                  Stack trace of thread 3125:
>                                                  #0  0x00007fb64532e8b2
> raise (libpthread.so.0 + 0x138b2)
>                                                  #1  0x0000000000427e82
> terminate_due_to_signal (emacs-27.2 + 0x27e82)
>                                                  #2  0x0000000000428a26
> emacs_abort (emacs-27.2 + 0x28a26)
>                                                  #3  0x0000000000427123
> x_connection_closed (emacs-27.2 + 0x27123)
>                                                  #4  0x000000000042720a
> x_io_error_quitter (emacs-27.2 + 0x2720a)
>                                                  #5  0x00007fb64b6d6483
> _XIOError (libX11.so.6 + 0x48483)
>                                                  #6  0x00007fb64b6d9d25
> _XEventsQueued (libX11.so.6 + 0x4bd25)
>                                                  #7  0x00007fb64b6b4ace
> XFlush (libX11.so.6 + 0x26ace)
>                                                  #8  0x00007fb64b6f45ea
> _XimProtoSetICValues (libX11.so.6 + 0x665ea)
>                                                  #9  0x00007fb64b6e3851
> XSetICValues (libX11.so.6 + 0x55851)
>                                                  #10 0x00000000004f8a96
> xic_set_preeditarea (emacs-27.2 + 0xf8a96)
>                                                  #11 0x000000000048162a
> display_and_set_cursor (emacs-27.2 + 0x8162a)
>                                                  #12 0x000000000043b1a4
> gui_update_window_end (emacs-27.2 + 0x3b1a4)
>                                                  #13 0x000000000043b6b4
> update_window.lto_priv.0 (emacs-27.2 + 0x3b6b4)
>                                                  #14 0x000000000043c35b
> update_window_tree (emacs-27.2 + 0x3c35b)
>                                                  #15 0x000000000043c544
> update_frame (emacs-27.2 + 0x3c544)
>                                                  #16 0x00000000004643c5
> redisplay_internal.lto_priv.0 (emacs-27.2 + 0x643c5)
>                                                  #17 0x0000000000632aee
> redisplay_preserve_echo_area.constprop.0 (emacs-27.2 + 0x232aee)
>                                                  #18 0x00000000005d5f05
> Fdelete_process (emacs-27.2 + 0x1d5f05)
>                                                  #19 0x0000000000599df3
> Ffuncall (emacs-27.2 + 0x199df3)
>                                                  #20 0x00000000005d20da
> exec_byte_code (emacs-27.2 + 0x1d20da)
>                                                  #21 0x0000000000599d37
> Ffuncall (emacs-27.2 + 0x199d37)
>                                                  #22 0x00000000005d20da
> exec_byte_code (emacs-27.2 + 0x1d20da)
>                                                  #23 0x0000000000599d37
> Ffuncall (emacs-27.2 + 0x199d37)
>                                                  #24 0x0000000000599e9d
> funcall_nil.lto_priv.0 (emacs-27.2 + 0x199e9d)
>                                                  #25 0x000000000059552d
> run_hook_with_args (emacs-27.2 + 0x19552d)
>                                                  #26 0x000000000042820c
> Fkill_emacs (emacs-27.2 + 0x2820c)
>                                                  #27 0x0000000000427e44
> terminate_due_to_signal (emacs-27.2 + 0x27e44)
>                                                  #28 0x000000000042896d
> handle_fatal_signal.lto_priv.0 (emacs-27.2 + 0x2896d)
>                                                  #29 0x0000000000428974
> deliver_fatal_signal.cold (emacs-27.2 + 0x28974)
>                                                  #30 0x00007fb64532ea20
> __restore_rt (libpthread.so.0 + 0x13a20)
>                                                  #31 0x00007fb6450a0f23
> pselect (libc.so.6 + 0xf7f23)
>                                                  #32 0x000000000060030f
> really_call_select.lto_priv.0 (emacs-27.2 + 0x20030f)
>                                                  #33 0x0000000000632d1b
> xg_select.constprop.0 (emacs-27.2 + 0x232d1b)
>                                                  #34 0x00000000005e0fcd
> wait_reading_process_output (emacs-27.2 + 0x1e0fcd)
>                                                  #35 0x000000000051f6bc
> read_char (emacs-27.2 + 0x11f6bc)
>                                                  #36 0x0000000000528dcb
> read_key_sequence.lto_priv.0 (emacs-27.2 + 0x128dcb)
>                                                  #37 0x0000000000517018
> command_loop_1 (emacs-27.2 + 0x117018)
>                                                  #38 0x0000000000594d07
> internal_condition_case (emacs-27.2 + 0x194d07)
>                                                  #39 0x00000000005149d0
> command_loop_2 (emacs-27.2 + 0x1149d0)
>                                                  #40 0x0000000000594c49
> internal_catch (emacs-27.2 + 0x194c49)
>                                                  #41 0x0000000000515d86
> command_loop.lto_priv.0 (emacs-27.2 + 0x115d86)
>                                                  #42 0x0000000000637b9f
> recursive_edit_1.isra.0 (emacs-27.2 + 0x237b9f)
>                                                  #43 0x000000000051629a
> Frecursive_edit (emacs-27.2 + 0x11629a)
>                                                  #44 0x0000000000431939
> main (emacs-27.2 + 0x31939)
>                                                  #45 0x00007fb644fd0b75
> __libc_start_main (libc.so.6 + 0x27b75)
>                                                  #46 0x000000000043359e
> _start (emacs-27.2 + 0x3359e)
> 
>                                                  Stack trace of thread 3204:
>                                                  #0  0x00007fb64509e5bf
> __poll (libc.so.6 + 0xf55bf)
>                                                  #1  0x00007fb64b8af48c
> g_main_context_iterate.constprop.0 (libglib-2.0.so.0 + 0xa948c)
>                                                  #2  0x00007fb64b85aa93
> g_main_loop_run (libglib-2.0.so.0 + 0x54a93)
>                                                  #3  0x00007fb64baabd9a
> gdbus_shared_thread_func.lto_priv.0 (libgio-2.0.so.0 + 0x110d9a)
>                                                  #4  0x00007fb64b889c42
> g_thread_proxy (libglib-2.0.so.0 + 0x83c42)
>                                                  #5  0x00007fb645324299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #6  0x00007fb6450a9353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 3134:
>                                                  #0  0x00007fb64509e5bf
> __poll (libc.so.6 + 0xf55bf)
>                                                  #1  0x00007fb64b8af48c
> g_main_context_iterate.constprop.0 (libglib-2.0.so.0 + 0xa948c)
>                                                  #2  0x00007fb64b858c03
> g_main_context_iteration (libglib-2.0.so.0 + 0x52c03)
>                                                  #3  0x00007fb64b858c51
> glib_worker_main (libglib-2.0.so.0 + 0x52c51)
>                                                  #4  0x00007fb64b889c42
> g_thread_proxy (libglib-2.0.so.0 + 0x83c42)
>                                                  #5  0x00007fb645324299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #6  0x00007fb6450a9353
> __clone (libc.so.6 + 0x100353)
> 
>                                                  Stack trace of thread 3206:
>                                                  #0  0x00007fb64509e5bf
> __poll (libc.so.6 + 0xf55bf)
>                                                  #1  0x00007fb64b8af48c
> g_main_context_iterate.constprop.0 (libglib-2.0.so.0 + 0xa948c)
>                                                  #2  0x00007fb64b858c03
> g_main_context_iteration (libglib-2.0.so.0 + 0x52c03)
>                                                  #3  0x00007fb630dbf3ed
> dconf_gdbus_worker_thread (libdconfsettings.so + 0x73ed)
>                                                  #4  0x00007fb64b889c42
> g_thread_proxy (libglib-2.0.so.0 + 0x83c42)
>                                                  #5  0x00007fb645324299
> start_thread (libpthread.so.0 + 0x9299)
>                                                  #6  0x00007fb6450a9353
> __clone (libc.so.6 + 0x100353)
> Sep 04 11:22:22 frodo systemd[1]:
> systemd-coredump@149-622868-0.service: Deactivated successfully.
> Sep 04 11:22:22 frodo audit[1]: SERVICE_STOP pid=1 uid=0
> auid=4294967295 ses=4294967295 msg='unit=systemd-coredump@149-622868-0
> comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=?
> terminal=? res=success'
> Sep 04 11:22:22 frodo systemd[1]:
> systemd-coredump@149-622868-0.service: Consumed 1.515s CPU time.
> Sep 04 11:22:22 frodo dbus-broker[1826]: Dispatched 285 messages @
> 13(±18)μs / message.
> Sep 04 11:22:22 frodo systemd[1642]:
> vte-spawn-9a1e5044-f8da-4eaf-94e1-8eab988e08d8.scope: Consumed 1min
> 27.211s CPU time.
> Sep 04 11:22:22 frodo systemd[1642]: Stopped GNOME Session Manager
> (session: gnome).
> Sep 04 11:22:22 frodo systemd[1642]:
> gnome-session-manager@gnome.service: Consumed 1.540s CPU time.
> Sep 04 11:22:22 frodo systemd[1642]: Stopped target Tasks to be run
> before GNOME Session starts.
> Sep 04 11:22:22 frodo systemd[1642]: Stopped target Session services
> which should run early before the graphical session is brought up.
> Sep 04 11:22:22 frodo systemd[1642]: Reached target Shutdown running
> GNOME Session.
> Sep 04 11:22:22 frodo systemd[1642]: Stopping Monitor Session leader
> for GNOME Session...
> Sep 04 11:22:22 frodo systemd[1642]: Starting Restart DBus after GNOME
> Session shutdown...
> Sep 04 11:22:22 frodo systemd[1642]: Stopped Monitor Session leader
> for GNOME Session.
> Sep 04 11:22:22 frodo systemd[1642]: Started Restart DBus after GNOME
> Session shutdown.
> Sep 04 11:22:22 frodo dbus-broker[1676]: Dispatched 19212 messages @
> 14(±94)μs / message.
> Sep 04 11:22:22 frodo gvfsd[281315]: A connection to the bus can't be made
> Sep 04 11:22:22 frodo kernel: PM: Removing info for No Bus:lo
> Sep 04 11:22:22 frodo gvfsd[281295]: A connection to the bus can't be made
> Sep 04 11:22:22 frodo gvfsd[1848]: A connection to the bus can't be made
> Sep 04 11:22:22 frodo gvfsd[281327]: A connection to the bus can't be made
> Sep 04 11:22:22 frodo systemd[1642]: Stopping D-Bus User Message Bus...
> Sep 04 11:22:22 frodo gnome-shell-calendar-server[1856]:
> gnome-shell-calendar-server[1856]: Lost (or failed to acquire) the
> name org.gnome.Shell.CalendarServer - exiting
> Sep 04 11:22:22 frodo systemd[1642]: Stopped D-Bus User Message Bus.
> Sep 04 11:22:22 frodo systemd[1642]: dbus-broker.service: Consumed
> 4.837s CPU time.
> Sep 04 11:22:22 frodo systemd[1642]:
> gvfs-udisks2-volume-monitor.service: Consumed 2.702s CPU time.
> Sep 04 11:22:22 frodo systemd[1]: run-user-1000-gvfs.mount:
> Deactivated successfully.
> Sep 04 11:22:22 frodo systemd[1642]: xdg-permission-store.service:
> Main process exited, code=exited, status=1/FAILURE
> Sep 04 11:22:22 frodo systemd[1642]: xdg-permission-store.service:
> Failed with result 'exit-code'.
> Sep 04 11:22:22 frodo kernel: PM: Removing info for No Bus:0:63
> Sep 04 11:22:22 frodo systemd[1642]: gvfs-afc-volume-monitor.service:
> Consumed 9.390s CPU time.
> Sep 04 11:22:22 frodo audit: BPF prog-id=562 op=UNLOAD
> Sep 04 11:22:22 frodo audit: BPF prog-id=561 op=UNLOAD
> Sep 04 11:22:22 frodo audit: BPF prog-id=560 op=UNLOAD
> Sep 04 11:22:22 frodo audit[1630]: USER_END pid=1630 uid=0 auid=1000
> ses=2 msg='op=PAM:session_close
> grantors=pam_selinux,pam_loginuid,pam_selinux,pam_keyinit,pam_namespace,pam_keyinit,pam_limits,pam_systemd,pam_unix,pam_gnome_keyring,pam_umask
> acct="jimc" exe="/usr/libexec/gdm-session-worker" hostname=frodo
> addr=? terminal=/dev/tty2 res=success'
> Sep 04 11:22:22 frodo audit[1630]: CRED_DISP pid=1630 uid=0 auid=1000
> ses=2 msg='op=PAM:setcred
> grantors=pam_localuser,pam_unix,pam_gnome_keyring acct="jimc"
> exe="/usr/libexec/gdm-session-worker" hostname=frodo addr=?
> terminal=/dev/tty2 res=success'
> Sep 04 11:22:22 frodo gdm-password][1630]:
> pam_unix(gdm-password:session): session closed for user jimc
> Sep 04 11:22:22 frodo systemd[1642]:
> dbus-:1.2-org.gnome.Identity@0.service: Consumed 41.995s CPU time.
> Sep 04 11:22:22 frodo kernel: PM: Removing info for No Bus:0:53
> Sep 04 11:22:22 frodo systemd[1642]:
> dbus-:1.2-org.gnome.Shell.CalendarServer@0.service: Consumed 1.003s
> CPU time.
> Sep 04 11:22:22 frodo systemd[1642]: xdg-desktop-portal.service:
> Consumed 10.699s CPU time.
> Sep 04 11:22:22 frodo systemd[1]: run-user-1000-doc.mount: Deactivated
> successfully.
> Sep 04 11:22:22 frodo systemd[1642]: xdg-document-portal.service: Main
> process exited, code=exited, status=20/n/a
> Sep 04 11:22:22 frodo systemd[1642]: xdg-document-portal.service:
> Failed with result 'exit-code'.
> Sep 04 11:22:22 frodo systemd[1]: session-2.scope: Deactivated successfully.
> Sep 04 11:22:22 frodo systemd-logind[885]: Session 2 logged out.
> Waiting for processes to exit.
> Sep 04 11:22:22 frodo systemd[1]: session-2.scope: Consumed 2.200s CPU time.
> Sep 04 11:22:22 frodo systemd-logind[885]: Removed session 2.
> Sep 04 11:22:22 frodo kernel: PM: Removing info for No Bus:lo
> Sep 04 11:22:22 frodo abrtd[830]: Size of '/var/spool/abrt' >= 5000 MB
> (MaxCrashReportsSize), deleting old directory
> 'ccpp-2021-08-09-19:53:42.922484-1770'
> Sep 04 11:22:22 frodo kernel: general protection fault, probably for
> non-canonical address 0x10102464c457f: 0000 [#1] SMP KASAN PTI
> Sep 04 11:22:22 frodo kernel: CPU: 6 PID: 4115 Comm: cat Tainted: G
> B   W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:22:22 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:22:22 frodo kernel: RIP: 0010:__list_del_entry_valid+0x4f/0x80
> Sep 04 11:22:22 frodo kernel: Code: 00 00 00 00 ad de 49 39 c4 0f 84
> 13 be 9c 00 48 b8 22 01 00 00 00 00 ad de 49 39 c5 0f 84 39 be 9c 00
> 4c 89 ef e8 11 43 aa ff <4d> 8b 6d 00 49 39 ed 0f 85 10 be 9c 00 49 8d
> 7c 24 08 e8 fa 42 aa
> Sep 04 11:22:22 frodo kernel: RSP: 0018:ffff88810eedfc50 EFLAGS: 00010246
> Sep 04 11:22:22 frodo kernel: RAX: 0000000000000000 RBX:
> ffff888101c9e000 RCX: ffffffff88b741df
> Sep 04 11:22:22 frodo kernel: RDX: 0000000000000000 RSI:
> 0000000000000008 RDI: 00010102464c457f
> Sep 04 11:22:22 frodo kernel: RBP: ffff888101c9e098 R08:
> ffffffffc04c9d85 R09: 0000000000000003
> Sep 04 11:22:22 frodo kernel: R10: ffffed1020393c05 R11:
> 0000000000000001 R12: ffffffffffffffff
> Sep 04 11:22:22 frodo kernel: R13: 00010102464c457f R14:
> ffff88810eedfcf8 R15: ffff88811d0fd178
> Sep 04 11:22:22 frodo kernel: FS:  0000000000000000(0000)
> GS:ffff888216d00000(0000) knlGS:0000000000000000
> Sep 04 11:22:22 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:22 frodo kernel: CR2: 00005628b27ac080 CR3:
> 000000021a42a006 CR4: 00000000003706e0
> Sep 04 11:22:22 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:22 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:22 frodo kernel: Call Trace:
> Sep 04 11:22:22 frodo kernel:  drm_fb_release+0xd8/0x350 [drm]
> Sep 04 11:22:22 frodo kernel:  ? lock_acquire+0xce/0x3f0
> Sep 04 11:22:22 frodo kernel:  ? drm_mode_dirtyfb_ioctl+0x220/0x220 [drm]
> Sep 04 11:22:22 frodo kernel:  ? do_raw_spin_lock+0x11a/0x1b0
> Sep 04 11:22:22 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:22:22 frodo kernel:  ? __mutex_unlock_slowpath+0xb4/0x3e0
> Sep 04 11:22:22 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:22:22 frodo kernel:  ? lockdep_hardirqs_on_prepare+0xe/0x220
> Sep 04 11:22:22 frodo kernel:  ? _raw_spin_unlock_irqrestore+0x4b/0x5d
> Sep 04 11:22:22 frodo kernel:  drm_file_free+0x30e/0x5e0 [drm]
> Sep 04 11:22:22 frodo kernel:  ? drm_close_helper.isra.0+0xb7/0xd0 [drm]
> Sep 04 11:22:22 frodo kernel:  drm_release_noglobal+0x45/0x90 [drm]
> Sep 04 11:22:22 frodo kernel:  __fput+0x116/0x3d0
> Sep 04 11:22:22 frodo kernel:  task_work_run+0x8b/0xc0
> Sep 04 11:22:22 frodo kernel:  do_exit+0x3b2/0x740
> Sep 04 11:22:22 frodo kernel:  do_group_exit+0x6f/0x130
> Sep 04 11:22:22 frodo kernel:  __x64_sys_exit_group+0x28/0x30
> Sep 04 11:22:22 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:22:22 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:22:22 frodo kernel: RIP: 0033:0x7fc6dcebd021
> Sep 04 11:22:22 frodo kernel: Code: Unable to access opcode bytes at
> RIP 0x7fc6dcebcff7.
> Sep 04 11:22:22 frodo kernel: RSP: 002b:00007ffdbfdbdcd8 EFLAGS:
> 00000246 ORIG_RAX: 00000000000000e7
> Sep 04 11:22:22 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007fc6dcfb5470 RCX: 00007fc6dcebd021
> Sep 04 11:22:22 frodo kernel: RDX: 000000000000003c RSI:
> 00000000000000e7 RDI: 0000000000000000
> Sep 04 11:22:22 frodo kernel: RBP: 0000000000000000 R08:
> ffffffffffffff88 R09: 0000000000000001
> Sep 04 11:22:22 frodo kernel: R10: 0000000000000022 R11:
> 0000000000000246 R12: 00007fc6dcfb5470
> Sep 04 11:22:22 frodo kernel: R13: 0000000000000002 R14:
> 00007fc6dcfb5948 R15: 0000000000000000
> Sep 04 11:22:22 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:22:22 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:22:22 frodo kernel: ---[ end trace 8700b470f2bed29b ]---
> Sep 04 11:22:23 frodo kernel: RIP: 0010:__list_del_entry_valid+0x4f/0x80
> Sep 04 11:22:23 frodo kernel: Code: 00 00 00 00 ad de 49 39 c4 0f 84
> 13 be 9c 00 48 b8 22 01 00 00 00 00 ad de 49 39 c5 0f 84 39 be 9c 00
> 4c 89 ef e8 11 43 aa ff <4d> 8b 6d 00 49 39 ed 0f 85 10 be 9c 00 49 8d
> 7c 24 08 e8 fa 42 aa
> Sep 04 11:22:23 frodo kernel: RSP: 0018:ffff88810eedfc50 EFLAGS: 00010246
> Sep 04 11:22:23 frodo kernel: RAX: 0000000000000000 RBX:
> ffff888101c9e000 RCX: ffffffff88b741df
> Sep 04 11:22:23 frodo kernel: RDX: 0000000000000000 RSI:
> 0000000000000008 RDI: 00010102464c457f
> Sep 04 11:22:23 frodo kernel: RBP: ffff888101c9e098 R08:
> ffffffffc04c9d85 R09: 0000000000000003
> Sep 04 11:22:23 frodo kernel: R10: ffffed1020393c05 R11:
> 0000000000000001 R12: ffffffffffffffff
> Sep 04 11:22:23 frodo kernel: R13: 00010102464c457f R14:
> ffff88810eedfcf8 R15: ffff88811d0fd178
> Sep 04 11:22:23 frodo kernel: FS:  0000000000000000(0000)
> GS:ffff888216d00000(0000) knlGS:0000000000000000
> Sep 04 11:22:23 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:22:23 frodo kernel: CR2: 00005628b27ac080 CR3:
> 0000000112760005 CR4: 00000000003706e0
> Sep 04 11:22:23 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:22:23 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:22:23 frodo kernel: Fixing recursive fault but reboot is needed!
> Sep 04 11:22:24 frodo abrt-dump-journal-oops[867]:
> abrt-dump-journal-oops: Found oopses: 1
> Sep 04 11:22:24 frodo abrt-dump-journal-oops[867]:
> abrt-dump-journal-oops: Creating problem directories
> Sep 04 11:22:24 frodo sudo[622415]: pam_unix(sudo:session): session
> closed for user root
> Sep 04 11:22:24 frodo audit[622415]: USER_END pid=622415 uid=1000
> auid=1000 ses=3 msg='op=PAM:session_close
> grantors=pam_keyinit,pam_limits,pam_keyinit,pam_limits,pam_systemd,pam_unix
> acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2
> res=success'
> Sep 04 11:22:24 frodo audit[622415]: CRED_DISP pid=622415 uid=1000
> auid=1000 ses=3 msg='op=PAM:setcred grantors=pam_env,pam_fprintd
> acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2
> res=success'
> Sep 04 11:22:24 frodo systemd[1642]:
> vte-spawn-51a8368e-b7e4-43d7-95a7-a9f6b2e9c80b.scope: Consumed 27min
> 13.722s CPU time.
> Sep 04 11:22:24 frodo abrt-notification[622999]: Process 1768
> (gnome-shell) crashed in iris_transfer_map()
> Sep 04 11:22:25 frodo abrt-dump-journal-oops[867]: Reported 1 kernel
> oopses to Abrt
> Sep 04 11:22:26 frodo abrt-notification[623050]: Process 3125
> (emacs-27.2) crashed in emacs_fopen.cold()
> Sep 04 11:22:26 frodo abrt-server[622994]: Can't find kernel package
> corresponding to '5.14.0-lm1-00008-gf9f185054f04'
> Sep 04 11:22:26 frodo abrt-server[622994]: 'post-create' on
> '/var/spool/abrt/oops-2021-09-04-11:22:24-867-0' exited with 1
> Sep 04 11:22:26 frodo abrt-server[622994]: Deleting problem directory
> '/var/spool/abrt/oops-2021-09-04-11:22:24-867-0'
> Sep 04 11:22:28 frodo kernel: [drm:drm_crtc_commit_wait [drm]] *ERROR*
> flip_done timed out
> Sep 04 11:22:28 frodo kernel:
> [drm:drm_atomic_helper_wait_for_dependencies [drm_kms_helper]] *ERROR*
> [CRTC:51:pipe A] commit wait timed out
> Sep 04 11:22:32 frodo systemd[1]: Stopping User Manager for UID 1000...
> Sep 04 11:22:32 frodo systemd[1642]: Stopped Application launched by
> gnome-session-binary.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped Application launched by
> gnome-session-binary.
> Sep 04 11:22:32 frodo systemd[1642]: Removed slice Slice
> /app/gnome-session-manager.
> Sep 04 11:22:32 frodo systemd[1642]:
> app-gnome\x2dsession\x2dmanager.slice: Consumed 1.540s CPU time.
> Sep 04 11:22:32 frodo systemd[1642]: Removed slice Slice
> /app/org.gnome.Terminal.
> Sep 04 11:22:32 frodo systemd[1642]: app-org.gnome.Terminal.slice:
> Consumed 17h 41min 8.397s CPU time.
> Sep 04 11:22:32 frodo systemd[1642]: Removed slice User Background Tasks Slice.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped target Bluetooth.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped target Main User Target.
> Sep 04 11:22:32 frodo systemd[1642]: Stopping
> cgroupify@app-gnome-google\x2dchrome-4104.scope.service...
> Sep 04 11:22:32 frodo systemd[1642]: Stopping PipeWire PulseAudio...
> Sep 04 11:22:32 frodo systemd[1642]: Stopped
> cgroupify@app-gnome-google\x2dchrome-4104.scope.service.
> Sep 04 11:22:32 frodo systemd[1642]:
> cgroupify@app-gnome-google\x2dchrome-4104.scope.service: Consumed
> 19min 33.745s CPU time.
> Sep 04 11:22:32 frodo systemd[1642]: Stopping Application launched by
> gnome-shell.
> Sep 04 11:22:32 frodo systemd[1642]: Removed slice Slice /app/cgroupify.
> Sep 04 11:22:32 frodo systemd[1642]: app-cgroupify.slice: Consumed
> 19min 33.759s CPU time.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped PipeWire PulseAudio.
> Sep 04 11:22:32 frodo systemd[1642]: pipewire-pulse.service: Consumed
> 5.638s CPU time.
> Sep 04 11:22:32 frodo systemd[1642]: Stopping Multimedia Service...
> Sep 04 11:22:32 frodo systemd[1642]: Stopped Multimedia Service.
> Sep 04 11:22:32 frodo systemd[1642]: pipewire.service: Consumed
> 32.123s CPU time.
> Sep 04 11:22:32 frodo systemd[1642]: Removed slice User Core Session Slice.
> Sep 04 11:22:32 frodo systemd[1642]: session.slice: Consumed 44min
> 38.350s CPU time.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped target Basic System.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped target Paths.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped target Sockets.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped target Timers.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped Mark boot as successful
> after the user session has run 2 minutes.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped Daily Cleanup of User's
> Temporary Directories.
> Sep 04 11:22:32 frodo systemd[1642]: Closed D-Bus User Message Bus Socket.
> Sep 04 11:22:32 frodo systemd[1642]: Closed PipeWire PulseAudio.
> Sep 04 11:22:32 frodo systemd[1642]: Closed Multimedia System.
> Sep 04 11:22:32 frodo systemd[1642]: Stopped Create User's Volatile
> Files and Directories.
> Sep 04 11:22:33 frodo kernel: heartbeat rcs0 heartbeat {seqno:23:6,
> prio:2147483646} not ticking
> Sep 04 11:22:33 frodo kernel: heartbeat         Awake? 4
> Sep 04 11:22:33 frodo kernel: heartbeat         Barriers?: no
> Sep 04 11:22:33 frodo kernel: heartbeat         Latency: 153us
> Sep 04 11:22:33 frodo kernel: heartbeat         Runtime: 15407ms
> Sep 04 11:22:33 frodo kernel: heartbeat         Forcewake: 0 domains, 0 active
> Sep 04 11:22:33 frodo kernel: heartbeat         Heartbeat: 3008 ms ago
> Sep 04 11:22:33 frodo kernel: heartbeat         Reset count: 0 (global 0)
> Sep 04 11:22:33 frodo kernel: heartbeat         Properties:
> Sep 04 11:22:33 frodo kernel: heartbeat
> heartbeat_interval_ms: 2500 [default 2500]
> Sep 04 11:22:33 frodo kernel: heartbeat
> max_busywait_duration_ns: 8000 [default 8000]
> Sep 04 11:22:33 frodo kernel: heartbeat
> preempt_timeout_ms: 640 [default 640]
> Sep 04 11:22:33 frodo kernel: heartbeat
> stop_timeout_ms: 100 [default 100]
> Sep 04 11:22:33 frodo kernel: heartbeat
> timeslice_duration_ms: 1 [default 1]
> Sep 04 11:22:33 frodo kernel: heartbeat         Requests:
> Sep 04 11:22:33 frodo kernel: heartbeat         On hold?: 0
> Sep 04 11:22:33 frodo kernel: heartbeat         MMIO base:  0x00002000
> Sep 04 11:22:33 frodo kernel: heartbeat         EL_STAT_HI: 0x00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         EL_STAT_LO: 0x00000001
> Sep 04 11:22:33 frodo kernel: heartbeat         RING_START: 0x00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         RING_HEAD:  0x00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         RING_TAIL:  0x00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         RING_CTL:   0x00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         RING_MODE:  0x00000200 [idle]
> Sep 04 11:22:33 frodo kernel: heartbeat         RING_IMR:   0xffffffff
> Sep 04 11:22:33 frodo kernel: heartbeat         RING_ESR:   0x00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         RING_EMR:   0xffffffff
> Sep 04 11:22:33 frodo kernel: heartbeat         RING_EIR:   0x00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         ACTHD:  0x00000000_00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         BBADDR: 0x00000000_00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         DMA_FADDR: 0x00000000_00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         IPEIR: 0x00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         IPEHR: 0x00000000
> Sep 04 11:22:33 frodo kernel: heartbeat         Execlist tasklet
> queued? no (enabled), preempt? inactive, timeslice? inactive
> Sep 04 11:22:33 frodo kernel: heartbeat         Execlist status:
> 0x00000001 00000000; CSB read:3, write:3, entries:6
> Sep 04 11:22:33 frodo kernel: heartbeat                 Pending[0]:
> ccid:00000020, ring:{start:00005000, hwsp:fffd9000, seqno:00000002,
> runtime:0ms}, rq: E 2b:4  prio=0 @ 15407ms: Xorg[622782]
> Sep 04 11:22:33 frodo kernel: heartbeat                 E 2b:4  prio=0
> @ 15407ms: Xorg[622782]
> Sep 04 11:22:33 frodo kernel: heartbeat                 Queue priority
> hint: -1024
> Sep 04 11:22:33 frodo kernel: heartbeat                 R 23:6*
> prio=2147483646 @ 3009ms: [i915]
> Sep 04 11:22:33 frodo kernel: heartbeat HWSP:
> Sep 04 11:22:33 frodo kernel: heartbeat [0000] 5a5a5a5a 5a5a5a5a
> 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a
> Sep 04 11:22:33 frodo kernel: heartbeat *
> Sep 04 11:22:33 frodo kernel: heartbeat [0040] ffffffff ffffffff
> ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
> Sep 04 11:22:33 frodo kernel: heartbeat [0060] ffffffff ffffffff
> ffffffff ffffffff 5a5a5a5a 5a5a5a5a 5a5a5a5a 00000003
> Sep 04 11:22:33 frodo kernel: heartbeat [0080] 5a5a5a5a 5a5a5a5a
> 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a
> Sep 04 11:22:33 frodo kernel: heartbeat *
> Sep 04 11:22:33 frodo kernel: heartbeat [00c0] 5a5a5a5a 5a5a5a5a
> 00000000 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a
> Sep 04 11:22:33 frodo kernel: heartbeat [00e0] 5a5a5a5a 5a5a5a5a
> 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a
> Sep 04 11:22:33 frodo kernel: heartbeat [0100] 00000005 00000000
> 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a
> Sep 04 11:22:33 frodo kernel: heartbeat [0120] 5a5a5a5a 5a5a5a5a
> 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a 5a5a5a5a
> Sep 04 11:22:33 frodo kernel: heartbeat *
> Sep 04 11:22:33 frodo kernel: heartbeat Idle? no
> Sep 04 11:22:33 frodo kernel: heartbeat IRQ: disabled
> Sep 04 11:22:33 frodo kernel: i915 0000:00:02.0: [drm] GPU HANG: ecode
> 9:0:00000000
> Sep 04 11:22:33 frodo kernel: i915 0000:00:02.0: [drm] Resetting rcs0
> for stopped heartbeat on rcs0
> Sep 04 11:22:38 frodo kernel:
> [drm:drm_atomic_helper_wait_for_flip_done [drm_kms_helper]] *ERROR*
> [CRTC:51:pipe A] flip_done timed out
> Sep 04 11:22:48 frodo kernel: [drm:drm_crtc_commit_wait [drm]] *ERROR*
> flip_done timed out
> Sep 04 11:22:48 frodo kernel:
> [drm:drm_atomic_helper_wait_for_dependencies [drm_kms_helper]] *ERROR*
> [CRTC:51:pipe A] commit wait timed out
> Sep 04 11:22:59 frodo kernel: [drm:drm_crtc_commit_wait [drm]] *ERROR*
> flip_done timed out
> Sep 04 11:22:59 frodo kernel:
> [drm:drm_atomic_helper_wait_for_dependencies [drm_kms_helper]] *ERROR*
> [CONNECTOR:95:eDP-1] commit wait timed out
> Sep 04 11:23:09 frodo kernel: [drm:drm_crtc_commit_wait [drm]] *ERROR*
> flip_done timed out
> Sep 04 11:23:09 frodo kernel:
> [drm:drm_atomic_helper_wait_for_dependencies [drm_kms_helper]] *ERROR*
> [PLANE:31:plane 1A] commit wait timed out
> Sep 04 11:23:19 frodo systemd[1]: pcscd.service: Deactivated successfully.
> Sep 04 11:23:19 frodo audit[1]: SERVICE_STOP pid=1 uid=0
> auid=4294967295 ses=4294967295 msg='unit=pcscd comm="systemd"
> exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=?
> res=success'
> Sep 04 11:23:19 frodo kernel:
> [drm:drm_atomic_helper_wait_for_flip_done [drm_kms_helper]] *ERROR*
> [CRTC:51:pipe A] flip_done timed out
> Sep 04 11:23:29 frodo kernel: [drm:drm_crtc_commit_wait [drm]] *ERROR*
> flip_done timed out
> Sep 04 11:23:29 frodo kernel:
> [drm:drm_atomic_helper_wait_for_dependencies [drm_kms_helper]] *ERROR*
> [CRTC:51:pipe A] commit wait timed out
> Sep 04 11:23:40 frodo kernel: [drm:drm_crtc_commit_wait [drm]] *ERROR*
> flip_done timed out
> Sep 04 11:23:40 frodo kernel:
> [drm:drm_atomic_helper_wait_for_dependencies [drm_kms_helper]] *ERROR*
> [CONNECTOR:95:eDP-1] commit wait timed out
> Sep 04 11:23:50 frodo kernel:
> [drm:drm_atomic_helper_wait_for_flip_done [drm_kms_helper]] *ERROR*
> [CRTC:51:pipe A] flip_done timed out
> Sep 04 11:23:50 frodo /usr/libexec/gdm-x-session[622911]:
> dbus-daemon[622911]: [session uid=42 pid=622911] Activating service
> name='org.a11y.Bus' requested by ':1.0' (uid=42 pid=622918
> comm="/usr/libexec/gnome-session-check-accelerated ")
> Sep 04 11:23:50 frodo /usr/libexec/gdm-x-session[622911]:
> dbus-daemon[622911]: [session uid=42 pid=622911] Successfully
> activated service 'org.a11y.Bus'
> Sep 04 11:23:50 frodo gnome-session[622914]:
> gnome-session-binary[622914]: WARNING: Failed to upload environment to
> systemd: GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:23:50 frodo gnome-session-binary[622914]: WARNING: Failed to
> upload environment to systemd:
> GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:23:50 frodo gnome-session[622914]:
> gnome-session-binary[622914]: WARNING: Failed to reset failed state of
> units: GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:23:50 frodo gnome-session-binary[622914]: WARNING: Failed to
> reset failed state of units:
> GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:23:50 frodo gnome-session[622914]:
> gnome-session-binary[622914]: WARNING: Falling back to non-systemd
> startup procedure due to error:
> GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:23:50 frodo gnome-session-binary[622914]: WARNING: Falling
> back to non-systemd startup procedure due to error:
> GDBus.Error:org.freedesktop.DBus.Error.NameHasNoOwner: Name
> "org.freedesktop.systemd1" does not exist
> Sep 04 11:23:51 frodo kernel: ------------[ cut here ]------------
> Sep 04 11:23:51 frodo kernel: i915 0000:00:02.0:
> drm_WARN_ON(intel_dp->pps.vdd_wakeref)
> Sep 04 11:23:51 frodo kernel: WARNING: CPU: 6 PID: 622782 at
> drivers/gpu/drm/i915/display/intel_pps.c:591
> intel_pps_vdd_on_unlocked+0x428/0x440 [i915]
> Sep 04 11:23:51 frodo kernel: Modules linked in: amdgpu drm_ttm_helper
> gpu_sched tun uinput rfcomm xt_CHECKSUM xt_MASQUERADE xt_conntrack
> ipt_REJECT nf_nat_tftp nf_conntrack_tftp bridge stp llc ccm nft_objref
> nf_conntrack_netbios_ns nf_conntrack_broadcast nft_fib_inet
> nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4
> nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ip6table_nat
> ip6table_mangle ip6table_raw iptable_nat nf_nat nf_conntrack
> nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw ip_set
> nf_tables nfnetlink ip6table_filter ip6_tables iptable_filter cmac
> bnep sunrpc vfat fat iwlmvm mac80211 libarc4 iwlwifi intel_rapl_msr
> snd_hda_codec_hdmi snd_hda_codec_conexant snd_hda_codec_generic
> ledtrig_audio snd_hda_intel iTCO_wdt mei_hdcp at24 intel_pmc_bxt
> snd_intel_dspcfg uvcvideo iTCO_vendor_support btusb wmi_bmof
> intel_wmi_thunderbolt btrtl btbcm btintel snd_hda_codec
> intel_rapl_common videobuf2_vmalloc videobuf2_memops
> x86_pkg_temp_thermal videobuf2_v4l2 snd_hwdep intel_powerclamp
> Sep 04 11:23:51 frodo kernel:  videobuf2_common snd_hda_core bluetooth
> coretemp snd_seq rapl cfg80211 videodev intel_cstate snd_seq_device mc
> intel_uncore snd_pcm pcspkr joydev ecdh_generic toshiba_acpi ecc
> mei_me sparse_keymap snd_timer mei industrialio snd i2c_i801
> toshiba_bluetooth soundcore rfkill i2c_smbus wmi acpi_pad ip_tables
> crct10dif_pclmul crc32_pclmul rtsx_pci_sdmmc crc32c_intel mmc_core
> ghash_clmulni_intel i915 prime_numbers i2c_algo_bit ttm serio_raw
> r8169 drm_kms_helper rtsx_pci cec drm video fuse
> Sep 04 11:23:51 frodo kernel: CPU: 6 PID: 622782 Comm: Xorg Tainted: G
>     B D W         5.14.0-lm1-00008-gf9f185054f04 #780
> Sep 04 11:23:51 frodo kernel: Hardware name: TOSHIBA Satellite
> L55-C/06F4                            , BIOS 1.20 10/08/2015
> Sep 04 11:23:51 frodo kernel: RIP:
> 0010:intel_pps_vdd_on_unlocked+0x428/0x440 [i915]
> Sep 04 11:23:51 frodo kernel: Code: 24 49 8b 10 4c 89 c7 48 89 14 24
> e8 92 aa 46 c8 48 8b 14 24 48 c7 c1 40 6e bb c0 48 c7 c7 40 41 bb c0
> 48 89 c6 e8 9c 7a b1 c8 <0f> 0b e9 29 fd ff ff e8 ec cd b9 c8 66 66 2e
> 0f 1f 84 00 00 00 00
> Sep 04 11:23:51 frodo kernel: RSP: 0018:ffff888120ecf440 EFLAGS: 00010282
> Sep 04 11:23:51 frodo kernel: RAX: 0000000000000000 RBX:
> ffff88810a880160 RCX: 0000000000000000
> Sep 04 11:23:51 frodo kernel: RDX: 0000000000000027 RSI:
> 0000000000000004 RDI: ffffed10241d9e7a
> Sep 04 11:23:51 frodo kernel: RBP: 1ffff110241d9e8a R08:
> ffffffff8846096e R09: ffff888216d30fcb
> Sep 04 11:23:51 frodo kernel: R10: ffffed1042da61f9 R11:
> 0000000000000001 R12: ffff888122d80000
> Sep 04 11:23:51 frodo kernel: R13: 0000000000000001 R14:
> ffff88810a880d50 R15: ffff88810a880000
> Sep 04 11:23:51 frodo kernel: FS:  00007f3733a77a80(0000)
> GS:ffff888216d00000(0000) knlGS:0000000000000000
> Sep 04 11:23:51 frodo kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Sep 04 11:23:51 frodo kernel: CR2: 00005613656cef90 CR3:
> 0000000001ef8004 CR4: 00000000003706e0
> Sep 04 11:23:51 frodo kernel: DR0: 0000000000000000 DR1:
> 0000000000000000 DR2: 0000000000000000
> Sep 04 11:23:51 frodo kernel: DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400
> Sep 04 11:23:51 frodo kernel: Call Trace:
> Sep 04 11:23:51 frodo kernel:  ? intel_pps_wait_power_cycle+0x90/0x90 [i915]
> Sep 04 11:23:51 frodo kernel:  ?
> __intel_display_power_get_domain+0x12f/0x1f0 [i915]
> Sep 04 11:23:51 frodo kernel:  ? ilk_aux_ctl_reg+0x80/0x80 [i915]
> Sep 04 11:23:51 frodo kernel:  ? ilk_aux_ctl_reg+0x80/0x80 [i915]
> Sep 04 11:23:51 frodo kernel:  intel_dp_aux_xfer+0x1d9/0xa10 [i915]
> Sep 04 11:23:51 frodo kernel:  ? kfree+0xd1/0x480
> Sep 04 11:23:51 frodo kernel:  ? stack_trace_snprint+0xc0/0xc0
> Sep 04 11:23:51 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:23:51 frodo kernel:  ?
> trace_i915_reg_rw.constprop.0+0x130/0x130 [i915]
> Sep 04 11:23:51 frodo kernel:  ? mark_usage+0x1a0/0x1a0
> Sep 04 11:23:51 frodo kernel:  ? kasan_set_free_info+0x20/0x30
> Sep 04 11:23:51 frodo kernel:  ? __kasan_slab_free+0xec/0x120
> Sep 04 11:23:51 frodo kernel:  ? slab_free_freelist_hook+0xbc/0x210
> Sep 04 11:23:51 frodo kernel:  ? kfree+0xd1/0x480
> Sep 04 11:23:51 frodo kernel:  ? intel_dp_set_edid+0x58/0x480 [i915]
> Sep 04 11:23:51 frodo kernel:  ? intel_dp_detect+0x222/0x830 [i915]
> Sep 04 11:23:51 frodo kernel:  ? drm_helper_probe_detect+0x73/0x110
> [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:  ?
> drm_helper_probe_single_connector_modes+0x8b7/0xc90 [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:  ? drm_mode_getconnector+0x766/0x830 [drm]
> Sep 04 11:23:51 frodo kernel:  ? drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:23:51 frodo kernel:  ? entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:23:51 frodo kernel:  intel_dp_aux_transfer+0x1b8/0x480 [i915]
> Sep 04 11:23:51 frodo kernel:  ? drm_dp_dpcd_access+0xc6/0x1f0 [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:  ? mark_usage+0x1a0/0x1a0
> Sep 04 11:23:51 frodo kernel:  ? intel_dp_aux_xfer+0xa10/0xa10 [i915]
> Sep 04 11:23:51 frodo kernel:  ? mutex_lock_io_nested+0x970/0x970
> Sep 04 11:23:51 frodo kernel:  ? spin_bug+0x90/0x90
> Sep 04 11:23:51 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:23:51 frodo kernel:  ? lock_acquire+0xce/0x3f0
> Sep 04 11:23:51 frodo kernel:  ? mark_usage+0x1a0/0x1a0
> Sep 04 11:23:51 frodo kernel:  drm_dp_dpcd_access+0xe2/0x1f0 [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:  ? unlock_bus+0x20/0x20 [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:23:51 frodo kernel:  drm_dp_dpcd_read+0x13b/0x180 [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:  intel_dp_set_edid+0x2cc/0x480 [i915]
> Sep 04 11:23:51 frodo kernel:  intel_dp_detect+0x222/0x830 [i915]
> Sep 04 11:23:51 frodo kernel:  ? ww_mutex_lock+0x32/0xc0
> Sep 04 11:23:51 frodo kernel:  ? modeset_lock+0x222/0x280 [drm]
> Sep 04 11:23:51 frodo kernel:  drm_helper_probe_detect+0x73/0x110
> [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:
> drm_helper_probe_single_connector_modes+0x8b7/0xc90 [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:23:51 frodo kernel:  ? __drm_mode_object_find+0xb1/0x1f0 [drm]
> Sep 04 11:23:51 frodo kernel:  ? __mutex_lock+0x36b/0xa10
> Sep 04 11:23:51 frodo kernel:  ? __ww_mutex_check_kill+0x140/0x140
> Sep 04 11:23:51 frodo kernel:  ? drm_connector_mode_valid+0xb0/0xb0
> [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:  ? drm_connector_mode_valid+0xb0/0xb0
> [drm_kms_helper]
> Sep 04 11:23:51 frodo kernel:  ?
> drm_connector_property_set_ioctl+0xf0/0xf0 [drm]
> Sep 04 11:23:51 frodo kernel:  drm_mode_getconnector+0x766/0x830 [drm]
> Sep 04 11:23:51 frodo kernel:  ?
> drm_connector_property_set_ioctl+0xf0/0xf0 [drm]
> Sep 04 11:23:51 frodo kernel:  ? ptep_set_access_flags+0xcf/0xe0
> Sep 04 11:23:51 frodo kernel:  ? lock_acquire+0xce/0x3f0
> Sep 04 11:23:51 frodo kernel:  ? rcu_read_lock_sched_held+0x12/0x80
> Sep 04 11:23:51 frodo kernel:  ? drm_dev_exit+0xd/0x40 [drm]
> Sep 04 11:23:51 frodo kernel:  ? lock_release+0x4f/0x1d0
> Sep 04 11:23:51 frodo kernel:  ?
> drm_connector_property_set_ioctl+0xf0/0xf0 [drm]
> Sep 04 11:23:51 frodo kernel:  drm_ioctl_kernel+0x155/0x1a0 [drm]
> Sep 04 11:23:51 frodo kernel:  ? drm_setversion+0x350/0x350 [drm]
> Sep 04 11:23:51 frodo kernel:  ? do_vfs_ioctl+0x70e/0xab0
> Sep 04 11:23:51 frodo kernel:  ? check_stack_object+0x22/0x60
> Sep 04 11:23:51 frodo kernel:  drm_ioctl+0x284/0x5a0 [drm]
> Sep 04 11:23:51 frodo kernel:  ?
> drm_connector_property_set_ioctl+0xf0/0xf0 [drm]
> Sep 04 11:23:51 frodo kernel:  ? drm_version+0x150/0x150 [drm]
> Sep 04 11:23:51 frodo kernel:  ? __up_read+0x16a/0x4c0
> Sep 04 11:23:51 frodo kernel:  ? __fget_files+0x140/0x230
> Sep 04 11:23:51 frodo kernel:  __x64_sys_ioctl+0xb5/0xd0
> Sep 04 11:23:51 frodo kernel:  do_syscall_64+0x3b/0x90
> Sep 04 11:23:51 frodo kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xae
> Sep 04 11:23:51 frodo kernel: RIP: 0033:0x7f37342fd0ab
> Sep 04 11:23:51 frodo kernel: Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff
> ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e
> fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c
> 00 f7 d8 64 89 01 48
> Sep 04 11:23:51 frodo kernel: RSP: 002b:00007ffc9e39f768 EFLAGS:
> 00000246 ORIG_RAX: 0000000000000010
> Sep 04 11:23:51 frodo kernel: RAX: ffffffffffffffda RBX:
> 00007ffc9e39f7b0 RCX: 00007f37342fd0ab
> Sep 04 11:23:51 frodo kernel: RDX: 00007ffc9e39f7b0 RSI:
> 00000000c05064a7 RDI: 0000000000000010
> Sep 04 11:23:51 frodo kernel: RBP: 00000000c05064a7 R08:
> 00005613656bf760 R09: 0000000000000001
> Sep 04 11:23:51 frodo kernel: R10: 0000000000000000 R11:
> 0000000000000246 R12: 0000000000000001
> Sep 04 11:23:51 frodo kernel: R13: 0000000000000010 R14:
> 00000000c05064a7 R15: 00007ffc9e39f7b0
> Sep 04 11:23:51 frodo kernel: irq event stamp: 0
> Sep 04 11:23:51 frodo kernel: hardirqs last  enabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:23:51 frodo kernel: hardirqs last disabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:23:51 frodo kernel: softirqs last  enabled at (0):
> [<ffffffff88225ea8>] copy_process+0xbc8/0x27f0
> Sep 04 11:23:51 frodo kernel: softirqs last disabled at (0):
> [<0000000000000000>] 0x0
> Sep 04 11:23:51 frodo kernel: ---[ end trace 8700b470f2bed29c ]---
> Sep 04 11:23:51 frodo kernel: [drm:wait_panel_status [i915]] *ERROR*
> PPS state mismatch
> Sep 04 11:23:51 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): EDID vendor "LGD", prod id 1232
> Sep 04 11:23:51 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Printing DDC gathered Modelines:
> Sep 04 11:23:51 frodo /usr/libexec/gdm-x-session[622782]: (II)
> modeset(0): Modeline "1366x768"x0.0   76.32  1366 1414 1446 1610  768
> 771 776 790 -hsync -vsync (47.4 kHz eP)
> Sep 04 11:23:51 frodo gnome-shell[623077]: ATK Bridge is disabled but
> a11y has already been enabled.
> Sep 04 11:23:52 frodo abrt-dump-journal-oops[867]:
> abrt-dump-journal-oops: Found oopses: 1
> Sep 04 11:23:52 frodo abrt-dump-journal-oops[867]:
> abrt-dump-journal-oops: Creating problem directories
> Sep 04 11:23:52 frodo abrt-server[623101]: Can't find kernel package
> corresponding to '5.14.0-lm1-00008-gf9f185054f04'
> Sep 04 11:23:52 frodo abrt-server[623101]: 'post-create' on
> '/var/spool/abrt/oops-2021-09-04-11:23:52-867-0' exited with 1
> Sep 04 11:23:52 frodo abrt-server[623101]: Deleting problem directory
> '/var/spool/abrt/oops-2021-09-04-11:23:52-867-0'
> Sep 04 11:23:53 frodo abrt-dump-journal-oops[867]: Reported 1 kernel
> oopses to Abrt
> Sep 04 11:24:01 frodo kernel: [drm:drm_crtc_commit_wait [drm]] *ERROR*
> flip_done timed out
> Sep 04 11:24:01 frodo kernel:
> [drm:drm_atomic_helper_wait_for_dependencies [drm_kms_helper]] *ERROR*
> [CRTC:51:pipe A] commit wait timed out
> Sep 04 11:24:02 frodo gnome-shell[623077]: Skipping parental controls
> support as it’s disabled
> Sep 04 11:24:02 frodo gnome-shell[623077]: Unset XDG_SESSION_ID,
> getCurrentSessionProxy() called outside a user session. Asking logind
> directly.
> Sep 04 11:24:02 frodo gnome-shell[623077]: Will monitor session c3
> Sep 04 11:24:02 frodo systemd[1642]:
> app-gnome-google\x2dchrome-4104.scope: Stopping timed out. Killing.
> 
> 
> I think I'll try running it inside a virtme session, see what happens.
> 
> 
>>
>> --
>> Petri Latvala
