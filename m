Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F68654D079
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 19:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C63AE10EAAB;
	Wed, 15 Jun 2022 17:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5879A10EA8D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 17:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655315808; x=1686851808;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=80hf8fE4V+FFemnIrXLXARzfTGcfseWYFFva+mUQQLo=;
 b=aywLjucHDRqxGcLqCoxJX4H6kFjjDcFyecHZOxyik8xaFyNubZS9HL/C
 Uf+tBuzSPDKl7j5ktdP1xQm6qUGsRm7+A/uGu16+UXXH58gKTL/FFVFk0
 7SNhL8dX/98CU+/4b3R2wrVtM8B+Ww9+eeRF2KCHuNo50IO7l8Q5yH2H2
 acRgY/t30QsC/CbWDrD8K7enl3af1SoGq0NRFu+x8t8AHc5UtbgH5sL6r
 rM/7LEU/gfJ4wkPsTd67shIMfufqv7ypvML63KUGSUMlj8k745myF6X2J
 9NBmZA1YLLyO9c6f0k0uQl22aZTS6YqxCCuC1APinBoT2HWqGsAeKYjnP g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="365405792"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="365405792"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 10:56:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="612854963"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 10:56:46 -0700
Date: Wed, 15 Jun 2022 10:56:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YqodXKNyRMGZIYVc@mdroper-desk1.amr.corp.intel.com>
References: <20220613165314.862029-1-matthew.d.roper@intel.com>
 <165525050410.12485.7896159694486613017@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165525050410.12485.7896159694486613017@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pvc=3A_Add_recommended_MMIO_setting?=
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

On Tue, Jun 14, 2022 at 11:48:24PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/pvc: Add recommended MMIO setting
> URL   : https://patchwork.freedesktop.org/series/105063/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11755_full -> Patchwork_105063v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to drm-intel-gt-next.  Thanks Jose for the review.


Matt

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
>   Here are the unknown changes that may have been introduced in Patchwork_105063v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_cdclk@mode-transition-all-outputs}:
>     - shard-iclb:         NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_105063v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [FAIL][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20]) ([i915#5032]) -> ([PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl10/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl9/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl6/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl3/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl3/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl2/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl1/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl1/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl1/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl10/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl7/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl6/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl6/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl6/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl6/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl5/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl5/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl4/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl4/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl4/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl3/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl3/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl1/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl1/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl10/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl10/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl10/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl10/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl9/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl9/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl9/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl7/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl7/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#5327])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +330 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl6/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-iclb:         [PASS][47] -> [TIMEOUT][48] ([i915#3070])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@gem_eio@in-flight-contexts-1us.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb2/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][49] -> [SKIP][50] ([i915#4525]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][51] ([i915#2842])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
>     - shard-kbl:          [PASS][52] -> [FAIL][53] ([i915#2842]) +2 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2842])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109283])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl3/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#4613])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl3/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#4613])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-apl:          [PASS][60] -> [FAIL][61] ([i915#644])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_userptr_blits@huge-split:
>     - shard-tglb:         [PASS][62] -> [FAIL][63] ([i915#3376])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb6/igt@gem_userptr_blits@huge-split.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-tglb1/igt@gem_userptr_blits@huge-split.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][64] ([i915#4991])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl3/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#3297])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@i915_module_load@load:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#6227])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl4/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][67] -> [FAIL][68] ([i915#454])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][69] ([i915#454])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl4/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         NOTRUN -> [WARN][70] ([i915#2684])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-skl:          [PASS][71] -> [INCOMPLETE][72] ([i915#4939])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl2/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [PASS][73] -> [DMESG-WARN][74] ([i915#5591])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb6/igt@i915_selftest@live@hangcheck.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-tglb1/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [PASS][75] -> [DMESG-WARN][76] ([i915#180]) +2 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl6/igt@i915_suspend@debugfs-reader.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl6/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#5286]) +2 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#110725] / [fdo#111614])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][79] ([i915#3743])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +84 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-glk7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +11 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278]) +13 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-glk:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-glk7/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@hdmi-hpd:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109284] / [fdo#111827]) +5 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_chamelium@hdmi-hpd.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl2/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-5:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-negative:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-negative.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-random:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_cursor_crc@pipe-c-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
>     - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#1888])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl3/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
>     - shard-glk:          NOTRUN -> [SKIP][93] ([fdo#109271]) +28 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][94] -> [FAIL][95] ([i915#2346])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          NOTRUN -> [FAIL][96] ([i915#2346] / [i915#533])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-skl:          [PASS][97] -> [FAIL][98] ([i915#2346])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-render-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#5287])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@kms_draw_crc@draw-method-rgb565-render-4tiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][100] -> [INCOMPLETE][101] ([i915#180] / [i915#1982])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109274])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-skl:          [PASS][103] -> [INCOMPLETE][104] ([i915#4839])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [PASS][105] -> [INCOMPLETE][106] ([i915#3614])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][107] -> [SKIP][108] ([i915#3701])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#3701]) +2 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109280]) +12 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-skl:          [PASS][111] -> [INCOMPLETE][112] ([i915#1982] / [i915#4939])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#3555])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          [PASS][114] -> [FAIL][115] ([i915#1188])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#533]) +2 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][117] ([fdo#108145] / [i915#265])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][118] ([fdo#108145] / [i915#265])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][119] ([i915#265])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#5176]) +2 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][121] -> [SKIP][122] ([i915#5235]) +2 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_prime@basic-crc@first-to-second:
>     - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#1836])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@kms_prime@basic-crc@first-to-second.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#2920])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-tglb3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>     - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#658]) +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#658])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl3/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109441])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         [PASS][128] -> [SKIP][129] ([fdo#109441]) +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb2/igt@kms_psr@psr2_primary_render.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb6/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_psr@suspend:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][130] ([i915#4939])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl4/igt@kms_psr@suspend.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglb:         [PASS][131] -> [SKIP][132] ([i915#5519])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-tglb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-iclb:         [PASS][133] -> [SKIP][134] ([i915#5519])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#2437])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-iclb:         NOTRUN -> [SKIP][136] ([i915#2437])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-complete:
>     - shard-iclb:         NOTRUN -> [SKIP][137] ([i915#2530])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@nouveau_crc@pipe-c-source-outp-complete.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][138] ([fdo#109278] / [i915#2530])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@nouveau_crc@pipe-d-source-outp-inactive.html
> 
>   * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
>     - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109291]) +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html
> 
>   * igt@sw_sync@sync_merge_same:
>     - shard-skl:          NOTRUN -> [FAIL][140] ([i915#6140]) +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl6/igt@sw_sync@sync_merge_same.html
> 
>   * igt@sysfs_clients@create:
>     - shard-iclb:         NOTRUN -> [SKIP][141] ([i915#2994])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-skl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl6/igt@sysfs_clients@split-10.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-glk:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#2994])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-glk7/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_setmaster@master-drop-set-user:
>     - shard-iclb:         [INCOMPLETE][144] -> [PASS][145] +1 similar issue
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb4/igt@core_setmaster@master-drop-set-user.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb8/igt@core_setmaster@master-drop-set-user.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [FAIL][146] ([i915#5784]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb1/igt@gem_eio@kms.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-tglb7/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][148] ([i915#4525]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][150] ([i915#2842]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [FAIL][152] ([i915#2842]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-glk:          [FAIL][154] ([i915#2842]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-glk5/igt@gem_exec_fair@basic-pace@vecs0.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-glk3/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [DMESG-WARN][156] ([i915#180]) -> [PASS][157] +3 similar issues
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl6/igt@gem_workarounds@suspend-resume.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl3/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][158] ([i915#5566] / [i915#716]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-glk7/igt@gen9_exec_parse@allowed-all.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-glk7/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][160] ([i915#454]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - {shard-tglu}:       [FAIL][162] ([i915#3825]) -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglu-5/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-tglu-1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - {shard-dg1}:        [SKIP][164] ([i915#1397]) -> [PASS][165] +1 similar issue
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - {shard-dg1}:        [FAIL][166] ([i915#4032]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-dg1-17/igt@i915_pm_rps@basic-api.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-dg1-19/igt@i915_pm_rps@basic-api.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglb:         [FAIL][168] ([i915#3743]) -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
>     - shard-kbl:          [FAIL][170] ([i915#79]) -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>     - shard-glk:          [FAIL][172] ([i915#79]) -> [PASS][173]
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][174] ([i915#3701]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [SKIP][176] ([fdo#109441]) -> [PASS][177] +3 similar issues
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@testdisplay:
>     - {shard-tglu}:       [DMESG-WARN][178] ([i915#4941]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-tglu-5/igt@testdisplay.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-tglu-1/igt@testdisplay.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][180] ([i915#2852]) -> [FAIL][181] ([i915#2842])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-skl:          [SKIP][182] ([fdo#109271] / [i915#1888]) -> [SKIP][183] ([fdo#109271])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl2/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl7/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
>     - shard-skl:          [SKIP][184] ([fdo#109271]) -> [SKIP][185] ([fdo#109271] / [i915#1888])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][186] ([i915#2920]) -> [SKIP][187] ([i915#658])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][188] ([fdo#111068] / [i915#658]) -> [SKIP][189] ([i915#2920])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb3/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][190] ([i915#658]) -> [SKIP][191] ([i915#2920])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-iclb4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][192], [FAIL][193], [FAIL][194], [FAIL][195], [FAIL][196]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][197], [FAIL][198], [FAIL][199], [FAIL][200], [FAIL][201]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl6/igt@runner@aborted.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl2/igt@runner@aborted.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl6/igt@runner@aborted.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl4/igt@runner@aborted.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11755/shard-apl2/igt@runner@aborted.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl8/igt@runner@aborted.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl6/igt@runner@aborted.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl6/igt@runner@aborted.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl3/igt@runner@aborted.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/shard-apl2/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3963]: https://gitlab.freedesktop.org/drm/intel/issues/3963
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6076]: https://gitlab.freedesktop.org/drm/intel/issues/6076
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11755 -> Patchwork_105063v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11755: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6522: 5be5a1a1f168a59614101b77385f05f12ec7d30a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_105063v1: 65b93b94d6bc932ed60bb3fd9d68242db25b1f3b @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105063v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
