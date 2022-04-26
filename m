Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 272CA5104E1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 19:06:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F62610E8F2;
	Tue, 26 Apr 2022 17:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D856210E8EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 17:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650992788; x=1682528788;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=T+Tml0FwU4eFrQO92zS8mKA+oHrer3+HalaJkVbjkck=;
 b=TJ04JT69OREX+VgbpRpZ9232BCzkhnyKjMj0RrhcqkhjoclO0XPVTQLV
 PgxPufDjdnauUsQYrxP0BrhgeZDk+iK4fap4eIklAIFsdKiscA8UHdQh8
 7ALOun7eXIgLxzvqEWSyXyounjcYtTl7kF+oXShVmNIchxN3pJTT8c015
 4AvwBu0oObR2lyDPVSj5SZug6RgAXQ20UtKLjfVAuzK9hRsdR025khHwx
 2OT2B/RyYJ8pdJDnQW3hTPk0Mc5d6cGUz8TTVapIrhhdRPHsbQ6qrWKtX
 CwGu1oKIyrNP5SXYmGjPHYSpJH8+9UTRKpuKE3yIL7aESa03Zj1HA2ZDu Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265820999"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="265820999"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 10:06:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="650301170"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 10:06:28 -0700
Date: Tue, 26 Apr 2022 10:06:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Ymgmk0klBjwSyhIk@mdroper-desk1.amr.corp.intel.com>
References: <20220425211251.77154-1-matthew.d.roper@intel.com>
 <165093224468.12384.14384155089754339872@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165093224468.12384.14384155089754339872@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Upstream_initial_DG2_PCI_IDs?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 26, 2022 at 12:17:24AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Upstream initial DG2 PCI IDs
> URL   : https://patchwork.freedesktop.org/series/103098/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11550_full -> Patchwork_103098v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_103098v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_103098v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 13)
> ------------------------------
> 
>   Additional (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_103098v1_full:
> 
> ### CI changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * boot:
>     - {shard-rkl}:        NOTRUN -> ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [FAIL][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-6/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-2/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-2/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-3/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-3/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-4/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-5/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-5/boot.html

THere doesn't seem to be a log output for the failure.  But updating DG2
device IDs shouldn't have any impact on RKL.

>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-5/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-1/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-1/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-1/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-1/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-1/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-1/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-2/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-2/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-rkl-2/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_vblank@pipe-d-wait-idle-hang:
>     - shard-tglb:         [PASS][22] -> [INCOMPLETE][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb6/igt@kms_vblank@pipe-d-wait-idle-hang.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-tglb3/igt@kms_vblank@pipe-d-wait-idle-hang.html

GPF outside of i915:

<4> [358.240067] general protection fault, probably for non-canonical address 0x380015ffd0003c: 0000 [#1] PREEMPT SMP NOPTI
<4> [358.240074] CPU: 0 PID: 175 Comm: kworker/0:1H Tainted: G     U            5.18.0-rc4-Patchwork_103098v1-g56b089ae03ef+ #1
<4> [358.240076] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake U DDR4 SODIMM RVP, BIOS TGLSFWI1.R00.3197.A00.2005110542 05/11/2020
<4> [358.240078] Workqueue: acpi_thermal_pm acpi_thermal_check_fn
<4> [358.240086] RIP: 0010:acpi_ns_search_one_scope+0xb/0x39
<4> [358.240091] Code: 8b 48 08 4d 85 c9 74 0e 41 8b 10 39 56 0c 74 07 49 83 c0 10 eb e9 c3 48 89 ce 41 ff e1 66 90 55 53 48 8b 5e 18 48 85 db 74 26 <39> 7b 0c 75 1b 48 89 df 48 89 cd e8 83 02 00 00 83 f8 16 75 03 48
<4> [358.240093] RSP: 0018:ffffc9000038fa08 EFLAGS: 00010206
<4> [358.240095] RAX: 0000000000000000 RBX: 00380015ffd00030 RCX: ffffc9000038fab0
<4> [358.240097] RDX: 0000000000000000 RSI: ffffffff8409fe60 RDI: 000000004742444d
<4> [358.240098] RBP: 0000000000000005 R08: ffffc9000038fa34 R09: 0000000000000003
<4> [358.240099] R10: 0000000000000000 R11: ffff88813b3beac0 R12: ffff8881015c3808
<4> [358.240100] R13: 0000000000000003 R14: ffffffff8409fe60 R15: 0000000000000000
<4> [358.240101] FS:  0000000000000000(0000) GS:ffff8884a0200000(0000) knlGS:0000000000000000
<4> [358.240103] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [358.240104] CR2: 00007f6364001358 CR3: 0000000006612004 CR4: 0000000000770ef0
<4> [358.240105] PKRU: 55555554
<4> [358.240106] Call Trace:
<4> [358.240107]  <TASK>
<4> [358.240109]  acpi_ns_search_and_enter+0x14e/0x19e
<4> [358.240112]  acpi_ns_lookup+0x2bf/0x40b
<4> [358.240115]  acpi_ps_get_next_namepath+0x78/0x1ea
<4> [358.240118]  acpi_ps_get_next_arg+0x37e/0x474
<4> [358.240119]  acpi_ps_parse_loop+0x203/0x5c5
<4> [358.240121]  acpi_ps_parse_aml+0x8c/0x2b3
<4> [358.240122]  acpi_ps_execute_method+0x158/0x18c
<4> [358.240124]  acpi_ns_evaluate+0x1bc/0x249
<4> [358.240126]  acpi_evaluate_object+0x132/0x23b
<4> [358.240129]  __acpi_power_off.isra.2+0x18/0x50
<4> [358.240134]  acpi_power_off+0x52/0xd0
<4> [358.240136]  acpi_power_off_list+0x28/0x80
<4> [358.240138]  acpi_power_transition+0x7a/0xa0
<4> [358.240140]  acpi_device_set_power+0x1dc/0x2f0
<4> [358.240144]  __thermal_cdev_update+0x69/0x190
<4> [358.240150]  thermal_cdev_update+0x31/0x50
<4> [358.240152]  step_wise_throttle+0x29e/0x480
<4> [358.240155]  thermal_zone_device_update+0x161/0x470
<4> [358.240157]  acpi_thermal_check_fn+0x38/0x80
<4> [358.240159]  process_one_work+0x272/0x5c0
<4> [358.240164]  worker_thread+0x37/0x370
<4> [358.240166]  ? process_one_work+0x5c0/0x5c0
<4> [358.240168]  kthread+0xed/0x120
<4> [358.240170]  ? kthread_complete_and_exit+0x20/0x20
<4> [358.240172]  ret_from_fork+0x1f/0x30
<4> [358.240176]  </TASK>
<4> [358.240177] Modules linked in: vgem drm_shmem_helper fuse snd_hda_codec_hdmi mei_hdcp x86_pkg_temp_thermal coretemp i915 kvm_intel kvm cdc_ether usbnet mii irqbypass crct10dif_pclmul crc32_pclmul snd_hda_intel ghash_clmulni_intel snd_intel_dspcfg ttm snd_hda_codec drm_buddy snd_hwdep e1000e snd_hda_core drm_display_helper mei_me ptp drm_kms_helper snd_pcm pps_core mei i2c_i801 syscopyarea sysfillrect i2c_smbus sysimgblt fb_sys_fops intel_lpss_pci prime_numbers
<4> [358.240203] ---[ end trace 0000000000000000 ]---


Not related to this series.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_concurrent@pipe-d@hdmi-a-1}:
>     - {shard-dg1}:        NOTRUN -> [CRASH][24]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-dg1-16/igt@kms_concurrent@pipe-d@hdmi-a-1.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11550_full and Patchwork_103098v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_sequence@get-forked-busy@hdmi-a-1-pipe-d:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.24] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103098v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@in-flight-1us:
>     - shard-skl:          [PASS][25] -> [TIMEOUT][26] ([i915#3063])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/igt@gem_eio@in-flight-1us.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl4/igt@gem_eio@in-flight-1us.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +155 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl10/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][28] ([i915#2842])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#2842]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-default:
>     - shard-snb:          [PASS][31] -> [SKIP][32] ([fdo#109271]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb5/igt@gem_exec_flush@basic-wb-ro-default.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-snb6/igt@gem_exec_flush@basic-wb-ro-default.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][33] -> [SKIP][34] ([i915#2190])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb1/igt@gem_huc_copy@huc-copy.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([i915#4613])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl9/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#4171])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3323])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-apl8/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#2856])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][41] ([i915#454])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][42] -> [INCOMPLETE][43] ([i915#3921])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb4/igt@i915_selftest@live@hangcheck.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-snb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#5286])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#110725] / [fdo#111614])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3777])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#110723])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl9/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-apl8/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278]) +7 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_color@pipe-a-deep-color:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278] / [i915#3555])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_color@pipe-a-deep-color.html
> 
>   * igt@kms_color_chamelium@pipe-b-gamma:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-apl8/igt@kms_color_chamelium@pipe-b-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl9/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][58] -> [INCOMPLETE][59] ([i915#3614])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109278] / [fdo#109279])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109274] / [fdo#109278])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_dsc@xrgb8888-dsc-compression:
>     - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +49 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-apl8/igt@kms_dsc@xrgb8888-dsc-compression.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109274])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#2122])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3701])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109280]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([i915#1188])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl9/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][72] ([i915#265])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
>     - shard-iclb:         [PASS][73] -> [INCOMPLETE][74] ([i915#5243])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb8/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
> 
>   * igt@kms_plane_scaling@upscale-with-rotation-factor-0-25@pipe-b-edp-1-upscale-with-rotation:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#5176]) +2 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_plane_scaling@upscale-with-rotation-factor-0-25@pipe-b-edp-1-upscale-with-rotation.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl9/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109441])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#3555])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#1542])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@perf@polling.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl2/igt@perf@polling.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][82] -> [FAIL][83] ([i915#1722])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/igt@perf@polling-small-buf.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl6/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_pcopy@test3_4:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109291])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@prime_nv_pcopy@test3_4.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][85] ([i915#5098])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl10/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl9/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [TIMEOUT][87] ([i915#3063]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-tglb2/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][89] ([i915#2842]) -> [PASS][90] +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [FAIL][91] ([i915#2842]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][93] ([i915#2842]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][95] ([i915#2849]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-snb:          [SKIP][97] ([fdo#109271]) -> [PASS][98] +2 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-snb7/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-skl:          [INCOMPLETE][99] -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl4/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_softpin@softpin:
>     - shard-skl:          [DMESG-WARN][101] ([i915#1982]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/igt@gem_softpin@softpin.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl7/igt@gem_softpin@softpin.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-glk:          [FAIL][103] ([i915#2521]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip.html
>     - shard-kbl:          [FAIL][105] ([i915#2521]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl3/igt@kms_async_flips@alternate-sync-async-flip.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-kbl3/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][109] ([i915#2346] / [i915#533]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-glk:          [DMESG-WARN][111] ([i915#118] / [i915#1888]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][113] ([i915#79]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [FAIL][115] ([i915#2122]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          [FAIL][117] ([i915#1188]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl8/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][119] ([fdo#108145] / [i915#265]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][121] ([fdo#109441]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][123] ([i915#4939]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][125] ([i915#5639]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/igt@perf@polling-parameterized.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-skl8/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [DMESG-WARN][127] ([i915#5614]) -> [SKIP][128] ([i915#4525])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][129] ([i915#4525]) -> [DMESG-WARN][130] ([i915#5614])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][131] ([i915#588]) -> [SKIP][132] ([i915#658])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>     - shard-snb:          [SKIP][133] ([fdo#109271] / [i915#5341]) -> [SKIP][134] ([fdo#109271])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-snb2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][135] ([i915#2920]) -> [SKIP][136] ([i915#658])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][137] ([i915#2920]) -> [SKIP][138] ([fdo#111068] / [i915#658])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
>   [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5243]: https://gitlab.freedesktop.org/drm/intel/issues/5243
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5303]: https://gitlab.freedesktop.org/drm/intel/issues/5303
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11550 -> Patchwork_103098v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103098v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103098v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
