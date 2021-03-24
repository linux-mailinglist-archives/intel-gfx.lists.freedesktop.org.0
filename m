Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D13B34712D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 06:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706406EAE3;
	Wed, 24 Mar 2021 05:43:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E006E97F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 05:43:36 +0000 (UTC)
IronPort-SDR: OtvWXZkSX0ALd6OVph82YDXp/cRc28eCHL+yA3F5gtoyplB/DzrskKLJb2QTXiKVra/TyG3MWH
 fvOBXFOVaDQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="170604310"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="170604310"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 22:43:36 -0700
IronPort-SDR: 5i6kknTMkgjRG4RFsPpdjYojNREQubZOuAMTAlgFvh4z84mhYaX4HG1YHWTuuYPaDU9UC/KBPp
 Huu6vVxCa7iA==
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="408683652"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 22:43:35 -0700
Date: Wed, 24 Mar 2021 07:43:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210324054331.GA1260031@ideak-desk.fi.intel.com>
References: <20210322204223.919936-1-imre.deak@intel.com>
 <161653498032.20054.7608392561936388955@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161653498032.20054.7608392561936388955@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_the_GT_fence_revocation_runtime_PM_logic?=
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
Reply-To: imre.deak@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 09:29:40PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix the GT fence revocation runtime PM logic
> URL   : https://patchwork.freedesktop.org/series/88300/
> State : success

Patch is pushed to -din adding the tags for stable, Fixes and Chris'
R-b.

While applying I also added a code comment to i915_vma_revoke_fence()
suggested by Chris explaining how the fence reg programming is deferred
and fixed the __intel_runtime_pm_get_if_active() docbook comment.

Thanks for the review.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9882_full -> Patchwork_19833_full
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
>   Here are the changes found in Patchwork_19833_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-snb2/igt@gem_create@create-massive.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl8/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_ctx_persistence@process:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +7 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-snb7/igt@gem_ctx_persistence@process.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][6] -> [TIMEOUT][7] ([i915#2369] / [i915#3063])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb2/igt@gem_eio@unwedge-stress.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-iclb:         [PASS][8] -> [INCOMPLETE][9] ([i915#1895])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb7/igt@gem_exec_balancer@hang.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb1/igt@gem_exec_balancer@hang.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842]) +2 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][12] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html
>     - shard-glk:          NOTRUN -> [FAIL][13] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-glk1/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][18] -> [SKIP][19] ([fdo#109271])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-parallel:
>     - shard-apl:          NOTRUN -> [TIMEOUT][20] ([i915#3183])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl7/igt@gem_exec_reloc@basic-parallel.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@rcs0:
>     - shard-snb:          NOTRUN -> [FAIL][21] ([i915#2389]) +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][22] ([i915#2389])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html
> 
>   * igt@gem_exec_schedule@u-fairslice@bcs0:
>     - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#2803])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb2/igt@gem_exec_schedule@u-fairslice@bcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#307])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][27] ([i915#2658])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][28] ([i915#3002])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@gem_userptr_blits@input-checking.html
>     - shard-glk:          NOTRUN -> [DMESG-WARN][29] ([i915#3002])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-glk1/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][30] ([i915#2502] / [i915#2667])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl8/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +79 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl8/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#112306])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][35] -> [INCOMPLETE][36] ([i915#2782])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-snb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#2521])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b:
>     - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#3168])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl1/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl3/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#111614])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111615]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2705]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl6/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl1/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl10/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@hdmi-crc-single:
>     - shard-glk:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-glk1/igt@kms_chamelium@hdmi-crc-single.html
> 
>   * igt@kms_color@pipe-d-ctm-negative:
>     - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +21 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl6/igt@kms_color@pipe-d-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +30 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-a-degamma:
>     - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl6/igt@kms_color_chamelium@pipe-a-degamma.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109300] / [fdo#111066])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb6/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][52] ([i915#1319]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl7/igt@kms_content_protection@lic.html
>     - shard-kbl:          NOTRUN -> [TIMEOUT][53] ([i915#1319])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][54] ([i915#54])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109279])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-snb:          NOTRUN -> [SKIP][56] ([fdo#109271]) +460 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-snb7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#79])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109280]) +4 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111825]) +8 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +200 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-skl:          NOTRUN -> [FAIL][62] ([i915#49])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
>     - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271]) +20 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-glk1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#1188])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][68] ([i915#265])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][69] -> [FAIL][70] ([fdo#108145] / [i915#265]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658]) +3 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>     - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109441]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb2/igt@kms_psr@psr2_dpms.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb5/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][75] ([i915#31])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-snb7/igt@kms_setmode@basic.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2437]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109289])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#109291])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-iclb:         [PASS][79] -> [FAIL][80] ([i915#3028])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb8/igt@sysfs_clients@recycle-many.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb8/igt@sysfs_clients@recycle-many.html
>     - shard-kbl:          [PASS][81] -> [FAIL][82] ([i915#3028])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl1/igt@sysfs_clients@recycle-many.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl3/igt@sysfs_clients@recycle-many.html
>     - shard-snb:          NOTRUN -> [FAIL][83] ([i915#3028])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-snb7/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-10@rcs0:
>     - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3026]) +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-glk1/igt@sysfs_clients@sema-10@rcs0.html
> 
>   * igt@sysfs_clients@split-10@bcs0:
>     - shard-glk:          [PASS][85] -> [SKIP][86] ([fdo#109271] / [i915#3026])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk7/igt@sysfs_clients@split-10@bcs0.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-glk5/igt@sysfs_clients@split-10@bcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-iclb:         [INCOMPLETE][87] ([i915#3057]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb6/igt@gem_ctx_persistence@many-contexts.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_ctx_persistence@replace@vcs1:
>     - shard-tglb:         [INCOMPLETE][89] -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb6/igt@gem_ctx_persistence@replace@vcs1.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb6/igt@gem_ctx_persistence@replace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][91] ([i915#2846]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-glk3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          [FAIL][93] ([i915#2842]) -> [PASS][94] +2 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@vcs0:
>     - shard-apl:          [DMESG-WARN][95] ([i915#1610]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl3/igt@gem_exec_schedule@u-fairslice@vcs0.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl6/igt@gem_exec_schedule@u-fairslice@vcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][97] ([i915#2190]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@big-copy:
>     - shard-skl:          [FAIL][99] ([i915#307]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl10/igt@gem_mmap_gtt@big-copy.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl5/igt@gem_mmap_gtt@big-copy.html
> 
>   * igt@gem_vm_create@destroy-race:
>     - shard-tglb:         [TIMEOUT][101] ([i915#2795]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb5/igt@gem_vm_create@destroy-race.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb8/igt@gem_vm_create@destroy-race.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][103] ([i915#454]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@client:
>     - shard-glk:          [DMESG-FAIL][105] ([i915#3047]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-glk9/igt@i915_selftest@live@client.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-glk1/igt@i915_selftest@live@client.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
>     - shard-skl:          [INCOMPLETE][109] ([fdo#109052]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl3/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [INCOMPLETE][111] ([i915#198]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][113] ([i915#2122]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-tglb:         [FAIL][115] ([i915#2598]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][117] ([fdo#108145] / [i915#265]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-kbl:          [DMESG-WARN][121] ([i915#180]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl7/igt@perf_pmu@rc6-suspend.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl6/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-tglb:         [FAIL][123] ([i915#3028]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-tglb5/igt@sysfs_clients@recycle-many.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-tglb2/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-10@vecs0:
>     - shard-apl:          [SKIP][125] ([fdo#109271] / [i915#3026]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl6/igt@sysfs_clients@sema-10@vecs0.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-apl2/igt@sysfs_clients@sema-10@vecs0.html
> 
>   * igt@sysfs_clients@split-25@vecs0:
>     - shard-skl:          [SKIP][127] ([fdo#109271]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-skl7/igt@sysfs_clients@split-25@vecs0.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-skl8/igt@sysfs_clients@split-25@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [SKIP][129] ([fdo#109271]) -> [FAIL][130] ([i915#2842])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][131] ([i915#1804] / [i915#2684]) -> [WARN][132] ([i915#2681] / [i915#2684])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][133] ([i915#1804] / [i915#2684]) -> [WARN][134] ([i915#2684])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][135] ([i915#658]) -> [SKIP][136] ([i915#2920])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
>     - shard-iclb:         [SKIP][137] ([i915#2920]) -> [SKIP][138] ([i915#658])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#180] / [i915#2292] / [i915#2505] / [i915#2724] / [i915#3002]) -> ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#1436] / [i915#180] / [i915#2505] / [i915#2724] / [i915#3002])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl2/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl6/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl6/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl7/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl7/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-kbl7/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl7/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl7/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl7/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl6/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl1/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/shard-kbl1/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156]) ([i915#1610] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002]) -> ([FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160]) ([fdo#109271] / [i915#180] / [i915#2724] / [i915#3002])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl8/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl3/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl8/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/shard-apl3/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19833/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
