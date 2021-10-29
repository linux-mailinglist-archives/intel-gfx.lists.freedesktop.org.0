Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 591A043FE93
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 16:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B9888F9A;
	Fri, 29 Oct 2021 14:39:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A35988F9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 14:39:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="229404455"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="229404455"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 07:39:34 -0700
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="487595672"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 07:39:33 -0700
Date: Fri, 29 Oct 2021 17:39:29 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
Message-ID: <20211029143929.GE3194662@ideak-desk.fi.intel.com>
References: <20211026161517.2694067-1-imre.deak@intel.com>
 <163536790567.4635.11170965717214939158@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163536790567.4635.11170965717214939158@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/fb=3A_Simplify_modifier_handling_more_=28rev2=29?=
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

On Wed, Oct 27, 2021 at 08:51:45PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/fb: Simplify modifier handling more (rev2)
> URL   : https://patchwork.freedesktop.org/series/96308/
> State : success

Thanks for the reviews, pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10797_full -> Patchwork_21461_full
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
>   Here are the changes found in Patchwork_21461_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk7/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk6/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk6/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk6/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk5/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk5/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk4/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk4/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk4/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk3/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk3/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk3/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk2/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk2/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk1/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk1/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk1/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk1/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk9/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk9/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk9/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk8/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk8/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk7/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk7/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk9/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk6/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk7/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk9/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk9/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk1/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk1/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk1/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk2/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk2/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk2/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk3/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk3/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk5/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk5/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk5/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk6/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk6/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@suspend:
>     - shard-tglb:         [PASS][51] -> [DMESG-WARN][52] ([i915#2867])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb1/igt@gem_eio@suspend.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb8/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#2842])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#2842])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [PASS][57] -> [FAIL][58] ([i915#2842] / [i915#3468])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][59] -> [SKIP][60] ([fdo#109271])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][61] ([i915#2842])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
>     - shard-tglb:         [PASS][62] -> [FAIL][63] ([i915#2842])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs1.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          [PASS][64] -> [DMESG-WARN][65] ([i915#180]) +2 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2190])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@gem_huc_copy@huc-copy.html
>     - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2190])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl4/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3323])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglb:         [PASS][69] -> [TIMEOUT][70] ([i915#3953])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#1937])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress:
>     - shard-tglb:         [PASS][72] -> [SKIP][73] ([i915#579])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb1/igt@i915_pm_rpm@gem-execbuf-stress.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb8/igt@i915_pm_rpm@gem-execbuf-stress.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-tglb:         [PASS][74] -> [FAIL][75] ([i915#2411])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb1/igt@i915_pm_rpm@system-suspend-modeset.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb8/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][76] ([i915#3743]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3777])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +103 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +138 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color@pipe-c-ctm-0-75:
>     - shard-skl:          [PASS][89] -> [DMESG-WARN][90] ([i915#1982]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl1/igt@kms_color@pipe-c-ctm-0-75.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl7/igt@kms_color@pipe-c-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl6/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][92] ([i915#1319]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl7/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          NOTRUN -> [TIMEOUT][93] ([i915#1319])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl4/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][94] ([i915#180])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-suspend:
>     - shard-tglb:         [PASS][95] -> [DMESG-WARN][96] ([i915#2411] / [i915#2867])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271]) +93 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>     - shard-tglb:         [PASS][98] -> [FAIL][99] ([i915#2122])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][100] -> [FAIL][101] ([i915#2122])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-iclb:         [PASS][102] -> [SKIP][103] ([i915#3701])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-glk:          NOTRUN -> [SKIP][104] ([fdo#109271]) +40 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>     - shard-tglb:         [PASS][105] -> [INCOMPLETE][106] ([i915#456])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-apl:          [PASS][107] -> [DMESG-WARN][108] ([i915#180]) +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-apl3/igt@kms_hdr@bpc-switch-suspend.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl8/igt@kms_hdr@bpc-switch-suspend.html
>     - shard-skl:          NOTRUN -> [FAIL][109] ([i915#1188])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#533])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][112] ([fdo#108145] / [i915#265]) +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
>     - shard-apl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][114] ([fdo#108145] / [i915#265])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][115] -> [FAIL][116] ([fdo#108145] / [i915#265])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-glk:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2733])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#658]) +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
>     - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
>     - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658]) +3 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][121] -> [SKIP][122] ([fdo#109441]) +2 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][123] -> [FAIL][124] ([i915#31])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk3/igt@kms_setmode@basic.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk1/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#533]) +2 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-kbl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2437])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl7/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2437])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl6/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-skl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2994])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@sysfs_clients@fair-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_mm@all@insert:
>     - shard-skl:          [INCOMPLETE][130] ([i915#2485]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl2/igt@drm_mm@all@insert.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@drm_mm@all@insert.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [FAIL][132] ([i915#2410]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-tglb:         [TIMEOUT][134] ([i915#3063]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglb:         [FAIL][136] ([i915#2842]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [DMESG-WARN][138] ([i915#180]) -> [PASS][139] +2 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@kms_color@pipe-c-ctm-blue-to-red:
>     - shard-skl:          [DMESG-WARN][140] ([i915#1982]) -> [PASS][141] +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl10/igt@kms_color@pipe-c-ctm-blue-to-red.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl2/igt@kms_color@pipe-c-ctm-blue-to-red.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [FAIL][142] ([i915#72]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-skl:          [FAIL][144] ([i915#2346]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:
>     - shard-skl:          [FAIL][146] ([i915#2122]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl6/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][148] ([i915#79]) -> [PASS][149] +1 similar issue
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][150] ([i915#180]) -> [PASS][151] +8 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
>     - shard-skl:          [INCOMPLETE][152] ([i915#198]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][154] ([i915#1188]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [SKIP][156] ([fdo#109441]) -> [PASS][157] +1 similar issue
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-glk:          [FAIL][158] -> [FAIL][159] ([i915#1888])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-glk5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-glk5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#602]) -> ([FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl7/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl7/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl1/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl4/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl7/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl3/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl1/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl3/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl4/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl4/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl6/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl4/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10797/shard-kbl4/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/shard-kbl1/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21461/index.html
