Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA536EE482
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 17:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA82E10E2DB;
	Tue, 25 Apr 2023 15:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B0510E776
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 15:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682435489; x=1713971489;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=xkcuVUOO/91Ueye2EJye5queQKoWaIrPbCTK+56/DIY=;
 b=gHCqBoHkE2k0l2pdpEXcLZ2E9JGiKAgxRYaBG13HrBsuKh//ZrPJW8iY
 QkUVAYFCkWmeAquEFljxRM7ljkEwHMg8qmc8cKCPQdpUWIJj0LO/lk+To
 VL4ePrzF29pV/SwtCKfwddVu/dxL+ng+lWRfrByfMw6HBvEhkjaxFtW/5
 c16DaPrWMcLk1dbaD3YRtOBfvDV9M1cZIKJrDogDjpMHW59gaxCZ/TUh9
 E9ueuXUkUmQwfHXEIzziLoKgSig/lDKxJQ07wPi56FZ7DMmTnxh5unRJA
 SswlQ9qspgR609CK6k4ZL2OPeO9iYU3UqO+Na5X2sm/gUCmjMeIUVBPzJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="335696702"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="335696702"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 08:06:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="724055894"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="724055894"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 08:06:16 -0700
Date: Tue, 25 Apr 2023 18:06:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZEfsZN2C00JbMkn8@ideak-desk.fi.intel.com>
References: <20230424200205.1732941-1-imre.deak@intel.com>
 <168240638046.24068.17528576685274023528@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <168240638046.24068.17528576685274023528@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp+=3A_Disable_DC5/6_states_for_TC_port_DDI/AUX_and_for?=
 =?utf-8?q?_combo_port_AUX?=
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

On Tue, Apr 25, 2023 at 07:06:20AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adlp+: Disable DC5/6 states for TC port DDI/AUX and for combo port AUX
> URL   : https://patchwork.freedesktop.org/series/116909/
> State : success

Thanks for the review, pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13056_full -> Patchwork_116909v1_full
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
> Participating hosts (7 -> 8)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_116909v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2846])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-glk8/igt@gem_exec_fair@basic-deadline.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-glk2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2842])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#2346])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2346])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][9] ([fdo#109271])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-glk2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][10] ([fdo#109271]) +18 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-snb1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - {shard-rkl}:        [FAIL][11] ([i915#7742]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-rkl-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctxn:
>     - shard-snb:          [FAIL][13] ([i915#8295]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctxn.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctxn.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - {shard-rkl}:        [SKIP][15] ([i915#1397]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-rkl-4/igt@i915_pm_rpm@dpms-lpsp.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_cursor_legacy@forked-move@pipe-b:
>     - {shard-dg1}:        [INCOMPLETE][17] ([i915#8011] / [i915#8347]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-dg1-14/igt@kms_cursor_legacy@forked-move@pipe-b.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-dg1-18/igt@kms_cursor_legacy@forked-move@pipe-b.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][19] ([i915#79]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
>     - shard-apl:          [FAIL][21] ([i915#79]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13056/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
>   [i915#8253]: https://gitlab.freedesktop.org/drm/intel/issues/8253
>   [i915#8295]: https://gitlab.freedesktop.org/drm/intel/issues/8295
>   [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13056 -> Patchwork_116909v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13056: 308c0163d9e46238948942260e6d2abcad3d8bff @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7267: a267f0236e06fc282e3dc3b8c7d76f9ed6088d9b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_116909v1: 308c0163d9e46238948942260e6d2abcad3d8bff @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116909v1/index.html
