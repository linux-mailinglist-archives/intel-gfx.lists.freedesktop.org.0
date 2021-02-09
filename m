Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB41314EE7
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 13:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABCD56EB0A;
	Tue,  9 Feb 2021 12:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479D46EB0A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 12:31:22 +0000 (UTC)
IronPort-SDR: LrzFO5Dk9MOYud5Z9znpd9944/gxNciMgqDJ8CoBdoBcL1vi8F6vSR6sfDWubKR1d2+WojeGuw
 DkANbPP4qwyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="200942837"
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="200942837"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 04:31:21 -0800
IronPort-SDR: W0wwrqEv2SPkuIpyDMsnWUEO6eZUY2duc/1R5fUqATTbKGTL1quev0ztCho9jeh0l/JnZNJz2B
 lDX3v5I/BneA==
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="378951716"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 04:31:14 -0800
Date: Tue, 9 Feb 2021 14:31:06 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210209123106.GA19783@ideak-desk.fi.intel.com>
References: <20210208154303.6839-1-imre.deak@intel.com>
 <161282419401.27711.2267896397341636994@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161282419401.27711.2267896397341636994@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl+=3A_Make_sure_TypeC_FIA_is_powered_up_when_initializi?=
 =?utf-8?q?ng_it?=
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

On Mon, Feb 08, 2021 at 10:43:14PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl+: Make sure TypeC FIA is powered up when initializing it
> URL   : https://patchwork.freedesktop.org/series/86858/
> State : failure

Thanks for the review pushed to -din. The failure is unrelated, see
below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9747_full -> Patchwork_19631_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19631_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19631_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19631_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
>     - shard-iclb:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-iclb1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-iclb4/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

This is on an unrelated platform and looks like
https://gitlab.freedesktop.org/drm/intel/-/issues/2682

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19631_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-skl:          [PASS][3] -> [TIMEOUT][4] ([i915#1037] / [i915#2771])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl5/igt@gem_eio@unwedge-stress.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl4/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842]) +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1610] / [i915#2803])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked-all:
>     - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][11] -> [SKIP][12] ([i915#2190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_render_copy@linear-to-vebox-y-tiled:
>     - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271]) +74 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl7/igt@gem_render_copy@linear-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@huge-split:
>     - shard-glk:          [PASS][14] -> [INCOMPLETE][15] ([i915#2502])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-glk4/igt@gem_userptr_blits@huge-split.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-glk3/igt@gem_userptr_blits@huge-split.html
> 
>   * igt@gem_userptr_blits@process-exit-mmap-busy@uc:
>     - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#1699]) +3 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl6/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1436] / [i915#716])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl10/igt@gen9_exec_parse@allowed-all.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl10/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_selftest@live@client:
>     - shard-glk:          [PASS][19] -> [DMESG-FAIL][20] ([i915#3047])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-glk1/igt@i915_selftest@live@client.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-glk2/igt@i915_selftest@live@client.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#636])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl6/igt@i915_suspend@forcewake.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl8/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-5:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-0-5.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
>     - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +5 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#426])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-tglb2/igt@kms_dp_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#79])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-tglb:         [PASS][30] -> [FAIL][31] ([i915#2598]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][32] ([i915#180]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-apl:          NOTRUN -> [FAIL][33] ([i915#2641])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#2295])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-tglb7/igt@kms_frontbuffer_tracking@basic.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-tglb6/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#111825]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +5 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#1188])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl2/igt@kms_hdr@bpc-switch.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl1/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-apl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#658]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-iclb2/igt@kms_psr2_su@page_flip.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-iclb6/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2437])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          [PASS][48] -> [DMESG-WARN][49] ([i915#1982] / [i915#262])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl4/igt@perf_pmu@module-unload.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl9/igt@perf_pmu@module-unload.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-snb:          [PASS][50] -> [FAIL][51] ([i915#3028])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-snb2/igt@sysfs_clients@recycle.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-snb6/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@sema-25@vcs0:
>     - shard-skl:          [PASS][52] -> [SKIP][53] ([fdo#109271])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl2/igt@sysfs_clients@sema-25@vcs0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl1/igt@sysfs_clients@sema-25@vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-tglb:         [TIMEOUT][54] -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-tglb2/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-apl:          [DMESG-WARN][56] ([i915#1037] / [i915#180]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl8/igt@gem_eio@in-flight-suspend.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl2/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          [FAIL][58] ([i915#2842]) -> [PASS][59]
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-glk9/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-glk2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-kbl:          [FAIL][60] ([i915#2842]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-kbl6/igt@gem_exec_fair@basic-none@rcs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-kbl2/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][62] ([i915#644]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +2 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
>     - shard-skl:          [FAIL][66] ([i915#54]) -> [PASS][67] +4 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][68] ([i915#79]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][70] ([i915#79]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [FAIL][72] ([i915#2122]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][74] ([fdo#108145] / [i915#265]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][76] ([fdo#109441]) -> [PASS][77] +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-iclb6/igt@kms_psr@psr2_suspend.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][78] ([i915#1542]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl3/igt@perf@polling-parameterized.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl1/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@split-10@bcs0:
>     - shard-apl:          [SKIP][80] ([fdo#109271] / [i915#3026]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl6/igt@sysfs_clients@split-10@bcs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl3/igt@sysfs_clients@split-10@bcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][82] ([i915#2684]) -> [WARN][83] ([i915#1804] / [i915#2684])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][84] ([i915#2681] / [i915#2684]) -> [FAIL][85] ([i915#2680])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>     - shard-iclb:         [SKIP][86] ([i915#2920]) -> [SKIP][87] ([i915#658]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][88] ([i915#658]) -> [SKIP][89] ([i915#2920]) +2 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93]) ([i915#2295] / [i915#2426] / [i915#2505] / [i915#3002]) -> ([FAIL][94], [FAIL][95], [FAIL][96]) ([i915#2295] / [i915#2426] / [i915#3002])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-kbl3/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-kbl7/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-kbl4/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-kbl6/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-kbl3/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-kbl4/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-kbl7/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103]) ([i915#1610] / [i915#1814] / [i915#2295] / [i915#3002]) -> ([FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108]) ([fdo#109271] / [i915#1814] / [i915#2295] / [i915#3002])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl7/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl3/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl2/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl7/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl1/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl4/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-apl8/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl4/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl1/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl8/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl6/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-apl7/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][109], [FAIL][110], [FAIL][111]) ([i915#2295] / [i915#3002]) -> ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116]) ([i915#1436] / [i915#2295] / [i915#2426] / [i915#3002])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl1/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl8/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9747/shard-skl10/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl9/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl7/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl10/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl10/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/shard-skl5/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
>   [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
>   [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
>   [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
>   [i915#2641]: https://gitlab.freedesktop.org/drm/intel/issues/2641
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2771]: https://gitlab.freedesktop.org/drm/intel/issues/2771
>   [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3026]: https://gitlab.freedesktop.org/drm/intel/issues/3026
>   [i915#3028]: https://gitlab.freedesktop.org/drm/intel/issues/3028
>   [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9747 -> Patchwork_19631
> 
>   CI-20190529: 20190529
>   CI_DRM_9747: 65d67e70f9f78c7f8c2796956fdbdb69cffc7c98 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5998: b0160aad9e547d2205341e0b6783e12aa143566e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19631: 9d9108a6b75e06a61e969fd80d2cc4f8fc47d128 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19631/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
