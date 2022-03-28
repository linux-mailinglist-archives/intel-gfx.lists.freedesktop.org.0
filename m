Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA294E961D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 14:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631DB10E010;
	Mon, 28 Mar 2022 12:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C2810E010
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 12:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648468834; x=1680004834;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=6JPISdjd4NTRZXUB+r5X/bbySA4oHwRlneBe/d9jrPE=;
 b=VZcDsF8XboK+yuo+qrJcKtIpbx2B8hANq15ZrS0R66SQdSZG+1sE4kc2
 +S6KiRRI4uJVCXz3piuoY+8XZoXBtTCHZZDKdOFGzyTj6xDi4J4sGELP1
 CxqtMTpq/Jq1z+rMIZtJX7ov36AqNdJs0D/vMvdQXrP5R8DTp3GSxT586
 hy7LcyLUvAvomPPRp2dQ66u8Q8cKn8YdbsjiYAd/fIQS71O/5izhjw0QQ
 fjVJapfI7O/ycH0L51bnonE2XG7xCGI5+YFblxGvx//gjsBAxJg6Xe/Ld
 JT7/jYtzS4vgTOLXMRq+SjPCvTzecrR32gID2Ln+WP2uMlIVD7ZvM+ScA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="257808619"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="257808619"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 05:00:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="585166244"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 05:00:32 -0700
Date: Mon, 28 Mar 2022 15:00:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <YkGjXCnsJj8HVUPk@ideak-desk.fi.intel.com>
References: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
 <164822448149.24038.7845037031876181270@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164822448149.24038.7845037031876181270@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUmVt?=
 =?utf-8?q?ove_check_for_ComboPHY_I/O_voltage_for_DP_source_rate_=28rev5?=
 =?utf-8?q?=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 25, 2022 at 04:08:01PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Remove check for ComboPHY I/O voltage for DP source rate (rev5)
> URL   : https://patchwork.freedesktop.org/series/96293/
> State : success

Thanks for the patchset, pushed.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11398_full -> Patchwork_22655_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (12 -> 13)
> ------------------------------
> 
>   Additional (1): shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22655_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_schedule@submit-early-slice@vcs1:
>     - {shard-dg1}:        NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-dg1-13/igt@gem_exec_schedule@submit-early-slice@vcs1.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - {shard-rkl}:        [PASS][2] -> [INCOMPLETE][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-1/igt@gem_workarounds@suspend-resume-context.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-5/igt@gem_workarounds@suspend-resume-context.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22655_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#4525])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#4547])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl2/igt@gem_exec_capture@pi@rcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl9/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2846])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271]) +45 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl10/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2849])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][15] ([i915#5436])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl1/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>     - shard-skl:          [PASS][16] -> [INCOMPLETE][17] ([i915#5436])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl1/igt@gem_exec_whisper@basic-fds-priority-all.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl6/igt@gem_exec_whisper@basic-fds-priority-all.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([i915#4613])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-tglb1/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl7/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#4270])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-tglb3/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#4270]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#768])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109290])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb7/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][24] ([i915#2724])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-snb7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#2856]) +2 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@gen9_exec_parse@allowed-single.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][26] ([i915#1436] / [i915#716])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#1937])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109289])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][29] -> [INCOMPLETE][30] ([i915#3921])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-apl4/igt@i915_suspend@sysfs-reader.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl2/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#5286])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-glk:          [PASS][34] -> [DMESG-WARN][35] ([i915#118]) +4 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-glk1/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#110725] / [fdo#111614])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl4/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278]) +6 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl10/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278] / [i915#3886])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#111615] / [i915#3689])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-tglb3/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl10/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-crc-single:
>     - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-snb7/igt@kms_chamelium@hdmi-crc-single.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-tglb3/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_color@pipe-b-deep-color:
>     - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +83 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl3/igt@kms_color@pipe-b-deep-color.html
> 
>   * igt@kms_color@pipe-d-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278] / [i915#1149])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb7/igt@kms_color@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-a-degamma:
>     - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl4/igt@kms_color_chamelium@pipe-a-degamma.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109284] / [fdo#111827]) +6 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb7/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
>     - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][53] ([i915#1319])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109300] / [fdo#111066])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_content_protection@legacy.html
>     - shard-apl:          NOTRUN -> [TIMEOUT][55] ([i915#1319])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl4/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +77 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#109279] / [i915#3359]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109274])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][61] -> [FAIL][62] ([i915#2122]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#79])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180]) +5 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#3701])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109280]) +7 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#109280] / [fdo#111825])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
>     - shard-snb:          NOTRUN -> [SKIP][70] ([fdo#109271]) +14 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#3555]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109441])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
>     - shard-tglb:         NOTRUN -> [FAIL][74] ([i915#132] / [i915#3467])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-tglb3/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109502])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb2/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2437])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@enable-disable:
>     - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#1352])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl2/igt@perf@enable-disable.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl10/igt@perf@enable-disable.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109289])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-tglb3/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl3/igt@sysfs_clients@create.html
>     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl10/igt@sysfs_clients@create.html
>     - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl1/igt@sysfs_clients@create.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-immediate:
>     - shard-tglb:         [TIMEOUT][83] ([i915#3063]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-tglb5/igt@gem_eio@in-flight-immediate.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-tglb1/igt@gem_eio@in-flight-immediate.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-rkl}:        [TIMEOUT][85] ([i915#3063]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-2/igt@gem_eio@unwedge-stress.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_create@madvise@smem:
>     - {shard-rkl}:        [INCOMPLETE][87] ([i915#5385]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@gem_exec_create@madvise@smem.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-1/igt@gem_exec_create@madvise@smem.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][89] ([i915#2842]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [FAIL][91] ([i915#2842]) -> [PASS][92] +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_schedule@submit-golden-slice@vecs0:
>     - shard-skl:          [INCOMPLETE][93] ([i915#3797]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl8/igt@gem_exec_schedule@submit-golden-slice@vecs0.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl8/igt@gem_exec_schedule@submit-golden-slice@vecs0.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +3 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_color@pipe-b-degamma:
>     - {shard-rkl}:        [SKIP][97] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][98] +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_color@pipe-b-degamma.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_color@pipe-b-degamma.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
>     - {shard-rkl}:        [SKIP][99] ([fdo#112022] / [i915#4070]) -> [PASS][100] +2 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][101] ([i915#2346]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-c-torture-bo:
>     - {shard-rkl}:        [SKIP][103] ([i915#4070]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-1/igt@kms_cursor_legacy@pipe-c-torture-bo.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-torture-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
>     - {shard-rkl}:        [SKIP][105] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - {shard-rkl}:        [SKIP][107] ([fdo#110189] / [i915#3955]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][109] ([i915#2122]) -> [PASS][110] +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [FAIL][111] ([i915#79]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible@b-vga1:
>     - shard-snb:          [INCOMPLETE][113] ([i915#5000] / [i915#5204]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-snb4/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-snb7/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116] +8 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>     - shard-skl:          [FAIL][117] ([i915#2122]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
>     - {shard-rkl}:        [INCOMPLETE][119] ([i915#3701]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
>     - {shard-rkl}:        [SKIP][121] ([i915#1849]) -> [PASS][122] +9 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
>     - shard-skl:          [FAIL][123] ([i915#1188]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl6/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl1/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html
> 
>   * igt@kms_invalid_mode@zero-clock:
>     - {shard-rkl}:        [SKIP][125] ([i915#4278]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_invalid_mode@zero-clock.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_invalid_mode@zero-clock.html
> 
>   * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][127] ([i915#1849] / [i915#3558]) -> [PASS][128] +1 similar issue
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - {shard-rkl}:        [SKIP][129] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][130] +2 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][131] ([fdo#108145] / [i915#265]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_vblank@pipe-a-query-idle:
>     - {shard-rkl}:        [SKIP][133] ([i915#1845] / [i915#4098]) -> [PASS][134] +6 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-rkl-5/igt@kms_vblank@pipe-a-query-idle.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-rkl-6/igt@kms_vblank@pipe-a-query-idle.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][135] ([i915#2828]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][137] ([i915#2684]) -> [WARN][138] ([i915#1804] / [i915#2684]) +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-kbl:          [INCOMPLETE][139] ([i915#3614]) -> [DMESG-WARN][140] ([i915#180])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/shard-kbl4/igt@i915_suspend@sysfs-reader.html
>    [140]: htt
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22655/index.html
