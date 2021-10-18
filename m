Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CC64312B6
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 11:04:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18DC06E0AD;
	Mon, 18 Oct 2021 09:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F17A6E0AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 09:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=net-c.es; s=mailo;
 t=1634547882; bh=YEkdLB8brkTkie3L9qRpADeoPo5wHbXL/4LkykDUwMA=;
 h=X-EA-Auth:Date:From:To:Subject:Message-ID:References:MIME-Version:
 Content-Type:In-Reply-To;
 b=BuLA5XAuq3IfHKVjah9OX9lN5Oa3WhLPZm/QWaNJViJUtuCnXtNM1ju1FEymzjkLp
 Z2GQ+jvAyGjlgK1P47qJ5Fjj/7oyKG4FSv0Vbk92n7QxeFd8AOfGsKM6wI3GZ5e06k
 YpnwwEWJPvyRExtAhXjxHpIsQLfbzaUhuva0r+Sg=
Received: by b-2.in.mailobj.net [192.168.90.12] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Mon, 18 Oct 2021 11:04:42 +0200 (CEST)
X-EA-Auth: BnjfvDOVUA5887+iF3Grw50JY0MXiG36n3jVwLEDYwUOcCe3CuymOszMctFmLkTKu3ILQvtbvth2oXcHqYQi6YsWZ6YNiFI7
Date: Mon, 18 Oct 2021 11:04:40 +0200
From: Claudio Suarez <cssk@net-c.es>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YW04qDtX4gpsLAZM@gineta.localdomain>
References: <20211016184226.3862-1-cssk@net-c.es>
 <163449070635.7564.15511861952406358587@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163449070635.7564.15511861952406358587@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgcmVw?=
 =?utf-8?q?lace_drm=5Fdetect=5Fhdmi=5Fmonitor=28=29__with_drm=5Fdisplay=5F?=
 =?utf-8?q?info=2Eis=5Fhdmi_=28rev3=29?=
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


Hi all,

On Sun, Oct 17, 2021 at 05:11:46PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi (rev3)
> URL   : https://patchwork.freedesktop.org/series/95880/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10744_full -> Patchwork_21360_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21360_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21360_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21360_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_bw@linear-tiling-6-displays-3840x2160p:
>     - shard-tglb:         NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb2/igt@kms_bw@linear-tiling-6-displays-3840x2160p.html

This is a false positive, isn't it ?

- The test is skiped, not failed:

Test requirement not met in function run_test_linear_tiling, file ../tests/kms_bw.c:155:
Test requirement: !(pipe > num_pipes)
ASIC does not have 5 pipes
Subtest linear-tiling-6-displays-3840x2160p: SKIP (0.000s)
Starting subtest: linear-tiling-6-displays-3840x2160p
Subtest linear-tiling-6-displays-3840x2160p: SKIP (0.000s)


- linear-tiling-6-* is not even listed in https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21359/index.html

Do I have to do anything ? I have verified manually.

Where can I find the "bug team" ? Is this list ?

The closest bug I have found is https://gitlab.freedesktop.org/drm/intel/-/issues/4298
thought this one is a real bug from before.

Thanks!


> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - shard-iclb:         ([FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7]) ([i915#3002] / [i915#4006]) -> ([FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12]) ([i915#3002])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb3/igt@runner@aborted.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb4/igt@runner@aborted.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb6/igt@runner@aborted.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb4/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb8/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb5/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@runner@aborted.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb7/igt@runner@aborted.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb7/igt@runner@aborted.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb1/igt@runner@aborted.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb8/igt@runner@aborted.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21360_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][13] ([i915#3002])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-snb5/igt@gem_create@create-massive.html
>     - shard-apl:          NOTRUN -> [DMESG-WARN][14] ([i915#3002])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl2/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][15] ([i915#180])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-persistence:
>     - shard-snb:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#1099]) +3 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#280])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][18] ([i915#3354])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-snb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][19] ([i915#2842])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][20] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#2842]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#2842])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_params@no-bsd:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#109283])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@gem_exec_params@no-bsd.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][26] ([i915#2658])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl3/igt@gem_pread@exhaustion.html
>     - shard-kbl:          NOTRUN -> [WARN][27] ([i915#2658])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#4270])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb8/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#3297])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb8/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][30] ([i915#3002])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl3/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109289]) +2 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb3/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#2856]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#2856])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#454])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
>     - shard-tglb:         NOTRUN -> [FAIL][36] ([i915#454])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-kbl2/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#1769])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb1/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111614]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3777])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][43] ([i915#3722])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#111615]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb1/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>     - shard-glk:          [PASS][45] -> [DMESG-WARN][46] ([i915#118])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk5/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-glk2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([i915#2705])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_bw@linear-tiling-4-displays-3840x2160p:
>     - shard-tglb:         NOTRUN -> [FAIL][48] ([i915#1385])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb1/igt@kms_bw@linear-tiling-4-displays-3840x2160p.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278] / [i915#3886])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#3886])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl1/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs:
>     - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271]) +261 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-snb5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#3886]) +10 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#3689] / [i915#3886]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#3689]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb8/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl6/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl6/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl8/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-snb:          NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111827]) +14 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109284] / [fdo#111827]) +8 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][62] ([i915#1319])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@kms_content_protection@atomic.html
>     - shard-apl:          NOTRUN -> [TIMEOUT][63] ([i915#1319]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl3/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#111828]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3116])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#3319])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109279] / [i915#3359]) +3 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][68] ([i915#180])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109278]) +6 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-max-size-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3359]) +4 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-max-size-sliding.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#79])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#2122])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#2587])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +65 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111825]) +24 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109280]) +3 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +190 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +59 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-tglb:         [PASS][81] -> [INCOMPLETE][82] ([i915#2411] / [i915#456])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-tglb2/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#1187])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-apl:          [PASS][84] -> [DMESG-WARN][85] ([i915#180]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][86] ([fdo#108145] / [i915#265]) +3 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][87] ([fdo#108145] / [i915#265])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][88] ([fdo#108145] / [i915#265])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-y:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#3536]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-y.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#2920]) +2 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#658])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#658])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl3/igt@kms_psr2_su@page_flip.html
>     - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#658])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-tglb:         NOTRUN -> [FAIL][94] ([i915#132] / [i915#3467])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb1/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109441])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html
>     - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#533])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-tglb:         NOTRUN -> [SKIP][98] ([fdo#109502]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb1/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#2437])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#2437])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl3/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
>     - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#2530])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][102] -> [FAIL][103] ([i915#1542])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk3/igt@perf@polling-parameterized.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-glk4/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
>     - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#109291]) +2 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb8/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html
> 
>   * igt@prime_nv_pcopy@test3_3:
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109291])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@prime_nv_pcopy@test3_3.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109295])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb1/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-tglb:         NOTRUN -> [SKIP][107] ([i915#2994])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl6/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2994])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl1/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-tglb:         [INCOMPLETE][110] ([i915#456]) -> [PASS][111] +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-kbl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113] +3 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_ctx_persistence@engines-hostile@vecs0:
>     - shard-kbl:          [FAIL][114] ([i915#2410]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-kbl3/igt@gem_ctx_persistence@engines-hostile@vecs0.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-kbl4/igt@gem_ctx_persistence@engines-hostile@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         [FAIL][116] ([i915#2842]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [FAIL][118] ([i915#2842]) -> [PASS][119] +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][120] ([i915#2849]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][122] ([i915#454]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-tglb:         [INCOMPLETE][124] ([i915#2411] / [i915#456]) -> [PASS][125] +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-tglb7/igt@i915_pm_rpm@system-suspend-modeset.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb2/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-iclb:         [INCOMPLETE][126] ([i915#3965]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb6/igt@i915_selftest@live@hangcheck.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [DMESG-WARN][128] ([i915#180]) -> [PASS][129] +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-apl1/igt@i915_suspend@debugfs-reader.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-apl7/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][130] ([i915#2828] / [i915#300]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>     - shard-glk:          [FAIL][132] ([i915#79]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-iclb:         [SKIP][134] ([i915#3701]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_plane@plane-position-covered@pipe-a-planes:
>     - shard-tglb:         [INCOMPLETE][136] -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-tglb8/igt@kms_plane@plane-position-covered@pipe-a-planes.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb5/igt@kms_plane@plane-position-cover
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/index.html


