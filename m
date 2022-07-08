Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF45656BE30
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 18:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C214510E07C;
	Fri,  8 Jul 2022 16:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F125110E07C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 16:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657298125; x=1688834125;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dQr8VEcjqTOb6UpSyrhYGYhHOBjKo/KXtJ34CU+4MnE=;
 b=Y/pnJA3lwykkdeRMaY6bP+iLMioAjmOEcYMUtSEfTpSbdB8E7SbHao+m
 boZI3UmycXVNBaTnys77/FIh4fN/zqmvXJANtxYqXLYHDHHlbW4S073rW
 uVE201TyS9imopv2hpGphAMIdU/myC4FYFqfyNdKxT0+kwgFsFQrFiY/v
 P5QrOhO2+mL1Y9rDEd4jZVGh3CAjRUaZ18JMFBW45ac78kBC4h+jgQclg
 /0nvQjef8w+6PT3jtiHtsGrwaUIFwZpZRk2hWZssF6UR6l8ge1Y7Mu0KJ
 Wl8UICZo/shOY4+okvg1iM8PQuuUR848u14z6tVYXXfuUkqz8Pao6tpt1 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10402"; a="281872903"
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="281872903"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 09:35:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="651626778"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 09:35:25 -0700
Date: Fri, 8 Jul 2022 09:35:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YshcywCQe0F8487V@mdroper-desk1.amr.corp.intel.com>
References: <20220701232006.1016135-1-matthew.d.roper@intel.com>
 <165678630900.30218.6298585532677569920@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165678630900.30218.6298585532677569920@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Add_general_DSS_steering_iterator_to_intel=5Fgt=5Fm?=
 =?utf-8?b?Y3IgKHJldjIp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jul 02, 2022 at 06:25:09PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Add general DSS steering iterator to intel_gt_mcr (rev2)
> URL   : https://patchwork.freedesktop.org/series/105883/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11842_full -> Patchwork_105883v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_105883v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_105883v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 13)
> ------------------------------
> 
>   Additional (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_105883v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][1] +3 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

Seems to be new tests that match
https://gitlab.freedesktop.org/drm/intel/-/issues/2672 .

New tests were likely introduced by

commit 01f75333df0d27768ef987653ab49c3a1223ce3d
Author:     Swati Sharma <swati2.sharma@intel.com>
AuthorDate: Thu Jun 30 13:15:11 2022 +0300
Commit:     Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
CommitDate: Fri Jul 1 12:41:09 2022 +0300

    tests/i915/kms_flip_scaled_crc: Add new tests covering modifiers and pixel-formats

> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-hdmi-a-2:
>     - shard-glk:          [PASS][2] -> [FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk7/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-hdmi-a-2.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-hdmi-a-2.html

CRC mismatch.  Display CRCs would not be impacted by this patch which
just adds a new GT loop interface


Patch applied to drm-intel-gt-next.  Thanks Matt Atwood for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - {shard-dg1}:        NOTRUN -> [INCOMPLETE][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-dg1-15/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - {shard-tglu}:       NOTRUN -> [SKIP][5] +14 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>     - {shard-dg1}:        NOTRUN -> [SKIP][6] +13 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
>     - {shard-rkl}:        NOTRUN -> [SKIP][7] +31 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
> 
>   * {igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode}:
>     - shard-iclb:         NOTRUN -> [SKIP][8] +2 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@arb_gpu_shader5@texturegatheroffsets@fs-rgba-0-unorm-2d:
>     - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][9]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/pig-glk-j5005/spec@arb_gpu_shader5@texturegatheroffsets@fs-rgba-0-unorm-2d.html
> 
>   * spec@ext_framebuffer_multisample@sample-coverage 4 non-inverted:
>     - pig-skl-6260u:      NOTRUN -> [CRASH][10]
>    [10]: None
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_105883v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile:
>     - shard-snb:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#1099])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-snb5/igt@gem_ctx_persistence@legacy-engines-hostile.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][12] ([i915#180])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl4/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#4525])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#4525])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          NOTRUN -> [FAIL][16] ([i915#6141])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#2842]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#2842]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#2842])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_parallel@fds@vcs1:
>     - shard-kbl:          [PASS][25] -> [INCOMPLETE][26] ([i915#6310]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-kbl4/igt@gem_exec_parallel@fds@vcs1.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl6/igt@gem_exec_parallel@fds@vcs1.html
> 
>   * igt@gem_exec_schedule@preempt-user@vecs0:
>     - shard-glk:          [PASS][27] -> [INCOMPLETE][28] ([i915#6310]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk6/igt@gem_exec_schedule@preempt-user@vecs0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk6/igt@gem_exec_schedule@preempt-user@vecs0.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-kbl:          [PASS][29] -> [INCOMPLETE][30] ([i915#4831])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-kbl1/igt@gem_exec_suspend@basic-s0@smem.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl6/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#2190])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl4/igt@gem_lmem_swapping@heavy-verify-random.html
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#4613])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl3/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([i915#4613])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][37] ([i915#2658])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#4270])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_render_copy@linear-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#768])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-glk:          NOTRUN -> [FAIL][40] ([i915#4171])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk3/igt@gem_softpin@evict-single-offset.html
>     - shard-iclb:         [PASS][41] -> [FAIL][42] ([i915#4171])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb8/igt@gem_softpin@evict-single-offset.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb2/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109290])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][44] ([i915#4991])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl7/igt@gem_userptr_blits@input-checking.html
>     - shard-apl:          NOTRUN -> [DMESG-WARN][45] ([i915#4991])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl1/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-kbl7/igt@gem_workarounds@suspend-resume-context.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl7/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109289])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [PASS][49] -> [DMESG-WARN][50] ([i915#5566] / [i915#716])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl1/igt@gen9_exec_parse@allowed-all.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>     - shard-skl:          NOTRUN -> [FAIL][51] ([i915#2521])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#5286])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#110725] / [fdo#111614])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +84 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][55] ([i915#3763])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl4/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278] / [i915#3886])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271]) +34 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk1/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl3/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109278]) +7 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +118 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl7/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#3742])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@dp-frame-dump:
>     - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl3/igt@kms_chamelium@dp-frame-dump.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl4/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-snb:          NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-snb5/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-25:
>     - shard-glk:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][71] ([i915#2105])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1:
>     - shard-glk:          [PASS][72] -> [SKIP][73] ([fdo#109271])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk1/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk8/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-render-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#5287])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_draw_crc@draw-method-xrgb8888-render-4tiled.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109274])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
>     - shard-glk:          [PASS][76] -> [FAIL][77] ([i915#2122])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][78] -> [FAIL][79] ([i915#79]) +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
>     - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#2122])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109280]) +10 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#1888]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][84] ([fdo#108145] / [i915#265])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][85] -> [FAIL][86] ([fdo#108145] / [i915#265])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#5176]) +2 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [PASS][88] -> [SKIP][89] ([i915#5176]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][90] -> [SKIP][91] ([i915#5235]) +2 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#5235]) +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#658])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#658])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl4/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#658])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#658])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl4/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][97] -> [SKIP][98] ([fdo#109441]) +2 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109441])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][100] ([i915#3555])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271]) +95 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl4/igt@kms_vrr@flipline.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2437])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk1/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#2530])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@nouveau_crc@pipe-c-ctx-flip-detection.html
> 
>   * igt@prime_nv_test@i915_import_cpu_mmap:
>     - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109291]) +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@prime_nv_test@i915_import_cpu_mmap.html
> 
>   * igt@sw_sync@sync_merge:
>     - shard-iclb:         NOTRUN -> [FAIL][105] ([i915#6140])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@sw_sync@sync_merge.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2994])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl4/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2994])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl3/igt@sysfs_clients@recycle.html
>     - shard-kbl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2994])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl4/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk3/igt@sysfs_clients@sema-25.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-snb:          NOTRUN -> [SKIP][110] ([fdo#109271]) +47 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-snb5/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-iclb:         NOTRUN -> [SKIP][111] ([i915#2994])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb5/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@dirty-create@bcs0:
>     - shard-glk:          [INCOMPLETE][112] ([i915#6310]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk5/igt@gem_ctx_isolation@dirty-create@bcs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk3/igt@gem_ctx_isolation@dirty-create@bcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [FAIL][114] ([i915#5784]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-tglb1/igt@gem_eio@unwedge-stress.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-tglb7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][116] ([i915#4525]) -> [PASS][117] +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - shard-tglb:         [INCOMPLETE][118] ([i915#3778]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-tglb5/igt@gem_exec_endless@dispatch@bcs0.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-tglb1/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [FAIL][120] ([i915#2842]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-glk:          [FAIL][122] ([i915#2842]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk1/igt@gem_exec_fair@basic-pace@vcs0.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [FAIL][124] ([i915#2842]) -> [PASS][125] +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority:
>     - shard-glk:          [DMESG-WARN][126] ([i915#118]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk7/igt@gem_exec_whisper@basic-fds-priority.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk1/igt@gem_exec_whisper@basic-fds-priority.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [DMESG-WARN][128] ([i915#180]) -> [PASS][129] +2 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][130] ([i915#5566] / [i915#716]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk7/igt@gen9_exec_parse@allowed-all.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk1/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][132] ([i915#3921]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic:
>     - shard-skl:          [FAIL][134] -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
>     - shard-skl:          [FAIL][136] ([i915#2346]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [FAIL][138] ([i915#4767]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][140] ([i915#79]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * {igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode}:
>     - shard-iclb:         [SKIP][142] -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-hdmi-a-1:
>     - shard-glk:          [FAIL][144] ([i915#1888]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk7/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-hdmi-a-1.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [SKIP][146] ([fdo#109441]) -> [PASS][147] +1 similar issue
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglb:         [SKIP][148] ([i915#5519]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-tglb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][150] ([i915#180]) -> [PASS][151] +4 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-tglb:         [FAIL][152] ([i915#5639]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-tglb3/igt@perf@polling-parameterized.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-tglb5/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_create@create-massive:
>     - shard-glk:          [DMESG-WARN][154] ([i915#1888] / [i915#4991]) -> [DMESG-WARN][155] ([i915#4991])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-glk3/igt@gem_create@create-massive.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-glk9/igt@gem_create@create-massive.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][156] ([i915#6117]) -> [SKIP][157] ([i915#4525])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-skl:          [SKIP][158] ([fdo#109271]) -> [SKIP][159] ([fdo#109271] / [i915#1888])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][160] ([i915#658]) -> [SKIP][161] ([i915#588])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [DMESG-FAIL][162] ([i915#180]) -> [FAIL][163] ([i915#1188])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][164] ([i915#658]) -> [SKIP][165] ([i915#2920])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][166] ([i915#2920]) -> [SKIP][167] ([i915#658])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][168] ([fdo#111068] / [i915#658]) -> [SKIP][169] ([i915#2920])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][170] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][171] ([i915#5939])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-iclb1/igt@kms_psr2_su@page_flip-nv12.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-skl:          [SKIP][172] ([fdo#109271] / [i915#1888]) -> [SKIP][173] ([fdo#109271]) +2 similar issues
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl3/igt@kms_psr@psr2_sprite_plane_onoff.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl7/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][178], [FAIL][179], [FAIL][180]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl1/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl3/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl9/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11842/shard-skl3/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl7/igt@runner@aborted.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl3/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/shard-skl3/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109290]: https://bugs.freedesktop.org/show_bug.cgi?id=109290
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
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
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4831]: https://gitlab.freedesktop.org/drm/intel/issues/4831
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6076]: https://gitlab.freedesktop.org/drm/intel/issues/6076
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6310]: https://gitlab.freedesktop.org/drm/intel/issues/6310
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11842 -> Patchwork_105883v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11842: 11d480026e922adacd274306728adb6df6dd262a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6554: 2824470eeed46d448ccc8111f96736da3abe66b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_105883v2: 11d480026e922adacd274306728adb6df6dd262a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105883v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
