Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2844F9D69
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 20:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE2A10E213;
	Fri,  8 Apr 2022 18:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FE610E213
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 18:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649444395; x=1680980395;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cKTpFWCfufkYsehlpYDEYdpQ15kACGXhvcKYTrPH1Oc=;
 b=Z/6+BKJs6yTVLeMjhZOhwg2EolEqhxxUmMTwOXNkWOwz8/Bscns/mqM0
 F6+2cX61Se2RqomiuOBiyAg/Pnq9VpbYA4lFBsNISUkJorXMfXig2wm3p
 o4NFst4K3S1OCHjgyA68qhPoJm8fBZvMyw7l0XgsjAinPCV5D+doYU9J7
 BSVR7mwLz3m7b4O9Pd5rrLb4M30OB3XM5Rvuds+J/MmwNoDoknTPHhQCV
 kzFFIbbyVCVlD0XV+UpE1X6jYIuirohlFu9aWrDylmMi+Ojhl/rj+3W+U
 Hgjzc6NtOjcIsz8gOT/wl23dr3xsOMui158AEPOAUGp0Yb9AtATr7reUe A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10311"; a="261657631"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="261657631"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 11:59:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="653373610"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 11:59:48 -0700
Date: Fri, 8 Apr 2022 11:59:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YlCGI5Li/E7SFD2z@mdroper-desk1.amr.corp.intel.com>
References: <20220407161839.1073443-1-matthew.d.roper@intel.com>
 <164944366866.22675.3463897621187220340@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164944366866.22675.3463897621187220340@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Sunset_igpu_legacy_mmap_support_based_on_GRAPHICS=5FVE?=
 =?utf-8?q?R=5FFULL_=28rev2=29?=
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

On Fri, Apr 08, 2022 at 06:47:48PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Sunset igpu legacy mmap support based on GRAPHICS_VER_FULL (rev2)
> URL   : https://patchwork.freedesktop.org/series/102352/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11477_full -> Patchwork_22829_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22829_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22829_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22829_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

Non-graphics error.  Appears to be the same one reported in
https://gitlab.freedesktop.org/drm/intel/-/issues/636

Not caused by this patch.


Matt

> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][3] ([i915#4525]) -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][5] ([i915#4525]) -> [DMESG-FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11477_full and Patchwork_22829_full:
> 
> ### New Piglit tests (1) ###
> 
>   * spec@arb_copy_image@arb_copy_image-formats --samples=8:
>     - Statuses : 1 fail(s)
>     - Exec time: [2.36] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22829_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][9] ([i915#4547])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl8/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          NOTRUN -> [FAIL][10] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
>     - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-snb:          [PASS][14] -> [SKIP][15] ([fdo#109271]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl8/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#644])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#4270])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#768])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][22] ([i915#454])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         NOTRUN -> [WARN][23] ([i915#1804] / [i915#2684])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109293] / [fdo#109506])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#5286])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#110725] / [fdo#111614])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][27] ([i915#3743]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>     - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
>     - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +30 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl4/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_chamelium@dp-audio-edid:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@kms_chamelium@dp-audio-edid.html
> 
>   * igt@kms_chamelium@dp-hpd-with-enabled-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@kms_chamelium@dp-hpd-with-enabled-mode.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109300] / [fdo#111066])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3359])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109274] / [fdo#109278])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#2346])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl8/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([i915#426])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-render-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([i915#5287])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb8888-render-4tiled.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#2122])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-glk9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-glk7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109274]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#2122])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +95 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl8/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109280] / [fdo#111825])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109280]) +8 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +21 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#1188])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-skl4/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109289])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][60] -> [FAIL][61] ([fdo#108145] / [i915#265])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265]) +2 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [PASS][63] -> [SKIP][64] ([i915#5235]) +5 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#111068] / [i915#658])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109441])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#5289])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#5030]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][71] -> [INCOMPLETE][72] ([i915#3614])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109278]) +13 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@kms_vblank@pipe-d-ts-continuation-idle-hang.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#109502])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-tglb1/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2437])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@prime_nv_test@i915_nv_sharing:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109291]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@prime_nv_test@i915_nv_sharing.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][77] ([i915#5098])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][78] ([i915#5098])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl4/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2994])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb8/igt@sysfs_clients@pidname.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-tglb:         [TIMEOUT][80] ([i915#3063]) -> [PASS][81] +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-tglb7/igt@gem_eio@in-flight-contexts-immediate.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][82] ([i915#2846]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][84] ([i915#2842]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][86] ([i915#2842]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][88] ([i915#2842]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [SKIP][90] ([fdo#109271]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>     - shard-iclb:         [FAIL][92] ([i915#2842]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-snb:          [SKIP][94] ([fdo#109271]) -> [PASS][95] +3 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-snb4/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_spin_batch@engines@vcs0:
>     - shard-apl:          [FAIL][96] ([i915#2898]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-apl3/igt@gem_spin_batch@engines@vcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl6/igt@gem_spin_batch@engines@vcs0.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][98] -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][100] ([i915#2346]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][102] ([i915#2346] / [i915#533]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][104] ([i915#79]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@blocking-wf_vblank@a-edp1:
>     - shard-skl:          [FAIL][106] ([i915#2122]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-skl3/igt@kms_flip@blocking-wf_vblank@a-edp1.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl8/igt@kms_flip@blocking-wf_vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [FAIL][108] ([i915#79]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>     - shard-kbl:          [INCOMPLETE][112] ([i915#636]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [FAIL][114] ([i915#4911]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
>     - shard-iclb:         [SKIP][116] ([i915#5176]) -> [PASS][117] +2 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb4/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [SKIP][118] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         [SKIP][120] ([fdo#109441]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb3/igt@kms_psr@psr2_dpms.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb2/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [SKIP][122] ([i915#5519]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][124] ([i915#4939]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-skl:          [FAIL][126] ([i915#1731]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-skl3/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [WARN][128] ([i915#4055]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][130] ([i915#3063] / [i915#3648]) -> [FAIL][131] ([i915#232])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-tglb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [DMESG-WARN][132] -> [SKIP][133] ([i915#4525]) +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [DMESG-WARN][134] ([i915#5566] / [i915#716]) -> [DMESG-WARN][135] ([i915#5566])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11477/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/shard-apl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][136] ([i915#5
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22829/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
