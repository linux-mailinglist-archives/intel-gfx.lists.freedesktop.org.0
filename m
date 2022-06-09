Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CCA544FCA
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jun 2022 16:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E2511A804;
	Thu,  9 Jun 2022 14:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FAEC11A804
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654786113; x=1686322113;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=HdNBUkP9JqNlHviS1cnGTqL5lrTts/yL4Zvk0XmNlFM=;
 b=TETR2KjWK6l1wwbziybiSEwJMNAazsa5eB8aRiKbntL2H6NL/r+NR5WG
 c0N3508C8Ue5c1dBguTQcg4B3c5xPr9QvhCtIvLHhIr7J5iBtJqzd41zH
 Cjx8ahcgmz0e4jWV2UAX+cRjSlFVTk7QMVff7F3B6PQYF7xbSHsbF+Hg7
 5Vyww2ayMcoTPctWu2vjL8KN3qoINPTGSer7f+s5qWQvYTThYD6HOjyMP
 YGU008AavkJF8cMWjwT2PiPAaa2GPbSU8Boahcmh7osCZZz1z2NCnV9A8
 h8cj0FA8Qe6LOl1riauioNhWCwT+AuKE6cGE+yhlOwsOW4NMzX3Cwq7Y/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="257735251"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="257735251"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 07:48:32 -0700
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="683999670"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 07:48:32 -0700
Date: Thu, 9 Jun 2022 07:48:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YqIIP2LI60oRnW1O@mdroper-desk1.amr.corp.intel.com>
References: <20220608170700.4026648-1-matthew.d.roper@intel.com>
 <165478427417.17375.15647515133033028240@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165478427417.17375.15647515133033028240@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pvc=3A_Add_register_steering_=28rev2=29?=
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

On Thu, Jun 09, 2022 at 02:17:54PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/pvc: Add register steering (rev2)
> URL   : https://patchwork.freedesktop.org/series/104691/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11740_full -> Patchwork_104691v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_104691v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104691v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104691v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_capture@pi@vecs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl4/igt@gem_exec_capture@pi@vecs0.html

Unexpected incomplete.  Not related to this patch.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104691v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [FAIL][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#4392]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk9/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk8/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk8/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk8/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk6/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk5/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk5/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk2/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk1/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk9/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk9/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk3/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk9/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk8/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk7/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk6/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk1/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk1/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk1/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk3/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk3/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [PASS][52] -> [SKIP][53] ([i915#4525]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][54] -> [FAIL][55] ([i915#2842])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-apl:          [PASS][56] -> [FAIL][57] ([i915#2842])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl10/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#4613])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl1/igt@gem_lmem_swapping@verify-random.html
>     - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl1/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#4270])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][63] ([i915#4991])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl7/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#3297])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][67] -> [FAIL][68] ([i915#454])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglb:         NOTRUN -> [WARN][69] ([i915#2681])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [PASS][70] -> [DMESG-WARN][71] ([i915#5591])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-tglb5/igt@i915_selftest@live@hangcheck.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb1/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#5286])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111615])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
>     - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271]) +53 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#3689] / [i915#3886])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#3689])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-single:
>     - shard-glk:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/igt@kms_chamelium@dp-crc-single.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl1/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl1/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
>     - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +135 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x10-random:
>     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#1888])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl9/igt@kms_cursor_crc@pipe-d-cursor-32x10-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-max-size-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#3359])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-max-size-sliding.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-iclb:         [PASS][90] -> [FAIL][91] ([i915#5072])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#109274] / [fdo#111825]) +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-skl:          [PASS][93] -> [FAIL][94] ([i915#2346])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#5287])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][96] -> [FAIL][97] ([i915#2122])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-glk:          [PASS][98] -> [FAIL][99] ([i915#4911])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][100] -> [SKIP][101] ([i915#3701])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271]) +74 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109280] / [fdo#111825]) +3 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271]) +45 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          [PASS][105] -> [FAIL][106] ([i915#1188])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-kbl3/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#533])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#533])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
>     - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#533])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][110] ([i915#265])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][111] ([fdo#108145] / [i915#265])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][112] -> [SKIP][113] ([i915#5235]) +2 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#658]) +3 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-glk:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#658])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#2920])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-tglb:         NOTRUN -> [FAIL][117] ([i915#132] / [i915#3467])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@kms_psr@psr2_cursor_plane_onoff.html
>     - shard-iclb:         [PASS][118] -> [SKIP][119] ([fdo#109441]) +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#533])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#2437])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl1/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          NOTRUN -> [FAIL][122] ([i915#5639])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl4/igt@perf@polling-parameterized.html
>     - shard-glk:          [PASS][123] -> [FAIL][124] ([i915#5639])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk5/igt@perf@polling-parameterized.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk1/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl9/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#2994])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2994])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_import_export@flink:
>     - shard-tglb:         [INCOMPLETE][128] -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-tglb6/igt@drm_import_export@flink.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb7/igt@drm_import_export@flink.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-apl:          [DMESG-WARN][130] ([i915#180]) -> [PASS][131] +2 similar issues
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [DMESG-WARN][132] ([i915#180]) -> [PASS][133] +2 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-skl:          [TIMEOUT][134] ([i915#3063]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-skl9/igt@gem_eio@unwedge-stress.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][136] ([i915#4525]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][138] ([i915#2842]) -> [PASS][139] +1 similar issue
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
>     - shard-kbl:          [FAIL][140] ([i915#2842]) -> [PASS][141] +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][142] ([i915#2842]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - {shard-rkl}:        [FAIL][144] ([i915#2842]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - {shard-tglu}:       [INCOMPLETE][146] ([i915#5843] / [i915#5966]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-tglu-6/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglu-2/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][148] ([i915#2190]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglb2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][150] ([i915#5566] / [i915#716]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-skl7/igt@gen9_exec_parse@allowed-single.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          [DMESG-WARN][152] ([i915#1982]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - {shard-rkl}:        [SKIP][154] ([i915#658]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-1/igt@i915_pm_dc@dc6-psr.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - {shard-rkl}:        [SKIP][156] ([i915#1397]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [FAIL][158] ([i915#2521]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
>     - shard-kbl:          [FAIL][160] ([i915#2521]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-kbl7/igt@kms_async_flips@alternate-sync-async-flip.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl1/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - {shard-tglu}:       [FAIL][162] ([i915#3743]) -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [SKIP][164] ([i915#1845] / [i915#4098]) -> [PASS][165] +17 similar issues
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
>     - {shard-rkl}:        [SKIP][166] ([fdo#112022] / [i915#4070]) -> [PASS][167] +5 similar issues
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
> 
>   * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
>     - {shard-rkl}:        [SKIP][168] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][169] +5 similar issues
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
>     - {shard-rkl}:        [SKIP][170] ([fdo#111825] / [i915#4070]) -> [PASS][171] +1 similar issue
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][172] ([i915#2346]) -> [PASS][173]
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:
>     - shard-glk:          [SKIP][174] ([fdo#109271]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk8/igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
>     - {shard-rkl}:        [SKIP][176] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][177] +8 similar issues
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-skl:          [INCOMPLETE][178] ([i915#4939]) -> [PASS][179] +1 similar issue
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [FAIL][180] ([i915#2122]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [SKIP][182] ([i915#3701]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-glk:          [FAIL][184] ([i915#4911]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - {shard-rkl}:        [SKIP][186] ([i915#1849] / [i915#4098]) -> [PASS][187] +14 similar issues
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
>     - shard-kbl:          [FAIL][188] ([i915#1188]) -> [PASS][189] +1 similar issue
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-kbl6/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][190] ([i915#5176]) -> [PASS][191] +2 similar issues
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb4/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [SKIP][192] ([fdo#109441]) -> [PASS][193] +1 similar issue
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_psr@suspend:
>     - {shard-rkl}:        [SKIP][194] ([i915#1072]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-rkl-2/igt@kms_psr@suspend.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-rkl-6/igt@kms_psr@suspend.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [FAIL][196] ([i915#1542]) -> [PASS][197]
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-skl4/igt@perf@polling.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl10/igt@perf@polling.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [FAIL][198] ([i915#2842]) -> [SKIP][199] ([fdo#109271])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>     - shard-skl:          [SKIP][200] ([fdo#109271] / [i915#1888]) -> [SKIP][201] ([fdo#109271]) +1 similar issue
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][202] ([i915#2920]) -> [SKIP][203] ([i915#658])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][204] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][205] ([i915#5939])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-iclb8/igt@kms_psr2_su@page_flip-nv12.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][206], [FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][211], [FAIL][212]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-apl8/igt@runner@aborted.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-apl8/igt@runner@aborted.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-apl6/igt@runner@aborted.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-apl7/igt@runner@aborted.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11740/shard-apl1/igt@runner@aborted.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl7/igt@runner@aborted.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/shard-apl1/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3963]: https://gitlab.freedesktop.org/drm/intel/issues/3963
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
>   [i915#4929]: https://gitlab.freedesktop.org/drm/intel/issues/4929
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#5966]: https://gitlab.freedesktop.org/drm/intel/issues/5966
>   [i915#5977]: https://gitlab.freedesktop.org/drm/intel/issues/5977
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6139]: https://gitlab.freedesktop.org/drm/intel/issues/6139
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11740 -> Patchwork_104691v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11740: 1a5d9f0a176627d4973e3ca4f7488f7496eec647 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6513: 2aff41793e5f7f23206547ff615187708e728b92 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104691v2: 1a5d9f0a176627d4973e3ca4f7488f7496eec647 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
