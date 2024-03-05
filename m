Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDA28727FE
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 20:51:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD77112C72;
	Tue,  5 Mar 2024 19:51:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kNWRaBiO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61573112C72
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 19:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709668297; x=1741204297;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=SVHPio5Xyhyv6PbooYs5Jb78iMqnoGshJAgfvtETUx0=;
 b=kNWRaBiOFgzhRIs8gDQlR0mY37WA3LSB1bqAA1y7wjyPEZGL6TeRHKby
 sfrh1GDEivu7raXc6Zohv3V4fQP+2hCX6qQNKHw04145ZB5Agl2COkfgp
 iEZkT1HyVKXC2PCVULaSznsHoHzuz/6qQkW3KTCsr5sRFQ0MxxDzUTYc2
 +cx9KwyrCc6BBA2blX6h6+FjmkdZwWD4rdkZRE8JaK1oSTLyzwA2xswh2
 wVGqPuNvkjiV5I/iMsVgzDK42hUKiLuF69a5i1nG0eg8QrqUoYjQG3cTU
 HR9dZXW6pxD4nGUXGIWvdk9tQvnLziMc6rGcVtufbCQkYWyVhWTzBt/y0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="15673511"
X-IronPort-AV: E=Sophos;i="6.06,206,1705392000"; d="scan'208";a="15673511"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 11:51:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,206,1705392000"; 
   d="scan'208";a="9384229"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 11:51:34 -0800
Date: Tue, 5 Mar 2024 21:51:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Drew Davenport <ddavenport@chromium.org>,
 Ankit K Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915/dp: Fix connector DSC HW state readout (rev2)
Message-ID: <Zed33zxSNUaYx8Qx@ideak-desk.fi.intel.com>
References: <20240205132631.1588577-1-imre.deak@intel.com>
 <170932324138.436087.3262106125069784312@8e613ede5ea5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <170932324138.436087.3262106125069784312@8e613ede5ea5>
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

On Fri, Mar 01, 2024 at 08:00:41PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix connector DSC HW state readout (rev2)
> URL   : https://patchwork.freedesktop.org/series/129540/
> State : failure

Thanks for the report/testing and review, patch is pushed to
drm-intel-next. The failure is unrelated see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14368_full -> Patchwork_129540v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_129540v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_129540v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (7 -> 8)
> ------------------------------
> 
>   Additional (1): shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_129540v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [PASS][1] -> [ABORT][2] +1 other test abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg1-12/igt@kms_pm_rpm@i2c.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-19/igt@kms_pm_rpm@i2c.html

The above is due to:

<4> [479.015131] ffffffff827b6a68 (acpi_wakeup_lock){+.+.}-{3:3}, at: acpi_device_wakeup_disable+0x12/0x50
<4> [479.015141] but task is already holding lock:
<4> [479.015143] ffff888105342a40 (&hwmon->hwmon_lock){+.+.}-{3:3}, at: hwm_energy+0x4b/0x100 [i915]

which looks equivalent to:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14378/bat-dg2-9/igt@kms_pm_rpm@basic-pci-d3-state.html#dmesg-warnings426

<4> [192.005528] ffffffff82764d80 (fs_reclaim){+.+.}-{0:0}, at: __kmalloc+0x9a/0x350
<4> [192.005538] but task is already holding lock:
<4> [192.005540] ffff888154108640 (&hwmon->hwmon_lock){+.+.}-{3:3}, at: hwm_energy+0x4b/0x100 [i915]

since fs_reclaim is also part of the dependency chain in the former
case.


> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_14368_full and Patchwork_129540v2_full:
> 
> ### New IGT tests (4) ###
> 
>   * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-a-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.45] s
> 
>   * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-d-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.29] s
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-c-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.93] s
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-c-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.21] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_129540v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [FAIL][36], [PASS][37], [FAIL][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [FAIL][50], [PASS][51]) ([i915#8293])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk9/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk1/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk1/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk9/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk8/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk8/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk8/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk7/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk7/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk7/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk1/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk4/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk3/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk3/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk3/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk2/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk2/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk9/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk9/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk9/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk8/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk8/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk7/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk7/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk3/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk3/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk3/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk2/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk2/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk1/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk1/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#8411])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@drm_fdinfo@busy@bcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#8414]) +6 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@drm_fdinfo@busy@bcs0.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][54] ([i915#7742])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#8414]) +21 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#3936])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#9323])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-tglu:         NOTRUN -> [SKIP][58] ([fdo#109314])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#8555])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#8555]) +1 other test skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#8555])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#280]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#280])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [PASS][64] -> [ABORT][65] ([i915#10030] / [i915#7975] / [i915#8213])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-tglu-7/igt@gem_eio@hibernate.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-10/igt@gem_eio@hibernate.html
>     - shard-rkl:          NOTRUN -> [ABORT][66] ([i915#7975] / [i915#8213])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-5/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg1:          [PASS][67] -> [FAIL][68] ([i915#5784])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg1-18/igt@gem_eio@kms.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-12/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4771])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4812]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@hog:
>     - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#4812])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_exec_balancer@hog.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-dg2:          NOTRUN -> [FAIL][72] ([i915#9606])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-dg1:          NOTRUN -> [FAIL][73] ([i915#9606])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_fair@basic-flow:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3539] / [i915#4852]) +4 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@gem_exec_fair@basic-flow.html
> 
>   * igt@gem_exec_fair@basic-none-solo:
>     - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#4473])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_exec_fair@basic-none-solo.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-glk:          [PASS][76] -> [FAIL][77] ([i915#2842]) +1 other test fail
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk9/igt@gem_exec_fair@basic-pace@vcs0.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle:
>     - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4473] / [i915#4771])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_exec_fair@basic-throttle.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-tglu:         [PASS][79] -> [FAIL][80] ([i915#2842])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-tglu-5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-10/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_fence@submit:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#4812])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@gem_exec_fence@submit.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3539]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-before-default:
>     - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#3539] / [i915#4852]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@gem_exec_flush@basic-wb-ro-before-default.html
> 
>   * igt@gem_exec_gttfill@multigpu-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#7697])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@gem_exec_gttfill@multigpu-basic.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3281]) +17 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-cpu-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#3281]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#3281]) +3 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3281]) +1 other test skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4537] / [i915#4812]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4860]) +2 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#4613])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][92] ([i915#5493])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#4613])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#4613])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_mmap@pf-nonblock:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#4083])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-6/igt@gem_mmap@pf-nonblock.html
> 
>   * igt@gem_mmap_gtt@basic-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#4077]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_mmap_gtt@basic-copy.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4077]) +12 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@gem_mmap_gtt@basic-small-bo.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4083]) +6 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#3282]) +6 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3282]) +2 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#3282]) +1 other test skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#4270])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4270]) +4 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#4270]) +1 other test skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#4270])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#4270])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#3282])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#8428]) +2 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs@smem:
>     - shard-snb:          NOTRUN -> [SKIP][109] ([fdo#109271]) +14 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-snb2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs@smem.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4885])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_tiled_blits@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#4077])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@gem_tiled_blits@basic.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4079]) +2 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#3297]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#3297] / [i915#4880]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#3297]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3297]) +3 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#3297])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([fdo#109289]) +1 other test skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gen3_render_linear_blits.html
> 
>   * igt@gen7_exec_parse@cmd-crossing-page:
>     - shard-dg1:          NOTRUN -> [SKIP][119] ([fdo#109289]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@gen7_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#2856])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#2527] / [i915#2856])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#2527])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#2856]) +4 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#6227])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][125] ([i915#9849])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-snb4/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          [PASS][126] -> [INCOMPLETE][127] ([i915#9849])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#7091])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#6590])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-dg1:          [PASS][130] -> [FAIL][131] ([i915#3591])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([fdo#109293] / [fdo#109506])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#6621])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#8925])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@i915_pm_rps@thresholds-park@gt0.html
> 
>   * igt@i915_pm_rps@thresholds@gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#8925])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@i915_pm_rps@thresholds@gt0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#4387])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@i915_pm_sseu@full-enable.html
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#4387])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#7984])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@i915_power@sanity.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#6188])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([fdo#109303])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-mtlp:         NOTRUN -> [DMESG-WARN][141] ([i915#9311])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#7707])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4212]) +2 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#8709]) +7 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#8709]) +3 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#1769] / [i915#3555])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#1769] / [i915#3555])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][148] ([fdo#111614]) +1 other test skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-mtlp:         [PASS][149] -> [FAIL][150] ([i915#5138])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([fdo#111615] / [i915#5286])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#5286]) +1 other test skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#4538] / [i915#5286])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([fdo#111614] / [i915#3638])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-tglu:         NOTRUN -> [SKIP][155] ([fdo#111614])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([fdo#111614]) +6 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [FAIL][157] ([i915#3743])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#4538] / [i915#5190]) +12 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#5190]) +15 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([fdo#110723])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][161] ([fdo#111615]) +2 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][162] ([fdo#111615]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#4538])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#7213]) +4 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#3742])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#4087]) +3 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-6/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-mtlp:         NOTRUN -> [SKIP][167] ([fdo#111827])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([fdo#111827]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_color@ctm-red-to-blue:
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([fdo#111827])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@kms_chamelium_color@ctm-red-to-blue.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([fdo#111827])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#7828]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#7828]) +14 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#7828]) +1 other test skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#7828]) +2 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#7828]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#7118] / [i915#9424])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#3299]) +2 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#3299])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#9424])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#9424])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#7116])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#6944] / [i915#9424])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#3555]) +2 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#3359])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#8814])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3359]) +4 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#3555]) +8 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#4103] / [i915#4213]) +2 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([fdo#109274]) +1 other test skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([fdo#109274] / [i915#5354]) +4 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#9809]) +1 other test skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([fdo#111825]) +2 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#9067])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@torture-bo@pipe-a:
>     - shard-snb:          [PASS][194] -> [DMESG-WARN][195] ([i915#10166])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-dg1:          [PASS][196] -> [DMESG-WARN][197] ([i915#10166])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg1-18/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-19/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([fdo#110189] / [i915#9227])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-dp-4.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([fdo#110189] / [i915#9723])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][200] ([fdo#110189] / [i915#9723])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#3804])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#3840])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#3555] / [i915#3840])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#3840] / [i915#9053])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([fdo#110189] / [i915#3955])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#4854])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_feature_discovery@chamelium.html
>     - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#4854])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#1839])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_feature_discovery@display-3x.html
>     - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#1839])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-6/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#1839])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#4881])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-6/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][212] ([fdo#109274] / [i915#3637])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([fdo#109274]) +6 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([fdo#109274] / [fdo#111767]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg1:          NOTRUN -> [SKIP][215] ([fdo#111825] / [i915#9934]) +1 other test skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#8381]) +3 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#3555] / [i915#8810]) +1 other test skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#2672]) +7 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#2672])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#5274])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#8708])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [FAIL][222] ([i915#6880])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#5354]) +36 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([fdo#111767] / [fdo#111825] / [i915#1825])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-snb:          [PASS][225] -> [SKIP][226] ([fdo#109271]) +5 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#1825]) +11 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#8708]) +5 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#10055])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#3458]) +4 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#3023]) +4 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#8708]) +31 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][233] ([fdo#111825]) +6 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([fdo#111825] / [i915#1825]) +7 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([fdo#111767] / [i915#5354]) +1 other test skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][236] ([fdo#111767] / [i915#1825])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#5439])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#10055])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@plane-fbc-rte:
>     - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#10070])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][240] ([fdo#110189]) +6 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][241] ([fdo#109280]) +9 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#3458]) +23 other tests skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#433])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8228])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#3555] / [i915#8228])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#6301])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#6301])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][248] ([fdo#109289]) +7 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#8821])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8806])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][251] ([fdo#109274] / [i915#5354] / [i915#9423])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#9423]) +3 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#9423]) +3 other tests skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b-edp-1:
>     - shard-mtlp:         [PASS][254] -> [DMESG-WARN][255] ([i915#1982])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-mtlp-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b-edp-1.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#9423]) +19 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#5176] / [i915#9423]) +1 other test skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#5235]) +3 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#5235]) +3 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#5235] / [i915#9423]) +19 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#5235]) +7 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#9292])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#9685])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#9340])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#8430])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#9519])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [PASS][267] -> [SKIP][268] ([i915#9519]) +1 other test skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#9519])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#6524] / [i915#6805])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg1:          NOTRUN -> [SKIP][271] ([i915#6524])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf@psr2-pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#9808]) +1 other test skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf@psr2-pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][273] ([fdo#110189]) +6 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#9683])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-plane-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#9688]) +3 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#9732]) +21 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr-cursor-render:
>     - shard-tglu:         NOTRUN -> [SKIP][277] ([i915#9732]) +4 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@kms_psr@fbc-psr-cursor-render.html
> 
>   * igt@kms_psr@fbc-psr-primary-render:
>     - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#9732]) +6 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_psr@fbc-psr-primary-render.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#9732]) +5 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-no-drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#9673] / [i915#9732]) +10 other tests skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_psr@psr2-no-drrs.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg1:          NOTRUN -> [SKIP][281] ([i915#9685])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#4235]) +1 other test skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-dg1:          NOTRUN -> [SKIP][283] ([i915#5289])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-rkl:          NOTRUN -> [ABORT][284] ([i915#8875] / [i915#9926])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#4235] / [i915#5190]) +1 other test skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][286] ([i915#5030]) +2 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#5030] / [i915#9041])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#8623])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][289] -> [FAIL][290] ([i915#9196])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#9906])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-dg1:          NOTRUN -> [SKIP][292] ([i915#3555])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#9906]) +1 other test skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#2437])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#7387])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@perf@global-sseu-config.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#2434] / [i915#7387])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@perf@mi-rpc.html
> 
>   * igt@perf@oa-exponents@0-rcs0:
>     - shard-mtlp:         [PASS][297] -> [FAIL][298] ([i915#10016])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-mtlp-5/igt@perf@oa-exponents@0-rcs0.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-2/igt@perf@oa-exponents@0-rcs0.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          NOTRUN -> [FAIL][299] ([i915#4349]) +3 other tests fail
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][300] ([i915#6806])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][301] ([i915#5793])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-6/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#8516])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@perf_pmu@rc6@runtime-pm-long-gt0:
>     - shard-dg1:          [PASS][303] -> [ABORT][304] ([i915#9853])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg1-15/igt@perf_pmu@rc6@runtime-pm-long-gt0.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-15/igt@perf_pmu@rc6@runtime-pm-long-gt0.html
> 
>   * igt@prime_udl:
>     - shard-mtlp:         NOTRUN -> [SKIP][305] ([fdo#109291])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@prime_udl.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#3708] / [i915#4077])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-6/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#3708] / [i915#4077])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#3291] / [i915#3708]) +1 other test skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-7/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][309] ([fdo#109295] / [i915#3708])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#9917]) +1 other test skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-dg2:          NOTRUN -> [FAIL][311] ([i915#9779])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-1/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_get_bo_offset@get-bad-handle:
>     - shard-dg1:          NOTRUN -> [SKIP][312] ([i915#2575]) +1 other test skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@v3d/v3d_get_bo_offset@get-bad-handle.html
> 
>   * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][313] ([fdo#109315]) +3 other tests skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html
> 
>   * igt@v3d/v3d_submit_cl@bad-flag:
>     - shard-mtlp:         NOTRUN -> [SKIP][314] ([i915#2575]) +2 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@v3d/v3d_submit_cl@bad-flag.html
> 
>   * igt@v3d/v3d_submit_cl@simple-flush-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#2575]) +15 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@v3d/v3d_submit_cl@simple-flush-cache.html
> 
>   * igt@v3d/v3d_submit_csd@bad-extension:
>     - shard-tglu:         NOTRUN -> [SKIP][316] ([fdo#109315] / [i915#2575]) +2 other tests skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@v3d/v3d_submit_csd@bad-extension.html
> 
>   * igt@vc4/vc4_mmap@mmap-bad-handle:
>     - shard-dg1:          NOTRUN -> [SKIP][317] ([i915#7711])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-17/igt@vc4/vc4_mmap@mmap-bad-handle.html
> 
>   * igt@vc4/vc4_mmap@mmap-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][318] ([i915#7711]) +10 other tests skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-5/igt@vc4/vc4_mmap@mmap-bo.html
> 
>   * igt@vc4/vc4_perfmon@create-perfmon-0:
>     - shard-tglu:         NOTRUN -> [SKIP][319] ([i915#2575]) +1 other test skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-2/igt@vc4/vc4_perfmon@create-perfmon-0.html
> 
>   * igt@vc4/vc4_tiling@set-bad-flags:
>     - shard-mtlp:         NOTRUN -> [SKIP][320] ([i915#7711]) +2 other tests skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-5/igt@vc4/vc4_tiling@set-bad-flags.html
> 
>   * igt@vc4/vc4_wait_bo@bad-pad:
>     - shard-rkl:          NOTRUN -> [SKIP][321] ([i915#7711]) +1 other test skip
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@vc4/vc4_wait_bo@bad-pad.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [FAIL][322] ([i915#7742]) -> [PASS][323]
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [INCOMPLETE][324] ([i915#7297]) -> [PASS][325]
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [FAIL][326] ([i915#5784]) -> [PASS][327] +1 other test pass
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg1-12/igt@gem_eio@unwedge-stress.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-19/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglu:         [FAIL][328] ([i915#2842]) -> [PASS][329] +1 other test pass
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-7/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          [FAIL][330] ([i915#2842]) -> [PASS][331] +2 other tests pass
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_workarounds@reset:
>     - shard-dg1:          [ABORT][332] -> [PASS][333]
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg1-17/igt@gem_workarounds@reset.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-13/igt@gem_workarounds@reset.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [INCOMPLETE][334] ([i915#9849]) -> [PASS][335]
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [ABORT][336] ([i915#10131] / [i915#9820]) -> [PASS][337]
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][338] ([i915#9407]) -> [PASS][339]
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [FAIL][340] ([i915#3591]) -> [PASS][341]
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [FAIL][342] ([i915#10031]) -> [PASS][343]
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [FAIL][344] ([i915#3743]) -> [PASS][345]
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>     - shard-snb:          [SKIP][346] ([fdo#109271]) -> [PASS][347]
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-snb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@torture-bo@pipe-a:
>     - shard-tglu:         [DMESG-WARN][348] ([i915#10166]) -> [PASS][349]
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-tglu-9/igt@kms_cursor_legacy@torture-bo@pipe-a.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-10/igt@kms_cursor_legacy@torture-bo@pipe-a.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>     - shard-mtlp:         [FAIL][350] ([i915#79]) -> [PASS][351]
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-mtlp-7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
>     - shard-snb:          [INCOMPLETE][352] ([i915#4839]) -> [PASS][353]
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-snb4/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][354] ([i915#9519]) -> [PASS][355]
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [SKIP][356] ([i915#9519]) -> [PASS][357]
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
>     - shard-mtlp:         [FAIL][358] ([i915#9196]) -> [PASS][359]
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [FAIL][360] ([i915#9196]) -> [PASS][361]
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-tglu:         [FAIL][362] ([i915#3591]) -> [WARN][363] ([i915#2681])
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render:
>     - shard-snb:          [SKIP][364] ([fdo#109271] / [fdo#111767]) -> [SKIP][365] ([fdo#109271])
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:
>     - shard-dg1:          [SKIP][366] ([fdo#111825] / [i915#4423]) -> [SKIP][367] ([fdo#111825])
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_psr@psr2-cursor-blt:
>     - shard-dg2:          [SKIP][368] ([i915#9673] / [i915#9732]) -> [SKIP][369] ([i915#9732]) +7 other tests skip
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg2-11/igt@kms_psr@psr2-cursor-blt.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-2/igt@kms_psr@psr2-cursor-blt.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][370] ([i915#9732]) -> [SKIP][371] ([i915#9673] / [i915#9732]) +7 other tests skip
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14368/shard-dg2-5/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#10016]: https://gitlab.freedesktop.org/drm/intel/issues/10016
>   [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
>   [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
>   [i915#10055]: https://gitlab.freedesktop.org/drm/intel/issues/10055
>   [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
>   [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
>   [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
>   [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
>   [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9041]: https://gitlab.freedesktop.org/drm/intel/issues/9041
>   [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9292]: https://gitlab.freedesktop.org/drm/intel/issues/9292
>   [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
>   [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
>   [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9853]: https://gitlab.freedesktop.org/drm/intel/issues/9853
>   [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
>   [i915#9926]: https://gitlab.freedesktop.org/drm/intel/issues/9926
>   [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14368 -> Patchwork_129540v2
> 
>   CI-20190529: 20190529
>   CI_DRM_14368: 68e66ae04f6f2718699716285e8ddb09a469af35 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7738: 7738
>   Patchwork_129540v2: 68e66ae04f6f2718699716285e8ddb09a469af35 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129540v2/index.html
