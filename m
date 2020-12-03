Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9802CD7C1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 14:42:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C998A6E0C6;
	Thu,  3 Dec 2020 13:41:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC35F6E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 13:41:56 +0000 (UTC)
IronPort-SDR: ENpBL9uz23lb8FzekgRkYkEVbM+ROhZAWcg6+Jv/um/QmeRKN9qda9DS+2hvcCqs9RhnnD+/7N
 1arrSG6Nknbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="173287830"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="173287830"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 05:41:56 -0800
IronPort-SDR: tOiMtiGzz/IXpka+8SnDY1J3t/m90oZ7xWRUaCUhv3y1fySP+90/YoPULjll0HbTKVnSiBbE+i
 3w+uhl9dCwTQ==
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="335958079"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 05:41:54 -0800
Date: Thu, 3 Dec 2020 15:41:51 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201203134151.GD2940884@ideak-desk.fi.intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
 <160699225279.31155.3600056516160697841@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160699225279.31155.3600056516160697841@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_the_missing_wakeref_tracking_for_display_power_ref?=
 =?utf-8?q?erences_=28rev3=29?=
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

On Thu, Dec 03, 2020 at 10:44:12AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add the missing wakeref tracking for display power references (rev3)
> URL   : https://patchwork.freedesktop.org/series/84418/
> State : success

Pushed to -dinq, thanks for the review.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9415_full -> Patchwork_19027_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_19027_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19027_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19027_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:
>     - shard-iclb:         [FAIL][1] -> ([FAIL][2], [PASS][3])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb6/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9415_full and Patchwork_19027_full:
> 
> ### New CI tests (1) ###
> 
>   * boot:
>     - Statuses : 351 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19027_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-iclb:         [PASS][4] -> ([PASS][5], [DMESG-WARN][6]) ([i915#1982])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb5/igt@core_hotunplug@unbind-rebind.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb5/igt@core_hotunplug@unbind-rebind.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb8/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@debugfs_test@read_all_entries_display_on:
>     - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl6/igt@debugfs_test@read_all_entries_display_on.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl8/igt@debugfs_test@read_all_entries_display_on.html
> 
>   * igt@drm_read@empty-block:
>     - shard-glk:          [PASS][9] -> ([DMESG-WARN][10], [PASS][11]) ([i915#1982])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk9/igt@drm_read@empty-block.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk3/igt@drm_read@empty-block.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk9/igt@drm_read@empty-block.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][12] -> ([PASS][13], [SKIP][14]) ([i915#658])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@feature_discovery@psr2.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb2/igt@feature_discovery@psr2.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb3/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_endless@dispatch@rcs0:
>     - shard-iclb:         [PASS][15] -> ([PASS][16], [INCOMPLETE][17]) ([i915#2502])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb1/igt@gem_exec_endless@dispatch@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb8/igt@gem_exec_endless@dispatch@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb4/igt@gem_exec_endless@dispatch@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-glk:          [PASS][18] -> ([DMESG-WARN][19], [PASS][20]) ([i915#118] / [i915#95])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][21] -> ([SKIP][22], [PASS][23]) ([i915#2190])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-tglb3/igt@gem_huc_copy@huc-copy.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [PASS][24] -> ([DMESG-WARN][25], [PASS][26]) ([i915#1436] / [i915#716])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl6/igt@gen9_exec_parse@allowed-all.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl2/igt@gen9_exec_parse@allowed-all.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl8/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_selftest@live@client:
>     - shard-skl:          [PASS][27] -> ([INCOMPLETE][28], [INCOMPLETE][29]) ([i915#2295])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl7/igt@i915_selftest@live@client.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl6/igt@i915_selftest@live@client.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl9/igt@i915_selftest@live@client.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@edp-1-pipe-b:
>     - shard-skl:          [PASS][30] -> ([PASS][31], [DMESG-WARN][32]) ([i915#1982]) +3 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@edp-1-pipe-b.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@edp-1-pipe-b.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@edp-1-pipe-b.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
>     - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
>     - shard-apl:          [PASS][35] -> ([FAIL][36], [PASS][37]) ([i915#54])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
>     - shard-apl:          [PASS][38] -> ([FAIL][39], [FAIL][40]) ([i915#54])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
>     - shard-kbl:          [PASS][41] -> ([FAIL][42], [FAIL][43]) ([i915#54])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-skl:          [PASS][44] -> ([PASS][45], [FAIL][46]) ([i915#2346])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
>     - shard-tglb:         [PASS][47] -> ([PASS][48], [FAIL][49]) ([i915#2346])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
> 
>   * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
>     - shard-glk:          [PASS][50] -> ([DMESG-WARN][51], [DMESG-WARN][52]) ([i915#1982])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk9/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk9/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
>     - shard-tglb:         [PASS][53] -> ([PASS][54], [DMESG-WARN][55]) ([i915#1982]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-tglb7/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb7/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][56] -> ([DMESG-WARN][57], [DMESG-WARN][58]) ([i915#1982]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
>     - shard-apl:          [PASS][59] -> ([DMESG-WARN][60], [DMESG-WARN][61]) ([i915#1982])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl7/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl4/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl1/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-glk:          [PASS][62] -> ([FAIL][63], [PASS][64]) ([i915#64])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk9/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1:
>     - shard-hsw:          [PASS][65] -> [DMESG-WARN][66] ([i915#1982])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-hsw1/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-hsw1/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-tglb:         [PASS][67] -> ([PASS][68], [FAIL][69]) ([i915#2598])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [PASS][70] -> ([PASS][71], [FAIL][72]) ([i915#79])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [PASS][73] -> ([PASS][74], [DMESG-WARN][75]) ([i915#180])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-edp1:
>     - shard-skl:          [PASS][76] -> ([FAIL][77], [PASS][78]) ([i915#2122])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl9/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl2/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-tglb:         [PASS][79] -> ([DMESG-WARN][80], [DMESG-WARN][81]) ([i915#1982])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][82] -> ([FAIL][83], [FAIL][84]) ([i915#1188])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][85] -> ([FAIL][86], [FAIL][87]) ([fdo#108145] / [i915#265])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_cursor@pipe-b-viewport-size-256:
>     - shard-apl:          [PASS][88] -> ([DMESG-WARN][89], [PASS][90]) ([i915#1982]) +4 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl1/igt@kms_plane_cursor@pipe-b-viewport-size-256.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl6/igt@kms_plane_cursor@pipe-b-viewport-size-256.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl7/igt@kms_plane_cursor@pipe-b-viewport-size-256.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [PASS][91] -> ([SKIP][92], [PASS][93]) ([fdo#109642] / [fdo#111068])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@kms_psr2_su@page_flip.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb6/igt@kms_psr2_su@page_flip.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb2/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         [PASS][94] -> ([SKIP][95], [PASS][96]) ([fdo#109441])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb3/igt@kms_psr@psr2_sprite_render.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [PASS][97] -> ([FAIL][98], [PASS][99]) ([i915#1542])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl6/igt@perf@polling.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl5/igt@perf@polling.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl2/igt@perf@polling.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          [PASS][100] -> ([PASS][101], [DMESG-WARN][102]) ([i915#1982] / [i915#262])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl4/igt@perf_pmu@module-unload.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl1/igt@perf_pmu@module-unload.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl3/igt@perf_pmu@module-unload.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [INCOMPLETE][103] -> ([PASS][104], [PASS][105])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl4/igt@gem_workarounds@suspend-resume.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl2/igt@gem_workarounds@suspend-resume.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl4/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-hsw:          [WARN][106] ([i915#1519]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
>     - shard-skl:          [FAIL][108] ([i915#54]) -> [PASS][109] +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
>     - shard-skl:          [FAIL][110] ([i915#54]) -> ([PASS][111], [PASS][112]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-hsw:          [FAIL][113] ([i915#96]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-skl:          [DMESG-WARN][115] ([i915#1982]) -> ([PASS][116], [PASS][117]) +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][118] ([i915#79]) -> ([PASS][119], [PASS][120])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-skl:          [INCOMPLETE][121] ([i915#198]) -> ([PASS][122], [PASS][123])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [FAIL][124] ([i915#2122]) -> ([PASS][125], [PASS][126])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
>     - shard-tglb:         [DMESG-WARN][127] ([i915#1982]) -> ([PASS][128], [PASS][129])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_lease@simple_lease:
>     - shard-glk:          [DMESG-WARN][130] ([i915#1982]) -> ([PASS][131], [PASS][132])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk5/igt@kms_lease@simple_lease.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk5/igt@kms_lease@simple_lease.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk2/igt@kms_lease@simple_lease.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:
>     - shard-iclb:         [FAIL][133] ([i915#53]) -> ([PASS][134], [PASS][135])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb2/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb6/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb2/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-snb:          [DMESG-WARN][136] ([i915#42]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-snb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [FAIL][138] ([i915#1542]) -> ([PASS][139], [PASS][140])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl10/igt@perf@blocking.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl9/igt@perf@blocking.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl10/igt@perf@blocking.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [FAIL][141] ([i915#1542]) -> ([PASS][142], [PASS][143])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk2/igt@perf@polling-parameterized.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk5/igt@perf@polling-parameterized.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk8/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@drm_read@fault-buffer:
>     - shard-glk:          [DMESG-WARN][144] ([i915#1982]) -> ([DMESG-WARN][145], [PASS][146]) ([i915#1982])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk9/igt@drm_read@fault-buffer.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk8/igt@drm_read@fault-buffer.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk6/igt@drm_read@fault-buffer.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][147] ([i915#1436] / [i915#716]) -> ([DMESG-WARN][148], [PASS][149]) ([i915#1436] / [i915#716])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl9/igt@gen9_exec_parse@allowed-single.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl8/igt@gen9_exec_parse@allowed-single.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][150] ([i915#2684]) -> ([WARN][151], [WARN][152]) ([i915#1804] / [i915#2684])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-skl:          [INCOMPLETE][153] ([i915#2753]) -> ([INCOMPLETE][154], [INCOMPLETE][155]) ([i915#2753] / [i915#2756])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-skl10/igt@i915_selftest@mock@memory_region.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl9/igt@i915_selftest@mock@memory_region.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-skl10/igt@i915_selftest@mock@memory_region.html
>     - shard-glk:          [INCOMPLETE][156] ([i915#2753]) -> ([INCOMPLETE][157], [INCOMPLETE][158]) ([i915#2753] / [i915#2756])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-glk6/igt@i915_selftest@mock@memory_region.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk3/igt@i915_selftest@mock@memory_region.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-glk1/igt@i915_selftest@mock@memory_region.html
>     - shard-apl:          [INCOMPLETE][159] ([i915#2753]) -> ([INCOMPLETE][160], [INCOMPLETE][161]) ([i915#2753] / [i915#2756])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-apl7/igt@i915_selftest@mock@memory_region.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl6/igt@i915_selftest@mock@memory_region.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-apl3/igt@i915_selftest@mock@memory_region.html
>     - shard-iclb:         [INCOMPLETE][162] ([i915#2753]) -> ([INCOMPLETE][163], [INCOMPLETE][164]) ([i915#2753] / [i915#2756])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-iclb7/igt@i915_selftest@mock@memory_region.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb1/igt@i915_selftest@mock@memory_region.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-iclb3/igt@i915_selftest@mock@memory_region.html
>     - shard-kbl:          [INCOMPLETE][165] ([i915#2753]) -> ([INCOMPLETE][166], [INCOMPLETE][167]) ([i915#2753] / [i915#2756])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-kbl6/igt@i915_selftest@mock@memory_region.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-kbl4/igt@i915_selftest@mock@memory_region.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-kbl2/igt@i915_selftest@mock@memory_region.html
>     - shard-hsw:          [INCOMPLETE][168] ([i915#2753]) -> [INCOMPLETE][169] ([i915#2753] / [i915#2756])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9415/shard-hsw7/igt@i915_selftest@mock@memory_region.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/shard-hsw7/igt@i915_selftest@mock@memory_region.html
>     - shard-snb:
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19027/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
