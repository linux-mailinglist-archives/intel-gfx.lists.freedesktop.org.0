Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C665D507DA0
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 02:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F5010E182;
	Wed, 20 Apr 2022 00:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182EC10E182
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 00:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650414569; x=1681950569;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XtgNlqSFtN8j9mWRepfZsACv1g6dmmi/jeAXiJmf82g=;
 b=ZW9FqoXRjKa8tRMFvz2KmAghwI2EngxZ6LGTsIuw0lJ2aaErai9ylGdu
 IhkuRl0D6TwNaw52MgwvelIxOT+Nbntpj6UQhvQlb0+iCVNwejz0PLEO2
 wGCgT7E9fwQuHp7Vu5O9YAU8OLIrgt7//BU5oS8403QVIDuIVhtPVYZWC
 srgrB1wum2R1b8WWizm36Z4k7HErb+Wsbz1dl038hwHDyk6AbRb4D0CGf
 qgdfiWmlymb18wMKaC0P2Ab+kYSKVSogSVlicXhcruzNQZiZBh609Zq11
 dMpK8JRQ5V8PxWbpd1JFVG0G5u791zBrTDseBo4TbS9cP4RpX9zVo+Z32 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="251210763"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="251210763"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 17:29:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="554953022"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 17:29:28 -0700
Date: Tue, 19 Apr 2022 17:29:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yl9T53F6nLQWBxGF@mdroper-desk1.amr.corp.intel.com>
References: <20220418062157.2974665-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <165027296272.11406.1236101211833954801@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165027296272.11406.1236101211833954801@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/rpl-p=3A_Add_PCI_IDs_=28rev2=29?=
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 18, 2022 at 09:09:22AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/rpl-p: Add PCI IDs (rev2)
> URL   : https://patchwork.freedesktop.org/series/102701/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11509_full -> Patchwork_102701v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_102701v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_102701v2_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_102701v2_full:
> 
> ### CI changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * boot:
>     - {shard-dg1}:        NOTRUN -> ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [FAIL][16], [PASS][17])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-19/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-12/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-13/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-13/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-13/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-15/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-16/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-16/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-16/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-17/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-17/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-18/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-18/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-18/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-19/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-19/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-19/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-iclb:         [PASS][18] -> [FAIL][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

Adding RPL-P PCI IDs wouldn't impact this ICL display test.

Applied to drm-intel-next (with a couple minor tweaks to the formatting
of comments to match our coding style).

Thanks for the patch.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@drm_fdinfo@all-busy-check-all:
>     - {shard-dg1}:        NOTRUN -> [SKIP][20]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-dg1-16/igt@drm_fdinfo@all-busy-check-all.html
> 
>   * {igt@i915_query@test-query-geometry-subslices}:
>     - {shard-rkl}:        NOTRUN -> [SKIP][21]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html
>     - shard-iclb:         NOTRUN -> [SKIP][22]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][23]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11509_full and Patchwork_102701v2_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_flip@flip-vs-wf_vblank-interruptible@d-hdmi-a3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.90] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102701v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@chamelium:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#111827])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@feature_discovery@chamelium.html
> 
>   * igt@feature_discovery@display-3x:
>     - shard-glk:          NOTRUN -> [SKIP][25] ([fdo#109271]) +28 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk6/igt@feature_discovery@display-3x.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][26] -> [SKIP][27] ([i915#658])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb2/igt@feature_discovery@psr2.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ccs@block-copy-inplace:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#5327])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@gem_ccs@block-copy-inplace.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][29] ([i915#180]) +3 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][30] -> [FAIL][31] ([i915#2410])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][32] ([i915#2846])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl10/igt@gem_exec_fair@basic-deadline.html
>     - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#2846])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-glk5/igt@gem_exec_fair@basic-deadline.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk6/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#2842])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][37] ([i915#2842])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][38] ([i915#2842])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#2842]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2190])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl4/igt@gem_lmem_swapping@basic.html
>     - shard-glk:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#4613])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk6/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#4613])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl10/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][45] ([i915#2658])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl10/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([i915#4270])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb5/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_render_copy@linear-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([i915#768])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@gem_render_copy@linear-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#3297])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen3_render_mixed_blits:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109289])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb3/igt@gen3_render_mixed_blits.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][50] -> [DMESG-WARN][51] ([i915#5566] / [i915#716])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl9/igt@gen9_exec_parse@allowed-single.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#2527] / [i915#2856])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb8/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#2856])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#4281])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#1937])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-glk:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#1937])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#1902])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-snb:          [PASS][59] -> [SKIP][60] ([fdo#109271]) +3 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-snb4/igt@i915_suspend@forcewake.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-snb5/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#5286]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb3/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#5286]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-glk:          [PASS][63] -> [DMESG-WARN][64] ([i915#118]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk1/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3777])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#3777])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#111615])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#2705])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl10/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#3689] / [i915#3886])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109278] / [i915#3886]) +3 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#3689]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#3742])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_chamelium@hdmi-frame-dump:
>     - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl6/igt@kms_chamelium@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium@hdmi-hpd-after-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_chamelium@hdmi-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl5/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - shard-glk:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk6/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_color@pipe-d-degamma:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109278] / [i915#1149]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_color@pipe-d-degamma.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl7/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          NOTRUN -> [TIMEOUT][87] ([i915#1319])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl2/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
>     - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271]) +38 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#5287])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-4tiled.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109274] / [fdo#111825])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][92] -> [FAIL][93] ([i915#79])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
>     - shard-apl:          [PASS][94] -> [FAIL][95] ([i915#79])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
>     - shard-iclb:         [PASS][96] -> [DMESG-WARN][97] ([i915#2867])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [PASS][98] -> [FAIL][99] ([i915#2122])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][100] -> [SKIP][101] ([i915#3701])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109280]) +5 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109280] / [fdo#111825]) +4 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-iclb:         NOTRUN -> [SKIP][104] ([i915#3555])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][108] ([i915#265])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-y:
>     - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#3536])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_plane_lowres@pipe-b-tiling-y.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#111068] / [i915#658])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>     - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658]) +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-tglb:         NOTRUN -> [FAIL][112] ([i915#132] / [i915#3467])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][113] -> [SKIP][114] ([fdo#109441]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109441])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [PASS][116] -> [DMESG-WARN][117] ([i915#180])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked:
>     - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109278]) +10 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb3/igt@kms_vblank@pipe-d-wait-forked.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-hang:
>     - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271]) +104 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-hang.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2437])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl3/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-c-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][121] ([i915#2530])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@nouveau_crc@pipe-c-source-rg.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][122] ([i915#2530]) +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@nouveau_crc@pipe-d-source-outp-complete.html
> 
>   * igt@perf@gen12-mi-rpc:
>     - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271]) +89 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl5/igt@perf@gen12-mi-rpc.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][124] -> [FAIL][125] ([i915#5639])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl8/igt@perf@polling-parameterized.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl3/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@i915_nv_double_export:
>     - shard-tglb:         NOTRUN -> [SKIP][126] ([fdo#109291])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@prime_nv_api@i915_nv_double_export.html
> 
>   * igt@prime_nv_test@i915_import_cpu_mmap:
>     - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109291]) +1 similar issue
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@prime_nv_test@i915_import_cpu_mmap.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-iclb:         NOTRUN -> [SKIP][128] ([i915#2994])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb6/igt@sysfs_clients@recycle.html
>     - shard-skl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2994])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl10/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2994])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl4/igt@sysfs_clients@split-25.html
>     - shard-glk:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2994])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk6/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][132] ([i915#2842]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][134] ([i915#2842]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-kbl:          [FAIL][136] ([i915#2842]) -> [PASS][137] +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][138] ([i915#2842]) -> [PASS][139] +1 similar issue
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts:
>     - shard-glk:          [DMESG-WARN][140] ([i915#118]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-glk7/igt@gem_exec_whisper@basic-contexts.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk9/igt@gem_exec_whisper@basic-contexts.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [DMESG-WARN][142] ([i915#5566] / [i915#716]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-glk2/igt@gen9_exec_parse@allowed-single.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk6/igt@gen9_exec_parse@allowed-single.html
>     - shard-apl:          [DMESG-WARN][144] ([i915#5566] / [i915#716]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl6/igt@gen9_exec_parse@allowed-single.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          [DMESG-WARN][146] ([i915#1982]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl3/igt@i915_module_load@reload-with-fault-injection.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl4/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          [FAIL][148] ([i915#454]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl5/igt@i915_pm_dc@dc6-psr.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-skl:          [INCOMPLETE][150] ([i915#5420]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl5/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [INCOMPLETE][152] -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][154] ([i915#180]) -> [PASS][155] +1 similar issue
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-iclb:         [FAIL][156] ([i915#2346]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][158] ([i915#2122]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@d-edp1:
>     - shard-tglb:         [DMESG-WARN][160] ([i915#2411] / [i915#2867]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-tglb3/igt@kms_flip@flip-vs-suspend@d-edp1.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb2/igt@kms_flip@flip-vs-suspend@d-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>     - shard-skl:          [FAIL][162] ([i915#2122]) -> [PASS][163] +2 similar issues
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [SKIP][164] ([i915#3701]) -> [PASS][165] +1 similar issue
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-glk:          [FAIL][166] ([i915#4911]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
>     - shard-tglb:         [INCOMPLETE][168] -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
>     - shard-skl:          [FAIL][170] ([i915#1188]) -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl4/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          [DMESG-WARN][172] ([i915#180]) -> [PASS][173] +1 similar issue
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][174] ([fdo#108145] / [i915#265]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
>     - shard-iclb:         [SKIP][176] ([i915#5176]) -> [PASS][177] +4 similar issues
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][178] ([fdo#109441]) -> [PASS][179] +3 similar issues
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [SKIP][180] ([i915#5519]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@perf@non-zero-reason:
>     - shard-iclb:         [FAIL][182] -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb8/igt@perf@non-zero-reason.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb4/igt@perf@non-zero-reason.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [FAIL][184] ([i915#1722]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl1/igt@perf@polling-small-buf.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl8/igt@perf@polling-small-buf.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][186] ([i915#3063] / [i915#3648]) -> [FAIL][187] ([i915#232])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [SKIP][188] ([i915#4525]) -> [DMESG-WARN][189] ([i915#5614]) +1 similar issue
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb6/igt@gem_exec_balancer@parallel.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb4/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [DMESG-WARN][190] ([i915#5614]) -> [SKIP][191] ([i915#4525]) +2 similar issues
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@kms_color@pipe-c-deep-color:
>     - shard-skl:          [SKIP][192] ([fdo#109271]) -> [SKIP][193] ([fdo#109271] / [i915#1888])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-skl6/igt@kms_color@pipe-c-deep-color.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-skl8/igt@kms_color@pipe-c-deep-color.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][194] ([fdo#111068] / [i915#658]) -> [SKIP][195] ([i915#2920])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb3/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][196] ([i915#2920]) -> [SKIP][197] ([i915#658])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][198] ([i915#2920]) -> [SKIP][199] ([fdo#111068] / [i915#658])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][200], [FAIL][201], [FAIL][202], [FAIL][203], [FAIL][204], [FAIL][205], [FAIL][206], [FAIL][207]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][208], [FAIL][209], [FAIL][210], [FAIL][211], [FAIL][212], [FAIL][213]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl6/igt@runner@aborted.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl4/igt@runner@aborted.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl1/igt@runner@aborted.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl8/igt@runner@aborted.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl6/igt@runner@aborted.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl3/igt@runner@aborted.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl6/igt@runner@aborted.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11509/shard-apl6/igt@runner@aborted.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl6/igt@runner@aborted.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl6/igt@runner@aborted.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl1/igt@runner@aborted.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl8/igt@runner@aborted.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl1/igt@runner@aborted.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/shard-apl7/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
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
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
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
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
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
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
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
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4886]: https://gitlab.freedesktop.org/drm/intel/issues/4886
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4904]: https://gitlab.freedesktop.org/drm/intel/issues/4904
>   [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
>   [i915#4929]: https://gitlab.freedesktop.org/drm/intel/issues/4929
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
>   [i915#5420]: https://gitlab.freedesktop.org/drm/intel/issues/5420
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11509 -> Patchwork_102701v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11509: d97978df553d768e457cb68c637b2b0a6188b87c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6438: 205a47d8f70e659df620573ce409d228c5762d11 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_102701v2: d97978df553d768e457cb68c637b2b0a6188b87c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102701v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
