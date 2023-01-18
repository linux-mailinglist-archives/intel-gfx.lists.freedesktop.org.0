Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8336716FF
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 10:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2955110E6D7;
	Wed, 18 Jan 2023 09:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA9F10E6E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 09:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674032698; x=1705568698;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EJJlmgHsNYDFROUzT8rQ+0Qb5JROaRwrRN7WHyS+ZYs=;
 b=BFnFWtyXYH5x+paHUJiGX03b1Z2vRRLywseuXmD/G8DO8dmngmuhG3Me
 RRT58W896dXrgfaEpeZ1KlwSRCItuiqKFkheBPs/jB6+iOyj1BqsgFXNV
 lP1aIxJiXeEQ0HEwba2PShjP4qhOOnqbeD7nzGec6AARgqOjCvxNqV18J
 ukNDYuJXEH7AftrBfzRqbLniPWEEBofVDzAR8E6FwUL3KuIKN56xSoYfY
 TU9rO0j+5mqlpRWiIzoNEv4xi9Mx5vQCuwWObAjoAjnLqe1g4mGUwNtBX
 tbXQOCL0vsoibB/Gs+De4YLGuAu9l2aOKpd+1ZMExA1+UK83rTI5tI7AC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="387286767"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="387286767"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:04:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="690107256"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="690107256"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:04:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
In-Reply-To: <167389346619.6372.8300923583741918415@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1673873708.git.jani.nikula@intel.com>
 <167389346619.6372.8300923583741918415@emeril.freedesktop.org>
Date: Wed, 18 Jan 2023 11:04:54 +0200
Message-ID: <874jsodxhl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_extract_vblank/scanline_code_to_a_separate_file_=28rev?=
 =?utf-8?q?3=29?=
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

On Mon, 16 Jan 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: extract vblank/scanline code to a separate file (rev3)
> URL   : https://patchwork.freedesktop.org/series/111854/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_12587_full -> Patchwork_111854v3_full
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_111854v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111854v3_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/index.html
>
> Participating hosts (13 -> 11)
> ------------------------------
>
>   Additional (1): shard-rkl0 
>   Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_111854v3_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
>     - shard-glk:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-glk7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk5/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
>

This was failing exactly the same way on an unrelated patch:

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v1/shard-glk8/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html


>   
> #### Suppressed ####
>
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
>
>   * igt@kms_force_connector_basic@force-edid:
>     - {shard-dg1}:        [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-dg1-17/igt@kms_force_connector_basic@force-edid.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-dg1-19/igt@kms_force_connector_basic@force-edid.html
>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_111854v3_full that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-glk:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk4/igt@gem_lmem_swapping@heavy-verify-random.html
>
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk4/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
>
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2346])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][9] ([fdo#109271]) +35 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
>
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#658])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>
>   
> #### Possible fixes ####
>
>   * igt@drm_fdinfo@virtual-idle:
>     - {shard-rkl}:        [FAIL][11] ([i915#7742]) -> [PASS][12] +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
>
>   * igt@fbdev@pan:
>     - {shard-rkl}:        [SKIP][13] ([i915#2582]) -> [PASS][14] +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-1/igt@fbdev@pan.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-6/igt@fbdev@pan.html
>
>   * igt@gem_create@hog-create@smem0:
>     - {shard-rkl}:        [FAIL][15] ([i915#7679]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-2/igt@gem_create@hog-create@smem0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-5/igt@gem_create@hog-create@smem0.html
>
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - {shard-rkl}:        [FAIL][17] ([i915#2842]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][19] ([i915#2842]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - {shard-rkl}:        [SKIP][21] ([i915#3281]) -> [PASS][22] +6 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - {shard-rkl}:        [SKIP][23] ([i915#3282]) -> [PASS][24] +2 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-1/igt@gem_partial_pwrite_pread@write-uncached.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-5/igt@gem_partial_pwrite_pread@write-uncached.html
>
>   * igt@gen9_exec_parse@unaligned-access:
>     - {shard-rkl}:        [SKIP][25] ([i915#2527]) -> [PASS][26] +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-1/igt@gen9_exec_parse@unaligned-access.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html
>
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - {shard-rkl}:        [SKIP][27] ([i915#4098]) -> [PASS][28] +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-4/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
>
>   * igt@i915_pm_dc@dc6-psr:
>     - {shard-rkl}:        [SKIP][29] ([i915#658]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-1/igt@i915_pm_dc@dc6-psr.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
>
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - {shard-dg1}:        [SKIP][31] ([i915#1937]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-dg1-18/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - {shard-dg1}:        [FAIL][33] ([i915#3591]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>
>   * igt@i915_pm_rpm@i2c:
>     - {shard-rkl}:        [SKIP][35] ([fdo#109308]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-4/igt@i915_pm_rpm@i2c.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-6/igt@i915_pm_rpm@i2c.html
>
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        [SKIP][37] ([i915#1845] / [i915#4098]) -> [PASS][38] +24 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html
>
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [FAIL][39] ([i915#2346]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
>     - shard-glk:          [FAIL][41] ([i915#79]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
>
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>     - {shard-rkl}:        [SKIP][43] ([i915#1849] / [i915#4098]) -> [PASS][44] +18 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
>
>   * igt@kms_hdmi_inject@inject-audio:
>     - {shard-rkl}:        [SKIP][45] ([i915#433]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-3/igt@kms_hdmi_inject@inject-audio.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-1/igt@kms_hdmi_inject@inject-audio.html
>
>   * igt@kms_plane@pixel-format@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][47] ([i915#1849]) -> [PASS][48] +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-4/igt@kms_plane@pixel-format@pipe-b-planes.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-6/igt@kms_plane@pixel-format@pipe-b-planes.html
>
>   * igt@kms_psr@dpms:
>     - {shard-rkl}:        [SKIP][49] ([i915#1072]) -> [PASS][50] +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-1/igt@kms_psr@dpms.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-6/igt@kms_psr@dpms.html
>
>   * igt@kms_universal_plane@universal-plane-pipe-a-functional:
>     - {shard-rkl}:        [SKIP][51] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
>
>   * igt@perf@gen12-mi-rpc:
>     - {shard-rkl}:        [SKIP][53] ([fdo#109289]) -> [PASS][54] +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-rkl-5/igt@perf@gen12-mi-rpc.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-rkl-4/igt@perf@gen12-mi-rpc.html
>
>   * igt@perf@stress-open-close:
>     - shard-glk:          [INCOMPLETE][55] ([i915#5213]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12587/shard-glk6/igt@perf@stress-open-close.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/shard-glk4/igt@perf@stress-open-close.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7679]: https://gitlab.freedesktop.org/drm/intel/issues/7679
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_12587 -> Patchwork_111854v3
>   * Piglit: piglit_4509 -> None
>
>   CI-20190529: 20190529
>   CI_DRM_12587: e4d10a72766332a0ca94db1fb9b4b2aa8b319172 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7120: dffabf00c79c55e0ae23b75d0a7922d55251ee5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111854v3: e4d10a72766332a0ca94db1fb9b4b2aa8b319172 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111854v3/index.html

-- 
Jani Nikula, Intel Open Source Graphics Center
