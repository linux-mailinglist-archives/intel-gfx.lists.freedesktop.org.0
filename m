Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9331D443480
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 18:22:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1DAB7342F;
	Tue,  2 Nov 2021 17:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C569A7342F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 17:22:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="218236078"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="218236078"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 10:22:10 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="449485058"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 10:22:08 -0700
Date: Tue, 2 Nov 2021 19:22:05 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.william.auld@gmail.com>,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
Message-ID: <20211102172205.GG3598655@ideak-desk.fi.intel.com>
References: <20211026225105.2783797-1-imre.deak@intel.com>
 <163529996937.4635.2373764108964050974@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163529996937.4635.2373764108964050974@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp/fb=3A_Remove_CCS_FB_stride_restrictions?=
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

On Wed, Oct 27, 2021 at 01:59:29AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adlp/fb: Remove CCS FB stride restrictions
> URL   : https://patchwork.freedesktop.org/series/96322/
> State : success

Thanks for the reviews, pushed the patchset to drm-intel-next,
with the s/4096/I915_GTT_PAGE_SIZE/ change in patch 3.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10792_full -> Patchwork_21454_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21454_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][1] ([i915#3002])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb5/igt@gem_create@create-massive.html
>     - shard-snb:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-snb6/igt@gem_create@create-massive.html
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl6/igt@gem_create@create-massive.html
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][4] ([i915#3002])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb7/igt@gem_create@create-massive.html
>     - shard-glk:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk1/igt@gem_create@create-massive.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][6] ([i915#3002])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl6/igt@gem_create@create-massive.html
>     - shard-apl:          NOTRUN -> [DMESG-WARN][7] ([i915#3002])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl8/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180]) +2 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-tglb:         [PASS][10] -> [TIMEOUT][11] ([i915#3063])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          NOTRUN -> [FAIL][12] ([i915#2846])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][13] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#2842])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][16] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2842]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-glk8/igt@gem_exec_fair@basic-pace@vecs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-snb:          NOTRUN -> [SKIP][19] ([fdo#109271]) +18 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-snb2/igt@gem_exec_params@rsvd2-dirt.html
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#109283])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb1/igt@gem_exec_params@rsvd2-dirt.html
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109283])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb7/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#4270])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#4270])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-kbl:          NOTRUN -> [FAIL][24] ([i915#3318])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@batch-without-end:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#109289]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb2/igt@gen7_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#2856])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb8/igt@gen9_exec_parse@cmd-crossing-page.html
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#2856])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb2/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#454])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-apl:          [PASS][30] -> [SKIP][31] ([fdo#109271])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-apl4/igt@i915_pm_dc@dc9-dpms.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl1/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#109289] / [fdo#111719])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb8/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>     - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][36] ([i915#3763])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#111615])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +237 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +118 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886]) +10 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl10/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs:
>     - shard-skl:          [PASS][43] -> [SKIP][44] ([fdo#109271]) +20 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-skl2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3689] / [i915#3886])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3886]) +9 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl8/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#3689]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl7/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb5/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl2/igt@kms_chamelium@vga-edid-read.html
>     - shard-glk:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk8/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl3/igt@kms_chamelium@vga-hpd-for-each-pipe.html
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109284] / [fdo#111827]) +4 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb7/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-snb2/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][55] ([i915#1319])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl8/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][56] ([i915#1319]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl7/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x10-random:
>     - shard-tglb:         NOTRUN -> [SKIP][57] ([i915#3359]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-32x10-random.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][59] ([i915#180]) +5 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-suspend:
>     - shard-tglb:         [PASS][60] -> [INCOMPLETE][61] ([i915#4211])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-iclb:         [PASS][62] -> [FAIL][63] ([i915#2346])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl2/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#426])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb6/igt@kms_dp_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109274])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb1/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
>     - shard-kbl:          [PASS][67] -> [FAIL][68] ([i915#79])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][69] ([i915#180])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-hdmi-a1:
>     - shard-glk:          [PASS][70] -> [DMESG-WARN][71] ([i915#118]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-glk9/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-hdmi-a1.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk2/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2672])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-iclb:         [PASS][73] -> [SKIP][74] ([i915#3701])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109280]) +4 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
>     - shard-glk:          [PASS][76] -> [FAIL][77] ([i915#1888] / [i915#2546])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-glk1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-tglb:         [PASS][78] -> [INCOMPLETE][79] ([i915#2828] / [i915#456])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +78 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#111825]) +17 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-tglb:         [PASS][82] -> [SKIP][83] ([i915#433])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-tglb6/igt@kms_hdmi_inject@inject-audio.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb1/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#1188])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#533]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#533]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][88] -> [DMESG-WARN][89] ([i915#180]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][90] ([fdo#108145] / [i915#265])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][91] ([fdo#108145] / [i915#265]) +2 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][92] ([fdo#108145] / [i915#265]) +3 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][93] -> [FAIL][94] ([fdo#108145] / [i915#265])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_cursor@pipe-d-viewport-size-256:
>     - shard-glk:          NOTRUN -> [SKIP][95] ([fdo#109271]) +38 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk9/igt@kms_plane_cursor@pipe-d-viewport-size-256.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-yf:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#3536])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb4/igt@kms_plane_lowres@pipe-c-tiling-yf.html
>     - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#112054])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb1/igt@kms_plane_lowres@pipe-c-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#658]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
>     - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#2920])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#658]) +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#658])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl4/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][102] -> [SKIP][103] ([fdo#109441]) +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-tglb:         NOTRUN -> [FAIL][104] ([i915#132] / [i915#3467])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb1/igt@kms_psr@psr2_primary_render.html
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109441])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb3/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][106] ([i915#180] / [i915#295])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#109502])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb2/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2437])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl1/igt@kms_writeback@writeback-check-output.html
>     - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2437])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl4/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#2437])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [PASS][111] -> [FAIL][112] ([i915#51])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-skl4/igt@perf@short-reads.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl4/igt@perf@short-reads.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          [PASS][113] -> [DMESG-WARN][114] ([i915#1982] / [i915#262])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-skl6/igt@perf_pmu@module-unload.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl8/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_nv_test@i915_import_gtt_mmap:
>     - shard-tglb:         NOTRUN -> [SKIP][115] ([fdo#109291])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb2/igt@prime_nv_test@i915_import_gtt_mmap.html
>     - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#109291])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb5/igt@prime_nv_test@i915_import_gtt_mmap.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-tglb:         NOTRUN -> [SKIP][117] ([fdo#109295])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb2/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2994]) +4 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl1/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl1/igt@sysfs_clients@split-10.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-glk:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk2/igt@sysfs_clients@split-25.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [PASS][121] -> [FAIL][122] ([i915#1731]) +1 similar issue
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-skl8/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-kbl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124] +2 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][125] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][127] ([i915#2842]) -> [PASS][128] +2 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
>     - shard-apl:          [FAIL][129] ([i915#2842]) -> [PASS][130] +1 similar issue
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][131] ([i915#2842]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-glk:          [FAIL][133] ([i915#2842]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][135] ([i915#2849]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][137] ([i915#644]) -> [PASS][13
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21454/index.html
