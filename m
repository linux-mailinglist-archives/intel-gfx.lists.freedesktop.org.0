Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A5337C76A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 18:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5AA66EC5A;
	Wed, 12 May 2021 16:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C6A6EC53
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 16:18:26 +0000 (UTC)
IronPort-SDR: lvNwGrlJt+YQwkjlOaNugJA+V6kLYJN5GgEgPSsWoAjKiw/Q16xNDdOGxBLLHlwa9P2ItAN7ZT
 G4yi1AoI+pbQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="285248868"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="285248868"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 09:18:24 -0700
IronPort-SDR: lY4jR85VmCdH/EVNvzSMVUjLmiw/K88U9RiRqsuUYFC/WSRbRk1rv4yG9sbTx0ZPFVy0c+aG4q
 Fcf6541EZocw==
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="609997063"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 09:18:24 -0700
Date: Wed, 12 May 2021 09:18:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210512161823.GV3653682@mdroper-desk1.amr.corp.intel.com>
References: <20210512042144.2089071-1-matthew.d.roper@intel.com>
 <162079999003.28506.1266554457138200277@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162079999003.28506.1266554457138200277@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ0kg?=
 =?utf-8?q?pass_for_reviewed_XeLPD_/_ADL-P_patches_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 12, 2021 at 06:13:10AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: CI pass for reviewed XeLPD / ADL-P patches (rev2)
> URL   : https://patchwork.freedesktop.org/series/90048/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10071 -> Patchwork_20107
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20107 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20107, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20107:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
>     - fi-elk-e7500:       [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-a:
>     - fi-bwr-2160:        [PASS][3] -> [FAIL][4] +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bwr-2160/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-bwr-2160/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

These two reports for old (gen4) platforms aren't related to this
series.  According to
https://intel-gfx-ci.01.org/tree/drm-tip/index.html?testfilter=pipe_crc_basic
there has been relatively frequent failures for kms_pipe_crc_basic
subtests since CI_DRM_10065.

@Lakshmi, do we already have a bug report these should be associated
with?


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_selftest@live@execlists:
>     - {fi-rkl-11500t}:    NOTRUN -> [DMESG-FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20107 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fence@basic-await@vecs0:
>     - fi-glk-dsi:         [PASS][6] -> [FAIL][7] ([i915#3457])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html
> 
>   * igt@gem_exec_fence@nb-await@vcs0:
>     - fi-bsw-kefka:       [PASS][8] -> [FAIL][9] ([i915#3457]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html
> 
>   * igt@gem_exec_fence@nb-await@vecs0:
>     - fi-bsw-n3050:       [PASS][10] -> [FAIL][11] ([i915#3457]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html
> 
>   * igt@gem_wait@wait@all:
>     - fi-bwr-2160:        [PASS][12] -> [FAIL][13] ([i915#3457])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bwr-2160/igt@gem_wait@wait@all.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-bwr-2160/igt@gem_wait@wait@all.html
>     - fi-bsw-nick:        [PASS][14] -> [FAIL][15] ([i915#3457]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_wait@wait@all.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-bsw-nick/igt@gem_wait@wait@all.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - fi-kbl-7500u:       [PASS][16] -> [FAIL][17] ([i915#1372])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fence@nb-await@rcs0:
>     - fi-glk-dsi:         [FAIL][18] ([i915#3457]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html
>     - fi-bsw-nick:        [FAIL][20] ([i915#3457]) -> [PASS][21] +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html
>     - fi-elk-e7500:       [FAIL][22] ([i915#3457]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html
> 
>   * igt@gem_wait@busy@all:
>     - fi-bsw-nick:        [FAIL][24] ([i915#3177] / [i915#3457]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_wait@busy@all.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-bsw-nick/igt@gem_wait@busy@all.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
>     - fi-elk-e7500:       [FAIL][26] -> [PASS][27] +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
>     - fi-bsw-kefka:       [FAIL][28] -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload:
>     - fi-elk-e7500:       [DMESG-FAIL][30] ([i915#3457]) -> [DMESG-WARN][31] ([i915#3457])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@i915_module_load@reload.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-elk-e7500/igt@i915_module_load@reload.html
>     - fi-bsw-kefka:       [DMESG-WARN][32] ([i915#1982] / [i915#3457]) -> [DMESG-FAIL][33] ([i915#1982] / [i915#3457])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@i915_module_load@reload.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-bsw-kefka/igt@i915_module_load@reload.html
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-cfl-8109u:       [DMESG-FAIL][34] ([i915#3462]) -> [INCOMPLETE][35] ([i915#3462])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
>     - fi-icl-u2:          [INCOMPLETE][36] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][37] ([i915#3462])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-icl-u2/igt@i915_selftest@live@execlists.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-icl-u2/igt@i915_selftest@live@execlists.html
> 
>   * igt@runner@aborted:
>     - fi-cfl-8109u:       [FAIL][38] ([i915#2426] / [i915#3363]) -> [FAIL][39] ([i915#3363])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@runner@aborted.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-cfl-8109u/igt@runner@aborted.html
>     - fi-icl-u2:          [FAIL][40] ([i915#2782] / [i915#3363]) -> [FAIL][41] ([i915#2426] / [i915#2782] / [i915#3363])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-icl-u2/igt@runner@aborted.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-icl-u2/igt@runner@aborted.html
>     - fi-glk-dsi:         [FAIL][42] ([i915#3363] / [k.org#202321]) -> [FAIL][43] ([i915#2426] / [i915#3363] / [k.org#202321])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@runner@aborted.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/fi-glk-dsi/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
>   [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
>   [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
>   [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
>   [i915#3468]: https://gitlab.freedesktop.org/drm/intel/issues/3468
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
> 
> 
> Participating hosts (46 -> 41)
> ------------------------------
> 
>   Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-tgl-u2 fi-bsw-cyan fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_10071 -> Patchwork_20107
> 
>   CI-20190529: 20190529
>   CI_DRM_10071: 77fc6f68ed347b0a4c6969f6adac70026d5b1449 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6082: 355269577baef0c5d8114e8851acaeac657e4fe6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_20107: 4e9c7c2efc382ddb8c00e1290054a0062d63ef47 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 4e9c7c2efc38 drm/i915/perf: Enable OA formats for ADL_P
> 3cea6db8dde9 drm/i915/adl_p: Add PCH support
> 72127435fa9a drm/i915/xelpd: Add Wa_14011503030
> 91090e6604a7 drm/i915/xelpd: Required bandwidth increases when VT-d is active
> 7f1ed82a74fd drm/i915/xelpd: Add XE_LPD power wells
> b11497438f3a drm/i915/xelpd: Define plane capabilities
> bfe05d548e26 drm/i915/xelpd: Handle proper AUX interrupt bits
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/index.html

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
