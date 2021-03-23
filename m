Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2414F346DF5
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 00:55:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402086E0BF;
	Tue, 23 Mar 2021 23:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB6D6E0BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 23:55:10 +0000 (UTC)
IronPort-SDR: Y97LxnmUzKqBGBvbiwjyZQNPzngsDGfySx9FiKD2CfJZwzkPCfrBpqvlJ0dJUXlZNa/GrpuP62
 PyRBvtHKCFQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="188272021"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="188272021"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 16:55:09 -0700
IronPort-SDR: hVTsluwPUsNmceYehRm9uQBcDx7S9FOwKtqwHEv4yUN/9uP8bKZPgGVhVbI40mJCaWVCvhi0Vh
 vcwsZX+RjwjA==
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="452351101"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 16:55:07 -0700
Date: Tue, 23 Mar 2021 16:55:06 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210323235506.GZ3422723@mdroper-desk1.amr.corp.intel.com>
References: <20210320044245.3920043-1-matthew.d.roper@intel.com>
 <161654038878.20052.10096799651901646267@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161654038878.20052.10096799651901646267@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRGlz?=
 =?utf-8?q?associate_display_version_from_INTEL=5FGEN=28=29_=28rev5=29?=
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

On Tue, Mar 23, 2021 at 10:59:48PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Disassociate display version from INTEL_GEN() (rev5)
> URL   : https://patchwork.freedesktop.org/series/88198/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9882_full -> Patchwork_19836_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19836_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19836_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19836_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-180:
>     - shard-glk:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk8/igt@kms_big_fb@linear-16bpp-rotate-180.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk4/igt@kms_big_fb@linear-16bpp-rotate-180.html

Since this was a GLK failure it worried me a bit, but CI shows that this
test also failed on builds 9881 and 9882 without my series here, so it
seems to be a pre-existing issue.  There's a TGL CRC mismatch reported
at https://gitlab.freedesktop.org/drm/intel/-/issues/3236 that might be
related?

There aren't any failures resulting from this series, so applied to
di-next.  Thanks Ville and Lucas for the reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19836_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-clear:
>     - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#3160])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk5/igt@gem_create@create-clear.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk6/igt@gem_create@create-clear.html
>     - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#1888] / [i915#3160])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl9/igt@gem_create@create-clear.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl10/igt@gem_create@create-clear.html
> 
>   * igt@gem_ctx_persistence@process:
>     - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +7 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-snb7/igt@gem_ctx_persistence@process.html
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-iclb:         [PASS][8] -> [INCOMPLETE][9] ([i915#1895] / [i915#3031])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb7/igt@gem_exec_balancer@hang.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb4/igt@gem_exec_balancer@hang.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2846])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][12] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#2842]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][19] ([i915#2849])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-parallel:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][20] ([i915#3183])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
>     - shard-apl:          NOTRUN -> [TIMEOUT][21] ([i915#3183])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl1/igt@gem_exec_reloc@basic-parallel.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@rcs0:
>     - shard-snb:          NOTRUN -> [FAIL][22] ([i915#2389]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][23] ([i915#2389])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-iclb:         [PASS][24] -> [DMESG-WARN][25] ([i915#2803])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb5/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb1/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl8/igt@gem_exec_suspend@basic-s3.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl3/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#307])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][30] ([i915#2658])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][31] ([i915#3002])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl2/igt@gem_userptr_blits@input-checking.html
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][32] ([i915#3002])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@gem_userptr_blits@input-checking.html
>     - shard-glk:          NOTRUN -> [DMESG-WARN][33] ([i915#3002])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk5/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][34] ([i915#2502] / [i915#2667])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl7/igt@gem_userptr_blits@vma-merge.html
>     - shard-skl:          NOTRUN -> [INCOMPLETE][35] ([i915#2502] / [i915#2667])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#112306])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][37] -> [INCOMPLETE][38] ([i915#2782])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-snb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#111614])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111615]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2705])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl7/igt@kms_big_joiner@invalid-modeset.html
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2705])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl7/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_chamelium@dp-audio-edid:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl7/igt@kms_chamelium@dp-audio-edid.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-crc-single:
>     - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk5/igt@kms_chamelium@hdmi-crc-single.html
> 
>   * igt@kms_color@pipe-c-legacy-gamma:
>     - shard-kbl:          NOTRUN -> [FAIL][46] ([i915#71])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl6/igt@kms_color@pipe-c-legacy-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +26 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-a-degamma:
>     - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl4/igt@kms_color_chamelium@pipe-a-degamma.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109300] / [fdo#111066])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb8/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][51] ([i915#1319])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl3/igt@kms_content_protection@lic.html
>     - shard-kbl:          NOTRUN -> [TIMEOUT][52] ([i915#1319])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl4/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][53] ([i915#54])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109279])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271]) +372 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-snb7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][56] ([IGT#6])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>     - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#52] / [i915#54]) +11 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#79])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
>     - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#79])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2672])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2642])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +88 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109280]) +4 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#111825]) +8 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271]) +56 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-skl:          NOTRUN -> [FAIL][71] ([i915#49]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +133 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
>     - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271]) +20 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#1188]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-skl:          [PASS][77] -> [INCOMPLETE][78] ([i915#198])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][79] ([fdo#108145] / [i915#265]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][80] -> [FAIL][81] ([fdo#108145] / [i915#265])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][82] ([fdo#108145] / [i915#265])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][83] ([fdo#108145] / [i915#265]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-none:
>     - shard-glk:          [PASS][84] -> [FAIL][85] ([i915#899])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-none.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-none.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2733])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][90] -> [SKIP][91] ([fdo#109441]) +2 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][92] ([i915#31])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-snb7/igt@kms_setmode@basic.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2437])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl1/igt@kms_writeback@writeback-fb-id.html
>     - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2437])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109289])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
>     - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109291])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          [PASS][97] -> [FAIL][98] ([i915#3028])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl1/igt@sysfs_clients@recycle.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl8/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-iclb:         [PASS][99] -> [FAIL][100] ([i915#3028]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb8/igt@sysfs_clients@recycle-many.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb2/igt@sysfs_clients@recycle-many.html
>     - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#3028])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk6/igt@sysfs_clients@recycle-many.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk3/igt@sysfs_clients@recycle-many.html
>     - shard-snb:          NOTRUN -> [FAIL][103] ([i915#3028])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-snb7/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-10@rcs0:
>     - shard-glk:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3026]) +2 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk5/igt@sysfs_clients@sema-10@rcs0.html
> 
>   * igt@sysfs_clients@sema-10@vcs0:
>     - shard-iclb:         [PASS][105] -> [SKIP][106] ([i915#3026])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb1/igt@sysfs_clients@sema-10@vcs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb7/igt@sysfs_clients@sema-10@vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-iclb:         [INCOMPLETE][107] ([i915#3057]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb6/igt@gem_ctx_persistence@many-contexts.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_ctx_persistence@replace@vcs1:
>     - shard-tglb:         [INCOMPLETE][109] -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb6/igt@gem_ctx_persistence@replace@vcs1.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb2/igt@gem_ctx_persistence@replace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][111] ([i915#2846]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][113] ([i915#2842]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-glk:          [FAIL][115] ([i915#2842]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [FAIL][117] ([i915#2842]) -> [PASS][118] +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-tglb:         [FAIL][119] ([i915#2842]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [SKIP][121] ([fdo#109271]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@vcs0:
>     - shard-apl:          [DMESG-WARN][123] ([i915#1610]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl3/igt@gem_exec_schedule@u-fairslice@vcs0.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-apl7/igt@gem_exec_schedule@u-fairslice@vcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][125] ([i915#2190]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@big-copy:
>     - shard-skl:          [FAIL][127] ([i915#307]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl10/igt@gem_mmap_gtt@big-copy.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl7/igt@gem_mmap_gtt@big-copy.html
> 
>   * igt@gem_vm_create@destroy-race:
>     - shard-tglb:         [TIMEOUT][129] ([i915#2795]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb5/igt@gem_vm_create@destroy-race.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-tglb7/igt@gem_vm_create@destroy-race.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][131] ([i915#1436] / [i915#716]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl1/igt@gen9_exec_parse@allowed-single.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][133] ([i915#454]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@client:
>     - shard-glk:          [DMESG-FAIL][135] ([i915#3047]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk9/igt@i915_selftest@live@client.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk7/igt@i915_selftest@live@client.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-180:
>     - shard-glk:          [FAIL][137] -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
>     - shard-skl:          [INCOMPLETE][139] ([fdo#109052]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl3/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl5/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [INCOMPLETE][141] ([i915#198]) -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][143] ([i915#2122]) -> [PASS][144]
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-tglb:         [F
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19836/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
