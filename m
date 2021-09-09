Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE784046EC
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 10:20:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4801C6E492;
	Thu,  9 Sep 2021 08:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D6D6E492
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 08:20:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="207832722"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="207832722"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 01:20:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="696140607"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.179])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 01:20:34 -0700
Date: Thu, 9 Sep 2021 13:33:49 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org, lakshminarayana.vudum@intel.com
Cc: "Li, Juston" <juston.li@intel.com>
Message-ID: <20210909080321.GD814@intel.com>
References: <20210819184835.1181323-1-juston.li@intel.com>
 <163035788910.14975.7622843980922098475@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163035788910.14975.7622843980922098475@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/hdcp=3A_HDCP2=2E2_MST_dock_fixes_=28rev8=29?=
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

On 2021-08-30 at 21:11:29 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/hdcp: HDCP2.2 MST dock fixes (rev8)
> URL   : https://patchwork.freedesktop.org/series/93570/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10537_full -> Patchwork_20921_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20921_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20921_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20921_full:
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@!opengl 3.0@required-renderbuffer-attachment-formats (NEW):
>     - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][1] +2 similar issues
>    [1]: None
Above failures not related to HDCP failures.
Pushed the series to drm-intel-next.
Thanks for patch.
Br,
Anshuman Gupta.
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_10537_full and Patchwork_20921_full:
> 
> ### New Piglit tests (3) ###
> 
>   * spec@!opengl 3.0@render-integer:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@!opengl 3.0@required-renderbuffer-attachment-formats:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@!opengl 3.0@required-sized-texture-formats:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20921_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-snb5/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +5 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-snb6/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-iclb:         [PASS][6] -> [TIMEOUT][7] ([i915#3070])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb3/igt@gem_eio@in-flight-contexts-immediate.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb2/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#2369] / [i915#3063] / [i915#3648])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-tglb8/igt@gem_eio@unwedge-stress.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-tglb2/igt@gem_eio@unwedge-stress.html
>     - shard-snb:          NOTRUN -> [FAIL][10] ([i915#3354])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-snb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          NOTRUN -> [FAIL][11] ([i915#2846])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl6/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#1888] / [i915#307])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk6/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][21] ([i915#3002])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl1/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-snb:          NOTRUN -> [SKIP][22] ([fdo#109271]) +373 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type@fixed:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#3976])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@i915_pm_rpm@gem-mmap-type@fixed.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][26] -> [INCOMPLETE][27] ([i915#3921])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-snb5/igt@i915_selftest@live@hangcheck.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-snb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#2521])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110725] / [fdo#111614])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][33] ([i915#3722])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +12 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278] / [i915#3886])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3689]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689] / [i915#3886])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl10/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +17 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl7/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl10/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
>     - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +19 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#111828])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-tglb2/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#3116])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][46] ([i915#1319]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl7/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          [PASS][49] -> [INCOMPLETE][50] ([i915#155])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-random:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278] / [fdo#109279])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@kms_cursor_crc@pipe-c-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x85-random:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278]) +5 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#2346]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl2/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
>     - shard-skl:          [PASS][56] -> [DMESG-WARN][57] ([i915#1982])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
> 
>   * igt@kms_dsc@basic-dsc-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#3840])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@kms_dsc@basic-dsc-enable.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109274])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
>     - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#79])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:
>     - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2122])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk1/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk8/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +80 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl2/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109280]) +2 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff:
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#111825]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#1188])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +33 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl6/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][72] -> [FAIL][73] ([fdo#108145] / [i915#265]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][75] ([i915#265])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>     - shard-skl:          NOTRUN -> [FAIL][76] ([i915#265]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2733])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +4 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb5/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [PASS][81] -> [SKIP][82] ([fdo#109441]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271]) +196 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2437])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl2/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#1542]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl2/igt@perf@polling.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl4/igt@perf@polling.html
> 
>   * igt@sysfs_clients@create:
>     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2994])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl2/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl1/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl6/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-apl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][92] ([i915#2846]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk4/igt@gem_exec_fair@basic-deadline.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][94] ([i915#2842]) -> [PASS][95] +2 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][96] ([i915#2842]) -> [PASS][97] +2 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][98] ([i915#2842]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-priority-all:
>     - shard-glk:          [DMESG-WARN][100] ([i915#118] / [i915#95]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority-all.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][102] ([i915#2190]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-tglb5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-iclb:         [FAIL][104] ([i915#307]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-iclb:         [FAIL][106] ([i915#2428]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type@gtt:
>     - shard-iclb:         [INCOMPLETE][108] -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb7/igt@i915_pm_rpm@gem-mmap-type@gtt.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb7/igt@i915_pm_rpm@gem-mmap-type@gtt.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-glk:          [FAIL][110] ([i915#2521]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk4/igt@kms_async_flips@alternate-sync-async-flip.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][112] ([i915#2346] / [i915#533]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][114] ([i915#79]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][116] ([i915#2122]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][118] ([i915#2122]) -> [PASS][119] +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [FAIL][120] ([i915#79]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +3 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [FAIL][124] ([i915#1188]) -> [PASS][125] +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][126] ([fdo#108145] / [i915#265]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [SKIP][128] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [SKIP][130] ([fdo#109441]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@sysfs_timeslice_duration@timeout@vecs0:
>     - shard-iclb:         [FAIL][132] ([i915#1755]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb4/igt@sysfs_timeslice_duration@timeout@vecs0.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb6/igt@sysfs_timeslice_duration@timeout@vecs0.html
>     - shard-tglb:         [FAIL][134] ([i915#1755]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-tglb6/igt@sysfs_timeslice_duration@timeout@vecs0.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-tglb6/igt@sysfs_timeslice_duration@timeout@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][136] ([i915#1804] / [i915#2684]) -> [WARN][137] ([i915#2684])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10537/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][138] ([i915#2684]) -> [FAIL][139] ([i915#2680])
>    [138]: https://int
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20921/index.html
