Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A308517BC3
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 04:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDA7F10F370;
	Tue,  3 May 2022 02:07:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F9510F370
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 02:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651543628; x=1683079628;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=54e6C7XYTYKAmP3FR8h76LcdnDzaOKvgqvKKNpjBhYY=;
 b=B0+6mBbBd4nhOcecp7TbECKmRytgBcmU2AuqpaTqwxIefhCI62S6Org7
 f4KK6rqZunR9ugxuRB7J5D3oHM2lLos/inbNr6Td5VtxQcMeVxwoHHKIm
 xnly8UAPxGBKYCPcAFnzBIOBWeAXWUYip9zXJWGLqeF0S/so7S0SpgHkk
 ZLwjUgsyItd9VceDg6duujdqF4zYw88Ty/nf9h7SRLdGd0uZwO2fSDiIT
 3AMWHm8i7bVCePcP/8bU6hwngcyH0f9qwJyGusMGvy3jCxACMQug92Pm8
 FMz6STdbzw4WTfNzknjE+Ky3XHTJ5QG/unyxj/uo6wSL7M4NNvzYci5wQ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247926114"
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="247926114"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 19:07:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="733723939"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.203.144.108])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 May 2022 19:07:06 -0700
Date: Tue, 3 May 2022 07:38:08 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220503020807.GA4356@intel.com>
References: <20220502142618.2704-1-ramalingam.c@intel.com>
 <165152759648.28136.14049234019810898636@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <165152759648.28136.14049234019810898636@emeril.freedesktop.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRmxh?=
 =?utf-8?q?t-CCS_eviction_enhancements_=28rev4=29?=
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

On 2022-05-02 at 21:39:56 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Flat-CCS eviction enhancements (rev4)
> URL   : https://patchwork.freedesktop.org/series/102916/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11588_full -> Patchwork_102916v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_102916v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_102916v4_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_102916v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_eio@wait-wedge-10ms:
>     - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
This is not related to the change in discussion. Proceeding with the
committing the patches, which(2/3) are ready.

Ram
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-snb5/igt@gem_eio@wait-wedge-10ms.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-snb6/igt@gem_eio@wait-wedge-10ms.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][3] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][4] +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb4/igt@kms_psr2_su@page_flip-nv12.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - {shard-dg1}:        NOTRUN -> [INCOMPLETE][5] +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-dg1-16/igt@i915_pm_rpm@system-suspend-devices.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102916v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-4x:
>     - shard-tglb:         NOTRUN -> [SKIP][6] ([i915#1839])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb5/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][7] ([i915#5076] / [i915#5614])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][8] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][11] -> [SKIP][12] ([i915#2190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-tglb3/igt@gem_huc_copy@huc-copy.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-kbl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl4/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_softpin@full:
>     - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl7/igt@gem_softpin@full.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl4/igt@gem_softpin@full.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl7/igt@gem_softpin@noreloc-s3.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl3/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#3297])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb5/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][20] ([i915#4991])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl6/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#109289])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb5/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#5566] / [i915#716])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl1/igt@gen9_exec_parse@allowed-single.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         NOTRUN -> [WARN][24] ([i915#2684])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +83 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl7/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-apl:          [PASS][26] -> [FAIL][27] ([i915#2521])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl6/igt@kms_async_flips@alternate-sync-async-flip.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl7/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_atomic@atomic-invalid-params:
>     - shard-snb:          [PASS][28] -> [SKIP][29] ([fdo#109271]) +4 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-snb7/igt@kms_atomic@atomic-invalid-params.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-snb2/igt@kms_atomic@atomic-invalid-params.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#5286])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110725] / [fdo#111614])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110723])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#1888])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl4/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd:
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl4/igt@kms_chamelium@hdmi-hpd.html
> 
>   * igt@kms_color@pipe-d-gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [i915#1149])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_color@pipe-d-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl4/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl7/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#3319])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
>     - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#5691])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#2346])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#2346])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-edp1:
>     - shard-skl:          [PASS][50] -> [INCOMPLETE][51] ([i915#4839])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
>     - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2122]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
>     - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2122])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +47 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109280]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#109280] / [fdo#111825]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
>     - shard-tglb:         [PASS][59] -> [SKIP][60] ([i915#668])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-tglb6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb1/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
> 
>   * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
>     - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#1188])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl9/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl7/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#533]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][64] -> [DMESG-WARN][65] ([i915#180]) +5 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][72] ([i915#132] / [i915#3467])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb5/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +81 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@kms_psr@psr2_primary_mmap_cpu.html
>     - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109441])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [PASS][76] -> [SKIP][77] ([i915#5519])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2437])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl4/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@prime_nv_api@i915_nv_import_twice:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109291])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb5/igt@prime_nv_api@i915_nv_import_twice.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl4/igt@sysfs_clients@fair-7.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][81] ([i915#4525]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][83] ([i915#2842]) -> [PASS][84] +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][85] ([i915#2842]) -> [PASS][86] +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>     - shard-glk:          [FAIL][87] ([i915#2842]) -> [PASS][88] +2 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][89] ([i915#2842]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - {shard-rkl}:        [FAIL][91] ([i915#2842]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - {shard-rkl}:        [FAIL][93] ([fdo#103375]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-4/igt@gem_exec_suspend@basic-s0@smem.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-4/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked:
>     - {shard-rkl}:        [INCOMPLETE][95] ([i915#5080]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-5/igt@gem_exec_whisper@basic-queues-forked.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-5/igt@gem_exec_whisper@basic-queues-forked.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@gem_softpin@noreloc-s3.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-kbl:          [DMESG-WARN][99] ([i915#5566] / [i915#716]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl3/igt@gen9_exec_parse@allowed-single.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][101] ([i915#454]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@fences-dpms:
>     - {shard-rkl}:        [SKIP][103] ([i915#1849]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-1/igt@i915_pm_rpm@fences-dpms.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type@uc:
>     - {shard-rkl}:        [SKIP][105] ([fdo#109308]) -> [PASS][106] +3 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-2/igt@i915_pm_rpm@gem-mmap-type@uc.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@i915_pm_rpm@gem-mmap-type@uc.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - {shard-rkl}:        [FAIL][107] ([i915#4016]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-1/igt@i915_pm_rps@min-max-config-idle.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-2/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - {shard-dg1}:        [SKIP][109] ([i915#2575]) -> [PASS][110] +11 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-dg1-16/igt@i915_query@query-topology-coherent-slice-mask.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-dg1-13/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_selftest@live@execlists:
>     - shard-kbl:          [INCOMPLETE][111] ([i915#794]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@i915_selftest@live@execlists.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl6/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@perf@request:
>     - shard-kbl:          [INCOMPLETE][113] -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@i915_selftest@perf@request.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl4/igt@i915_selftest@perf@request.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - {shard-rkl}:        [SKIP][115] ([i915#1845] / [i915#4098]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_color@pipe-b-legacy-gamma:
>     - {shard-rkl}:        [SKIP][117] ([i915#4070] / [i915#4098]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-4/igt@kms_color@pipe-b-legacy-gamma.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
>     - {shard-rkl}:        [SKIP][119] ([fdo#112022] / [i915#4070]) -> [PASS][120] +1 similar issue
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
>     - {shard-rkl}:        [SKIP][121] ([fdo#111825] / [i915#4070]) -> [PASS][122] +2 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@pipe-c-forked-bo:
>     - {shard-rkl}:        [SKIP][123] ([i915#4070]) -> [PASS][124] +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-bo.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
>     - {shard-rkl}:        [SKIP][125] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][127] ([i915#79]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [FAIL][129] ([i915#79]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [DMESG-WARN][131] ([i915#180]) -> [PASS][132] +3 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-glk:          [FAIL][133] ([i915#4911]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][135] ([i915#3701]) -> [PASS][136] +1 similar issue
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
>     - {shard-rkl}:        [SKIP][137] ([i915#1849] / [i915#4098]) -> [PASS][138] +5 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_plane@pixel-format@pipe-a-planes:
>     - {shard-rkl}:        [SKIP][139] ([i915#1849] / [i915#3558]) -> [PASS][140] +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-5/igt@kms_plane@pixel-format@pipe-a-planes.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
>     - {shard-rkl}:        [SKIP][141] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][142] +1 similar issue
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][143] ([fdo#108145] / [i915#265]) -> [PASS][144]
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [SKIP][145] ([i915#5235]) -> [PASS][146] +2 similar issues
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr@primary_blt:
>     - {shard-rkl}:        [SKIP][147] ([i915#1072]) -> [PASS][148] +1 similar issue
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-2/igt@kms_psr@primary_blt.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_psr@primary_blt.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [SKIP][149] ([fdo#109441]) -> [PASS][150] +1 similar issue
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-b-sanity:
>     - {shard-rkl}:        [SKIP][151] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][152]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-2/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][153] ([i915#4939]) -> [PASS][154] +1 similar issue
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@perf@polling:
>     - {shard-dg1}:        [SKIP][155] ([i915#5608]) -> [PASS][156]
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-dg1-16/igt@perf@polling.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-dg1-13/igt@perf@polling.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          [DMESG-WARN][157] ([i915#1982]) -> [PASS][158]
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl9/igt@perf_pmu@module-unload.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl7/igt@perf_pmu@module-unload.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-skl:          [FAIL][159] ([i915#1731]) -> [PASS][160]
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl4/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl6/igt@sysfs_heartbeat_interval@mixed@bcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][161] ([i915#4525]) -> [DMESG-WARN][162] ([i915#5614]) +1 similar issue
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [DMESG-WARN][163] ([i915#5614]) -> [SKIP][164] ([i915#4525])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement:
>     - shard-iclb:         [SKIP][165] ([fdo#109278] / [fdo#109279]) -> [SKIP][166] ([fdo#109278] / [fdo#109279] / [i915#1888])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][167] ([i915#180]) -> [FAIL][168] ([i915#4767])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][169] ([i915#2920]) -> [SKIP][170] ([fdo#111068] / [i915#658])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716] / [i915#92]) -> ([FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192], [FAIL][193], [FAIL][194], [FAIL][195], [FAIL][196], [FAIL][197], [FAIL][198], [FAIL][199]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl1/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl3/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl4/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl3/igt@runner@aborted.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@runner@aborted.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@runner@aborted.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@runner@aborted.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl1/igt@runner@aborted.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@runner@aborted.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl6/igt@runner@aborted.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl6/igt@runner@aborted.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl4/igt@runner@aborted.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl1/igt@runner@aborted.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl7/igt@runner@aborted.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl4/igt@runner@aborted.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl6/igt@runner@aborted.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl4/igt@runner@aborted.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl4/igt@runner@aborted.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl3/igt@runner@aborted.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl4/igt@runner@aborted.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl7/igt@runner@aborted.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl6/igt@runner@aborted.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-kbl6/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][200], [FAIL][201], [FAIL][202], [FAIL][203], [FAIL][204], [FAIL][205], [FAIL][206]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210], [FAIL][211], [FAIL][212]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl6/igt@runner@aborted.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl2/igt@runner@aborted.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl3/igt@runner@aborted.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl2/igt@runner@aborted.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl4/igt@runner@aborted.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl2/igt@runner@aborted.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl7/igt@runner@aborted.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl1/igt@runner@aborted.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl6/igt@runner@aborted.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl3/igt@runner@aborted.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl4/igt@runner@aborted.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl1/igt@runner@aborted.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-apl3/igt@runner@aborted.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [WARN][213] ([i915#4055]) -> [FAIL][214] ([i915#1731])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl4/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/shard-skl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
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
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#4055]: https://gitlab.freedesktop.org/drm/intel/issues/4055
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4886]: https://gitlab.freedesktop.org/drm/intel/issues/4886
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5849]: https://gitlab.freedesktop.org/drm/intel/issues/5849
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11588 -> Patchwork_102916v4
> 
>   CI-20190529: 20190529
>   CI_DRM_11588: 68f638d8e33ee3d6110a6798b823f88e07eaef1f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_102916v4: 68f638d8e33ee3d6110a6798b823f88e07eaef1f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102916v4/index.html
