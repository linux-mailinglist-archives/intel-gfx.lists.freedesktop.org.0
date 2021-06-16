Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 394823AA120
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 18:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 942286E0DE;
	Wed, 16 Jun 2021 16:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F7A089850
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 16:20:18 +0000 (UTC)
IronPort-SDR: KFypHdp3/RXOdZlPJQ4o0jrVxZ/70OJraU5zI/zIytcCvE1At/r+HqCng1dqcceSvVcbOcD7Va
 4N19F7BPCYfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="267358697"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="267358697"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 09:20:16 -0700
IronPort-SDR: XvLvQgw4+Jmn7EAilaCvQ2ioJsbUvs8yPNRcW5BGtoXTb+zPhzcUJbHIAYUqMt4m5ANl6Q/q6d
 H8DuS7tAwVVw==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="472086632"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 09:20:14 -0700
Date: Wed, 16 Jun 2021 19:20:11 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Chris Chiu <chris.chiu@canonical.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210616162011.GF1121623@ideak-desk.fi.intel.com>
References: <20210610174223.605904-1-imre.deak@intel.com>
 <162336051163.27730.18281174416606160545@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162336051163.27730.18281174416606160545@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Force_a_TypeC_PHY_disconnect_during_suspend/shutdown?=
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

On Thu, Jun 10, 2021 at 09:28:31PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Force a TypeC PHY disconnect during suspend/shutdown
> URL   : https://patchwork.freedesktop.org/series/91345/
> State : failure

Thanks for the report, testing and review. Pushed to drm-intel-next with
the missing static fn sparse error fixed.

Lakshmi, could you look at the unrelated issues below?

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10205_full -> Patchwork_20334_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20334_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20334_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20334_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_whisper@basic-forked:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb2/igt@gem_exec_whisper@basic-forked.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb7/igt@gem_exec_whisper@basic-forked.html

No TypeC sinks connected to this system, nor any suspend tests ran
before this failure:
[21.819973] Initializing watchdogs
[21.820092]   /dev/watchdog0
[21.825864] [001/129] (960s left) gem_exec_schedule (deep)
Starting subtest: deep
Starting dynamic subtest: rcs0
Dynamic subtest rcs0: SUCCESS (7.361s)
Starting dynamic subtest: bcs0
Dynamic subtest bcs0: SUCCESS (7.596s)
Starting dynamic subtest: vcs0
Dynamic subtest vcs0: SUCCESS (7.442s)
Starting dynamic subtest: vcs1
Dynamic subtest vcs1: SUCCESS (7.491s)
Starting dynamic subtest: vecs0
Dynamic subtest vecs0: SUCCESS (7.501s)
Subtest deep: SUCCESS (37.391s)
[59.664849] [002/129] (922s left) gem_exec_whisper (basic-forked)

No pstore logs available either, so just guessing that it may be related
to one of:
https://gitlab.freedesktop.org/drm/intel/-/issues/2263
https://gitlab.freedesktop.org/drm/intel/-/issues/3488

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20334_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@clone:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +5 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb5/igt@gem_ctx_persistence@clone.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +2 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl1/igt@gem_eio@in-flight-suspend.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl7/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          NOTRUN -> [FAIL][6] ([i915#2846])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl8/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][7] ([fdo#109271]) +51 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][12] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2849])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-all:
>     - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#118] / [i915#95])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk5/igt@gem_exec_whisper@basic-fds-all.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk2/igt@gem_exec_whisper@basic-fds-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl3/igt@gem_huc_copy@huc-copy.html
>     - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#2190])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl1/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#307]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk6/igt@gem_mmap_gtt@big-copy-odd.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk5/igt@gem_mmap_gtt@big-copy-odd.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][21] ([i915#2658])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl8/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][22] ([i915#3002])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl9/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_vm_create@destroy-race:
>     - shard-tglb:         [PASS][23] -> [TIMEOUT][24] ([i915#2795])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb8/igt@gem_vm_create@destroy-race.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb1/igt@gem_vm_create@destroy-race.html
> 
>   * igt@gen7_exec_parse@cmd-crossing-page:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#109289])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@gen7_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1436] / [i915#716])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl10/igt@gen9_exec_parse@allowed-single.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-apl:          NOTRUN -> [FAIL][28] ([i915#3296])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl7/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#1937])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo:
>     - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271]) +500 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb6/igt@kms_ccs@pipe-a-ccs-on-another-bo.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111304])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl5/igt@kms_ccs@pipe-c-ccs-on-another-bo.html
> 
>   * igt@kms_chamelium@hdmi-audio:
>     - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl1/igt@kms_chamelium@hdmi-audio.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-snb:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +23 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][38] ([i915#1319])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][39] ([i915#1319])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl6/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
>     - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#3444])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][42] ([i915#180])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][43] ([i915#2868])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
>     - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([i915#1982])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][48] ([i915#155] / [i915#180] / [i915#636])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-skl:          [PASS][49] -> [INCOMPLETE][50] ([i915#146] / [i915#198])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2672])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2642])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2642])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111825]) +5 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#1188])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl7/igt@kms_hdr@bpc-switch.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl2/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265]) +2 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][61] -> [FAIL][62] ([fdo#108145] / [i915#265]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#3536])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
>     - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +4 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][68] ([i915#132] / [i915#3467])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][69] ([i915#31])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb6/igt@kms_setmode@basic.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271]) +97 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl4/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109502])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2437])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl1/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
>     - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +217 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl7/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
> 
>   * igt@prime_nv_pcopy@test3_2:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#109291])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@prime_nv_pcopy@test3_2.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl1/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl5/igt@sysfs_clients@fair-7.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][77] ([i915#2369] / [i915#3063]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb3/igt@gem_eio@unwedge-stress.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][79] ([i915#2842]) -> [PASS][80] +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][81] ([i915#2842]) -> [PASS][82] +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][83] ([i915#2842]) -> [PASS][84] +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority:
>     - shard-glk:          [DMESG-WARN][85] ([i915#118] / [i915#95]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html
> 
>   * igt@gem_mmap_gtt@big-copy:
>     - shard-glk:          [FAIL][87] ([i915#307]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk2/igt@gem_mmap_gtt@big-copy.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk1/igt@gem_mmap_gtt@big-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-iclb:         [FAIL][89] ([i915#307]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-iclb:         [FAIL][91] ([i915#2428]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_mmap_offset@clear:
>     - shard-skl:          [FAIL][93] ([i915#3160]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl8/igt@gem_mmap_offset@clear.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl6/igt@gem_mmap_offset@clear.html
>     - shard-iclb:         [FAIL][95] ([i915#3160]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb8/igt@gem_mmap_offset@clear.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@gem_mmap_offset@clear.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][97] ([i915#2782]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-snb6/igt@i915_selftest@live@hangcheck.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-snb7/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [INCOMPLETE][99] ([i915#155] / [i915#180]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl4/igt@i915_suspend@debugfs-reader.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl4/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_color@pipe-c-ctm-0-5:
>     - shard-skl:          [DMESG-WARN][101] ([i915#1982]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl8/igt@kms_color@pipe-c-ctm-0-5.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [FAIL][103] ([i915#79]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +4 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][109] ([fdo#108145] / [i915#265]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112] +2 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][113] ([i915#1542]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-skl10/igt@perf@polling-parameterized.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-skl2/igt@perf@polling-parameterized.html
> 
>   * igt@prime_vgem@sync@rcs0:
>     - shard-tglb:         [INCOMPLETE][115] ([i915#409]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb6/igt@prime_vgem@sync@rcs0.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb5/igt@prime_vgem@sync@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live@execlists:
>     - shard-tglb:         [DMESG-FAIL][117] ([i915#3462]) -> [INCOMPLETE][118] ([i915#3462])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-tglb2/igt@i915_selftest@live@execlists.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-tglb2/igt@i915_selftest@live@execlists.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][119] ([i915#658]) -> [SKIP][120] ([i915#2920]) +2 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][121] ([i915#2920]) -> [SKIP][122] ([i915#658]) +1 similar issue
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl6/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl7/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl2/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl4/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl6/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl1/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl6/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl4/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl7/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-kbl3/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl7/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl7/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl6/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl7/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl3/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl1/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl2/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-kbl1/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][150], [FAIL][151], [FAIL][152]) ([i915#2426] / [i915#2782] / [i915#3002]) -> ([FAIL][153], [FAIL][154], [FAIL][155]) ([i915#2782] / [i915#3002])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb2/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb8/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-iclb7/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb2/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/shard-iclb8/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159]) ([fdo#109271] / [i915#180] / [i915#2426] / [i915#3002] / [i915#3363]) -> ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10205/shard-apl8/igt@runner@aborted.html
>    [157]: https
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20334/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
