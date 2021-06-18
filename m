Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FC33AD4F9
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Jun 2021 00:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F556EAB7;
	Fri, 18 Jun 2021 22:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDDDE6EAB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 22:20:12 +0000 (UTC)
IronPort-SDR: fhoQ6D4So8ppl9e+ecW+EDhyqo/4ufKe1dA7bypHBrCP5NhH6W4jzXLQARyO6VyoXhgycW0HAo
 uhvVtU97JN+A==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="292258620"
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="292258620"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 15:20:12 -0700
IronPort-SDR: B6yC29lo9vy2yRZ4RYySs5mdUAJxvn5ima8Og4nj23ddMzEeskem64+F8WIgAvnabM5rI5zYPO
 RZvVRFLe19Pw==
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="443708367"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 15:20:11 -0700
Date: Fri, 18 Jun 2021 15:20:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210618222010.GL951094@mdroper-desk1.amr.corp.intel.com>
References: <20210618010638.98941-1-matthew.brost@intel.com>
 <162398842014.1293.1059155597613873501@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162398842014.1293.1059155597613873501@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIElu?=
 =?utf-8?q?troduce_i915=5Fsched=5Fengine_object_=28rev6=29?=
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

On Fri, Jun 18, 2021 at 03:53:40AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Introduce i915_sched_engine object (rev6)
> URL   : https://patchwork.freedesktop.org/series/90630/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10240_full -> Patchwork_20406_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20406_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20406_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20406_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

Looks like the machine crashed or lost network connection during this
KMS test; not related to the series here.

Series applied to gt-next.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20406_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#658])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb2/igt@feature_discovery@psr2.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb3/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_persistence@engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-snb2/igt@gem_ctx_persistence@engines-mixed.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][6] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842]) +2 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-glk9/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842] / [i915#3468])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-glk7/igt@gem_exec_fair@basic-none@vecs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][13] -> [SKIP][14] ([fdo#109271])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-sync@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl4/igt@gem_exec_fair@basic-sync@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-snb:          NOTRUN -> [SKIP][18] ([fdo#109271]) +249 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_params@no-bsd:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109283])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@gem_exec_params@no-bsd.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][20] ([i915#2658])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-snb6/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-iclb:         NOTRUN -> [WARN][21] ([i915#2658])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@gem_pwrite@basic-exhaustion.html
>     - shard-apl:          NOTRUN -> [WARN][22] ([i915#2658])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][23] ([i915#3002])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-snb2/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1436] / [i915#716])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl9/igt@gen9_exec_parse@allowed-all.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#112306])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#110892])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][28] ([i915#2782])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-snb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +3 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-apl3/igt@i915_suspend@debugfs-reader.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl2/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - shard-iclb:         [PASS][31] -> [DMESG-WARN][32] ([i915#3621])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb4/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#110723])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#2705])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278]) +7 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_ccs@pipe-d-bad-rotation-90.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_color@pipe-d-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278] / [i915#1149])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_color@pipe-d-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +16 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_color_chamelium@pipe-d-ctm-0-5.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][42] ([i915#1319]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
>     - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#3444])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2346]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109274]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_flip@2x-flip-vs-rmfb.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#2122])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#2122])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2672])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +32 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +186 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109280]) +6 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533]) +3 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +2 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][60] ([i915#265])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][62] -> [FAIL][63] ([fdo#108145] / [i915#265]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-y:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#3536])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_plane_lowres@pipe-b-tiling-y.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
>     - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +2 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109441])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2437])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf_pmu@busy-double-start@vcs0:
>     - shard-glk:          [PASS][70] -> [DMESG-WARN][71] ([i915#118] / [i915#95]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-glk2/igt@perf_pmu@busy-double-start@vcs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-glk8/igt@perf_pmu@busy-double-start@vcs0.html
> 
>   * igt@prime_nv_test@i915_blt_fill_nv_read:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109291])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@prime_nv_test@i915_blt_fill_nv_read.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#2994])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb4/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@create:
>     - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2994])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl3/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl1/igt@sysfs_clients@sema-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][76] ([i915#2369] / [i915#3063]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-tglb3/igt@gem_eio@unwedge-stress.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [FAIL][78] ([i915#2842]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_mmap_gtt@basic-small-copy-odd:
>     - shard-skl:          [FAIL][80] ([i915#307]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl10/igt@gem_mmap_gtt@basic-small-copy-odd.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl6/igt@gem_mmap_gtt@basic-small-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-iclb:         [FAIL][82] ([i915#307]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_workarounds@reset:
>     - shard-skl:          [DMESG-WARN][84] ([i915#1982]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl4/igt@gem_workarounds@reset.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl10/igt@gem_workarounds@reset.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][86] ([i915#454]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][88] ([i915#118] / [i915#95]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-glk8/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
>     - shard-glk:          [FAIL][90] ([i915#3444]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-glk5/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][92] ([i915#79]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95] +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>     - shard-apl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
>     - shard-glk:          [FAIL][98] ([i915#49]) -> [PASS][99] +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-glk:          [FAIL][100] -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][102] ([i915#1188]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][104] ([fdo#108145] / [i915#265]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][108] ([i915#2852]) -> [FAIL][109] ([i915#2842])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [FAIL][110] ([i915#2842]) -> [SKIP][111] ([fdo#109271])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][112] ([i915#658]) -> [SKIP][113] ([i915#588])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][114] ([i915#1804] / [i915#2684]) -> [WARN][115] ([i915#2684])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][116] ([i915#658]) -> [SKIP][117] ([i915#2920]) +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][118] ([i915#2920]) -> [SKIP][119] ([i915#658])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363]) -> ([FAIL][124], [FAIL][125]) ([i915#3002] / [i915#3363])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-kbl2/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-kbl6/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-kbl1/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-kbl4/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl4/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-kbl3/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][126], [FAIL][127]) ([i915#3002]) -> ([FAIL][128], [FAIL][129], [FAIL][130]) ([i915#1814] / [i915#3002])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb8/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-iclb3/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb1/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb6/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-iclb7/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-apl1/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-apl3/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-apl7/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-apl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-apl6/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl6/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl1/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl2/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl3/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-apl1/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][141], [FAIL][142]) ([i915#3002] / [i915#3363]) -> ([FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1436] / [i915#3002] / [i915#3363])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl10/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10240/shard-skl10/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl6/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl3/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/shard-skl4/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https:/
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20406/index.html

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx


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
