Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 134805EF437
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ACBC10E5E1;
	Thu, 29 Sep 2022 11:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F7910E5E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664450555; x=1695986555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gKZUI3vN1Us7GO1IYxG04tS8KRH4n4heB594iiXg2qM=;
 b=b/4X6/0OJ9BeiwMV6HFmpyWW3ktmbW25cQczhI6zeoypQ/Rhi9hYTbbq
 mxs1D8S+qxdhdkrQgRbhd6VXnGTCKHkEpB9fWfnUqPX+SdV81SS16aovy
 xE70UUjifOLuJA04SN6WkDdPhOH39AMDE192eZLW6MZaKsEfbdetdg7QZ
 pSHscfWTH85C1jkzqKi76r8Yxc3NXfHLWgWd9IZmYqH6o2TVTla9F/+Nb
 JV6QNdjGmZQEMb7jIqgJE0ENDJNhVYArAqBiWD+VnQkHJCuTKOG2pEwC4
 Tlo/LSJ0CyuKYdeJx8fRUEjU3CsVHrc2U7jtSzOkRJTW6o/V2MTBcQZaW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="388147883"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="388147883"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:22:35 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="690783114"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="690783114"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.19.47])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:22:33 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 13:22:30 +0200
Message-ID: <1860015.eGJsNajkDb@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <166444412347.11955.17449667520211959360@emeril.freedesktop.org>
References: <20220928085826.243721-1-janusz.krzysztofik@linux.intel.com>
 <166444412347.11955.17449667520211959360@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaW9t?=
 =?utf-8?q?mu=3A_Remove_iova_cpu_hotplugging_flushing_=28rev2=29?=
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
Cc: Chris Wilson <chris.p.wilson@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thursday, 29 September 2022 11:35:23 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: iommu: Remove iova cpu hotplugging flushing (rev2)
> URL   : https://patchwork.freedesktop.org/series/108880/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12193_full -> Patchwork_108880v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_108880v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_108880v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 12)
> ------------------------------
> 
>   Additional (2): shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_108880v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_whisper@basic-queues-priority-all:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority-all.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb4/igt@gem_exec_whisper@basic-queues-priority-all.html
> 
>   * igt@gem_tiled_wb:
>     - shard-skl:          NOTRUN -> [TIMEOUT][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl10/igt@gem_tiled_wb.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          NOTRUN -> [FAIL][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl10/igt@i915_selftest@live@gt_pm.html
> 
>   * {igt@kms_color@ctm-0-75@pipe-b-hdmi-a-3} (NEW):
>     - {shard-dg1}:        NOTRUN -> [FAIL][6] +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-dg1-19/igt@kms_color@ctm-0-75@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][7]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-tglb:         [PASS][8] -> [INCOMPLETE][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

I've identified all of the above as known issues, CI filters will be updated 
and results re-reported.

Thanks,
Janusz

> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30]) ([i915#6641]) -> ([FAIL][31], [FAIL][32]) ([i915#3002] / [i915#4312])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl3/igt@runner@aborted.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl9/igt@runner@aborted.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl9/igt@runner@aborted.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl10/igt@runner@aborted.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl4/igt@runner@aborted.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl1/igt@runner@aborted.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl7/igt@runner@aborted.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl10/igt@runner@aborted.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl9/igt@runner@aborted.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl4/igt@runner@aborted.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl4/igt@runner@aborted.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl6/igt@runner@aborted.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl7/igt@runner@aborted.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl7/igt@runner@aborted.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl10/igt@runner@aborted.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl7/igt@runner@aborted.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl10/igt@runner@aborted.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl2/igt@runner@aborted.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl4/igt@runner@aborted.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl10/igt@runner@aborted.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-skl3/igt@runner@aborted.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl10/igt@runner@aborted.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl4/igt@runner@aborted.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:
>     - {shard-tglu}:       NOTRUN -> [SKIP][33] +72 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-tglu-8/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_12193_full and Patchwork_108880v2_full:
> 
> ### New IGT tests (35) ###
> 
>   * igt@gem_mmap_offset@ptrace@lmem0-fixed:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.02] s
> 
>   * igt@gem_mmap_offset@ptrace@smem0-fixed:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_color@ctm-0-75@pipe-b-hdmi-a-3:
>     - Statuses : 1 fail(s)
>     - Exec time: [2.63] s
> 
>   * igt@kms_lease@atomic_implicit_crtc@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.14] s
> 
>   * igt@kms_lease@atomic_implicit_crtc@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_lease@atomic_implicit_crtc@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_lease@atomic_implicit_crtc@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_lease@empty_lease@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.14] s
> 
>   * igt@kms_lease@empty_lease@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_lease@empty_lease@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_lease@empty_lease@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.02] s
> 
>   * igt@kms_lease@lease_invalid_connector@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.13] s
> 
>   * igt@kms_lease@lease_invalid_connector@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.02] s
> 
>   * igt@kms_lease@lease_invalid_connector@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.02] s
> 
>   * igt@kms_lease@lease_invalid_connector@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.02] s
> 
>   * igt@kms_lease@lease_invalid_crtc@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.13] s
> 
>   * igt@kms_lease@lease_invalid_crtc@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.02] s
> 
>   * igt@kms_lease@lease_invalid_crtc@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.02] s
> 
>   * igt@kms_lease@lease_invalid_crtc@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.02] s
> 
>   * igt@kms_lease@lease_revoke@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.27] s
> 
>   * igt@kms_lease@lease_revoke@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.11] s
> 
>   * igt@kms_lease@lease_revoke@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.11] s
> 
>   * igt@kms_lease@lease_revoke@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.11] s
> 
>   * igt@kms_lease@lessee_list@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.14] s
> 
>   * igt@kms_lease@lessee_list@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_lease@lessee_list@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_lease@lessee_list@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_lease@setcrtc_implicit_plane@pipe-a-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.32] s
> 
>   * igt@kms_lease@setcrtc_implicit_plane@pipe-b-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.15] s
> 
>   * igt@kms_lease@setcrtc_implicit_plane@pipe-c-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.15] s
> 
>   * igt@kms_lease@setcrtc_implicit_plane@pipe-d-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.14] s
> 
>   * igt@kms_lease@simple_lease@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.46] s
> 
>   * igt@kms_lease@simple_lease@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.26] s
> 
>   * igt@kms_lease@simple_lease@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.28] s
> 
>   * igt@kms_lease@simple_lease@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.25] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108880v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@dmabuf@all@dma_fence_chain:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][34] ([i915#6949])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl4/igt@dmabuf@all@dma_fence_chain.html
> 
>   * igt@gem_create@create-massive:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][35] ([i915#4991])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl10/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-apl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +3 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +734 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl9/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][39] -> [SKIP][40] ([i915#4525])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][41] ([i915#2846])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#2842])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#2190])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl9/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#4613]) +11 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl6/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-snb:          [PASS][46] -> [INCOMPLETE][47] ([i915#5161])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-x.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3323])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][49] ([i915#3318])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@i915_module_load@load:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#6227])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl4/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][51] ([i915#454]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl7/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][52] ([i915#3743]) +5 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#3886]) +33 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +36 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl2/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][55] ([fdo#109271])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-glk5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][56] -> [FAIL][57] ([i915#4767])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][58] ([i915#79])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2672]) +4 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#3555])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#2587] / [i915#2672]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#2672] / [i915#3555]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
>     - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +40 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][64] ([i915#265])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265]) +8 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +10 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl1/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][68] -> [SKIP][69] ([fdo#109441]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([i915#6493])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl1/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2437]) +2 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@polling:
>     - shard-skl:          NOTRUN -> [FAIL][72] ([i915#1542])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl6/igt@perf@polling.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][73] ([i915#1722])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl7/igt@perf@polling-small-buf.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          NOTRUN -> [FAIL][74] ([i915#51])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl7/igt@perf@short-reads.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994]) +6 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-skl9/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl8/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][77] ([i915#4525]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][79] ([i915#2842]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [FAIL][81] ([i915#2842]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-glk6/igt@gem_exec_fair@basic-none@vecs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-apl3/igt@gem_workarounds@suspend-resume.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl8/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][85] ([i915#3989] / [i915#454]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [FAIL][87] ([i915#79]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [SKIP][89] ([i915#5176]) -> [PASS][90] +2 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][91] ([i915#5235]) -> [PASS][92] +2 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +2 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglb:         [SKIP][95] ([i915#5519]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-iclb:         [SKIP][97] ([i915#5519]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][99] ([i915#4525]) -> [FAIL][100] ([i915#6117])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-apl:          [FAIL][101] ([i915#265]) -> [FAIL][102] ([i915#265] / [i915#4573]) +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
>     - shard-glk:          [FAIL][103] ([i915#265]) -> [FAIL][104] ([i915#265] / [i915#4573]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-glk3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-glk3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-apl:          [FAIL][105] ([fdo#108145] / [i915#265]) -> [FAIL][106] ([fdo#108145] / [i915#265] / [i915#4573]) +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>     - shard-glk:          [FAIL][107] ([fdo#108145] / [i915#265]) -> [FAIL][108] ([fdo#108145] / [i915#265] / [i915#4573]) +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-glk2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-glk9/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][109] ([fdo#111068] / [i915#658]) -> [SKIP][110] ([i915#2920]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][111] ([i915#2920]) -> [SKIP][112] ([i915#658]) +2 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][113], [FAIL][114], [FAIL][115]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119]) ([fdo#109271] / [i915#180] / [i915#4312])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-apl1/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-apl3/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12193/shard-apl1/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl1/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl2/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl3/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/shard-apl2/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6641]: https://gitlab.freedesktop.org/drm/intel/issues/6641
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12193 -> Patchwork_108880v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12193: 0f0716dcfd8446cde4391475c9c3656ca670b55f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6666: 1e3ecbaa3c56f4c52c62047707eb4942d3a39c44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108880v2: 0f0716dcfd8446cde4391475c9c3656ca670b55f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v2/index.html
> 




