Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCC7187B93
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 09:54:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63ED489FF6;
	Tue, 17 Mar 2020 08:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32A5089FDD;
 Tue, 17 Mar 2020 08:53:56 +0000 (UTC)
IronPort-SDR: OdQ2rSmDNRC3S+VD117ukEhZ/5Quk+CvvFwu4+QmiEN1mpGZ95lJtPktH1ekbv6Qq2eAEpKaMA
 jyUaRUp0FzIA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 01:53:54 -0700
IronPort-SDR: 0xitxRe+4gYDQR/keAkurbxmmtGV5gxNdE924nRFSTPCc2CTHnS1G5ev7Nhb3HhqInmLsZQS8e
 P18PB49rGimA==
X-IronPort-AV: E=Sophos;i="5.70,563,1574150400"; d="scan'208";a="443681988"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 01:53:53 -0700
Message-ID: <a13fbcefcbe50e824b3a08a2db15949c44d08f24.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 17 Mar 2020 09:53:51 +0100
In-Reply-To: <158438673635.18995.14325349729717846904@emeril.freedesktop.org>
References: <20200316084543.15421-1-janusz.krzysztofik@linux.intel.com>
 <158438673635.18995.14325349729717846904@emeril.freedesktop.org>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdGVz?=
 =?utf-8?q?ts/gem=5Fuserptr=5Fblits=3A_Refresh_other_now_MMAP=5FGTT_depend?=
 =?utf-8?q?ent_subtests_=28rev2=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Mon, 2020-03-16 at 19:25 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: tests/gem_userptr_blits: Refresh other now MMAP_GTT dependent subtests (rev2)
> URL   : https://patchwork.freedesktop.org/series/74201/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8137_full -> IGTPW_4307_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**

False positive, see below.

>   Serious unknown changes coming with IGTPW_4307_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in IGTPW_4307_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in IGTPW_4307_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_shared@single-timeline:
>     - shard-snb:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-snb4/igt@gem_ctx_shared@single-timeline.html
>     - shard-hsw:          NOTRUN -> [FAIL][2] +1 similar issue
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-hsw2/igt@gem_ctx_shared@single-timeline.html
> 
>   * igt@gem_exec_fence@basic-await@vcs0:
>     - shard-kbl:          [PASS][3] -> [FAIL][4] +3 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl1/igt@gem_exec_fence@basic-await@vcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl7/igt@gem_exec_fence@basic-await@vcs0.html
>     - shard-iclb:         [PASS][5] -> [FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@gem_exec_fence@basic-await@vcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb5/igt@gem_exec_fence@basic-await@vcs0.html
>     - shard-apl:          [PASS][7] -> [FAIL][8] +2 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl4/igt@gem_exec_fence@basic-await@vcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl4/igt@gem_exec_fence@basic-await@vcs0.html
>     - shard-glk:          [PASS][9] -> [FAIL][10] +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk6/igt@gem_exec_fence@basic-await@vcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-glk4/igt@gem_exec_fence@basic-await@vcs0.html
>     - shard-tglb:         [PASS][11] -> [FAIL][12] +2 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb6/igt@gem_exec_fence@basic-await@vcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-tglb5/igt@gem_exec_fence@basic-await@vcs0.html

Not related.

> 
>   * {igt@gem_userptr_blits@process-exit-mmap-busy@gtt} (NEW):
>     - shard-iclb:         NOTRUN -> [SKIP][13] +7 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb3/igt@gem_userptr_blits@process-exit-mmap-busy@gtt.html
> 
>   * {igt@gem_userptr_blits@process-exit-mmap-busy@uc} (NEW):
>     - shard-tglb:         NOTRUN -> [SKIP][14] +11 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-tglb5/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html

Expected behavior.

> 
>   * igt@gem_wait@wait-rcs0:
>     - shard-hsw:          [PASS][15] -> [FAIL][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw2/igt@gem_wait@wait-rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-hsw2/igt@gem_wait@wait-rcs0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
>     - shard-snb:          [PASS][17] -> [FAIL][18] +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

Not related.

Thanks,
Janusz


> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-spin-bsd:
>     - shard-snb:          [FAIL][19] ([i915#757]) -> [TIMEOUT][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-snb4/igt@gem_exec_reloc@basic-spin-bsd.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-snb6/igt@gem_exec_reloc@basic-spin-bsd.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_8137_full and IGTPW_4307_full:
> 
> ### New IGT tests (24) ###
> 
>   * igt@gem_userptr_blits@process-exit-mmap:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_userptr_blits@process-exit-mmap-busy:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_userptr_blits@process-exit-mmap-busy@gtt:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_userptr_blits@process-exit-mmap-busy@uc:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_userptr_blits@process-exit-mmap-busy@wb:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_userptr_blits@process-exit-mmap@gtt:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_userptr_blits@process-exit-mmap@uc:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_userptr_blits@process-exit-mmap@wb:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_userptr_blits@process-exit-mmap@wc:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_userptr_blits@readonly-mmap-unsync@gtt:
>     - Statuses : 3 pass(s) 4 skip(s)
>     - Exec time: [0.01] s
> 
>   * igt@gem_userptr_blits@readonly-mmap-unsync@uc:
>     - Statuses : 3 pass(s) 4 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_userptr_blits@readonly-mmap-unsync@wb:
>     - Statuses : 3 pass(s) 4 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_userptr_blits@readonly-mmap-unsync@wc:
>     - Statuses : 3 pass(s) 4 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@sysfs_heartbeat_interval@idempotent:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@sysfs_heartbeat_interval@invalid:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@sysfs_heartbeat_interval@nopreempt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@sysfs_heartbeat_interval@off:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@sysfs_heartbeat_interval@precise:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@sysfs_preempt_timeout@idempotent:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@sysfs_preempt_timeout@invalid:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@sysfs_timeslice_duration@duration:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@sysfs_timeslice_duration@idempotent:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@sysfs_timeslice_duration@timeout:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in IGTPW_4307_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([i915#1402])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
>     - shard-glk:          [PASS][23] -> [TIMEOUT][24] ([i915#1340])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk3/igt@gem_ctx_persistence@close-replace-race.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * igt@gem_ctx_shared@exec-single-timeline-bsd:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#110841])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
> 
>   * igt@gem_exec_schedule@implicit-write-read-bsd1:
>     - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109276] / [i915#677])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd1.html
> 
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112146]) +4 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd1:
>     - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109276]) +13 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([i915#155])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-iclb:         [PASS][35] -> [INCOMPLETE][36] ([i915#1185])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb5/igt@kms_fbcon_fbt@psr-suspend.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb3/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1297])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank.html
>     - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1297])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@kms_flip@flip-vs-expired-vblank.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl4/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +3 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-x:
>     - shard-hsw:          [PASS][45] -> [DMESG-WARN][46] ([i915#478])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw7/igt@kms_plane_lowres@pipe-c-tiling-x.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-hsw2/igt@kms_plane_lowres@pipe-c-tiling-x.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#31])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl2/igt@kms_setmode@basic.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl7/igt@kms_setmode@basic.html
>     - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#31])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk2/igt@kms_setmode@basic.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-glk5/igt@kms_setmode@basic.html
>     - shard-kbl:          [PASS][53] -> [FAIL][54] ([i915#31])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl7/igt@kms_setmode@basic.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl4/igt@kms_setmode@basic.html
> 
>   * igt@perf_pmu@busy-no-semaphores-vcs1:
>     - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#112080]) +11 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-snb:          [FAIL][57] -> [PASS][58] +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-snb4/igt@gem_ctx_isolation@rcs0-s3.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-snb4/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-tglb:         [INCOMPLETE][59] ([i915#1402]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
>     - shard-apl:          [INCOMPLETE][61] ([fdo#103927] / [i915#1402]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl2/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-hsw:          [TIMEOUT][63] -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw1/igt@gem_eio@in-flight-contexts-1us.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-hsw5/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_exec_parallel@bcs0-fds:
>     - shard-apl:          [FAIL][65] -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@gem_exec_parallel@bcs0-fds.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl6/igt@gem_exec_parallel@bcs0-fds.html
>     - shard-iclb:         [FAIL][67] -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@gem_exec_parallel@bcs0-fds.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb1/igt@gem_exec_parallel@bcs0-fds.html
>     - shard-tglb:         [FAIL][69] -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb3/igt@gem_exec_parallel@bcs0-fds.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-tglb6/igt@gem_exec_parallel@bcs0-fds.html
>     - shard-glk:          [FAIL][71] -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk8/igt@gem_exec_parallel@bcs0-fds.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-glk3/igt@gem_exec_parallel@bcs0-fds.html
> 
>   * igt@gem_exec_schedule@implicit-read-write-bsd2:
>     - shard-iclb:         [SKIP][73] ([fdo#109276] / [i915#677]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd2.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html
> 
>   * igt@gem_exec_schedule@pi-common-bsd:
>     - shard-iclb:         [SKIP][75] ([i915#677]) -> [PASS][76] +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-hang-render:
>     - shard-apl:          [SKIP][77] ([fdo#109271]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@gem_exec_schedule@preempt-hang-render.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl3/igt@gem_exec_schedule@preempt-hang-render.html
>     - shard-glk:          [SKIP][79] ([fdo#109271]) -> [PASS][80] +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk8/igt@gem_exec_schedule@preempt-hang-render.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-glk2/igt@gem_exec_schedule@preempt-hang-render.html
>     - shard-iclb:         [SKIP][81] -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@gem_exec_schedule@preempt-hang-render.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb4/igt@gem_exec_schedule@preempt-hang-render.html
>     - shard-tglb:         [SKIP][83] -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb3/igt@gem_exec_schedule@preempt-hang-render.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-tglb1/igt@gem_exec_schedule@preempt-hang-render.html
>     - shard-kbl:          [SKIP][85] ([fdo#109271]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl7/igt@gem_exec_schedule@preempt-hang-render.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl1/igt@gem_exec_schedule@preempt-hang-render.html
> 
>   * igt@gem_exec_schedule@reorder-wide-bsd:
>     - shard-iclb:         [SKIP][87] ([fdo#112146]) -> [PASS][88] +5 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
> 
>   * igt@gem_userptr_blits@sync-unmap-cycles:
>     - shard-snb:          [DMESG-WARN][89] ([fdo#111870] / [i915#478]) -> [PASS][90] +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-snb2/igt@gem_userptr_blits@sync-unmap-cycles.html
>     - shard-hsw:          [DMESG-WARN][91] ([fdo#111870]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw1/igt@gem_userptr_blits@sync-unmap-cycles.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-hsw2/igt@gem_userptr_blits@sync-unmap-cycles.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_dc@dc5-dpms:
>     - shard-iclb:         [FAIL][95] ([i915#447]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - shard-iclb:         [SKIP][97] ([i915#1316]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb1/igt@i915_pm_rpm@system-suspend-devices.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb5/igt@i915_pm_rpm@system-suspend-devices.html
>     - shard-tglb:         [SKIP][99] ([i915#1316]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb6/igt@i915_pm_rpm@system-suspend-devices.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-tglb5/igt@i915_pm_rpm@system-suspend-devices.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [FAIL][101] ([i915#72]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-hsw:          [INCOMPLETE][103] ([i915#61]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw4/igt@kms_flip@flip-vs-suspend.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-hsw1/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
>     - shard-kbl:          [FAIL][105] ([i915#49]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
>     - shard-glk:          [FAIL][107] ([i915#49]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
>     - shard-apl:          [FAIL][109] ([i915#49]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-snb:          [DMESG-WARN][111] ([i915#478]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-apl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:
>     - shard-tglb:         [SKIP][117] ([fdo#112015]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb3/igt@kms_vblank@pipe-d-ts-continuation-modeset-hang.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-modeset-hang.html
> 
>   * igt@perf_pmu@busy-vcs1:
>     - shard-iclb:         [SKIP][119] ([fdo#112080]) -> [PASS][120] +15 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb6/igt@perf_pmu@busy-vcs1.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb1/igt@perf_pmu@busy-vcs1.html
> 
>   * igt@perf_pmu@most-busy-idle-check-all-bcs0:
>     - shard-hsw:          [FAIL][121] -> [PASS][122] +1 similar issue
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw5/igt@perf_pmu@most-busy-idle-check-all-bcs0.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-hsw6/igt@perf_pmu@most-busy-idle-check-all-bcs0.html
> 
>   * igt@prime_busy@hang-bsd2:
>     - shard-iclb:         [SKIP][123] ([fdo#109276]) -> [PASS][124] +20 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-iclb8/igt@prime_busy@hang-bsd2.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-iclb2/igt@prime_busy@hang-bsd2.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt:
>     - shard-hsw:          [DMESG-WARN][125] ([fdo#110789] / [i915#478]) -> [DMESG-WARN][126] ([i915#478])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw5/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-hsw5/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt:
>     - shard-hsw:          [DMESG-WARN][127] ([i915#478]) -> [DMESG-WARN][128] ([fdo#110789] / [i915#478])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
>     - shard-snb:          [DMESG-WARN][129] ([i915#478]) -> [DMESG-WARN][130] ([fdo#110789] / [i915#478])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [SKIP][131] ([i915#468]) -> [FAIL][132] ([i915#454])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          [FAIL][133] ([i915#92]) -> ([FAIL][134], [FAIL][135]) ([i915#1389] / [i915#1402] / [i915#92])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-kbl3/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-kbl6/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][136], [FAIL][137]) ([fdo#103927] / [i915#1402]) -> [FAIL][138] ([fdo#103927])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl3/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/shard-apl1/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/shard-apl1/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
>   [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
>   [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
>   [fdo#112015]: https://bugs.freedesktop.org/show_bug.cgi?id=112015
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
>   [i915#1297]: https://gitlab.freedesktop.org/drm/intel/issues/1297
>   [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
>   [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
>   [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
>   [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#757]: https://gitlab.freedesktop.org/drm/intel/issues/757
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Participating hosts (10 -> 8)
> ------------------------------
> 
>   Missing    (2): pig-skl-6260u pig-glk-j5005 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * IGT: IGT_5510 -> IGTPW_4307
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_8137: 5786b5e77cc17a1b494b9bdf3c3f29eedc2e2e7d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGTPW_4307: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/index.html
>   IGT_5510: e100092d50105463f58db531fa953c70cc58bb10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4307/index.html

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
