Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 763FD4A82EF
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 12:09:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9774810E244;
	Thu,  3 Feb 2022 11:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B3E410E244
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 11:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643886546; x=1675422546;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5Kl8nOub7lt+tpEa2Ei+rvF7iKbVZZWrIB2uNI2kEyY=;
 b=f9D4NuNs+pDNmQRtKLSDQ3c8NyTz/RoQdHkqofyjZSoTX1nSyict+jWw
 zrMyvqZu+/3LO6O8Bj0WZwidd7VZCls8n9wGAj/Pxo9ZJtLc+i1uzX+Pr
 ko3sVEtn5q5JoNElWgHupo2r2u0SmBIDmEbo81+yiLhRaToPRS/Z1DVBH
 zU8GOAZNGNLRwLxv0hprGSTxRO3lUR7+pIWAp6RkpTYQrXGwPybXUgTzl
 lCwxQY+BUV2Q5+4rEqwr9UkxlPUX5SzIpdy1w/PN8b1k31w08jk/y7E+7
 0Kh/jnt50ejWsojtdxXw0/zQZtfzSDCaCsm7dYLPI/RpyjxkA3P7a6atR g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="245717340"
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="245717340"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 03:09:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="538703400"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 03:09:03 -0800
Date: Thu, 3 Feb 2022 13:08:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220203110859.GA2795300@ideak-desk.fi.intel.com>
References: <20220202104249.2680843-1-imre.deak@intel.com>
 <164384040490.12659.11199328734995644547@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164384040490.12659.11199328734995644547@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Disable_unused_power_wells_left_enabled_by_BIOS_=28rev?=
 =?utf-8?q?2=29?=
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
Cc: YedireswarapuX Sai Nandan <yedireswarapux.sai.nandan@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 02, 2022 at 10:20:04PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Disable unused power wells left enabled by BIOS (rev2)
> URL   : https://patchwork.freedesktop.org/series/99615/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11180_full -> Patchwork_22160_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22160_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22160_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22160_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb6/igt@i915_pm_rpm@system-suspend-devices.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb7/igt@i915_pm_rpm@system-suspend-devices.html

Unrelated to the change since it didn't have an effect on this machine,
no power wells were left enabled by BIOS and got disabled by the driver.
Looks like an issue with SSD entering a low power state (after i915 also
runtime suspends):

<6>[  774.335425] ata3: hard resetting link
<6>[  774.647894] ata3: SATA link down (SStatus 0 SControl 300)
<4>[  774.647950] ata3.00: disable device
<3>[  774.648328] sd 2:0:0:0: rejecting I/O to offline device
<3>[  774.648694] I/O error, dev sda, sector 9701832 op 0x0:(READ) flags 0x80700 phys_seg 1 prio class 0
<3>[  774.650230] I/O error, dev sda, sector 9701832 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
<6>[  774.650289] sd 2:0:0:0: [sda] tag#5 UNKNOWN(0x2003) Result: hostbyte=0x00 driverbyte=DRIVER_OK cmd_age=44s
<6>[  774.650311] sd 2:0:0:0: [sda] tag#5 Sense Key : 0x2 [current] 
<6>[  774.650325] sd 2:0:0:0: [sda] tag#5 ASC=0x4 ASCQ=0x21 
<6>[  774.650339] sd 2:0:0:0: [sda] tag#5 CDB: opcode=0x2a 2a 00 0e ad 77 f0 00 00 50 00
<3>[  774.650348] I/O error, dev sda, sector 246249456 op 0x1:(WRITE) flags 0x0 phys_seg 9 prio class 0
<4>[  774.650368] EXT4-fs warning (device sda2): ext4_end_bio:346: I/O error 10 writing to inode 9700553 starting block 30781182)
<3>[  774.650426] Buffer I/O error on device sda2, logical block 30649854


I found similar earlier failures on the same machine:
IGTPW_6574/shard-iclb7/19/dmesg-efi-164310156512001

and on another iclb in shards:
Patchwork_22116/shard-iclb4/22/dmesg-efi-164324260302001
Patchwork_22133/shard-iclb4/8/dmesg-efi-164333915203001
IGTPW_6596/shard-iclb4/0/dmesg-efi-164387009603001

Patch is pushed, thanks for the review.

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22160_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-tglb:         NOTRUN -> [SKIP][3] ([i915#280])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#4525])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb1/igt@gem_exec_balancer@parallel.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb8/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][6] ([fdo#109271]) +291 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl8/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>     - shard-tglb:         NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2849])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl8/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap_wc@bad-offset:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][20] ([i915#1982])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl6/igt@gem_mmap_wc@bad-offset.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#4270]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#3297])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][23] ([i915#4990])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl10/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][24] ([i915#3318])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl6/igt@gem_userptr_blits@vma-merge.html
>     - shard-skl:          NOTRUN -> [FAIL][25] ([i915#3318])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1436] / [i915#716])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-skl7/igt@gen9_exec_parse@allowed-single.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#2527] / [i915#2856])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#2856])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][30] ([i915#454])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl8/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#1937])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110725] / [fdo#111614])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][33] ([i915#3743]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-glk:          [PASS][34] -> [DMESG-WARN][35] ([i915#118]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-glk6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][36] ([i915#3763])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777]) +6 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689]) +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +15 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3689] / [i915#3886])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278] / [i915#3886])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3742])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb6/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl6/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-glk1/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109284] / [fdo#111827])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +25 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#3116] / [i915#3299])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3359])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3319]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109279] / [i915#3359])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278]) +2 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109274] / [fdo#109278])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-iclb:         [PASS][55] -> [FAIL][56] ([i915#2346])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>     - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#109274] / [fdo#111825]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109274]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][59] ([i915#2122]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][60] ([i915#79])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180]) +7 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][63] ([i915#3701])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#4911])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
>     - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +3 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-kbl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109280]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#109280] / [fdo#111825]) +10 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#533])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl6/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
>     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][71] -> [DMESG-WARN][72] ([i915#180])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265]) +7 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][74] -> [FAIL][75] ([fdo#108145] / [i915#265])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [SKIP][76] ([fdo#109271]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-glk1/igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111615] / [fdo#112054])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_plane_lowres@pipe-a-tiling-yf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#2920])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl1/igt@kms_psr2_su@page_flip-p010.html
>     - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl6/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [PASS][81] -> [SKIP][82] ([fdo#109441])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#111615])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2437])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl10/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#2530])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +80 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl4/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#2530])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb6/igt@nouveau_crc@pipe-d-source-outp-inactive.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#1722])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-skl10/igt@perf@polling-small-buf.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl10/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_pcopy@test3_1:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#109291])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@prime_nv_pcopy@test3_1.html
> 
>   * igt@prime_nv_test@nv_i915_sharing:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109291]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@prime_nv_test@nv_i915_sharing.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl1/igt@sysfs_clients@fair-0.html
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl6/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#2994])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb1/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-tglu}:       [TIMEOUT][95] ([i915#3063] / [i915#3648]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-tglu-8/igt@gem_eio@unwedge-stress.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglu-8/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][97] ([i915#4525]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][99] ([i915#2842]) -> [PASS][100] +3 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [FAIL][101] ([i915#2842]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][103] ([i915#2842]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-glk:          [FAIL][105] ([i915#2842]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-apl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_userptr_blits@huge-split:
>     - shard-tglb:         [FAIL][109] ([i915#3376]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-tglb8/igt@gem_userptr_blits@huge-split.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglb3/igt@gem_userptr_blits@huge-split.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][111] ([i915#454]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - {shard-tglu}:       [DMESG-WARN][113] ([i915#402]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-tglu-8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-tglu-8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][115] ([i915#118]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-glk9/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-glk3/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][117] ([i915#2828] / [i915#300]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [FAIL][119] ([i915#2346]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-skl:          [INCOMPLETE][121] ([i915#4839]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [SKIP][123] ([i915#3701]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][125] ([fdo#108145] / [i915#265]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][127] ([fdo#109441]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_vblank@pipe-a-wait-forked-busy:
>     - shard-snb:          [SKIP][129] ([fdo#109271]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-snb5/igt@kms_vblank@pipe-a-wait-forked-busy.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-snb4/igt@kms_vblank@pipe-a-wait-forked-busy.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][131] ([i915#1542]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-skl9/igt@perf@polling-parameterized.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl1/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-skl:          [WARN][133] ([i915#4055]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-skl10/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl10/igt@sysfs_heartbeat_interval@mixed@bcs0.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vcs0:
>     - shard-skl:          [FAIL][135] ([i915#1731]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][137] ([i915#4525]) -> [FAIL][138] ([i915#4916])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11180/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
>    [138]: https://in
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22160/index.html
