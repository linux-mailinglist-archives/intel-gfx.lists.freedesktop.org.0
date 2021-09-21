Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54493413D4E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 00:06:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D280F6E8A8;
	Tue, 21 Sep 2021 22:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E6C96E8A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 22:05:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223517206"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="223517206"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 15:05:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="533473793"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 15:05:55 -0700
Date: Tue, 21 Sep 2021 15:05:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Message-ID: <20210921220554.GK3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210910201030.3436066-1-matthew.d.roper@intel.com>
 <163225993828.15890.10067815591691296878@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163225993828.15890.10067815591691296878@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Simplify_mmio_handling_=26_add_new_DG2_shadow_table_=28rev?=
 =?utf-8?q?3=29?=
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

On Tue, Sep 21, 2021 at 09:32:18PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Simplify mmio handling & add new DG2 shadow table (rev3)
> URL   : https://patchwork.freedesktop.org/series/94534/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10619_full -> Patchwork_21114_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21114_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21114_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21114_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl7/igt@gem_softpin@noreloc-s3.html

Looks like the system just never came back from S3.  Do we need an APL
equivalent of fdo#2199?

> 
>   * igt@i915_suspend@forcewake:
>     - shard-skl:          [PASS][2] -> [DMESG-WARN][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl5/igt@i915_suspend@forcewake.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl6/igt@i915_suspend@forcewake.html

  <4> [550.501456] Delta way too big! 18446743503667205104 ts=18446744053597184727 before=549929979623 after=549929979623 write stamp=18446744053597184727
  If you just came from a suspend/resume,
  please switch to the trace global clock:
    echo global > /sys/kernel/debug/tracing/trace_clock
  or add trace_clock=global to the kernel command line

We've seen this before on other systems and I believe we made the kernel
command line change in CI as recommended by the warning message.  Looks
like we also have https://gitlab.freedesktop.org/drm/intel/-/issues/3848
for this warning on other tests.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21114_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#4130] / [i915#4136])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@device_reset@unbind-reset-rebind.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl6/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][6] -> [SKIP][7] ([i915#658])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb2/igt@feature_discovery@psr2.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb7/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_persistence@process:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +4 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-snb2/igt@gem_ctx_persistence@process.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          NOTRUN -> [FAIL][9] ([i915#2846])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][15] ([i915#2658])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-snb2/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][16] ([i915#3002]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl6/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][17] ([i915#2724])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-snb2/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271]) +265 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl6/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#2856]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb5/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_module_load@reload:
>     - shard-snb:          [PASS][20] -> [INCOMPLETE][21] ([i915#4179])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-snb5/igt@i915_module_load@reload.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-snb7/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#454])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#1937])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#2411] / [i915#456]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-tglb2/igt@i915_suspend@forcewake.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb7/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111614])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-0:
>     - shard-glk:          [PASS][28] -> [DMESG-WARN][29] ([i915#118] / [i915#95])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-glk9/igt@kms_big_fb@linear-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][30] ([i915#4136])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl3/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +120 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111615])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#2705])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb1/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +17 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl9/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3689] / [i915#3886])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +10 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb5/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
>     - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271]) +380 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-snb6/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb5/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +21 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl7/igt@kms_chamelium@vga-hpd-without-ddc.html
>     - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-snb2/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-c-gamma:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl3/igt@kms_color_chamelium@pipe-c-gamma.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][47] ([i915#1319])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl2/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][48] ([i915#1319])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl2/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-apl:          NOTRUN -> [FAIL][49] ([i915#2105])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl3/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3319])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-size-change:
>     - shard-snb:          NOTRUN -> [FAIL][51] ([i915#4024])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          [PASS][52] -> [INCOMPLETE][53] ([i915#155])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][54] ([i915#180])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109279] / [i915#3359])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3528])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#165] / [i915#180])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +7 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#2122])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#2587])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#111825]) +3 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][65] ([i915#265])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265]) +3 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2733])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_prime@basic-crc@first-to-second:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#1836])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb5/igt@kms_prime@basic-crc@first-to-second.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#658]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658]) +6 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-tglb:         NOTRUN -> [FAIL][72] ([i915#132] / [i915#3467])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb1/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109441]) +2 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-kbl:          NOTRUN -> [FAIL][75] ([IGT#2])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl1/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>     - shard-tglb:         [PASS][76] -> [INCOMPLETE][77] ([i915#456])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@pipe-b-query-busy-hang:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3149])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl7/igt@kms_vblank@pipe-b-query-busy-hang.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#533]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2437])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl2/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl3/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [PASS][82] -> [FAIL][83] ([i915#51])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl5/igt@perf@short-reads.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl6/igt@perf@short-reads.html
> 
>   * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
>     - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#109291]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb5/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html
> 
>   * igt@sysfs_clients@create:
>     - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2994])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl2/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl6/igt@sysfs_clients@fair-7.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +3 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-kbl:          [FAIL][89] ([i915#2842]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][91] ([i915#2842]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          [FAIL][93] ([i915#2842]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-glk9/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglb:         [WARN][97] ([i915#2681]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-tglb1/igt@i915_pm_rc6_residency@rc6-fence.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb7/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
>     - shard-kbl:          [INCOMPLETE][99] ([i915#4136]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl3/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl2/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][101] ([i915#2346] / [i915#533]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglb:         [INCOMPLETE][103] ([i915#2411] / [i915#4173] / [i915#456]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-tglb5/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [FAIL][105] ([i915#79]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [FAIL][107] ([i915#1188]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-skl:          [INCOMPLETE][109] ([i915#198]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][111] ([fdo#108145] / [i915#265]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][113] ([fdo#109441]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][115] ([i915#180] / [i915#295]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][117] ([i915#1542]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl7/igt@perf@polling-parameterized.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl5/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-iclb:         [INCOMPLETE][119] ([i915#4130]) -> [INCOMPLETE][120] ([i915#4130] / [i915#4136])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb5/igt@core_hotunplug@unbind-rebind.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb4/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-glk:          [INCOMPLETE][121] -> [INCOMPLETE][122] ([i915#4130] / [i915#4136])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-glk1/igt@device_reset@unbind-reset-rebind.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-glk7/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][123] ([i915#2852]) -> [FAIL][124] ([i915#2842])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-iclb:         [FAIL][125] ([i915#2842]) -> [FAIL][126] ([i915#2849]) +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb5/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@i915_module_load@reload:
>     - shard-skl:          [INCOMPLETE][127] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][128] ([i915#4136])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl6/igt@i915_module_load@reload.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl3/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][129] ([i915#1804] / [i915#2684]) -> [WARN][130] ([i915#2684])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          [FAIL][131] ([i915#3722]) -> [FAIL][132] ([i915#3743])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][133] ([i915#2920]) -> [SKIP][134] ([i915#658]) +2 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [SKIP][135] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][136] ([i915#4148])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb1/igt@kms_psr2_su@page_flip.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/shard-iclb2/igt@kms_psr2_su@page_flip.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl1/igt@runner@aborted.html
>    [138]:
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21114/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
