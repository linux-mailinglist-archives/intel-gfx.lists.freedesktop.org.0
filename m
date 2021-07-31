Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F70B3DC291
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Jul 2021 04:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B18D6F4EE;
	Sat, 31 Jul 2021 02:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9AF36E2C0
 for <intel-gfx@lists.freedesktop.org>; Sat, 31 Jul 2021 02:07:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="235116450"
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; d="scan'208";a="235116450"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 19:07:49 -0700
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; d="scan'208";a="667515366"
Received: from chiaotih-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.133.66])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 19:07:49 -0700
Date: Fri, 30 Jul 2021 19:07:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210731020748.tb4xgum6jqz6wavx@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210730191115.2514581-1-lucas.demarchi@intel.com>
 <162769507095.3959.6915636645647150267@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <162769507095.3959.6915636645647150267@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/xehp=3A_Fix_missing_sentinel_on_mcr=5Franges=5Fxehp?=
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

On Sat, Jul 31, 2021 at 01:31:10AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915/xehp: Fix missing sentinel on mcr_ranges_xehp
>URL   : https://patchwork.freedesktop.org/series/93244/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_10427_full -> Patchwork_20750_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_20750_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_20750_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_20750_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_exec_flush@basic-wb-ro-default:
>    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-glk7/igt@gem_exec_flush@basic-wb-ro-default.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-glk7/igt@gem_exec_flush@basic-wb-ro-default.html
>
>  * igt@gem_exec_schedule@pi-common@vecs0:
>    - shard-skl:          [PASS][3] -> [FAIL][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl4/igt@gem_exec_schedule@pi-common@vecs0.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl1/igt@gem_exec_schedule@pi-common@vecs0.html

this can't be true as glk/skl do not use this table. It's only used by
xehp:

drivers/gpu/drm/i915/gt/intel_workarounds.c-    if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
drivers/gpu/drm/i915/gt/intel_workarounds.c:            mcr_ranges = mcr_ranges_xehp;


Applied.

Lucas De Marchi

>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_20750_full that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@gem_create@create-massive:
>    - shard-apl:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl1/igt@gem_create@create-massive.html
>
>  * igt@gem_ctx_persistence@legacy-engines-mixed:
>    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +3 similar issues
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed.html
>
>  * igt@gem_eio@unwedge-stress:
>    - shard-tglb:         [PASS][7] -> [TIMEOUT][8] ([i915#2369] / [i915#3063] / [i915#3648])
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-tglb5/igt@gem_eio@unwedge-stress.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-tglb1/igt@gem_eio@unwedge-stress.html
>
>  * igt@gem_exec_fair@basic-none-vip@rcs0:
>    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-glk7/igt@gem_exec_fair@basic-none-vip@rcs0.html
>
>  * igt@gem_exec_fair@basic-none@vcs0:
>    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +2 similar issues
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
>
>  * igt@gem_exec_fair@basic-none@vcs1:
>    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842]) +1 similar issue
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
>
>  * igt@gem_exec_fair@basic-none@vecs0:
>    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842] / [i915#3468])
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html
>
>  * igt@gem_exec_fair@basic-pace@vecs0:
>    - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
>
>  * igt@gem_exec_whisper@basic-queues-forked:
>    - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#118] / [i915#95])
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html
>
>  * igt@gem_pread@exhaustion:
>    - shard-snb:          NOTRUN -> [WARN][20] ([i915#2658])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-snb2/igt@gem_pread@exhaustion.html
>
>  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
>    - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#768])
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
>
>  * igt@gem_userptr_blits@dmabuf-sync:
>    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3323])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl6/igt@gem_userptr_blits@dmabuf-sync.html
>
>  * igt@gen7_exec_parse@basic-allowed:
>    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109289]) +1 similar issue
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb1/igt@gen7_exec_parse@basic-allowed.html
>
>  * igt@gen9_exec_parse@bb-secure:
>    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#2856])
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@gen9_exec_parse@bb-secure.html
>
>  * igt@i915_pm_dc@dc3co-vpb-simulation:
>    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#588])
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>
>  * igt@i915_pm_rc6_residency@rc6-fence:
>    - shard-iclb:         NOTRUN -> [WARN][26] ([i915#2684])
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
>
>  * igt@i915_pm_rpm@gem-evict-pwrite:
>    - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#579]) +2 similar issues
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb1/igt@i915_pm_rpm@gem-evict-pwrite.html
>
>  * igt@i915_suspend@forcewake:
>    - shard-apl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180])
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-apl2/igt@i915_suspend@forcewake.html
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl3/igt@i915_suspend@forcewake.html
>
>  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110725] / [fdo#111614])
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb1/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777])
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>
>  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777])
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>
>  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#110723]) +1 similar issue
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +110 similar issues
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>
>  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689]) +1 similar issue
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
>    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271]) +297 similar issues
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-snb7/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html
>
>  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-yf_tiled_ccs:
>    - shard-glk:          NOTRUN -> [SKIP][37] ([fdo#109271]) +18 similar issues
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-glk4/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-yf_tiled_ccs.html
>
>  * igt@kms_chamelium@hdmi-cmp-planar-formats:
>    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109284] / [fdo#111827]) +4 similar issues
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb1/igt@kms_chamelium@hdmi-cmp-planar-formats.html
>
>  * igt@kms_chamelium@vga-hpd-without-ddc:
>    - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +11 similar issues
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-snb6/igt@kms_chamelium@vga-hpd-without-ddc.html
>
>  * igt@kms_color@pipe-d-ctm-0-5:
>    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [i915#1149])
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb1/igt@kms_color@pipe-d-ctm-0-5.html
>
>  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
>    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +18 similar issues
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
>
>  * igt@kms_color_chamelium@pipe-c-gamma:
>    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +8 similar issues
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl4/igt@kms_color_chamelium@pipe-c-gamma.html
>    - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827])
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-tglb5/igt@kms_color_chamelium@pipe-c-gamma.html
>
>  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +6 similar issues
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
>
>  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
>    - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-glk4/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
>
>  * igt@kms_content_protection@legacy:
>    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#111828])
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-tglb2/igt@kms_content_protection@legacy.html
>    - shard-apl:          NOTRUN -> [TIMEOUT][47] ([i915#1319])
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl6/igt@kms_content_protection@legacy.html
>
>  * igt@kms_content_protection@uevent:
>    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109300] / [fdo#111066])
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb1/igt@kms_content_protection@uevent.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
>    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278] / [fdo#109279]) +2 similar issues
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
>
>  * igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen:
>    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109278]) +18 similar issues
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen.html
>
>  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274] / [fdo#109278])
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2346] / [i915#533])
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>
>  * igt@kms_cursor_legacy@pipe-d-single-bo:
>    - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533])
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl6/igt@kms_cursor_legacy@pipe-d-single-bo.html
>
>  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
>    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109274]) +2 similar issues
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
>
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#79])
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>
>  * igt@kms_flip@flip-vs-suspend@a-dp1:
>    - shard-apl:          NOTRUN -> [DMESG-WARN][58] ([i915#180]) +2 similar issues
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>    - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#2587])
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111825]) +3 similar issues
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
>    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109280]) +11 similar issues
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
>    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +63 similar issues
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
>
>  * igt@kms_hdr@bpc-switch-suspend:
>    - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#1188])
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
>
>  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#1839]) +1 similar issue
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>
>  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533]) +1 similar issue
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
>
>  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>    - shard-kbl:          [PASS][67] -> [DMESG-WARN][68] ([i915#180])
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>
>  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>    - shard-kbl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +1 similar issue
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
>
>  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>    - shard-skl:          [PASS][70] -> [FAIL][71] ([fdo#108145] / [i915#265]) +2 similar issues
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>
>  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>    - shard-apl:          NOTRUN -> [FAIL][72] ([i915#265]) +1 similar issue
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>
>  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2733])
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
>
>  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658]) +4 similar issues
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
>
>  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +2 similar issues
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
>
>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#2920])
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
>
>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +1 similar issue
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
>    - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-glk4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
>
>  * igt@kms_psr2_su@page_flip:
>    - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109642] / [fdo#111068] / [i915#658])
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-iclb2/igt@kms_psr2_su@page_flip.html
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb3/igt@kms_psr2_su@page_flip.html
>
>  * igt@kms_psr@psr2_suspend:
>    - shard-iclb:         [PASS][81] -> [SKIP][82] ([fdo#109441]) +1 similar issue
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-iclb2/igt@kms_psr@psr2_suspend.html
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb3/igt@kms_psr@psr2_suspend.html
>
>  * igt@kms_selftest@all@damage_iter_no_damage:
>    - shard-kbl:          NOTRUN -> [INCOMPLETE][83] ([i915#3871])
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl3/igt@kms_selftest@all@damage_iter_no_damage.html
>
>  * igt@kms_vblank@pipe-d-wait-forked-hang:
>    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271]) +197 similar issues
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl6/igt@kms_vblank@pipe-d-wait-forked-hang.html
>
>  * igt@kms_vrr@flipline:
>    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109502])
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb1/igt@kms_vrr@flipline.html
>
>  * igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame:
>    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#2530])
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-tglb5/igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame.html
>
>  * igt@nouveau_crc@pipe-b-source-outp-complete:
>    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#2530]) +2 similar issues
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@nouveau_crc@pipe-b-source-outp-complete.html
>
>  * igt@nouveau_crc@pipe-d-source-outp-complete:
>    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278] / [i915#2530])
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@nouveau_crc@pipe-d-source-outp-complete.html
>
>  * igt@prime_nv_api@i915_nv_double_export:
>    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109291]) +1 similar issue
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@prime_nv_api@i915_nv_double_export.html
>
>  * igt@sysfs_clients@fair-1:
>    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2994])
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@sysfs_clients@fair-1.html
>
>  * igt@sysfs_clients@fair-7:
>    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994]) +4 similar issues
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl6/igt@sysfs_clients@fair-7.html
>
>  * igt@sysfs_clients@split-10:
>    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994])
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl10/igt@sysfs_clients@split-10.html
>    - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994])
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl2/igt@sysfs_clients@split-10.html
>
>
>#### Possible fixes ####
>
>  * igt@fbdev@write:
>    - {shard-rkl}:        [SKIP][94] ([i915#2582]) -> [PASS][95]
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-2/igt@fbdev@write.html
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@fbdev@write.html
>
>  * igt@gem_ctx_isolation@preservation-s3@rcs0:
>    - shard-apl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97] +3 similar issues
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace@vcs0:
>    - {shard-rkl}:        [FAIL][98] ([i915#2842]) -> [PASS][99] +1 similar issue
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-5/igt@gem_exec_fair@basic-pace@vcs0.html
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-1/igt@gem_exec_fair@basic-pace@vcs0.html
>
>  * igt@gem_mmap_wc@set-cache-level:
>    - {shard-rkl}:        [SKIP][100] ([i915#1850]) -> [PASS][101]
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-1/igt@gem_mmap_wc@set-cache-level.html
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
>
>  * igt@i915_pm_dc@dc5-psr:
>    - {shard-rkl}:        [SKIP][102] ([i915#658]) -> [PASS][103]
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-1/igt@i915_pm_dc@dc5-psr.html
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html
>
>  * igt@i915_pm_rpm@system-suspend-execbuf:
>    - {shard-rkl}:        [SKIP][104] ([i915#3844] / [i915#579]) -> [PASS][105]
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-6/igt@i915_pm_rpm@system-suspend-execbuf.html
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-2/igt@i915_pm_rpm@system-suspend-execbuf.html
>
>  * igt@i915_suspend@forcewake:
>    - shard-skl:          [INCOMPLETE][106] ([i915#636]) -> [PASS][107]
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl8/igt@i915_suspend@forcewake.html
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl6/igt@i915_suspend@forcewake.html
>
>  * igt@kms_big_fb@linear-16bpp-rotate-180:
>    - {shard-rkl}:        [SKIP][108] ([i915#3638]) -> [PASS][109] +3 similar issues
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-2/igt@kms_big_fb@linear-16bpp-rotate-180.html
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-180.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>    - {shard-rkl}:        [SKIP][110] ([i915#3721]) -> [PASS][111] +6 similar issues
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>
>  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>    - shard-iclb:         [DMESG-WARN][112] ([i915#3621]) -> [PASS][113] +1 similar issue
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-iclb1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb2/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
>
>  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>    - {shard-rkl}:        [FAIL][114] ([i915#3678]) -> [PASS][115] +9 similar issues
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>
>  * igt@kms_color@pipe-c-ctm-max:
>    - {shard-rkl}:        [SKIP][116] ([i915#1149] / [i915#1849]) -> [PASS][117] +4 similar issues
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-2/igt@kms_color@pipe-c-ctm-max.html
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@kms_color@pipe-c-ctm-max.html
>
>  * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
>    - {shard-rkl}:        [SKIP][118] ([fdo#112022]) -> [PASS][119] +17 similar issues
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
>
>  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>    - shard-skl:          [INCOMPLETE][120] ([i915#146] / [i915#2405] / [i915#300]) -> [PASS][121]
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>
>  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic:
>    - {shard-rkl}:        [SKIP][122] ([fdo#111825]) -> [PASS][123] +5 similar issues
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>    - shard-skl:          [FAIL][124] ([i915#2346]) -> [PASS][125]
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>
>  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
>    - shard-iclb:         [SKIP][126] ([i915#3788]) -> [PASS][127]
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-iclb3/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
>
>  * igt@kms_dp_aux_dev:
>    - {shard-rkl}:        [SKIP][128] ([i915#1257]) -> [PASS][129]
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-1/igt@kms_dp_aux_dev.html
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@kms_dp_aux_dev.html
>
>  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
>    - shard-skl:          [FAIL][130] ([i915#3451]) -> [PASS][131]
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
>
>  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
>    - {shard-rkl}:        [SKIP][132] ([fdo#111314]) -> [PASS][133] +11 similar issues
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
>
>  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
>    - shard-kbl:          [FAIL][134] ([i915#79]) -> [PASS][135]
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
>
>  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>    - shard-skl:          [FAIL][136] ([i915#2122]) -> [PASS][137]
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/shard-skl
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/index.html
