Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4D53AC0BD
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 04:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16BC46E0C9;
	Fri, 18 Jun 2021 02:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CB546E092
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 02:20:42 +0000 (UTC)
IronPort-SDR: yLW892m4rE6Ajm53cepURmNEZjg5uG75Z4IX4SCVNqTOQhU3D+ko0h25RouzX41GDpsegoA8++
 vDDJF0tZYNGg==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="228005546"
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="228005546"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 19:20:41 -0700
IronPort-SDR: ELt2LXcCIybkZGShXBilqPvxgcfejLc4qvtDGrbNp0ItVvfKd8dv8atkn6bn6IroE1EPzPmzHm
 uPQ2OgWM8I+A==
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="451233675"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 19:20:41 -0700
Date: Thu, 17 Jun 2021 19:20:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210618022040.GF951094@mdroper-desk1.amr.corp.intel.com>
References: <20210617211425.1943662-1-matthew.d.roper@intel.com>
 <162397502375.1293.6565780973298764387@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162397502375.1293.6565780973298764387@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRXhw?=
 =?utf-8?q?licity_steer_l3bank_multicast_reads_when_necessary_=28rev7=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 18, 2021 at 12:10:23AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Explicity steer l3bank multicast reads when necessary (rev7)
> URL   : https://patchwork.freedesktop.org/series/91485/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10239_full -> Patchwork_20404_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20404_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20404_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20404_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_reloc@basic-wide-active@bcs0:
>     - shard-apl:          NOTRUN -> [FAIL][1] +3 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl2/igt@gem_exec_reloc@basic-wide-active@bcs0.html

This test has been failing on every platform since at least
CI_DRM_10206, maybe earlier.  Failure isn't caused by this series.

Series pushed to gt-next.  Thanks Rodrigo for the reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20404_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl7/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +4 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-snb2/igt@gem_ctx_persistence@engines-mixed.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2410])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][6] ([i915#2842]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842] / [i915#3468])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][11] -> [SKIP][12] ([fdo#109271])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-iclb:         NOTRUN -> [SKIP][13] ([fdo#112283])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#307])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl3/igt@gem_mmap_gtt@big-copy-odd.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl1/igt@gem_mmap_gtt@big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#307]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#307] / [i915#3468])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#307])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][23] ([i915#2658])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#768])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#109289]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb5/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1436] / [i915#716])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl1/igt@gen9_exec_parse@allowed-single.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#658])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl5/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#454])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         NOTRUN -> [WARN][31] ([i915#2684])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl7/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#2521])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +36 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl9/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#110725] / [fdo#111614])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-glk:          [PASS][38] -> [DMESG-WARN][39] ([i915#118] / [i915#95]) +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111614])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +25 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl2/igt@kms_chamelium@dp-crc-multiple.html
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb5/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl9/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl2/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@pipe-c-ctm-0-75:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][46] ([i915#1982])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl5/igt@kms_color@pipe-c-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-5:
>     - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +19 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm-0-5.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][48] ([i915#1319])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl3/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
>     - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#3444])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3319])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +116 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278]) +7 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271]) +338 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109274] / [fdo#109278])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-skl:          [PASS][57] -> [DMESG-WARN][58] ([i915#1982]) +3 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2346])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#2122])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#79])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-kbl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180]) +3 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip_tiling@flip-yf-tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#111615])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb5/igt@kms_flip_tiling@flip-yf-tiled.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
>     - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#49])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109280]) +7 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#49])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111825]) +10 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#1187])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][78] ([i915#265]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
>     - shard-kbl:          NOTRUN -> [FAIL][79] ([i915#265])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][80] -> [FAIL][81] ([fdo#108145] / [i915#265]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][82] ([fdo#108145] / [i915#265]) +2 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][83] ([fdo#108145] / [i915#265])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#658]) +9 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#658]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#2920])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109441])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][89] -> [SKIP][90] ([fdo#109441]) +2 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-kbl:          [PASS][91] -> [INCOMPLETE][92] ([i915#155] / [i915#2828] / [i915#794])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-hang:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +282 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl2/igt@kms_vblank@pipe-d-wait-forked-hang.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl2/igt@kms_writeback@writeback-check-output.html
>     - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2437])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl7/igt@kms_writeback@writeback-check-output.html
>     - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#2437])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb5/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@nouveau_crc@pipe-a-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2530])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@nouveau_crc@pipe-a-source-rg.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#2530])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb5/igt@nouveau_crc@pipe-b-source-outp-inactive.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#1542])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl1/igt@perf@polling-parameterized.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl10/igt@perf@polling-parameterized.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109289]) +2 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109291])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109292])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@sync@bcs0:
>     - shard-tglb:         [PASS][104] -> [INCOMPLETE][105] ([i915#409])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-tglb2/igt@prime_vgem@sync@bcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-tglb1/igt@prime_vgem@sync@bcs0.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl1/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl4/igt@sysfs_clients@sema-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][108] ([i915#2842]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][110] ([i915#2842]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority-all:
>     - shard-glk:          [DMESG-WARN][112] ([i915#118] / [i915#95]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-glk1/igt@gem_exec_whisper@basic-queues-priority-all.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
>     - shard-skl:          [FAIL][114] ([i915#3444]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][116] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [DMESG-WARN][118] ([i915#180]) -> [PASS][119] +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][120] ([fdo#108145] / [i915#265]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][122] ([fdo#109441]) -> [PASS][123] +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][124] ([i915#180] / [i915#295]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127] +2 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-skl:          [INCOMPLETE][128] ([i915#198] / [i915#2405]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@prime_vgem@sync@vcs0:
>     - shard-skl:          [INCOMPLETE][130] ([i915#409]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@prime_vgem@sync@vcs0.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-skl9/igt@prime_vgem@sync@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [SKIP][132] ([fdo#109271]) -> [FAIL][133] ([i915#2842])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][134] ([i915#1804] / [i915#2684]) -> [WARN][135] ([i915#2684])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][136] ([i915#658]) -> [SKIP][137] ([i915#2920]) +2 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][138] ([i915#2920]) -> [SKIP][139] ([i915#658]) +1 similar issue
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#180] / [i915#1814] / [i915#3002] / [i915
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20404/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
