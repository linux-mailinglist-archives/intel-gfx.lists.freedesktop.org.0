Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB76F52DAB6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 May 2022 18:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CE8911A5CB;
	Thu, 19 May 2022 16:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E204611A5C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 May 2022 16:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652979374; x=1684515374;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=J4H9AsT5mcKkt4pbKW1qEx6qibWfq1/LXfBDxzL/ftE=;
 b=C7GX6OXpa9R7ifE7/wojIdagsNDsogVZP/VvbpFoQca7e9D1TmQBVqlj
 EWfH4Ybe8R4yBmsgITksv3ILTsRB9Uw5DQnv9e2aXMr5DCB3/hGBFGqvi
 GX4GPvjhutPB/j+tfmYh+Z0c6nFmc9wrp5SFOSHzXrwOnn89VqezCTNMb
 eQOGuvKqZgh3CpoMRwPT/f18VDCgjk3ofVM4dbP5N2ikePXeh7zUcyrBJ
 l37j7DCN7O8qxWuihFL43rrJT3ziEntErso8qteY9FZaacjMzqki7PRIC
 2RKMw8qCkAB2ve5f0rvBOkbnjN4aBJuBwBkHgJwzP3zpzvPcHEsmWm58e w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="358686141"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="358686141"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 09:56:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="674115312"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 09:56:14 -0700
Date: Thu, 19 May 2022 09:56:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YoZ2rUZE9qTEV+Xc@mdroper-desk1.amr.corp.intel.com>
References: <20220517201338.7291-1-swathi.dhanavanthri@intel.com>
 <165291207383.21387.12208512365069287173@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165291207383.21387.12208512365069287173@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Extend_Wa=5F22010954014_to_DG2-G11_and_DG2-G12?=
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

On Wed, May 18, 2022 at 10:14:33PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Extend Wa_22010954014 to DG2-G11 and DG2-G12
> URL   : https://patchwork.freedesktop.org/series/104104/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11668_full -> Patchwork_104104v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

>   
> 
> Participating hosts (11 -> 13)
> ------------------------------
> 
>   Additional (2): shard-rkl shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104104v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104104v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-iclb:         NOTRUN -> [SKIP][2] ([i915#5327])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-kbl:          NOTRUN -> [SKIP][3] ([fdo#109271]) +27 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][4] ([i915#3354])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-snb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2846])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-glk6/igt@gem_exec_fair@basic-deadline.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-snb:          [PASS][11] -> [SKIP][12] ([fdo#109271]) +4 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-snb4/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-kbl:          [PASS][13] -> [INCOMPLETE][14] ([i915#4831])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl7/igt@gem_exec_suspend@basic-s0@smem.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl6/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][16] ([i915#768])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#3323])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#3297])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][19] ([i915#3318])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#109289])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@gen3_mixed_blits.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#2527] / [i915#2856])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#2856])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>     - shard-skl:          NOTRUN -> [FAIL][27] ([i915#454])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         NOTRUN -> [WARN][28] ([i915#2684])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111644] / [i915#1397] / [i915#2411])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#5286])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110725] / [fdo#111614])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][32] ([i915#3743])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111614])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111615])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689] / [i915#3886])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111615] / [i915#3689])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_ccs@pipe-b-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [i915#3886]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +25 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-edid-read:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_chamelium@hdmi-edid-read.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl6/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-max:
>     - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-max.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          NOTRUN -> [TIMEOUT][48] ([i915#1319])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][49] ([i915#2105])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl6/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#109279] / [i915#3359] / [i915#5691])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3359]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109274] / [fdo#109278])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-iclb:         NOTRUN -> [FAIL][53] ([i915#2346])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-move:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +149 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-move.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271]) +58 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-snb5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#6029])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([i915#5287])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-4tiled.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#1982] / [i915#4939])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#79])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109274] / [fdo#111825]) +2 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][63] ([i915#1982])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl1/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@b-edp1:
>     - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#2122])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#2587])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109280] / [fdo#111825]) +4 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109280]) +7 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][70] -> [FAIL][71] ([fdo#108145] / [i915#265]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_cursor@pipe-d-viewport-size-128:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109278]) +5 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_plane_cursor@pipe-d-viewport-size-128.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#3536])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_plane_scaling@downscale-with-rotation-factor-0-25@pipe-c-edp-1-downscale-with-rotation:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#5176]) +3 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_plane_scaling@downscale-with-rotation-factor-0-25@pipe-c-edp-1-downscale-with-rotation.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [PASS][76] -> [SKIP][77] ([fdo#109441])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb6/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][78] ([i915#132] / [i915#3467])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2437])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#2530])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@nouveau_crc@pipe-b-source-outp-inactive.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109289])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_nv_api@i915_self_import_to_different_fd:
>     - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#109291])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@prime_nv_api@i915_self_import_to_different_fd.html
> 
>   * igt@prime_vgem@coherency-blt:
>     - shard-tglb:         [PASS][84] -> [INCOMPLETE][85] ([i915#6039])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb8/igt@prime_vgem@coherency-blt.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb3/igt@prime_vgem@coherency-blt.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][86] ([i915#5098])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][87] ([i915#5098])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2994])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@sysfs_clients@sema-25.html
>     - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@sysfs_clients@sema-25.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl6/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-skl:          [INCOMPLETE][92] ([i915#4939]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - {shard-tglu}:       [TIMEOUT][94] ([i915#3063]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglu-3/igt@gem_eio@in-flight-contexts-1us.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglu-4/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][96] ([i915#3070]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@gem_eio@unwedge-stress.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][98] ([i915#4525]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][100] ([i915#2842]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-snb:          [SKIP][102] ([fdo#109271]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-kbl:          [DMESG-WARN][104] ([i915#5566] / [i915#716]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@cursor:
>     - shard-iclb:         [SKIP][106] ([i915#5989]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@i915_pm_rpm@cursor.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb1/igt@i915_pm_rpm@cursor.html
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - shard-iclb:         [DMESG-WARN][108] ([i915#2867]) -> [PASS][109] +7 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@i915_selftest@live@gt_lrc.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb1/igt@i915_selftest@live@gt_lrc.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][110] ([i915#3921]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-snb6/igt@i915_selftest@live@hangcheck.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-snb5/igt@i915_selftest@live@hangcheck.html
>     - shard-tglb:         [DMESG-WARN][112] ([i915#5591]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb8/igt@i915_selftest@live@hangcheck.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@perf@engine_cs:
>     - shard-tglb:         [DMESG-WARN][114] ([i915#2867]) -> [PASS][115] +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb2/igt@i915_selftest@perf@engine_cs.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb5/igt@i915_selftest@perf@engine_cs.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-iclb:         [FAIL][116] ([i915#5072]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][118] ([i915#2346]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [FAIL][120] ([i915#4767]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][122] ([i915#79]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-edp1:
>     - shard-skl:          [INCOMPLETE][124] ([i915#4839]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-apl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl3/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][128] ([i915#3701]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][130] ([fdo#109441]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:
>     - shard-iclb:         [SKIP][132] ([fdo#109278]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb1/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
> 
>   * igt@perf@stress-open-close:
>     - shard-apl:          [DMESG-FAIL][134] ([i915#5386]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@perf@stress-open-close.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@perf@stress-open-close.html
> 
>   * igt@prime_self_import@reimport-vs-gem_close-race:
>     - shard-tglb:         [FAIL][136] ([i915#6033]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb3/igt@prime_self_import@reimport-vs-gem_close-race.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@prime_self_import@reimport-vs-gem_close-race.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [FAIL][138] ([i915#5784]) -> [TIMEOUT][139] ([i915#3063])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb8/igt@gem_eio@unwedge-stress.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][140] ([i915#4525]) -> [DMESG-WARN][141] ([i915#5614]) +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [DMESG-WARN][142] ([i915#5614]) -> [SKIP][143] ([i915#4525])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][144] ([i915#2852]) -> [FAIL][145] ([i915#2842])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][146] ([i915#588]) -> [SKIP][147] ([i915#658])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         [SKIP][148] ([i915#5989]) -> [SKIP][149] ([fdo#110892])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb1/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          [SKIP][150] ([fdo#109271] / [i915#1888]) -> [SKIP][151] ([fdo#109271]) +1 similar issue
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl8/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl7/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-audio:
>     - shard-skl:          [SKIP][152] ([fdo#109271] / [fdo#111827] / [i915#1888]) -> [SKIP][153] ([fdo#109271] / [fdo#111827])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl1/igt@kms_chamelium@dp-audio.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl8/igt@kms_chamelium@dp-audio.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-skl:          [SKIP][154] ([fdo#109271]) -> [SKIP][155] ([fdo#109271] / [i915#1888])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl4/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-skl1/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][156] ([i915#2920]) -> [SKIP][157] ([fdo#111068] / [i915#658])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][158] ([fdo#111068] / [i915#658]) -> [SKIP][159] ([i915#2920])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169]) ([fdo#109271] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716]) -> ([FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl6/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl6/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl4/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl4/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl3/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl3/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl3/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl1/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl1/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl3/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl1/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl1/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl1/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl3/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl1/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl3/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl3/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl4/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-kbl7/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192], [FAIL][193]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl7/igt@runner@aborted.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl4/igt@runner@aborted.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl7/igt@runner@aborted.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl3/igt@runner@aborted.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@runner@aborted.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl8/igt@runner@aborted.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl3/igt@runner@aborted.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl1/igt@runner@aborted.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl6/igt@runner@aborted.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl3/igt@runner@aborted.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@runner@aborted.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@runner@aborted.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl8/igt@runner@aborted.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-apl4/igt@runner@aborted.html
>     - shard-tglb:         ([FAIL][194], [FAIL][195], [FAIL][196], [FAIL][197], [FAIL][198], [FAIL][199], [FAIL][200], [FAIL][201], [FAIL][202]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][203], [FAIL][204], [FAIL][205], [FAIL][206], [FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210], [FAIL][211], [FAIL][212]) ([i915#3002] / [i915#3690] / [i915#4312] / [i915#5257])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb3/igt@runner@aborted.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb5/igt@runner@aborted.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb1/igt@runner@aborted.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb3/igt@runner@aborted.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb2/igt@runner@aborted.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb7/igt@runner@aborted.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb6/igt@runner@aborted.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb1/igt@runner@aborted.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb2/igt@runner@aborted.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb1/igt@runner@aborted.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb5/igt@runner@aborted.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@runner@aborted.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@runner@aborted.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb7/igt@runner@aborted.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb8/igt@runner@aborted.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb2/igt@runner@aborted.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb6/igt@runner@aborted.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb5/igt@runner@aborted.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/shard-tglb3/igt@runner@aborted.html
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
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
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
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3354]: https://gitlab.freedesktop.org/drm/intel/issues/3354
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
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
>   [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
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
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4831]: https://gitlab.freedesktop.org/drm/intel/issues/4831
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4886]: https://gitlab.freedesktop.org/drm/intel/issues/4886
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4904]: https://gitlab.freedesktop.org/drm/intel/issues/4904
>   [i915#4929]: https://gitlab.freedesktop.org/drm/intel/issues/4929
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5303]: https://gitlab.freedesktop.org/drm/intel/issues/5303
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5386]: https://gitlab.freedesktop.org/drm/intel/issues/5386
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5498]: https://gitlab.freedesktop.org/drm/intel/issues/5498
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#5989]: https://gitlab.freedesktop.org/drm/intel/issues/5989
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
>   [i915#6029]: https://gitlab.freedesktop.org/drm/intel/issues/6029
>   [i915#6033]: https://gitlab.freedesktop.org/drm/intel/issues/6033
>   [i915#6039]: https://gitlab.freedesktop.org/drm/intel/issues/6039
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11668 -> Patchwork_104104v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11668: 0aeb4ff42e2e9fd1dee49e6bb79cc81c8eafd3fc @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6477: 70cfef35851891aeaa829f5e8dcb7fd43b454bde @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104104v1: 0aeb4ff42e2e9fd1dee49e6bb79cc81c8eafd3fc @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104104v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
