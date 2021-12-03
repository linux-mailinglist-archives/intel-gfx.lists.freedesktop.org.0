Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BB74671BA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 06:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD097305B;
	Fri,  3 Dec 2021 05:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AB257305B
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 05:50:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="236728594"
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="236728594"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 21:49:50 -0800
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="460764602"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 21:49:49 -0800
Date: Thu, 2 Dec 2021 21:49:48 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20211203054948.GM2219399@mdroper-desk1.amr.corp.intel.com>
References: <20211116174818.2128062-1-matthew.d.roper@intel.com>
 <163712463375.18223.1246632824478756866@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163712463375.18223.1246632824478756866@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Additional_DG2_workarounds_=28rev3=29?=
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

On Wed, Nov 17, 2021 at 04:50:33AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Additional DG2 workarounds (rev3)
> URL   : https://patchwork.freedesktop.org/series/96824/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10888_full -> Patchwork_21604_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Thanks Clint and Jani for the reviews.  Applied to drm-intel-next
(#1, #2, #5) and drm-intel-gt-next (#3, #4)


Matt

>   
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-rkl 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21604_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([FAIL][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4386])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl8/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl8/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl8/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl7/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl6/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl6/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl4/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl4/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl3/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl2/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl2/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl3/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl3/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl6/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl7/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl7/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl7/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl7/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl8/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl8/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl8/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][51] -> [TIMEOUT][52] ([i915#2369] / [i915#3063] / [i915#3648])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-tglb5/igt@gem_eio@unwedge-stress.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][53] ([i915#2369])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl7/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +30 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl4/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [PASS][55] -> [FAIL][56] ([i915#2842])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][57] ([i915#2842])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [PASS][58] -> [FAIL][59] ([i915#2842])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [PASS][60] -> [FAIL][61] ([i915#2842])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2842])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2190])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl4/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_media_vme:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#284])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@gem_media_vme.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][66] ([i915#2658])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3323])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][68] ([i915#3002])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl7/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#2856])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_pm_rpm@modeset-pc8-residency-stress:
>     - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271]) +68 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][71] -> [INCOMPLETE][72] ([i915#3921])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-snb5/igt@i915_selftest@live@hangcheck.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-snb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111614])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3777])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#3689])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#3689] / [i915#3886])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271]) +6 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-glk3/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb2/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-5:
>     - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl7/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-b-gamma:
>     - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-glk3/igt@kms_color_chamelium@pipe-b-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111828])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#3359]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-iclb:         [PASS][88] -> [FAIL][89] ([i915#2346])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [PASS][90] -> [DMESG-WARN][91] ([i915#180])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-skl:          [PASS][92] -> [INCOMPLETE][93] ([i915#198]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>     - shard-tglb:         [PASS][94] -> [DMESG-WARN][95] ([i915#2411] / [i915#2867])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2672])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
>     - shard-iclb:         [PASS][97] -> [SKIP][98] ([i915#3701])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
>     - shard-tglb:         NOTRUN -> [SKIP][99] ([fdo#111825]) +5 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][100] ([fdo#109271]) +97 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#433])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [PASS][102] -> [DMESG-WARN][103] ([i915#180]) +7 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#533]) +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533]) +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][106] ([i915#265])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265]) +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@pipe-d-tiling-x:
>     - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#3536])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-x.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2733])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-kbl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#658]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-apl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658]) +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][112] -> [SKIP][113] ([fdo#109441]) +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#2437])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl4/igt@sysfs_clients@split-50.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109307])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb2/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][117] ([i915#2842]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][119] ([i915#2842]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][121] ([i915#2849]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts:
>     - shard-glk:          [DMESG-WARN][123] ([i915#118]) -> [PASS][124] +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-glk9/igt@gem_exec_whisper@basic-contexts.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-glk2/igt@gem_exec_whisper@basic-contexts.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-tglb:         [INCOMPLETE][125] ([i915#456] / [i915#750]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-tglb3/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [INCOMPLETE][127] ([i915#180] / [i915#1982]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][129] ([i915#2122]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][131] ([i915#79]) -> [PASS][132] +2 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-iclb:         [SKIP][133] ([i915#3701]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][135] ([i915#180]) -> [PASS][136] +5 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [DMESG-WARN][137] ([i915#180]) -> [PASS][138] +2 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][139] ([fdo#108145] / [i915#265]) -> [PASS][140] +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][141] ([fdo#109441]) -> [PASS][142] +2 similar issues
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [FAIL][143] ([i915#1731]) -> [PASS][144]
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-skl10/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-skl10/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][145] ([i915#2684]) -> [WARN][146] ([i915#1804] / [i915#2684])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-glk:          [FAIL][147] -> [FAIL][148] ([i915#1888])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-glk6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-glk3/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][149] ([i915#658]) -> [SKIP][150] ([i915#2920]) +1 similar issue
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][151] ([i915#2920]) -> [SKIP][152] ([i915#658]) +1 similar issue
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - shard-glk:          [SKIP][153] ([fdo#109271] / [i915#1888]) -> [SKIP][154] ([fdo#109271])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-glk4/igt@kms_psr@primary_mmap_gtt.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-glk5/igt@kms_psr@primary_mmap_gtt.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl7/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl7/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl7/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl7/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl3/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl1/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl1/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl4/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10888/shard-kbl1/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl6/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl6/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl1/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl3/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl7/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl6/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl7/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/shard-kbl7/igt@runner@aborted.html
>    [173]: htt
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21604/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
