Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2174DDFBB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 18:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C756810E09F;
	Fri, 18 Mar 2022 17:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797CA10E09B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 17:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647624035; x=1679160035;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IlQke7/AMEqai7p1QU+6GjhLwldeBIwUi6RNRTRniw0=;
 b=jvXOqoEByYQV34urce0AbcPpowAggVQzVF0qZUCRq3MktmRI9OlYlRoa
 JKuvOZ21odXA8RXO6L9k6/P5tAM9MY1WvR8Vggtfh5l+3YuJ/gTLvvn1n
 gBQUEFBskd2whTNLNjHUX5pdQntIatXW3ap+cXfoY3BCwrk9Gf04j3brF
 F+E9gPv+YKGXLUS/MGlsr35DgXO2+wzoeNGCtpJyOG8OKX7piRnKBa1l1
 qw5pab9XEIWgjWg5eGwGv+4JK9tM1qIzjBW1hn21Hrm38NYT9p85T3Jmw
 Rcwykxcwk5FjFaVtJWpecTyEpg0Dk6SL5YMoo+A8o/9Q4VtKaGaT1wlsn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="343617261"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="343617261"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 10:20:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="499327273"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 10:20:34 -0700
Date: Fri, 18 Mar 2022 10:20:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YjS/YVxLZgh32pPD@mdroper-desk1.amr.corp.intel.com>
References: <20220318021051.2073847-1-matthew.d.roper@intel.com>
 <164757907467.31589.6657558217338980802@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164757907467.31589.6657558217338980802@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_preemption_changes_for_Wa=5F14015141709_=28rev?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 18, 2022 at 04:51:14AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Add preemption changes for Wa_14015141709 (rev2)
> URL   : https://patchwork.freedesktop.org/series/101023/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11379_full -> Patchwork_22602_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22602_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22602_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22602_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_parallel@engines@contexts:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-iclb7/igt@gem_exec_parallel@engines@contexts.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb4/igt@gem_exec_parallel@engines@contexts.html
> 

Unexpected incomplete with no apparent warnings/errors.  Looks like we
previously had https://gitlab.freedesktop.org/drm/intel/-/issues/3812
open for this but it wasn't seen for a while and got closed.

This patch doesn't change the behavior of ICL, so it shouldn't be the
cause.

Patch applied to drm-intel-gt-next.  Thanks Anusha for the review.


Matt

>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_parallel@fds@vecs0:
>     - {shard-rkl}:        ([PASS][3], [PASS][4]) -> [INCOMPLETE][5]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-4/igt@gem_exec_parallel@fds@vecs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-5/igt@gem_exec_parallel@fds@vecs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-5/igt@gem_exec_parallel@fds@vecs0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22602_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][6] ([i915#4991])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl8/igt@gem_create@create-massive.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#232])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-tglb6/igt@gem_eio@kms.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-tglb1/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][9] ([i915#4547])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl6/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][10] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#4613])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl6/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][18] ([i915#2658])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][19] ([i915#4991])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl4/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#109289])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-tglb3/igt@gen3_render_linear_blits.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#2856])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@gen9_exec_parse@allowed-all.html
>     - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#1436] / [i915#716])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-glk8/igt@gen9_exec_parse@allowed-all.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-glk5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#454])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#1937])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#4817])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl6/igt@i915_suspend@fence-restore-untiled.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl10/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#2521])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110725] / [fdo#111614])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][33] ([i915#3743])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110723])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +87 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl8/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl6/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl6/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
>     - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl6/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][45] ([i915#1319])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][46] ([i915#2105])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl6/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278]) +7 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [fdo#109279])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#72])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          NOTRUN -> [FAIL][51] ([i915#2346])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2346])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109274])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#79])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109280]) +6 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +54 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl4/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +4 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_cursor@pipe-b-overlay-size-128:
>     - shard-iclb:         NOTRUN -> [FAIL][64] ([i915#1888])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +97 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [PASS][66] -> [SKIP][67] ([i915#5235]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl8/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109441]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2437])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#2437])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-d-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109278] / [i915#2530])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@nouveau_crc@pipe-d-ctx-flip-detection.html
> 
>   * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109291]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb3/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][75] ([i915#5098])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl9/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2994])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl1/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-skl:          [PASS][77] -> [WARN][78] ([i915#4055])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl6/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#1731]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl2/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [TIMEOUT][81] ([i915#3063]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-tglb5/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-rkl}:        [TIMEOUT][83] ([i915#3063]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@gem_eio@unwedge-stress.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][85] ([i915#4525]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][87] ([i915#2842]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][89] ([i915#2842]) -> [PASS][90] +2 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][91] ([i915#2190]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-tglb1/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - {shard-rkl}:        ([SKIP][93], [SKIP][94]) ([i915#1850]) -> [PASS][95]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - {shard-rkl}:        [SKIP][96] ([i915#3012]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@i915_pm_backlight@basic-brightness.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - {shard-rkl}:        [SKIP][98] ([i915#658]) -> [PASS][99] +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@i915_pm_dc@dc6-psr.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-skl:          [INCOMPLETE][100] ([i915#151]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_atomic@plane-primary-legacy:
>     - {shard-rkl}:        [SKIP][102] ([i915#1845] / [i915#4098]) -> [PASS][103] +18 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@kms_atomic@plane-primary-legacy.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@kms_atomic@plane-primary-legacy.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][104] ([i915#118]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-glk1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_color@pipe-a-ctm-0-25:
>     - {shard-rkl}:        ([PASS][106], [SKIP][107]) ([i915#1149] / [i915#4070] / [i915#4098]) -> [PASS][108]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-4/igt@kms_color@pipe-a-ctm-0-25.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement:
>     - {shard-rkl}:        [SKIP][109] ([fdo#112022] / [i915#4070]) -> [PASS][110] +6 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement.html
> 
>   * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
>     - {shard-rkl}:        [SKIP][111] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][112] +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
> 
>   * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
>     - {shard-rkl}:        [SKIP][113] ([fdo#111825] / [i915#4070]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled:
>     - shard-skl:          [DMESG-WARN][115] ([i915#1982]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
>     - {shard-rkl}:        [SKIP][117] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][118] +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [DMESG-WARN][119] ([i915#180]) -> [PASS][120] +3 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [FAIL][121] ([i915#2122]) -> [PASS][122] +3 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-glk:          [FAIL][123] ([i915#4911]) -> [PASS][124] +2 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][125] ([i915#3701]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][127] ([i915#180]) -> [PASS][128] +2 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>     - {shard-rkl}:        [SKIP][129] ([i915#1849]) -> [PASS][130] +17 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
>     - shard-skl:          [FAIL][131] ([i915#1188]) -> [PASS][132] +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:
>     - {shard-rkl}:        [SKIP][133] ([i915#1849] / [i915#4098]) -> [PASS][134] +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-rkl-6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][135] ([fdo#108145] / [i915#265]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
>     - {shard-rkl}:        [SKIP][137] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11379/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tilin
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22602/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
