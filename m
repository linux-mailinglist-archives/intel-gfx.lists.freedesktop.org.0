Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15426542089
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 02:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA7310E120;
	Wed,  8 Jun 2022 00:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4D3310E120
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 00:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654649649; x=1686185649;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=NcjbkuDNDxxaZeEvhl79nvwCJTMMtZhz/TUbZaI0sN8=;
 b=F3N4X9ddYuyZG98QVoHUngJyEZKoRJsweKDNinuWoxwq5gD5oZJGlxkb
 nZGd+UZkWjDEcsItcQBjJSFHByE2vGzLMzyKr365+fwt5ZHvP66kM5gWs
 fO6GRyal8G8F+MgcfJvTn1TbZWdIiZWcgl+LhA7HOFtcxck6PChD1+KRx
 9r7iPVFUWTkDUTBfH34G8pip3qbnT2d3wyDH0Qn2Jg4ZN5Jwf5yP+Jgmp
 9kkrm5SzoNwEtqX58o/O2CYNNLt7ct2U/I6bhVv4PJvZgHw9ij1wawqOE
 1qq37riqxC2tHilTCJYle0xqKTRgD7uCjsZqw4+MYXarJ+LzmYCPjEyUT w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="277511633"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="277511633"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 17:54:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="532876399"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 17:54:09 -0700
Date: Tue, 7 Jun 2022 17:54:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yp/zL7ZSil3n/Bm4@mdroper-desk1.amr.corp.intel.com>
References: <20220607154724.3155521-1-matthew.d.roper@intel.com>
 <165464278017.8645.4179880548156472352@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165464278017.8645.4179880548156472352@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Correct_DSS_check_for_Wa=5F1308578152?=
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

On Tue, Jun 07, 2022 at 10:59:40PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Correct DSS check for Wa_1308578152
> URL   : https://patchwork.freedesktop.org/series/104825/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11731_full -> Patchwork_104825v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Bala for the review.


Matt

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
>   Here are the unknown changes that may have been introduced in Patchwork_104825v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a:
>     - {shard-dg1}:        [PASS][1] -> [FAIL][2] +8 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-dg1-12/igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-dg1-19/igt@kms_atomic_interruptible@legacy-dpms@hdmi-a-1-pipe-a.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104825v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [FAIL][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48]) ([i915#5032])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl7/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl4/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl4/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl4/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl4/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl3/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl3/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl3/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl2/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl2/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl1/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl1/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl1/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl10/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl10/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl10/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl9/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl9/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl9/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl9/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl7/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl7/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl7/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl10/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl10/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl10/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl10/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl9/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl9/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl9/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl9/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl7/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl7/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl3/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl2/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl2/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl1/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl1/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl1/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_buddy@all@buddy_alloc_smoke:
>     - shard-skl:          [PASS][49] -> [INCOMPLETE][50] ([i915#5800])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl4/igt@drm_buddy@all@buddy_alloc_smoke.html
> 
>   * igt@gem_create@create-massive:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][51] ([i915#4991])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl1/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +137 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl3/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_eio@in-flight-1us:
>     - shard-tglb:         [PASS][55] -> [TIMEOUT][56] ([i915#3063])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-tglb2/igt@gem_eio@in-flight-1us.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb2/igt@gem_eio@in-flight-1us.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#2842]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][59] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [PASS][60] -> [FAIL][61] ([i915#2842])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][62] -> [FAIL][63] ([i915#2849])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_flink_race@flink_close:
>     - shard-kbl:          [PASS][64] -> [INCOMPLETE][65] ([i915#6129])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl3/igt@gem_flink_race@flink_close.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@gem_flink_race@flink_close.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2190])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl9/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl7/igt@gem_lmem_swapping@verify-ccs.html
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-apl8/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3297])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][71] ([i915#454])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl4/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][72] -> [INCOMPLETE][73] ([i915#3921])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-snb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#111615])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl3/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-apl7/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-edid-read:
>     - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl3/igt@kms_chamelium@dp-edid-read.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>     - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][81] ([i915#1319])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl3/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109274] / [fdo#111825])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][83] ([i915#180]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [PASS][84] -> [DMESG-WARN][85] ([i915#180]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [PASS][86] -> [FAIL][87] ([i915#2122])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#4911])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3701])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-rte:
>     - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +16 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>     - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +95 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
>     - shard-kbl:          [PASS][94] -> [FAIL][95] ([i915#1188])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][97] ([fdo#108145] / [i915#265]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][98] ([fdo#108145] / [i915#265])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-y:
>     - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#3536])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-y.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][100] -> [SKIP][101] ([i915#5235]) +5 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20:
>     - shard-snb:          NOTRUN -> [SKIP][102] ([fdo#109271])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-snb5/igt@kms_plane_scaling@planes-upscale-20x20.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#658])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#2920])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#658])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#658])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-iclb:         [PASS][107] -> [SKIP][108] ([fdo#109441]) +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2437])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl3/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#2437])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl3/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#2994])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl3/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#2994])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114] +6 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@in-flight-immediate:
>     - shard-tglb:         [TIMEOUT][115] ([i915#3063]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-tglb2/igt@gem_eio@in-flight-immediate.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb2/igt@gem_eio@in-flight-immediate.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][117] ([i915#4525]) -> [PASS][118] +2 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_endless@dispatch@vcs0:
>     - shard-tglb:         [INCOMPLETE][119] ([i915#3778]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-tglb2/igt@gem_exec_endless@dispatch@vcs0.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglb3/igt@gem_exec_endless@dispatch@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          [FAIL][121] ([i915#2842]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
>     - shard-kbl:          [FAIL][123] ([i915#2842]) -> [PASS][124] +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl3/igt@gem_exec_fair@basic-none@rcs0.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - {shard-tglu}:       [FAIL][125] ([i915#2842]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-tglu-1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][127] ([i915#454]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - {shard-tglu}:       [DMESG-FAIL][129] ([i915#3987]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-tglu-6/igt@i915_selftest@live@gt_pm.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-tglu-5/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [FAIL][131] ([i915#2122]) -> [PASS][132] +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [SKIP][133] ([i915#3701]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [FAIL][135] ([i915#1188]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [SKIP][137] ([i915#5176]) -> [PASS][138] +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [SKIP][139] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb7/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][141] ([fdo#109441]) -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][143] ([i915#180]) -> [PASS][144] +3 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][145] ([i915#5639]) -> [PASS][146]
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl9/igt@perf@polling-parameterized.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl7/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][147] ([i915#6117]) -> [SKIP][148] ([i915#4525])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-skl:          [SKIP][149] ([fdo#109271]) -> [SKIP][150] ([fdo#109271] / [i915#1888])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [FAIL][151] ([i915#4767]) -> [INCOMPLETE][152] ([i915#180])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][153] ([i915#2920]) -> [SKIP][154] ([i915#658])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][155] ([i915#2920]) -> [SKIP][156] ([fdo#111068] / [i915#658])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][157], [FAIL][158], [FAIL][159]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][160], [FAIL][161]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl7/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl7/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-skl3/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl4/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-skl10/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][162], [FAIL][163]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][164], [FAIL][165], [FAIL][166]) ([i915#3002] / [i915#3690] / [i915#4312] / [i915#5257])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb2/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-iclb4/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb7/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb8/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-iclb6/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl7/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl1/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl6/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl1/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl4/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl7/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl1/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl6/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl7/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl4/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl7/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl4/igt@runner@aborted.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl4/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11731/shard-kbl4/igt@runner@aborted.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl7/igt@runner@aborted.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl7/igt@runner@aborted.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl1/igt@runner@aborted.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl7/igt@runner@aborted.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl1/igt@runner@aborted.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl7/igt@runner@aborted.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl4/igt@runner@aborted.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@runner@aborted.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@runner@aborted.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl4/igt@runner@aborted.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl4/igt@runner@aborted.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3963]: https://gitlab.freedesktop.org/drm/intel/issues/3963
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4241]: https://gitlab.freedesktop.org/drm/intel/issues/4241
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
>   [i915#5800]: https://gitlab.freedesktop.org/drm/intel/issues/5800
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6129]: https://gitlab.freedesktop.org/drm/intel/issues/6129
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11731 -> Patchwork_104825v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11731: 9c92db552b999f75af463bd7ccae9de7165cc0f8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6510: dacfa80158d586cd0fe322f25f5275f224a946dd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104825v1: 9c92db552b999f75af463bd7ccae9de7165cc0f8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104825v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
