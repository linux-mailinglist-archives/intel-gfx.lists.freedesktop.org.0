Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A31B94F3B83
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 17:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1734110E031;
	Tue,  5 Apr 2022 15:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E3B910E031
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 15:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649171994; x=1680707994;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KtLdaQHEyBlS+wQtoIJArxUXT+P70SGyrV93+RStbrE=;
 b=RIr9T+Vha5WcTr61dDzzVbFuA7yXcR7JTQ04oKWeHrhCCmcP4JW2+Ysr
 YctuK6grFpM4Y+wCdGMgkntPYOsKPP0lai7NehWkdGQ6/U6Jp1zjwNrRu
 Q7uXjBIWUA1GKvEg4U98D60OYeiHvdoZlBkWfI2zBtKq+cwMGvo/dcfxq
 K57oUevrdLd0OAIw34Z+5qhS49cPu8Du2Y4LqQrXz5jvaByuVWlutBTz7
 YHg2VYir0R2EWahSBpOTx4Uduk3CIx7goYvRzz9DkuFZgyKyrtgfrpIkH
 g3vr0uvitcjl3KnatJXbf0izrLe/aE/UrHE5Zvi9JAR333ETSoXq0WzVu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="260952926"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="260952926"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 08:19:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="641650499"
Received: from wendu-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.136.77])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 08:19:53 -0700
Date: Tue, 5 Apr 2022 08:19:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220405151953.s5dm66dc53n3yswd@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220405001149.2675226-1-lucas.demarchi@intel.com>
 <164915183814.24157.4220957111093431150@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <164915183814.24157.4220957111093431150@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/uncore=3A_Warn_on_previous_unclaimed_accesses?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 05, 2022 at 09:43:58AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915/uncore: Warn on previous unclaimed accesses
>URL   : https://patchwork.freedesktop.org/series/102167/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_11452_full -> Patchwork_22778_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_22778_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_22778_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (12 -> 13)
>------------------------------
>
>  Additional (1): shard-dg1
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_22778_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gen9_exec_parse@allowed-all:
>    - shard-skl:          [PASS][1] -> [DMESG-WARN][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl1/igt@gen9_exec_parse@allowed-all.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl4/igt@gen9_exec_parse@allowed-all.html
>    - shard-apl:          [PASS][3] -> [DMESG-WARN][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-apl4/igt@gen9_exec_parse@allowed-all.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl7/igt@gen9_exec_parse@allowed-all.html
>    - shard-glk:          [PASS][5] -> [DMESG-WARN][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-glk1/igt@gen9_exec_parse@allowed-all.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-glk8/igt@gen9_exec_parse@allowed-all.html
>    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8]
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl7/igt@gen9_exec_parse@allowed-all.html

don't shoot the messenger :)

Lakshmi, these need to be mapped to previous failures. Here we are just
changing the message logged to make clear they aren't caused by the
register we are currently reading/writting, but it's rather cause by a
previous read/write.

All of these should have a previous issue already with the different
message, not being caused by this patch.

Lucas De Marchi

>
>
>#### Suppressed ####
>
>  The following results come from untrusted machines, tests, or statuses.
>  They do not affect the overall result.
>
>  * igt@i915_pm_rpm@system-suspend-devices:
>    - {shard-rkl}:        [PASS][9] -> [FAIL][10]
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-5/igt@i915_pm_rpm@system-suspend-devices.html
>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_22778_full that come from known issues:
>
>### CI changes ###
>
>#### Issues hit ####
>
>  * boot:
>    - shard-skl:          ([PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35]) -> ([PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [FAIL][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57]) ([i915#5032])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl9/boot.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl9/boot.html
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl9/boot.html
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl8/boot.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl8/boot.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl8/boot.html
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl7/boot.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl7/boot.html
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl7/boot.html
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl7/boot.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl6/boot.html
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl6/boot.html
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl6/boot.html
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl6/boot.html
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl4/boot.html
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl4/boot.html
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl4/boot.html
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl4/boot.html
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl1/boot.html
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl1/boot.html
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl1/boot.html
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl1/boot.html
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl10/boot.html
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl10/boot.html
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl10/boot.html
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl9/boot.html
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl9/boot.html
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl8/boot.html
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl8/boot.html
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl8/boot.html
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl7/boot.html
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl7/boot.html
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl7/boot.html
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl6/boot.html
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl6/boot.html
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl5/boot.html
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl5/boot.html
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl4/boot.html
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl4/boot.html
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl4/boot.html
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl2/boot.html
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl1/boot.html
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl1/boot.html
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl1/boot.html
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl10/boot.html
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl10/boot.html
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl10/boot.html
>
>
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@gem_exec_balancer@parallel:
>    - shard-kbl:          NOTRUN -> [DMESG-WARN][58] ([i915#5076])
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl6/igt@gem_exec_balancer@parallel.html
>
>  * igt@gem_exec_fair@basic-deadline:
>    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2846])
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-glk8/igt@gem_exec_fair@basic-deadline.html
>
>  * igt@gem_exec_fair@basic-none-share@rcs0:
>    - shard-kbl:          [PASS][61] -> [FAIL][62] ([i915#2842]) +2 similar issues
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-kbl3/igt@gem_exec_fair@basic-none-share@rcs0.html
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    - shard-iclb:         [PASS][63] -> [FAIL][64] ([i915#2842])
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-none-solo@rcs0:
>    - shard-apl:          [PASS][65] -> [FAIL][66] ([i915#2842]) +1 similar issue
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace@bcs0:
>    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +47 similar issues
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl7/igt@gem_exec_fair@basic-pace@bcs0.html
>
>  * igt@gem_exec_fair@basic-pace@rcs0:
>    - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#2842])
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html
>
>  * igt@gem_lmem_swapping@heavy-random:
>    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#4613])
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@gem_lmem_swapping@heavy-random.html
>
>  * igt@gem_ppgtt@flink-and-close-vma-leak:
>    - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#644])
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
>
>  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#4270])
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
>
>  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
>    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +9 similar issues
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl6/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
>
>  * igt@gem_userptr_blits@access-control:
>    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3297]) +1 similar issue
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@gem_userptr_blits@access-control.html
>
>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#5286]) +1 similar issue
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
>
>  * igt@kms_big_fb@linear-8bpp-rotate-90:
>    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#110725] / [fdo#111614])
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-90.html
>
>  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3777]) +1 similar issue
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3777])
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#110723])
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>
>  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3886]) +4 similar issues
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
>
>  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886])
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl8/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
>
>  * igt@kms_chamelium@dp-hpd-storm:
>    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +5 similar issues
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl1/igt@kms_chamelium@dp-hpd-storm.html
>
>  * igt@kms_chamelium@hdmi-audio:
>    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109284] / [fdo#111827]) +2 similar issues
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_chamelium@hdmi-audio.html
>
>  * igt@kms_chamelium@hdmi-hpd-storm-disable:
>    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +1 similar issue
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm-disable.html
>
>  * igt@kms_color@pipe-c-ctm-max:
>    - shard-kbl:          [PASS][86] -> [DMESG-WARN][87] ([i915#62] / [i915#92]) +19 similar issues
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-kbl6/igt@kms_color@pipe-c-ctm-max.html
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl6/igt@kms_color@pipe-c-ctm-max.html
>
>  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109274] / [fdo#109278])
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>    - shard-iclb:         [PASS][89] -> [FAIL][90] ([i915#2346])
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>
>  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
>    - shard-glk:          [PASS][91] -> [FAIL][92] ([i915#5160])
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
>
>  * igt@kms_flip@2x-blocking-wf_vblank:
>    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109274]) +1 similar issue
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_flip@2x-blocking-wf_vblank.html
>
>  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>    - shard-glk:          [PASS][94] -> [FAIL][95] ([i915#79]) +1 similar issue
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>
>  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>    - shard-apl:          [PASS][96] -> [DMESG-WARN][97] ([i915#180]) +2 similar issues
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>
>  * igt@kms_flip@flip-vs-suspend@a-dp1:
>    - shard-kbl:          [PASS][98] -> [DMESG-WARN][99] ([i915#180]) +2 similar issues
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-kbl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
>
>  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:
>    - shard-kbl:          [PASS][100] -> [FAIL][101] ([i915#2122])
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>    - shard-glk:          [PASS][102] -> [FAIL][103] ([i915#4911])
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>    - shard-iclb:         [PASS][104] -> [SKIP][105] ([i915#3701])
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
>    - shard-kbl:          [PASS][106] -> [DMESG-WARN][107] ([i915#1982] / [i915#62] / [i915#92])
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
>    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109280]) +8 similar issues
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271]) +8 similar issues
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
>
>  * igt@kms_hdr@static-toggle-dpms:
>    - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#3555])
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_hdr@static-toggle-dpms.html
>
>  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>    - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109289])
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
>
>  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>    - shard-apl:          NOTRUN -> [DMESG-WARN][112] ([i915#180])
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>
>  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>    - shard-skl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265])
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>
>  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>    - shard-apl:          NOTRUN -> [FAIL][114] ([fdo#108145] / [i915#265])
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
>
>  * igt@kms_plane_cursor@pipe-d-primary-size-128:
>    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109278]) +6 similar issues
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_plane_cursor@pipe-d-primary-size-128.html
>
>  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>    - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#111068] / [i915#658])
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>
>  * igt@kms_psr2_su@frontbuffer-xrgb8888:
>    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#658])
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>
>  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
>    - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#5030]) +2 similar issues
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html
>
>  * igt@kms_writeback@writeback-invalid-parameters:
>    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#2437])
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl2/igt@kms_writeback@writeback-invalid-parameters.html
>
>  * igt@nouveau_crc@pipe-a-ctx-flip-detection:
>    - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#2530])
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@nouveau_crc@pipe-a-ctx-flip-detection.html
>
>  * igt@perf@polling-parameterized:
>    - shard-tglb:         [PASS][121] -> [FAIL][122] ([i915#1542])
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-tglb7/igt@perf@polling-parameterized.html
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-tglb7/igt@perf@polling-parameterized.html
>
>  * igt@prime_udl:
>    - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109291])
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb5/igt@prime_udl.html
>
>  * igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
>    - shard-skl:          [PASS][124] -> [DMESG-WARN][125] ([i915#1982])
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl8/igt@syncobj_timeline@invalid-single-wait-available-unsubmitted.html
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl6/igt@syncobj_timeline@invalid-single-wait-available-unsubmitted.html
>
>
>#### Possible fixes ####
>
>  * igt@fbdev@nullptr:
>    - {shard-rkl}:        [SKIP][126] ([i915#2582]) -> [PASS][127]
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-2/igt@fbdev@nullptr.html
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-6/igt@fbdev@nullptr.html
>
>  * igt@gem_exec_fair@basic-none-share@rcs0:
>    - shard-tglb:         [FAIL][128] ([i915#2842]) -> [PASS][129]
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:
>    - shard-glk:          [FAIL][130] ([i915#2842]) -> [PASS][131]
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>
>  * igt@gem_exec_fair@basic-throttle@rcs0:
>    - shard-iclb:         [FAIL][132] ([i915#2842]) -> [PASS][133]
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>
>  * igt@gem_exec_schedule@smoketest@rcs0:
>    - shard-glk:          [DMESG-WARN][134] ([i915#118]) -> [PASS][135]
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-glk6/igt@gem_exec_schedule@smoketest@rcs0.html
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-glk7/igt@gem_exec_schedule@smoketest@rcs0.html
>
>  * igt@gem_mmap_offset@clear:
>    - {shard-rkl}:        [INCOMPLETE][136] ([i915#1373]) -> [PASS][137]
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-5/igt@gem_mmap_offset@clear.html
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-1/igt@gem_mmap_offset@clear.html
>
>  * igt@i915_pm_dc@dc6-psr:
>    - shard-iclb:         [FAIL][138] ([i915#454]) -> [PASS][139]
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>
>  * igt@kms_color@pipe-b-ctm-red-to-blue:
>    - {shard-rkl}:        [SKIP][140] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][141]
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-2/igt@kms_color@pipe-b-ctm-red-to-blue.html
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-6/igt@kms_color@pipe-b-ctm-red-to-blue.html
>
>  * igt@kms_cursor_crc@pipe-a-cursor-64x21-rapid-movement:
>    - {shard-rkl}:        ([SKIP][142], [SKIP][143]) ([fdo#112022] / [i915#4070]) -> [PASS][144] +1 similar issue
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-64x21-rapid-movement.html
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x21-rapid-movement.html
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-rapid-movement.html
>
>  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
>    - {shard-rkl}:        [SKIP][145] ([fdo#112022] / [i915#4070]) -> [PASS][146] +2 similar issues
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>    - shard-kbl:          [INCOMPLETE][147] ([i915#3614]) -> [PASS][148]
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>
>  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
>    - {shard-rkl}:        [SKIP][149] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][150] +1 similar issue
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
>   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
>
>  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:
>    - {shard-rkl}:        [SKIP][151] ([fdo#111825] / [i915#4070]) -> [PASS][152] +2 similar issues
>   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html
>   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>    - shard-iclb:         [FAIL][153] ([i915#2346]) -> [PASS][154]
>   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>
>  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
>    - {shard-rkl}:        [SKIP][155] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][156] +1 similar issue
>   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
>   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
>
>  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled:
>    - {shard-rkl}:        [SKIP][157] ([i915#4098] / [i915#4369]) -> [PASS][158]
>   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html
>   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-ytiled.html
>
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>    - shard-skl:          [FAIL][159] ([i915#79]) -> [PASS][160]
>   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>
>  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>    - shard-apl:          [DMESG-WARN][161] ([i915#180]) -> [PASS][162] +8 similar issues
>   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>
>  * igt@kms_flip@flip-vs-suspend@c-edp1:
>    - shard-tglb:         [DMESG-WARN][163] ([i915#2411] / [i915#2867]) -> [PASS][164]
>   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/shard-tglb5/igt@kms_flip@flip-vs-suspend@c-edp1.html
>   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/shard-tglb6/igt@kms_flip@flip-vs-suspend@c-edp1.html
>
>  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1:
>    - shard-glk:          [FAIL][165] ([i915#2122]) -> [PASS][166]
>   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11452/sh
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22778/index.html
