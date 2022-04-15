Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85856502C2B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 16:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 913F110E327;
	Fri, 15 Apr 2022 14:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BB710E303
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 14:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650034412; x=1681570412;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=105ZQacGK4dDscYqLPvxR9tz6e1A9+MU5VY1DZxXrvY=;
 b=HRsW3pq4XdvpSFcKJUZmjkX1DFwIHM6rcC3CRHpX9SPGxB3hOXfmv3kb
 b7v++n1BehUzVEWQS29iZbh4T6fep9IiZr01wbyFONsfQZwpHn3rsuSVZ
 NUzngBlzuZf442c9D2/bEfjcGJAstvK5z+DJQwyaG9Y5lgBZPxSnPBe+X
 QNVNi6I6R48mTZU71XU/N6NImn3Ca66oy3FUdvjufzhnrvxB34OFVcLEx
 jKCvu/5SRZhPl/s5WbyWyi4MFboP3Pvt5C7Cz185sCQhLaelIXy0Ow0fC
 4wZ7HUClmnOOuyoEWx2xMSyy7a5oTkaEaSGXPAT7NnB9+8WM6hd1s1Nbf g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288228260"
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="288228260"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 07:53:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="725801939"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 07:53:31 -0700
Date: Fri, 15 Apr 2022 07:53:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YlmG6v0XrbrxdDno@mdroper-desk1.amr.corp.intel.com>
References: <20220414192230.749771-1-matthew.d.roper@intel.com>
 <164999874623.6518.10552841849486072257@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164999874623.6518.10552841849486072257@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915/doc=3A_Convert_drm=5F?=
 =?utf-8?q?i915=5Fquery=5Ftopology=5Finfo_comment_to_kerneldoc?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 15, 2022 at 04:59:06AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [CI,1/4] drm/i915/doc: Convert drm_i915_query_topology_info comment to kerneldoc
> URL   : https://patchwork.freedesktop.org/series/102713/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11503_full -> Patchwork_102713v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_102713v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_102713v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 12)
> ------------------------------
> 
>   Missing    (1): shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_102713v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@system-suspend-without-i915:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb6/igt@i915_suspend@system-suspend-without-i915.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb4/igt@i915_suspend@system-suspend-without-i915.html

Panic in the ext4 filesystem code; not related to graphics.  There are
also some hardware errors reported on the hard drive immediately before
the panic, so this might indicate a failing drive.

> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

Failure in a display test that doesn't utilize the query ioctl being
modified here; unrelated to this series.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102713v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@chamelium:
>     - shard-iclb:         NOTRUN -> [SKIP][5] ([fdo#111827])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb7/igt@feature_discovery@chamelium.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#232]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][8] ([i915#2846])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-before-default:
>     - shard-snb:          [PASS][14] -> [SKIP][15] ([fdo#109271]) +2 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-snb4/igt@gem_exec_flush@basic-wb-ro-before-default.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-snb6/igt@gem_exec_flush@basic-wb-ro-before-default.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl10/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#109289])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#5566] / [i915#716])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-skl10/igt@gen9_exec_parse@allowed-single.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#2527] / [i915#2856])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb6/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][22] ([i915#454])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl9/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#109506] / [i915#2411])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#5286])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111614])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][27] ([i915#3763])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111615]) +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb6/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][30] ([i915#3743]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3689]) +3 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#3689] / [i915#3886]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +8 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb6/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@hdmi-crc-single:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb5/igt@kms_chamelium@hdmi-crc-single.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl10/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>     - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#1063])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3319])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-random:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#3359])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x10-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271]) +183 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl9/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#4103])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#5287]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([i915#180])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
>     - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#79])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#3701]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +37 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-iclb:         [PASS][59] -> [FAIL][60] ([i915#1888] / [i915#2546])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109280]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109280] / [fdo#111825]) +7 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          NOTRUN -> [FAIL][63] ([i915#1188])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl1/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533]) +2 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl10/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][66] -> [FAIL][67] ([fdo#108145] / [i915#265]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#111615] / [fdo#112054])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb6/igt@kms_plane_lowres@pipe-a-tiling-yf.html
> 
>   * igt@kms_plane_lowres@pipe-d-tiling-y:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#3536])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb6/igt@kms_plane_lowres@pipe-d-tiling-y.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [PASS][70] -> [SKIP][71] ([i915#5235]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109441]) +2 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-tglb:         NOTRUN -> [FAIL][76] ([i915#132] / [i915#3467]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-skl:          [PASS][77] -> [SKIP][78] ([fdo#109271])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-skl6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#3555])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@prime_nv_api@i915_self_import:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#109291])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb6/igt@prime_nv_api@i915_self_import.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl1/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#2994]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb6/igt@sysfs_clients@sema-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-tglu}:       [TIMEOUT][83] ([i915#3063] / [i915#3648]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-tglu-5/igt@gem_eio@unwedge-stress.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglu-4/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][85] ([i915#4525]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][87] ([i915#2842]) -> [PASS][88] +2 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [FAIL][89] ([i915#2842]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][91] ([i915#2842]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>     - shard-iclb:         [FAIL][93] ([i915#2849]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-snb:          [SKIP][95] ([fdo#109271]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_mmap_gtt@flink-race:
>     - {shard-rkl}:        [INCOMPLETE][97] ([i915#5080]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@gem_mmap_gtt@flink-race.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@gem_mmap_gtt@flink-race.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][99] ([i915#4281]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rpm@gem-execbuf:
>     - {shard-rkl}:        [SKIP][101] ([fdo#109308]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress:
>     - {shard-rkl}:        [SKIP][103] ([i915#1397]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [FAIL][105] ([i915#2521]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-0:
>     - {shard-tglu}:       [DMESG-WARN][107] ([i915#402]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-0.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglu-8/igt@kms_big_fb@linear-16bpp-rotate-0.html
> 
>   * igt@kms_color@pipe-b-legacy-gamma:
>     - {shard-rkl}:        [SKIP][109] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][110] +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_color@pipe-b-legacy-gamma.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma.html
> 
>   * igt@kms_color@pipe-c-invalid-gamma-lut-sizes:
>     - {shard-rkl}:        [SKIP][111] ([i915#4070]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-2/igt@kms_color@pipe-c-invalid-gamma-lut-sizes.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-5/igt@kms_color@pipe-c-invalid-gamma-lut-sizes.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
>     - {shard-rkl}:        [SKIP][113] ([fdo#112022] / [i915#4070]) -> [PASS][114] +3 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - {shard-rkl}:        [SKIP][115] ([fdo#111825] / [i915#4070]) -> [PASS][116] +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-skl:          [FAIL][117] ([i915#2346]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
>     - {shard-rkl}:        [SKIP][119] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [FAIL][121] ([i915#4767]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@d-edp1:
>     - shard-tglb:         [INCOMPLETE][125] -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-tglb6/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@d-edp1.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-tglb1/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@d-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>     - {shard-rkl}:        [SKIP][127] ([i915#1849] / [i915#4098]) -> [PASS][128] +6 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
>     - {shard-rkl}:        [FAIL][129] -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-kbl:          [DMESG-WARN][131] ([i915#180]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][133] ([i915#1849] / [i915#3558]) -> [PASS][134] +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [SKIP][135] ([i915#5235]) -> [PASS][136] +2 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
>     - shard-iclb:         [SKIP][137] ([i915#5176]) -> [PASS][138] +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb5/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
> 
>   * igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format:
>     - shard-iclb:         [INCOMPLETE][139] ([i915#5395]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb2/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb6/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][141] ([fdo#109441]) -> [PASS][142] +1 similar issue
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@suspend:
>     - {shard-rkl}:        [SKIP][143] ([i915#1072]) -> [PASS][144]
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_psr@suspend.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_psr@suspend.html
> 
>   * igt@kms_sequence@queue-busy:
>     - {shard-rkl}:        [SKIP][145] ([i915#1845] / [i915#4098]) -> [PASS][146] +9 similar issues
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_sequence@queue-busy.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_sequence@queue-busy.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-b-sanity:
>     - {shard-rkl}:        [SKIP][147] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-rkl-5/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [SKIP][149] ([i915#4525]) -> [DMESG-WARN][150] ([i915#5614])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb7/igt@gem_exec_balancer@parallel.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb2/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [DMESG-WARN][151] ([i915#5614]) -> [SKIP][152] ([i915#4525])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-skl:          [SKIP][153] ([fdo#109271] / [i915#1888]) -> [SKIP][154] ([fdo#109271]) +1 similar issue
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-skl2/igt@kms_flip@2x-flip-vs-fences.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-skl7/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][155] ([fdo#111068] / [i915#658]) -> [SKIP][156] ([i915#2920])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl4/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl1/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl4/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl1/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl6/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl1/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl4/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl1/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl4/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl4/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl6/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/shard-kbl4/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl4/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl4/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl4/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl7/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl7/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl4/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl3/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@runner@aborted.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl4/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl4/igt@runner@aborted.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl4/igt@runner@aborted.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/shard-kbl6/igt@runner@aborted.html
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
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5395]: https://gitlab.freedesktop.org/drm/intel/issues/5395
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * CI: None -> CI-20190529
>   * Linux: CI_DRM_11503 -> Patchwork_102713v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11503: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_102713v1: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102713v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
