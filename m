Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D0845EE67
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 14:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3EAF6EABF;
	Fri, 26 Nov 2021 13:01:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545E56EABD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Nov 2021 13:01:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="299064370"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="299064370"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 05:01:51 -0800
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="498395516"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 05:01:50 -0800
Date: Fri, 26 Nov 2021 15:01:46 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Tomi P Sarvela <tomi.p.sarvela@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Message-ID: <20211126130146.GA2571110@ideak-desk.fi.intel.com>
References: <20211125171603.1775179-1-imre.deak@intel.com>
 <163787991531.17555.10641158203530697211@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163787991531.17555.10641158203530697211@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_DPT_suspend/resume_on_!HAS=5FDISPLAY_platforms?=
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

Hi,

On Thu, Nov 25, 2021 at 10:38:35PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix DPT suspend/resume on !HAS_DISPLAY platforms
> URL   : https://patchwork.freedesktop.org/series/97291/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10928_full -> Patchwork_21682_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21682_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21682_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21682_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-kbl6/igt@kms_flip@flip-vs-suspend@b-dp1.html

This is (happy that we have pstore logs!):

<3>[  121.347224] INFO: task kworker/u8:17:1044 blocked for more than 30 seconds.
<3>[  121.347231]       Tainted: G        W         5.16.0-rc2-CI-Patchwork_21682+ #1
<3>[  121.347236] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
<6>[  121.347241] task:kworker/u8:17   state:D stack:13456 pid: 1044 ppid:     2 flags:0x00004000
<6>[  121.347250] Workqueue: writeback wb_workfn (flush-259:0)
<6>[  121.346993]  schedule+0x3f/0xc0
<6>[  121.346998]  __bio_queue_enter+0x3a4/0x450
<6>[  121.347006]  ? finish_wait+0x80/0x80
<6>[  121.347018]  blk_mq_submit_bio+0x171/0xa30
<6>[  121.347025]  ? mpage_release_unused_pages+0x27b/0x290
<6>[  121.347036]  ? do_writepages+0xd3/0x1a0
<6>[  121.347043]  submit_bio_noacct+0x254/0x2a0
<6>[  121.347055]  ext4_io_submit+0x44/0x50
<6>[  121.347060]  ext4_writepages+0x32c/0x1070
<6>[  121.347070]  ? __lock_acquire+0x5c0/0xb70
<6>[  121.347099]  do_writepages+0xd3/0x1a0
<6>[  121.347103]  ? filemap_fdatawrite_wbc+0x4b/0x80
<6>[  121.347117]  filemap_fdatawrite_wbc+0x56/0x80
<6>[  121.347124]  file_write_and_wait_range+0x97/0xd0
<6>[  121.347144]  ext4_sync_file+0x166/0x460

Any idea if this could be an -rc2 related problem, fs corruption or
related to the storage device on shard-kbl4 (if you've seen already
similar reports)?

In any case the issue is not related, since on KBL the change doesn't
have any effect.

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21682_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [FAIL][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4386]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl8/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl8/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl8/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl8/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl8/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl7/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl7/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl8/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl8/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl6/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl6/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl3/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl3/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl3/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl3/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl2/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl1/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-2x:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#1839])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@feature_discovery@display-2x.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#280])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-iclb:         [PASS][55] -> [INCOMPLETE][56] ([i915#3371])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-iclb2/igt@gem_exec_capture@pi@bcs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-iclb3/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][57] ([i915#2846])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][58] -> [FAIL][59] ([i915#2842])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [PASS][60] -> [FAIL][61] ([i915#2842]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2842])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][64] ([i915#2842])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#112283])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl4/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl1/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#4613])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][69] ([i915#2658])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl1/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#4270]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +29 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-kbl1/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#3297])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][73] ([i915#3002])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl8/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-snb:          [PASS][74] -> [TIMEOUT][75] ([i915#4420])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-snb7/igt@gem_workarounds@suspend-resume-context.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-snb4/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +86 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl4/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109289]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][78] ([i915#1436] / [i915#716])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2856])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@gen9_exec_parse@bb-large.html
>     - shard-apl:          [PASS][80] -> [TIMEOUT][81] ([i915#4639])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl8/igt@gen9_exec_parse@bb-large.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl2/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         NOTRUN -> [FAIL][82] ([i915#454])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#1937])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#111644] / [i915#1397] / [i915#2411])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#3826])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-skl:          NOTRUN -> [FAIL][86] ([i915#4272])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl6/igt@kms_async_flips@crc.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#404])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][88] ([i915#3743]) +3 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#111615])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#3689] / [i915#3886])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-kbl1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#3689]) +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3886]) +12 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl9/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
>     - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl3/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#111615] / [i915#3689])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl4/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-kbl1/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-25:
>     - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109284] / [fdo#111827]) +8 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          NOTRUN -> [TIMEOUT][101] ([i915#1319])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#111828])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
>     - shard-glk:          [PASS][103] -> [DMESG-WARN][104] ([i915#118]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#3359]) +3 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][106] ([i915#3319])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          [PASS][107] -> [DMESG-WARN][108] ([i915#180])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen:
>     - shard-snb:          NOTRUN -> [SKIP][109] ([fdo#109271]) +25 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-snb4/igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [PASS][110] -> [DMESG-WARN][111] ([i915#180]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][112] ([fdo#109279] / [i915#3359]) +3 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-edp1:
>     - shard-tglb:         [PASS][113] -> [INCOMPLETE][114] ([i915#2411] / [i915#456])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-tglb8/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb7/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][115] ([i915#3699])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#111825]) +23 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>     - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271]) +278 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          NOTRUN -> [FAIL][118] ([i915#1188])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl8/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#1187])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#533])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-tglb:         [PASS][121] -> [INCOMPLETE][122] ([i915#456])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][123] ([fdo#108145] / [i915#265]) +3 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
>     - shard-apl:          NOTRUN -> [FAIL][124] ([fdo#108145] / [i915#265])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-x:
>     - shard-tglb:         NOTRUN -> [SKIP][125] ([i915#3536]) +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-x.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2733])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
>     - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658]) +5 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658]) +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-tglb:         NOTRUN -> [FAIL][129] ([i915#132] / [i915#3467])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][130] -> [SKIP][131] ([fdo#109441])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][132] ([i915#180] / [i915#295])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-tglb:         [PASS][133] -> [INCOMPLETE][134] ([i915#2828] / [i915#456])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-tglb2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#533]) +2 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl4/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2437])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][137] ([i915#2530]) +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@nouveau_crc@pipe-d-source-outp-inactive.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][138] -> [FAIL][139] ([i915#1542])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-glk5/igt@perf@polling-parameterized.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-glk1/igt@perf@polling-parameterized.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          NOTRUN -> [FAIL][140] ([i915#51])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl8/igt@perf@short-reads.html
> 
>   * igt@prime_nv_pcopy@test3_2:
>     - shard-tglb:         NOTRUN -> [SKIP][141] ([fdo#109291]) +1 similar issue
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@prime_nv_pcopy@test3_2.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-tglb:         NOTRUN -> [SKIP][142] ([fdo#111656])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb6/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#2994]) +5 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-skl6/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-kbl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#2994])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-kbl1/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-apl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#2994])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-apl3/igt@sysfs_clients@sema-10.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-tglb:         NOTRUN -> [SKIP][146] ([i915#2994])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-tglb5/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-snb:          [INCOMPLETE][147] -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-snb4/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [DMESG-WARN][149] ([i915#180]) -> [PASS][150]
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:
>     - {shard-rkl}:        ([SKIP][151], [PASS][152]) ([i915#1845]) -> [PASS][153]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][154] ([i915#118]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-addfb:
>     - {shard-rkl}:        [SKIP][156] ([i915#1845]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-rkl-4/igt@kms_big_fb@y-tiled-addfb.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
>     - {shard-rkl}:        [SKIP][158] ([fdo#112022]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10928/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][160] ([i915#2346]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21682/index.html
