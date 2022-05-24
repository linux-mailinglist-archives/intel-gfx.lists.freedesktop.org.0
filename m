Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6C45331C2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 21:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3A910E2A2;
	Tue, 24 May 2022 19:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BA110E2A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 19:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653420489; x=1684956489;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=KzPwgwdeM13qfHz0An0BlJfto1vxqXleOB1xNsZqX2U=;
 b=hTuJ5eXzr0/1+SnnHG4DCJWHi/lEn1YWIRm8rTHZfgE4ZDK1T04Yz5zf
 8tDOp1F9OZ8Vf7OD9ORFIp1ADDNy9W9WYGWOiNRVjcmOGdqQ2pC+tCEwl
 i80kNtft+ckuaK8jKCJuK4Qq6Qmy31idDokFsB1a7ervWt8NXoBUiFjtC
 5H2seFlsOxRKLqDmsRPntBWDbpuRIzZF1RQjm+Jb3ATD5XsQLBxA6+USL
 UIjSbj2t5/Vf9nY1NzS2uq53RbBXRjHUpuvMYe6HWqwDxNX0KbGOl10fg
 vPz9k67yj0SinpMz3c1j3xsw72ssZL5UobmyLlh7GOY5vFfx3WPYijDqA w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="334278106"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="334278106"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 12:28:08 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="572814269"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 12:28:08 -0700
Date: Tue, 24 May 2022 12:28:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yo0xxxsG35x0BXsw@mdroper-desk1.amr.corp.intel.com>
References: <20220511060228.1179450-1-matthew.d.roper@intel.com>
 <165231105407.2699.16649734073882522252@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165231105407.2699.16649734073882522252@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Introduce_Ponte_Vecchio_=28rev4=29?=
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

On Wed, May 11, 2022 at 11:17:34PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Introduce Ponte Vecchio (rev4)
> URL   : https://patchwork.freedesktop.org/series/103443/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11632_full -> Patchwork_103443v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Fixed the commit message typos and extra blank line flagged by
checkpatch and pushed to drm-intel-gt-next.  Thanks Matt Atwood for the
reviews.


Matt

>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103443v4_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [FAIL][25]) ([i915#4386]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl1/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl8/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl8/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl8/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl6/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl4/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl3/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl8/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl8/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl8/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl7/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl6/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl6/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl6/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl6/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl2/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl2/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl2/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl2/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl1/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl1/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@close-race:
>     - shard-glk:          [PASS][51] -> [INCOMPLETE][52] ([i915#5753])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-glk4/igt@gem_busy@close-race.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-glk8/igt@gem_busy@close-race.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][53] ([i915#180])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][54] -> [FAIL][55] ([i915#2842]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][56] -> [FAIL][57] ([i915#2842]) +2 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][58] ([i915#2842])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2842]) +2 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-glk2/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-snb:          [PASS][61] -> [SKIP][62] ([fdo#109271]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-snb2/igt@gem_exec_flush@basic-uc-set-default.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl7/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl6/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#658])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][66] -> [SKIP][67] ([i915#4281])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb4/igt@i915_pm_dc@dc9-dpms.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +24 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl2/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#110892])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#4387])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#1769])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][72] ([i915#3743])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#110723]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
>     - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_color_chamelium@pipe-b-gamma:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl7/igt@kms_color_chamelium@pipe-b-gamma.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][80] ([i915#1319]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/igt@kms_content_protection@lic.html
>     - shard-kbl:          NOTRUN -> [TIMEOUT][81] ([i915#1319])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109278]) +9 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
>     - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271]) +57 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#5691])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#5287])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][86] -> [FAIL][87] ([i915#79])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-iclb:         [PASS][88] -> [DMESG-WARN][89] ([i915#2867])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2587])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109280]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-skl:          [PASS][92] -> [INCOMPLETE][93] ([i915#123])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109289])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#533])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][96] -> [DMESG-WARN][97] ([i915#180]) +3 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][98] ([i915#265])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][99] ([fdo#108145] / [i915#265])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][100] -> [FAIL][101] ([fdo#108145] / [i915#265])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-none:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([i915#3536])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_plane_lowres@pipe-b-tiling-none.html
> 
>   * igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-dp-1-downscale-with-rotation:
>     - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271]) +54 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl7/igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-dp-1-downscale-with-rotation.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#658])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl6/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>     - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#658]) +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][106] -> [SKIP][107] ([fdo#109441]) +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [PASS][108] -> [SKIP][109] ([i915#5519])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#3555])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][111] -> [FAIL][112] ([i915#1542])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-skl9/igt@perf@blocking.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl10/igt@perf@blocking.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [PASS][113] -> [FAIL][114] ([i915#51])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-skl1/igt@perf@short-reads.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl10/igt@perf@short-reads.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-kbl:          [PASS][115] -> [DMESG-WARN][116] ([i915#180]) +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-kbl3/igt@perf_pmu@rc6-suspend.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl4/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_nv_pcopy@test3_1:
>     - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109291])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@prime_nv_pcopy@test3_1.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109295])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][119] ([i915#5098])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl8/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2994])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl7/igt@sysfs_clients@recycle-many.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@eof:
>     - {shard-rkl}:        [SKIP][121] ([i915#2582]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-2/igt@fbdev@eof.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@fbdev@eof.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][123] ([i915#3070]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb6/igt@gem_eio@unwedge-stress.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb8/igt@gem_eio@unwedge-stress.html
>     - {shard-tglu}:       [TIMEOUT][125] ([i915#3063]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-tglu-4/igt@gem_eio@unwedge-stress.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-tglu-2/igt@gem_eio@unwedge-stress.html
>     - {shard-rkl}:        [TIMEOUT][127] ([i915#3063]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-5/igt@gem_eio@unwedge-stress.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [SKIP][129] ([i915#2848]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - {shard-tglu}:       [FAIL][131] ([i915#2842]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][133] ([i915#2842]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][135] ([i915#2842]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>     - shard-iclb:         [FAIL][137] ([i915#2842]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_parallel@basic@bcs0:
>     - {shard-rkl}:        [INCOMPLETE][139] ([i915#5080]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-5/igt@gem_exec_parallel@basic@bcs0.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-1/igt@gem_exec_parallel@basic@bcs0.html
> 
>   * igt@gem_exec_reloc@basic-concurrent0:
>     - {shard-rkl}:        [INCOMPLETE][141] -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-5/igt@gem_exec_reloc@basic-concurrent0.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-2/igt@gem_exec_reloc@basic-concurrent0.html
> 
>   * igt@i915_module_load@reload:
>     - shard-tglb:         [DMESG-WARN][143] ([i915#1982]) -> [PASS][144]
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-tglb2/igt@i915_module_load@reload.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-tglb6/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_backlight@fade:
>     - {shard-rkl}:        [SKIP][145] ([i915#3012]) -> [PASS][146]
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@i915_pm_backlight@fade.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@i915_pm_backlight@fade.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][147] ([i915#454]) -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@cursor:
>     - {shard-rkl}:        [SKIP][149] ([i915#1849]) -> [PASS][150] +1 similar issue
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@i915_pm_rpm@cursor.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@i915_pm_rpm@cursor.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - {shard-rkl}:        [SKIP][151] ([fdo#109308]) -> [PASS][152]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@i915_pm_rpm@i2c.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@i915_pm_rpm@i2c.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - {shard-rkl}:        [SKIP][153] ([i915#1397]) -> [PASS][154]
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-tglb:         [FAIL][155] ([i915#2521]) -> [PASS][156]
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-tglb6/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglb:         [FAIL][157] ([i915#3743]) -> [PASS][158]
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_color@pipe-a-ctm-max:
>     - {shard-rkl}:        [SKIP][159] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][160] +2 similar issues
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_color@pipe-a-ctm-max.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
>     - {shard-rkl}:        [SKIP][161] ([fdo#112022] / [i915#4070]) -> [PASS][162] +7 similar issues
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][163] ([i915#180]) -> [PASS][164] +2 similar issues
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-legacy:
>     - {shard-rkl}:        [SKIP][165] ([fdo#111825] / [i915#4070]) -> [PASS][166] +3 similar issues
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-iclb:         [FAIL][167] ([i915#2346]) -> [PASS][168]
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
>     - {shard-rkl}:        [SKIP][169] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][170] +6 similar issues
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - {shard-rkl}:        [SKIP][171] ([fdo#110189] / [i915#3955]) -> [PASS][172]
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [DMESG-WARN][173] ([i915#180]) -> [PASS][174] +3 similar issues
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [FAIL][175] ([i915#2122]) -> [PASS][176]
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
>     - {shard-rkl}:        [SKIP][177] ([i915#1849] / [i915#4098]) -> [PASS][178] +29 similar issues
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          [FAIL][179] ([i915#1188]) -> [PASS][180]
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-skl4/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl7/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_invalid_mode@bad-hsync-start:
>     - {shard-rkl}:        [SKIP][181] ([i915#4278]) -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_invalid_mode@bad-hsync-start.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html
> 
>   * igt@kms_plane@plane-position-hole@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][183] ([i915#1849] / [i915#3558]) -> [PASS][184] +1 similar issue
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-2/igt@kms_plane@plane-position-hole@pipe-b-planes.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - {shard-rkl}:        [SKIP][185] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][186] +6 similar issues
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          [FAIL][187] ([fdo#108145] / [i915#265]) -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_plane_cursor@pipe-a-overlay-size-64:
>     - {shard-rkl}:        [SKIP][189] ([i915#1845] / [i915#4098]) -> [PASS][190] +28 similar issues
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-2/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_plane_cursor@pipe-a-overlay-size-64.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
>     - {shard-rkl}:        [SKIP][191] ([i915#3558] / [i915#4070]) -> [PASS][192] +1 similar issue
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
> 
>   * igt@kms_psr@cursor_mmap_gtt:
>     - {shard-rkl}:        [SKIP][193] ([i915#1072]) -> [PASS][194] +3 similar issues
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_psr@cursor_mmap_gtt.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [SKIP][195] ([fdo#109441]) -> [PASS][196] +2 similar issues
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - {shard-rkl}:        [SKIP][197] ([i915#5461]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-b-sanity:
>     - {shard-rkl}:        [SKIP][199] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][201] ([i915#5639]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-skl8/igt@perf@polling-parameterized.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-skl6/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-tglb:         [INCOMPLETE][203] ([i915#5076]) -> [DMESG-WARN][204] ([i915#5076] / [i915#5614])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-tglb2/igt@gem_exec_balancer@parallel-contexts.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-tglb7/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [DMESG-WARN][205] ([i915#5614]) -> [SKIP][206] ([i915#4525])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [SKIP][207] ([i915#4525]) -> [DMESG-WARN][208] ([i915#5614]) +1 similar issue
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][209] -> [FAIL][210] ([i915#2842])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][211] ([i915#2920]) -> [SKIP][212] ([i915#658])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][213], [FAIL][214], [FAIL][215], [FAIL][216], [FAIL][217], [FAIL][218]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][219], [FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223], [FAIL][224], [FAIL][225], [FAIL][226]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl2/igt@runner@aborted.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl3/igt@runner@aborted.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl2/igt@runner@aborted.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl3/igt@runner@aborted.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl3/igt@runner@aborted.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/shard-apl8/igt@runner@aborted.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/igt@runner@aborted.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl6/igt@runner@aborted.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl6/igt@runner@aborted.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/igt@runner@aborted.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl8/igt@runner@aborted.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl2/igt@runner@aborted.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/igt@runner@aborted.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/shard-apl3/igt@runner@aborted.html
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
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5753]: https://gitlab.freedesktop.org/drm/intel/issues/5753
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11632 -> Patchwork_103443v4
> 
>   CI-20190529: 20190529
>   CI_DRM_11632: f6d6ced5a4acd1bc763804f27f71f8ee52722fd0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103443v4: f6d6ced5a4acd1bc763804f27f71f8ee52722fd0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
