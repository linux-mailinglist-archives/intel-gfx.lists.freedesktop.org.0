Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C4833EDE0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 11:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60DFD6E51C;
	Wed, 17 Mar 2021 10:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C5D6E51C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 10:02:06 +0000 (UTC)
IronPort-SDR: LGMklN7ns2vkXUmQzKOvHIwscG0PA8MfOMhTzguPG/VayJYyslF0tXM8Hn68jbD/CAVQGNFfLh
 ufDkn2X2RsHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="169349004"
X-IronPort-AV: E=Sophos;i="5.81,255,1610438400"; d="scan'208";a="169349004"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 03:02:06 -0700
IronPort-SDR: SiETAQF2NH1kI/HhNTng0Xqj2vHVxG3xjroVmb+XZPgTKifs5wmYHoDuBkXA4ZKRCLuVS4Si1q
 4Ct1shsoUXZA==
X-IronPort-AV: E=Sophos;i="5.81,255,1610438400"; d="scan'208";a="412585918"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 03:02:04 -0700
Date: Wed, 17 Mar 2021 12:02:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210317100200.GD3820994@ideak-desk.fi.intel.com>
References: <20210316165426.3388513-1-imre.deak@intel.com>
 <161592275925.23909.6653956741000200087@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161592275925.23909.6653956741000200087@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ilk-glk=3A_Fix_link_training_on_links_with_LTTPRs?=
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
Reply-To: imre.deak@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lakshmi,

On Tue, Mar 16, 2021 at 07:25:59PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/ilk-glk: Fix link training on links with LTTPRs
> URL   : https://patchwork.freedesktop.org/series/88015/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9862_full -> Patchwork_19796_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19796_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19796_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19796_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_eio@in-flight-1us:
>     - shard-skl:          [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl2/igt@gem_eio@in-flight-1us.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl4/igt@gem_eio@in-flight-1us.html

The above machine has only an eDP output, so not related to this change.
I found the following tickets looking similar, but not sure if any of
them is related:

https://gitlab.freedesktop.org/drm/intel/-/issues/2452
https://gitlab.freedesktop.org/drm/intel/-/issues/2771
https://gitlab.freedesktop.org/drm/intel/-/issues/3063
https://gitlab.freedesktop.org/drm/intel/-/issues/3098

>   * igt@gem_spin_batch@user-each:
>     - shard-iclb:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb8/igt@gem_spin_batch@user-each.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb2/igt@gem_spin_batch@user-each.html

This has also only an eDP, so not related. The similarly looking tickets
I found, not sure again if any them is for this failure:

https://gitlab.freedesktop.org/drm/intel/-/issues/2898
https://gitlab.freedesktop.org/drm/intel/-/issues/2963
https://gitlab.freedesktop.org/drm/intel/-/issues/3187

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19796_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#2771])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl8/igt@gem_eio@reset-stress.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl3/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#2369] / [i915#3063])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-tglb1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-iclb:         [PASS][10] -> [INCOMPLETE][11] ([i915#1895] / [i915#3031])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb5/igt@gem_exec_balancer@hang.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb2/igt@gem_exec_balancer@hang.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +3 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#2842]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#2849])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-parallel:
>     - shard-skl:          NOTRUN -> [TIMEOUT][21] ([i915#3183])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl7/igt@gem_exec_reloc@basic-parallel.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@rcs0:
>     - shard-snb:          NOTRUN -> [FAIL][22] ([i915#2389]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@bcs0:
>     - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#2803])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb6/igt@gem_exec_schedule@u-fairslice@bcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-tglb2/igt@gem_exec_schedule@u-fairslice@bcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][25] ([i915#1610])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
>     - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1610] / [i915#2803])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl1/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@vcs0:
>     - shard-iclb:         [PASS][28] -> [DMESG-WARN][29] ([i915#2803])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb6/igt@gem_exec_schedule@u-fairslice@vcs0.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb1/igt@gem_exec_schedule@u-fairslice@vcs0.html
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - shard-skl:          NOTRUN -> [FAIL][30] ([i915#307])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl9/igt@gem_mmap_gtt@big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>     - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#307]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
> 
>   * igt@gem_mmap_offset@clear:
>     - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#3160])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl10/igt@gem_mmap_offset@clear.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl1/igt@gem_mmap_offset@clear.html
>     - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#1888] / [i915#3160])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk1/igt@gem_mmap_offset@clear.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk8/igt@gem_mmap_offset@clear.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][37] ([i915#2658])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-snb5/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][38] ([i915#2502] / [i915#2667])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_vm_create@destroy-race:
>     - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#2822])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb7/igt@gem_vm_create@destroy-race.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-tglb7/igt@gem_vm_create@destroy-race.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#1436] / [i915#716])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_selftest@live@client:
>     - shard-glk:          [PASS][43] -> [DMESG-FAIL][44] ([i915#3047])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk3/igt@i915_selftest@live@client.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk6/igt@i915_selftest@live@client.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][45] ([i915#2782])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-snb7/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_chamelium@hdmi-crc-multiple:
>     - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-snb5/igt@kms_chamelium@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl7/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
>     - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#54])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][51] ([i915#54])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl6/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
>     - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#52] / [i915#54])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-apl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-apl8/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +4 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2672])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-apl:          NOTRUN -> [FAIL][62] ([i915#2641])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2672])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
>     - shard-snb:          NOTRUN -> [SKIP][64] ([fdo#109271]) +147 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-snb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          NOTRUN -> [FAIL][65] ([i915#1188]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:
>     - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#2472])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl5/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl9/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][68] ([i915#265])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-d-coverage-7efc:
>     - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +4 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl7/igt@kms_plane_alpha_blend@pipe-d-coverage-7efc.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +3 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb2/igt@kms_psr2_su@page_flip.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb6/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@basic:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +157 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl1/igt@kms_psr@basic.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][79] ([IGT#2])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl1/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-query-forked-busy:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +125 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl7/igt@kms_vblank@pipe-d-query-forked-busy.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl3/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          [PASS][82] -> [FAIL][83] ([i915#3028])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-apl1/igt@sysfs_clients@recycle.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl6/igt@sysfs_clients@recycle.html
>     - shard-glk:          [PASS][84] -> [FAIL][85] ([i915#3028])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk1/igt@sysfs_clients@recycle.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk9/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-snb:          NOTRUN -> [FAIL][86] ([i915#3028])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-snb5/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-10@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3026]) +2 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl1/igt@sysfs_clients@sema-10@rcs0.html
> 
>   * igt@sysfs_clients@sema-10@vecs0:
>     - shard-glk:          [PASS][88] -> [SKIP][89] ([fdo#109271] / [i915#3026])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk7/igt@sysfs_clients@sema-10@vecs0.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk8/igt@sysfs_clients@sema-10@vecs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_create@create-clear:
>     - shard-glk:          [FAIL][90] ([i915#3160]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk8/igt@gem_create@create-clear.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk2/igt@gem_create@create-clear.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][92] ([i915#2846]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][94] ([i915#2842]) -> [PASS][95] +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [SKIP][96] ([fdo#109271]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@vecs0:
>     - shard-skl:          [DMESG-WARN][98] ([i915#1610] / [i915#2803]) -> [PASS][99] +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl8/igt@gem_exec_schedule@u-fairslice@vecs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl1/igt@gem_exec_schedule@u-fairslice@vecs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority-all:
>     - shard-glk:          [DMESG-WARN][100] ([i915#118] / [i915#95]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-glk9/igt@gem_exec_whisper@basic-queues-priority-all.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [FAIL][102] ([i915#2428]) -> [PASS][103] +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][104] ([i915#454]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][106] ([i915#180]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
>     - shard-skl:          [FAIL][108] ([i915#54]) -> [PASS][109] +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][110] ([i915#1188]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][112] ([fdo#108145] / [i915#265]) -> [PASS][113] +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][114] ([fdo#109441]) -> [PASS][115] +3 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-tglb:         [FAIL][116] ([i915#3028]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb6/igt@sysfs_clients@recycle-many.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-tglb2/igt@sysfs_clients@recycle-many.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][118] ([i915#2684]) -> [WARN][119] ([i915#1804] / [i915#2684])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-iclb:         [FAIL][120] ([i915#3137]) -> [SKIP][121] ([fdo#109300] / [fdo#111066]) +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb1/igt@kms_content_protection@atomic.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb3/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][122] ([i915#2920]) -> [SKIP][123] ([i915#658]) +3 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb6/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][124] ([i915#658]) -> [SKIP][125] ([i915#2920]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#1814] / [i915#2724] / [i915#3002]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#3002] / [i915#716])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl1/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl2/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl7/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl4/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl2/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl1/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl1/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl4/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl3/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-kbl3/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][136], [FAIL][137], [FAIL][138]) ([i915#2724] / [i915#3002]) -> ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([i915#2426] / [i915#2724] / [i915#3002])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb7/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb1/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb8/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb4/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb7/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb1/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-iclb4/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][143], [FAIL][144]) ([i915#180] / [i915#3002]) -> ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1610] / [i915#180] / [i915#2426] / [i915#2724] / [i915#3002])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-apl1/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-apl7/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl8/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl7/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl7/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-apl3/igt@runner@aborted.html
>     - shard-tglb:         ([FAIL][149], [FAIL][150], [FAIL][151]) ([i915#2667] / [i915#3002]) -> ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#2426] / [i915#2667] / [i915#2803] / [i915#3002])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb6/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb8/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb1/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-tglb1/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-tglb5/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-tglb2/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/shard-tglb6/igt@runner@aborted.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1888]: https:
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19796/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
