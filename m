Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5107E67AD
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 11:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7537C10E893;
	Thu,  9 Nov 2023 10:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C2910E898
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525100; x=1731061100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yr+UWiN0tf95ApJN3dw85xbDWSb/+EnPx1MVNQZNyEY=;
 b=ebOqw7frbldG0OPafltx+fWh1QBkRSCqVt8WWxow8faijGb91E6xqsb8
 e6Hgav5LxjFh7n1pyWHveLKtBQ3WMs/1v23SqgUiICWLKXlfA3k6gM7IC
 M3YBYwaQU/GqPnivq646qLgDoBW5cyXXAWQ9ZxgBqvrO2Dm+NJxv3JZIO
 99q8Evqk2VlbhuujihYQU3apfiYJcoQB8opixKA03VCKetQiu0V411Tvx
 BNmjZYmkMT7Iofhl3FvbX4ZtOo2OR75CYvuBt0EvILSzr8ktoo6a7BZ/3
 PUWwOpC6QfTwgXVF6sr65JziFIb6qPC+Mn3AY+kotbXoa5i62gU+CoZmA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="8606048"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; 
   d="scan'208";a="8606048"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:18:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="886949398"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="886949398"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.25.176])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:18:14 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: LGCI Bug Filing <lgci.bug.filing@intel.com>
Date: Thu, 09 Nov 2023 11:18:12 +0100
Message-ID: <13478632.uLZWGnKmhe@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <169947885508.24272.14589585877912187219@emeril.freedesktop.org>
References: <20231108162905.77602-2-janusz.krzysztofik@linux.intel.com>
 <169947885508.24272.14589585877912187219@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vma=3A_Fix_potential_UAF_on_multi-tile_platforms_=28rev2?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, 8 November 2023 22:27:35 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/vma: Fix potential UAF on multi-tile platforms (rev2)
> URL   : https://patchwork.freedesktop.org/series/126012/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13852 -> Patchwork_126012v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_126012v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_126012v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/index.html
> 
> Participating hosts (34 -> 33)
> ------------------------------
> 
>   Additional (1): bat-mtlp-8 
>   Missing    (2): fi-hsw-4770 bat-dg2-9 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_126012v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - bat-adlp-11:        NOTRUN -> [FAIL][1] +1 other test fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@i915_suspend@basic-s2idle-without-i915.html

Stderr looks pretty much like here:
https://gitlab.freedesktop.org/drm/intel/issues/9092

> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-rplp-1:         NOTRUN -> [INCOMPLETE][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-rplp-1/igt@i915_suspend@basic-s3-without-i915.html

Kernel warning looks the same as here: 
https://gitlab.freedesktop.org/drm/intel/issues/9570

@BUG Filing, please update filters and re-report.

Thanks,
Janusz


> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_126012v2 that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - bat-adlp-11:        [FAIL][3] ([i915#8293]) -> [PASS][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13852/bat-adlp-11/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][5] ([i915#9318])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][6] ([i915#9318])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - bat-adln-1:         NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adln-1/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-rplp-1:         NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - bat-adlp-6:         NOTRUN -> [SKIP][9] ([i915#4613]) +3 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - bat-adlp-11:        NOTRUN -> [SKIP][10] ([i915#4613]) +3 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][11] ([i915#4613]) +3 other tests skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap@basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][12] ([i915#4083])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@gem_mmap@basic.html
> 
>   * igt@gem_mmap_gtt@basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][13] ([i915#4077]) +3 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@gem_mmap_gtt@basic.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][14] ([i915#4079]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-adlp-11:        NOTRUN -> [SKIP][15] ([i915#3282])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-adlp-6:         NOTRUN -> [SKIP][16] ([i915#6621])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-6/igt@i915_pm_rps@basic-api.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][17] ([i915#6621])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-rplp-1/igt@i915_pm_rps@basic-api.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][18] ([i915#6621])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@i915_pm_rps@basic-api.html
>     - bat-adln-1:         NOTRUN -> [SKIP][19] ([i915#6621])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adln-1/igt@i915_pm_rps@basic-api.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][20] ([i915#6621])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - bat-adln-1:         NOTRUN -> [DMESG-FAIL][21] ([i915#9507])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adln-1/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-11:         [PASS][22] -> [DMESG-FAIL][23] ([i915#9500])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13852/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-dg2-11/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][24] ([i915#6645])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][25] ([i915#5190])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][26] ([i915#4212]) +8 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-adlp-11:        NOTRUN -> [SKIP][27] ([i915#4103] / [i915#5608]) +1 other test skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][28] ([i915#4213]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - bat-adlp-11:        NOTRUN -> [SKIP][29] ([i915#3555] / [i915#3840])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@kms_dsc@dsc-basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][30] ([i915#3555] / [i915#3840] / [i915#9159])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@d-dp5:
>     - bat-adlp-11:        NOTRUN -> [DMESG-WARN][31] ([i915#6868])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp5.html
> 
>   * igt@kms_flip@basic-plain-flip:
>     - bat-adlp-11:        NOTRUN -> [SKIP][32] ([i915#3637])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@kms_flip@basic-plain-flip.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][33] ([fdo#109285])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-adlp-11:        NOTRUN -> [SKIP][34] ([i915#4093]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][35] ([i915#5274])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - bat-adlp-11:        NOTRUN -> [SKIP][36] ([i915#4369])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html
>     - fi-kbl-guc:         [PASS][37] -> [FAIL][38] ([IGT#3])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13852/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         NOTRUN -> [SKIP][39] ([i915#1845] / [i915#9197]) +3 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - bat-rplp-1:         NOTRUN -> [SKIP][40] ([i915#1072]) +3 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-rplp-1/igt@kms_psr@primary_page_flip.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][41] ([i915#1072]) +3 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-adlp-6:         NOTRUN -> [SKIP][42] ([i915#3555])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][43] ([i915#3555])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][44] ([i915#3555])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adln-1:         NOTRUN -> [SKIP][45] ([i915#3555])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][46] ([i915#3555] / [i915#8809])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][47] ([i915#3708] / [i915#4077]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adlp-11:        NOTRUN -> [SKIP][48] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-11/igt@prime_vgem@basic-fence-read.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][49] ([i915#3708]) +2 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html
>     - bat-adlp-6:         NOTRUN -> [SKIP][50] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-6/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-read:
>     - bat-rplp-1:         NOTRUN -> [SKIP][51] ([i915#3708]) +2 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-rplp-1/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-adln-1:         NOTRUN -> [SKIP][52] ([fdo#109295] / [i915#3291]) +2 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adln-1/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * {igt@kms_pm_backlight@basic-brightness@edp-1}:
>     - bat-adlp-6:         [ABORT][53] ([i915#8668]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13852/bat-adlp-6/igt@kms_pm_backlight@basic-brightness@edp-1.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adlp-6/igt@kms_pm_backlight@basic-brightness@edp-1.html
>     - bat-rplp-1:         [ABORT][55] ([i915#8668]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13852/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
> 
>   * {igt@kms_pm_rpm@basic-pci-d3-state}:
>     - bat-adln-1:         [ABORT][57] ([i915#8668]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13852/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>   [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
>   [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
>   [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
>   [i915#9500]: https://gitlab.freedesktop.org/drm/intel/issues/9500
>   [i915#9507]: https://gitlab.freedesktop.org/drm/intel/issues/9507
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13852 -> Patchwork_126012v2
> 
>   CI-20190529: 20190529
>   CI_DRM_13852: 8040e9d346531d98ca164092c860c24c1dd6e845 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7577: 303daa66145647680d8e817ff305f7f5d83843ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_126012v2: 8040e9d346531d98ca164092c860c24c1dd6e845 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 60f2dbf57539 drm/i915/vma: Fix potential UAF on multi-tile platforms
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v2/index.html
> 




