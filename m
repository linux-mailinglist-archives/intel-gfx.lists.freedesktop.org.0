Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3626436B01
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 21:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1EA06ECF2;
	Thu, 21 Oct 2021 19:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D7D6ECE3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 19:00:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="229060850"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="229060850"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 12:00:32 -0700
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="495284911"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 12:00:29 -0700
Date: Thu, 21 Oct 2021 22:00:25 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <20211021190025.GC1854152@ideak-desk.fi.intel.com>
References: <20211020195138.1841242-1-imre.deak@intel.com>
 <163477646303.20177.4286220339808635502@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163477646303.20177.4286220339808635502@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Simplify_handling_of_modifiers_=28rev12=29?=
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

On Thu, Oct 21, 2021 at 12:34:23AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Simplify handling of modifiers (rev12)
> URL   : https://patchwork.freedesktop.org/series/95579/
> State : success

Pushed with that the '}, {' formatting change applied, thanks for the
reviews.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10765_full -> Patchwork_21393_full
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
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21393_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl2/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-snb5/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][3] ([fdo#109271]) +155 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl8/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][4] -> [FAIL][5] ([i915#2842])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
>     - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842]) +2 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
>     - shard-tglb:         NOTRUN -> [FAIL][10] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#2190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_offset@open-flood:
>     - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl1/igt@gem_mmap_offset@open-flood.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl9/igt@gem_mmap_offset@open-flood.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#644])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][16] ([i915#2658])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl3/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#3323])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][18] ([i915#3002])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl6/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#3297])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-kbl:          NOTRUN -> [FAIL][20] ([i915#3318])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#2856])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#454])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#111644] / [i915#1397] / [i915#2411])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +91 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#111615])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3689])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb2/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl2/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl9/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color@pipe-a-ctm-0-75:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][35] ([i915#1982])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb2/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-snb:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-snb5/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl8/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][39] ([i915#1319])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl7/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109279] / [i915#3359])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-random:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3359])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-max-size-random.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111825]) +2 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([i915#180] / [i915#636])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2122])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#79])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +12 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2672])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271]) +147 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          NOTRUN -> [FAIL][54] ([i915#1188])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl9/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][59] ([i915#265])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +3 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#2920])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2437])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl3/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl7/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#2530])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          [PASS][70] -> [DMESG-WARN][71] ([i915#1982] / [i915#262])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl9/igt@perf_pmu@module-unload.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl10/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_nv_pcopy@test2:
>     - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +123 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl7/igt@prime_nv_pcopy@test2.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109295])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb5/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sysfs_clients@create:
>     - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl7/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl6/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_mm@all@bottomup:
>     - shard-skl:          [INCOMPLETE][76] -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl10/igt@drm_mm@all@bottomup.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl3/igt@drm_mm@all@bottomup.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][78] ([i915#2846]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-glk6/igt@gem_exec_fair@basic-deadline.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-glk9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-apl:          [SKIP][80] ([fdo#109271]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][82] ([i915#2842]) -> [PASS][83] +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][84] ([i915#2842]) -> [PASS][85] +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][86] ([i915#2346] / [i915#533]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [INCOMPLETE][88] ([i915#180] / [i915#1982]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-skl:          [INCOMPLETE][90] ([i915#123]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-skl:          [INCOMPLETE][92] ([i915#198]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95] +7 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][96] ([fdo#108145] / [i915#265]) -> [PASS][97] +2 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [FAIL][98] ([i915#1542]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-glk7/igt@perf@polling-parameterized.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-glk2/igt@perf@polling-parameterized.html
>     - shard-skl:          [FAIL][100] ([i915#1542]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl8/igt@perf@polling-parameterized.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl2/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_preempt_timeout@timeout@vecs0:
>     - shard-skl:          [FAIL][102] -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl10/igt@sysfs_preempt_timeout@timeout@vecs0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl5/igt@sysfs_preempt_timeout@timeout@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][104] ([i915#2842]) -> [FAIL][105] ([i915#2851])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][106] ([i915#2842]) -> [FAIL][107] ([i915#2849])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][108] ([i915#1804] / [i915#2684]) -> [WARN][109] ([i915#2684])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
>     - shard-skl:          [INCOMPLETE][110] ([i915#123]) -> [SKIP][111] ([fdo#109271])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#602]) -> ([FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#602] / [i915#92])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl6/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl6/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl4/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl6/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl1/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl6/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl6/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-kbl3/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl4/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl6/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl2/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl4/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl6/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl4/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl4/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl3/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl3/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl3/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl3/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-kbl3/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][132], [FAIL][133], [FAIL][134]) ([i915#180] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][135], [FAIL][136], [FAIL][137]) ([i915#3002] / [i915#3363] / [i915#4312])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-apl1/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-apl1/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/shard-apl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl7/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl1/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/shard-apl6/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/index.html
