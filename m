Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF9153341B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 01:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5778610E29E;
	Tue, 24 May 2022 23:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F99910E29E
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 23:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653436551; x=1684972551;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jEwXKwh8fU1EdOECDvbeeJJKv4JJ2p53fKa10lE7xVw=;
 b=EmIDzZHAmTknPI0WYhDO+6fU3asj7IPqpiJJGkOfjnnPXUniS8BEq+XM
 j/6DjpbhR5WB2pjZ6n26o+BT8/wr8GQwdJTIWBlven6tiQOffFwdulLs3
 0cuButKchAX5/CYIiP6BY8ko1d4tj6F8JTA+XpAbXJ9Lj3zlNu3qhZ992
 Pc98gUdAC9momxH6lDvQE5lpd84lhxE/q3vZLbowk0BRoxFUdjJnstCbb
 8GhalLxOh7tmEyC+Mk8bdyhNbx0snyKlfL0xGT5DSUvHwb2MANq09l09T
 2it68Azd63cMP2Qvo0DuwNPCWvTYyu9Y2YVJNdQovGgsZtZGOKqanCIC9 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="360068197"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="360068197"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 16:55:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="548742062"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 16:55:50 -0700
Date: Tue, 24 May 2022 16:55:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yo1whR1KeJqTZDg1@mdroper-desk1.amr.corp.intel.com>
References: <20220523075116.207677-1-balasubramani.vivekanandan@intel.com>
 <165333699601.9281.10851240306083329087@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165333699601.9281.10851240306083329087@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hwconfig=3A_Report_no_hwconfig_support_on_ADL-N?=
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

On Mon, May 23, 2022 at 08:16:36PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/hwconfig: Report no hwconfig support on ADL-N
> URL   : https://patchwork.freedesktop.org/series/104270/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11690_full -> Patchwork_104270v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_104270v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104270v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 12)
> ------------------------------
> 
>   Missing    (1): shard-rkl 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104270v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

Seems like the machine or network died; the logs just cut off with no
indication of a problem before that point.  And ADL-N hwconfig change
wouldn't impact the behavior of a TGL display test, so not related to
Bala's patch here.

Patch applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1}:
>     - {shard-dg1}:        NOTRUN -> [SKIP][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-dg1-16/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11690_full and Patchwork_104270v1_full:
> 
> ### New IGT tests (7) ###
> 
>   * igt@gem_busy@parallel:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@modeset-vs-vblank-race@a-dp1:
>     - Statuses : 2 pass(s)
>     - Exec time: [4.03, 4.20] s
> 
>   * igt@kms_flip@modeset-vs-vblank-race@b-dp1:
>     - Statuses : 2 pass(s)
>     - Exec time: [3.92, 4.06] s
> 
>   * igt@kms_flip@modeset-vs-vblank-race@c-dp1:
>     - Statuses : 2 pass(s)
>     - Exec time: [3.99, 4.11] s
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - Statuses : 1 pass(s)
>     - Exec time: [11.53] s
> 
>   * igt@perf_pmu@busy-accuracy-2:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@perf_pmu@most-busy-idle-check-all:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104270v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-2x:
>     - shard-iclb:         NOTRUN -> [SKIP][4] ([i915#1839])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@feature_discovery@display-2x.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          NOTRUN -> [FAIL][5] ([i915#2846])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
>     - shard-apl:          NOTRUN -> [FAIL][6] ([i915#2846])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-iclb:         NOTRUN -> [SKIP][12] ([i915#4613])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +6 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl10/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][15] ([i915#2658])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl10/igt@gem_pwrite@basic-exhaustion.html
>     - shard-iclb:         NOTRUN -> [WARN][16] ([i915#2658])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#4270]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#768]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#4171])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-tglb5/igt@gem_softpin@evict-single-offset.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-tglb1/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gen7_exec_parse@cmd-crossing-page:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109289]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@gen7_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#2856])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#658])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#5903])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb7/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#1769])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#5286]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#110725] / [fdo#111614]) +2 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][28] ([i915#3743])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][29] ([i915#3763])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110723]) +2 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109278] / [i915#3886]) +5 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +10 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl2/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278]) +21 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl2/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl9/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_color@pipe-c-deep-color:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [i915#3555])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_color@pipe-c-deep-color.html
> 
>   * igt@kms_color_chamelium@pipe-c-gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_color_chamelium@pipe-c-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109300] / [fdo#111066]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][43] ([i915#1319])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109278] / [fdo#109279])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x32-offscreen:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +20 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-32x32-offscreen.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          NOTRUN -> [FAIL][47] ([i915#2346])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#5287]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          NOTRUN -> [FAIL][49] ([i915#4767])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109274]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
>     - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#79])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-kbl:          [PASS][55] -> [INCOMPLETE][56] ([i915#3614])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl6/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl3/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#2122])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#3701])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +314 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl10/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#5438])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280]) +14 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#3555])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +66 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
>     - shard-kbl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][68] -> [FAIL][69] ([fdo#108145] / [i915#265])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +3 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-none:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#3536]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_plane_lowres@pipe-a-tiling-none.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-4:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#5288])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [PASS][73] -> [SKIP][74] ([i915#5235]) +2 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@kms_psr2_su@page_flip-xrgb8888.html
>     - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109441]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [PASS][82] -> [SKIP][83] ([i915#5519]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-kbl:          NOTRUN -> [FAIL][84] ([IGT#2])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2437])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#2530]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@nouveau_crc@pipe-c-ctx-flip-detection.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#112283])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-kbl:          [PASS][88] -> [DMESG-WARN][89] ([i915#180])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl1/igt@perf_pmu@rc6-suspend.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl7/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_nv_test@nv_i915_sharing:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109291]) +2 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@prime_nv_test@nv_i915_sharing.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109295])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb5/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl2/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@sysfs_clients@fair-3.html
>     - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl2/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#2994])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@sysfs_clients@pidname.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@hostile:
>     - {shard-dg1}:        [FAIL][96] ([i915#4883]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-dg1-13/igt@gem_ctx_persistence@hostile.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-dg1-18/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_eio@kms:
>     - {shard-dg1}:        [FAIL][98] ([i915#5784]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-dg1-13/igt@gem_eio@kms.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-dg1-18/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][100] ([i915#3070]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb1/igt@gem_eio@unwedge-stress.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb7/igt@gem_eio@unwedge-stress.html
>     - {shard-tglu}:       [TIMEOUT][102] ([i915#3063]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-tglu-3/igt@gem_eio@unwedge-stress.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-tglu-4/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][104] ([i915#2842]) -> [PASS][105] +3 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
>     - shard-apl:          [FAIL][106] ([i915#2842]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][108] ([i915#2842]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-default:
>     - shard-snb:          [SKIP][110] ([fdo#109271]) -> [PASS][111] +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-snb7/igt@gem_exec_flush@basic-wb-rw-default.html
> 
>   * igt@gem_exec_params@invalid-bsd1-flag-on-render:
>     - {shard-dg1}:        [SKIP][112] ([i915#2575]) -> [PASS][113] +9 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-dg1-13/igt@gem_exec_params@invalid-bsd1-flag-on-render.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-dg1-18/igt@gem_exec_params@invalid-bsd1-flag-on-render.html
> 
>   * igt@gem_exec_whisper@basic-contexts-all:
>     - shard-glk:          [DMESG-WARN][114] ([i915#118]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>     - shard-kbl:          [INCOMPLETE][116] ([i915#5843]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl7/igt@gem_exec_whisper@basic-fds-priority-all.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@gem_exec_whisper@basic-fds-priority-all.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][118] ([i915#454]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - {shard-dg1}:        [SKIP][120] ([i915#1397]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-dg1-13/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-dg1-18/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@fences:
>     - shard-iclb:         [INCOMPLETE][122] ([i915#5096]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb4/igt@i915_pm_rpm@fences.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb6/igt@i915_pm_rpm@fences.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl7/igt@i915_suspend@debugfs-reader.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][126] ([i915#2122]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][128] ([i915#3701]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][130] ([fdo#108145] / [i915#265]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][132] ([fdo#109441]) -> [PASS][133] +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@perf@gen12-mi-rpc:
>     - {shard-dg1}:        [SKIP][134] ([i915#5608]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-dg1-13/igt@perf@gen12-mi-rpc.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-dg1-18/igt@perf@gen12-mi-rpc.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [FAIL][136] ([i915#1722]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-skl6/igt@perf@polling-small-buf.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl6/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - {shard-dg1}:        [FAIL][138] ([i915#4349]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-dg1-19/igt@perf_pmu@busy-double-start@rcs0.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-dg1-19/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [DMESG-WARN][140] ([i915#5614]) -> [SKIP][141] ([i915#4525]) +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb1/igt@gem_exec_balancer@parallel.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb7/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][142] ([i915#4525]) -> [DMESG-WARN][143] ([i915#5614])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          [FAIL][144] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][145] ([i915#1319])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-apl8/igt@kms_content_protection@legacy.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][146] ([i915#2920]) -> [SKIP][147] ([fdo#111068] / [i915#658])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][148] ([i915#658]) -> [SKIP][149] ([i915#2920]) +1 similar issue
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl7/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl4/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl4/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl7/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl7/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl7/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl3/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl1/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl4/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-kbl1/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl4/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl7/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl4/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl1/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl6/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl7/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl7/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-kbl3/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-apl3/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-apl4/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-apl3/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-apl3/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl1/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl8/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl1/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl4/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-apl4/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][181], [FAIL][182], [FAIL][183]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-skl4/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-skl6/igt@runner@aborted.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-skl5/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11690/shard-skl3/igt@runner@aborted.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl6/igt@runner@aborted.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl8/igt@runner@aborted.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/shard-skl3/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
>   [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3963]: https://gitlab.freedesktop.org/drm/intel/issues/3963
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#5096]: https://gitlab.freedesktop.org/drm/intel/issues/5096
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5438]: https://gitlab.freedesktop.org/drm/intel/issues/5438
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * CI: None -> CI-20190529
>   * Linux: CI_DRM_11690 -> Patchwork_104270v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11690: 7420808c59c9be6a025f811ada6e6c860f6562b6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6485: 51663917b40d36086cc1c555ce4f67b22937694d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104270v1: 7420808c59c9be6a025f811ada6e6c860f6562b6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104270v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
