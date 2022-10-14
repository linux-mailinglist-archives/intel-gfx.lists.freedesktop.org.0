Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FD25FECAA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 12:41:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B6E10E72C;
	Fri, 14 Oct 2022 10:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0C510EA2C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 10:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665744096; x=1697280096;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=N+yLEeKXZWE2nIy8CQ9WXdavo+gLnQ6i8TbtdLYhwPQ=;
 b=SczjZUQypKEGlV6Vwl1qGf7oRTpTI7rTbDalRFB98zwifaqYGqcVQ+CY
 1pfezYCQur5wWUjmiseqpKygcHusOcQgx+61X0scO8Pc4/qpPH5rFQuKn
 +Jk5CaM/+f+RXHpxeczsdGc+hp0EiO/1WxgbbN6s8k/wiDo/F0kZRYR65
 HEXXe+LQXyk3AZJAKe8lxq3L+hxQXqu0RudaPT6F8wuMzEsXCEuLXxCmJ
 Zy/SJtmTWNKt8WYfrUmsZvYJDrWL6SzngHe3kqHmIF+yfiwOlFSPerKBo
 1zHlnz5MqQLW/sNr2MaGd2vk/mS6yoiukNNpKikAyrb2Yq2Vj+oNJYPnh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="306995084"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="306995084"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:41:35 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="622499633"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="622499633"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:41:34 -0700
Date: Fri, 14 Oct 2022 13:41:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <Y0k82oskbVS6nFv1@ideak-desk.fi.intel.com>
References: <20221007133307.3805735-1-imre.deak@intel.com>
 <166538894564.29670.576979550284560316@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <166538894564.29670.576979550284560316@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_simulated_GPU_reset_wrt=2E_encoder_HW_readout?=
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

On Mon, Oct 10, 2022 at 08:02:25AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix simulated GPU reset wrt. encoder HW readout
> URL   : https://patchwork.freedesktop.org/series/109480/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12225_full -> Patchwork_109480v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_109480v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_109480v1_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_109480v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-suspend@c-edp1:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-tglb7/igt@kms_flip@flip-vs-suspend@c-edp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-tglb8/igt@kms_flip@flip-vs-suspend@c-edp1.html

The above is unrelated, since
kms_busy@extended-modeset-hang-(new|old)fb-with-reset were not run.

The above kms_busy tests where the change makes a difference were
passing on all machines. The same kernel change with a better IGT
coverage shows the same:
https://patchwork.freedesktop.org/series/109625/

Patch is merged thanks for the review.

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_12225_full and Patchwork_109480v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_color@gamma@pipe-b-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.42] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_109480v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4392]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk9/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk8/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk8/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk8/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk7/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk7/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk6/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk3/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk3/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk2/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk2/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk2/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk2/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk3/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk3/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk6/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk7/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk7/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk7/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk8/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk8/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk8/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk9/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk9/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk9/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@close-race:
>     - shard-skl:          [PASS][53] -> [TIMEOUT][54] ([i915#6016])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl1/igt@gem_busy@close-race.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl7/igt@gem_busy@close-race.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [PASS][55] -> [SKIP][56] ([i915#4525])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][57] ([i915#2842])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-apl7/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl9/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-glk:          NOTRUN -> [SKIP][60] ([fdo#109271]) +38 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk2/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#3323])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-apl3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +32 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl9/igt@gen3_render_linear_blits.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglb:         [PASS][63] -> [DMESG-WARN][64] ([i915#2867])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-tglb8/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-skl:          [PASS][65] -> [DMESG-WARN][66] ([i915#1982])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][67] -> [FAIL][68] ([i915#3989] / [i915#454])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>     - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#2521])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +80 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-apl1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-apl1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl9/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - shard-glk:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk2/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@hdmi-crc-multiple:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl9/igt@kms_chamelium@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-apl3/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>     - shard-apl:          [PASS][78] -> [DMESG-WARN][79] ([i915#180]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2672]) +2 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#2587] / [i915#2672])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-iclb:         [PASS][82] -> [SKIP][83] ([i915#3555])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#2672] / [i915#3555])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][86] -> [SKIP][87] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2437])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk2/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][89] -> [FAIL][90] ([i915#5639])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl10/igt@perf@polling-parameterized.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl10/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-apl1/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl1/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-skl:          [INCOMPLETE][93] ([i915#4793]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - {shard-rkl}:        [FAIL][95] ([i915#2846]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][97] ([i915#2842]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - {shard-rkl}:        [FAIL][99] ([i915#2842]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][101] ([i915#2842]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_fence@basic-busy@bcs0:
>     - {shard-rkl}:        [SKIP][103] ([i915#6251]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-3/igt@gem_exec_fence@basic-busy@bcs0.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - {shard-rkl}:        [SKIP][105] ([i915#3281]) -> [PASS][106] +5 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-3/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - {shard-rkl}:        [SKIP][107] ([fdo#110254]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - {shard-rkl}:        [SKIP][109] ([i915#3282]) -> [PASS][110] +7 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - {shard-rkl}:        [SKIP][111] ([i915#2527]) -> [PASS][112] +2 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-2/igt@gen9_exec_parse@bb-chained.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - {shard-rkl}:        [SKIP][113] ([i915#3361]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - {shard-rkl}:        [SKIP][115] ([i915#658]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-4/igt@i915_pm_dc@dc6-psr.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - {shard-tglu}:       [SKIP][117] ([i915#4281]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-tglu-5/igt@i915_pm_dc@dc9-dpms.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-tglu-4/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][119] ([i915#6537]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-apl8/igt@i915_pm_rps@engine-order.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-apl6/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [FAIL][121] ([i915#6991]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl1/igt@i915_pm_sseu@full-enable.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_addfb_basic@legacy-format:
>     - shard-tglb:         [INCOMPLETE][123] ([i915#6987]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-tglb8/igt@kms_addfb_basic@legacy-format.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-tglb3/igt@kms_addfb_basic@legacy-format.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - {shard-rkl}:        [SKIP][125] ([i915#1845] / [i915#4098]) -> [PASS][126] +22 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [FAIL][127] ([i915#4767]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][129] ([i915#2122]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>     - shard-skl:          [FAIL][131] ([i915#79]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [DMESG-WARN][133] ([i915#180]) -> [PASS][134] +2 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [FAIL][135] ([i915#2122]) -> [PASS][136] +5 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - {shard-rkl}:        [SKIP][137] ([i915#1849] / [i915#4098]) -> [PASS][138] +14 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - {shard-rkl}:        [SKIP][139] ([i915#3558]) -> [PASS][140] +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][141] ([fdo#109441]) -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_psr@sprite_plane_move:
>     - {shard-rkl}:        [SKIP][143] ([i915#1072]) -> [PASS][144] +2 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-4/igt@kms_psr@sprite_plane_move.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-6/igt@kms_psr@sprite_plane_move.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [FAIL][145] ([i915#1542]) -> [PASS][146]
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl6/igt@perf@blocking.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl7/igt@perf@blocking.html
> 
>   * igt@perf@gen12-oa-tlb-invalidate:
>     - {shard-rkl}:        [SKIP][147] ([fdo#109289]) -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-rkl-1/igt@perf@gen12-oa-tlb-invalidate.html
> 
>   * igt@syncobj_wait@wait-all-for-submit-snapshot:
>     - shard-skl:          [FAIL][149] -> [PASS][150]
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl4/igt@syncobj_wait@wait-all-for-submit-snapshot.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl1/igt@syncobj_wait@wait-all-for-submit-snapshot.html
> 
>   
> #### Warnings ####
> 
>   * igt@dmabuf@all@dma_fence_chain:
>     - shard-skl:          [INCOMPLETE][151] ([i915#6949]) -> [INCOMPLETE][152] ([i915#6949] / [i915#7065])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl7/igt@dmabuf@all@dma_fence_chain.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl10/igt@dmabuf@all@dma_fence_chain.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][153] ([i915#6117]) -> [SKIP][154] ([i915#4525])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_tiled_wb:
>     - shard-skl:          [TIMEOUT][155] ([i915#6990]) -> [TIMEOUT][156] ([i915#6990] / [i915#7065])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl1/igt@gem_tiled_wb.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl6/igt@gem_tiled_wb.html
> 
>   * igt@i915_selftest@mock@vma:
>     - shard-skl:          [INCOMPLETE][157] ([i915#6950]) -> [INCOMPLETE][158] ([i915#6950] / [i915#7065])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl4/igt@i915_selftest@mock@vma.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl6/igt@i915_selftest@mock@vma.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-skl:          [SKIP][159] ([fdo#109271]) -> [SKIP][160] ([fdo#109271] / [i915#1888])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][161] ([fdo#111068] / [i915#658]) -> [SKIP][162] ([i915#2920])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@perf@non-zero-reason:
>     - shard-skl:          [TIMEOUT][163] ([i915#6943]) -> [TIMEOUT][164] ([i915#6943] / [i915#7065])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12225/shard-skl7/igt@perf@non-zero-reason.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/shard-skl10/igt@perf@non-zero-reason.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#6016]: https://gitlab.freedesktop.org/drm/intel/issues/6016
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6943]: https://gitlab.freedesktop.org/drm/intel/issues/6943
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
>   [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
>   [i915#6987]: https://gitlab.freedesktop.org/drm/intel/issues/6987
>   [i915#6990]: https://gitlab.freedesktop.org/drm/intel/issues/6990
>   [i915#6991]: https://gitlab.freedesktop.org/drm/intel/issues/6991
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12225 -> Patchwork_109480v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12225: 31426dd8e9677d64141dcf5546927c6c23e994bd @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7003: 1ea9ec5e7295fbc1cb784be4692971fd342bea53 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_109480v1: 31426dd8e9677d64141dcf5546927c6c23e994bd @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109480v1/index.html
