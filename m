Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EE9705033
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 16:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C816A10E0F7;
	Tue, 16 May 2023 14:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2FE510E0F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 14:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684246025; x=1715782025;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=31yuunoB9DaDqu60zMBCZ0gJM+wft1mQI75P/XSJEVo=;
 b=CyOFGrvcUpW2r/kn7C/Av+q1+aGHc356yhP8jjVjH7+JpCZlh3fvvpyC
 pSXKkzuMbAkVeLp39aQNm4RxivQKFdbOX+WVk8WodHk08ExrV0h7qWBXI
 u8ZUFi0m06HNBs8DxU96oU0gSThR7caAy0W2DlFGnqgbbwNN308xmBccF
 GNf9ex/SqmJjMXSG8P76CKbXOHiykJVbh/18iz0H94A3KIMEDj8rywlUm
 2nmfGGApEKyyx0Fs/iCQRRGX3LkgkMt2F1akb13VHZZ7E0DgkRQMSgZ29
 SWGYS1syMQmWsIvE1GpUs9NkdpiA0tj1mqtTChNzgw8U5BfGYPvX3TD8p Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="351515186"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="351515186"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 07:06:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="732001819"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="732001819"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 07:06:00 -0700
Date: Tue, 16 May 2023 17:06:40 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZGON8E3UGInutzXx@ideak-desk.fi.intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
 <168394012208.18762.1956577471435051307@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <168394012208.18762.1956577471435051307@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Add_a_workaround_for_an_IOM/TCSS_firmware_hang_issu?=
 =?utf-8?b?ZSAocmV2MTMp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, May 13, 2023 at 01:08:42AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tc: Add a workaround for an IOM/TCSS firmware hang issue (rev13)
> URL   : https://patchwork.freedesktop.org/series/117004/
> State : success

Patchset is pushed to -din, thanks for the reviews.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13143_full -> Patchwork_117004v13_full
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
> Participating hosts (7 -> 7)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_117004v13_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-glk:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk8/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@kms_chamelium_color@ctm-max:
>     - shard-glk:          NOTRUN -> [SKIP][4] ([fdo#109271]) +26 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk8/igt@kms_chamelium_color@ctm-max.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-glk:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4579])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk8/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2346])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#79])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2122]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - {shard-rkl}:        [FAIL][12] ([i915#7742]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@gem_barrier_race@remote-request@rcs0:
>     - shard-glk:          [ABORT][14] ([i915#7461] / [i915#8211]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-glk2/igt@gem_barrier_race@remote-request@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk1/igt@gem_barrier_race@remote-request@rcs0.html
> 
>   * igt@gem_ctx_freq@sysfs:
>     - {shard-dg1}:        [FAIL][16] ([i915#6786]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-dg1-15/igt@gem_ctx_freq@sysfs.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-dg1-17/igt@gem_ctx_freq@sysfs.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - {shard-tglu}:       [TIMEOUT][18] ([i915#3063] / [i915#7941]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-tglu-3/igt@gem_eio@in-flight-contexts-10ms.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-tglu-2/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][20] ([i915#2846]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-apl:          [FAIL][22] ([i915#2842]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-apl3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - {shard-tglu}:       [FAIL][24] ([i915#2842]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - {shard-rkl}:        [FAIL][26] ([i915#2842]) -> [PASS][27] +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - {shard-dg1}:        [ABORT][28] ([i915#7975] / [i915#8213]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-dg1-16/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - {shard-dg1}:        [TIMEOUT][30] ([i915#5493]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [ABORT][32] ([i915#5566]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-glk1/igt@gen9_exec_parse@allowed-single.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress:
>     - {shard-rkl}:        [SKIP][34] ([i915#1397]) -> [PASS][35] +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][36] ([i915#6537]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-apl6/igt@i915_pm_rps@engine-order.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-apl1/igt@i915_pm_rps@engine-order.html
> 
>   * igt@kms_cursor_legacy@single-bo@pipe-b:
>     - {shard-rkl}:        [INCOMPLETE][38] ([i915#8011]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-rkl-7/igt@kms_cursor_legacy@single-bo@pipe-b.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-rkl-6/igt@kms_cursor_legacy@single-bo@pipe-b.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][40] ([i915#79]) -> [FAIL][41] ([i915#2122])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#6786]: https://gitlab.freedesktop.org/drm/intel/issues/6786
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
>   [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13143 -> Patchwork_117004v13
> 
>   CI-20190529: 20190529
>   CI_DRM_13143: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7286: a482779488f11c432d7ddcb1980691ab1603f356 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_117004v13: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v13/index.html
