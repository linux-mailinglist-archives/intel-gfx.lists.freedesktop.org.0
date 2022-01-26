Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0838749D27D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 20:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B2410E705;
	Wed, 26 Jan 2022 19:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 208B510E705
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 19:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643225240; x=1674761240;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ujMwl3AV/lRyVELSBqcT3yeNmCo903Q3fCCNbdefpJc=;
 b=QrT9NMh5aKkj71Z9wGyhkleBw/BQ5Z6P2/UfAHnjvFYCow4kIxfFRwCk
 /W7Woc+rltC1vwDG6OmeKh6okwQDW2HqE4dsG3LhvXuYL+THZXxKCu6vS
 J28GM6RKxh8g+zRh70rfMUUYZSoNJT5nwG8QiSEidx0GnaD5Q0Xe6AFjh
 OSeCxNxBxYzrbVjHRoCIR+9CcFPyYJJC4ePQ2HW8lXQkyPQ6SAIsAr1zY
 Ci9B7EFnDTLKwvypeoK4M7q2qIS90xsWjqsI4wgOBXwI72AFEVVI7+oeI
 BZqppBsf6xd/7bRR55XiddjITsQj0zv35eCwPb4srA1sBogUyalyWD4Gw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="245467672"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="245467672"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 11:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="477581670"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 11:27:19 -0800
Date: Wed, 26 Jan 2022 11:27:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YfGglfIxvV/qI23L@mdroper-desk1.amr.corp.intel.com>
References: <20220125223625.4139326-1-anusha.srivatsa@intel.com>
 <164316423882.25402.10310718371459578578@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164316423882.25402.10310718371459578578@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/rpl-s=3A_Add_stepping_info_=28rev4=29?=
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

On Wed, Jan 26, 2022 at 02:30:38AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/rpl-s: Add stepping info (rev4)
> URL   : https://patchwork.freedesktop.org/series/99162/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11135_full -> Patchwork_22105_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22105_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#232])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-tglb7/igt@gem_eio@kms.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb3/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-iclb2/igt@gem_exec_balancer@parallel.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-iclb3/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842]) +3 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][9] -> [SKIP][10] ([i915#2190])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-tglb3/igt@gem_huc_copy@huc-copy.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-apl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl7/igt@gem_lmem_swapping@parallel-multi.html
>     - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl10/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-kbl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl1/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_spin_batch@spin-each:
>     - shard-apl:          [PASS][14] -> [FAIL][15] ([i915#2898])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl2/igt@gem_spin_batch@spin-each.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl2/igt@gem_spin_batch@spin-each.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglb:         NOTRUN -> [SKIP][16] ([fdo#110542])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb7/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#3297])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb7/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl3/igt@gem_workarounds@suspend-resume.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl7/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +3 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][22] ([i915#454])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl10/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#1937])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#1937])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-snb:          NOTRUN -> [SKIP][25] ([fdo#109271]) +29 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-snb7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][26] ([i915#3763])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl10/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-fast:
>     - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-snb7/igt@kms_chamelium@dp-hpd-fast.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl1/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-d-degamma:
>     - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl9/igt@kms_color_chamelium@pipe-d-degamma.html
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb7/igt@kms_color_chamelium@pipe-d-degamma.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3319])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +50 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109279] / [i915#3359])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#72])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#2346])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][42] -> [DMESG-WARN][43] ([i915#118] / [i915#1888] / [i915#533])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][44] -> [FAIL][45] ([i915#2346])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][46] ([i915#180])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#4911])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][49] -> [SKIP][50] ([i915#3701])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
>     - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#2546])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +95 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109280] / [fdo#111825])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#1188])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][57] ([i915#265]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658]) +2 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>     - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109441]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-skl:          NOTRUN -> [FAIL][63] ([IGT#2])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl8/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle:
>     - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +80 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html
>     - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#1542])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl7/igt@perf@blocking.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl4/igt@perf@blocking.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl8/igt@sysfs_clients@split-10.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl6/igt@sysfs_clients@split-50.html
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2994])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl7/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-apl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +5 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile@bsd:
>     - shard-apl:          [FAIL][74] ([i915#2410]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl1/igt@gem_ctx_persistence@legacy-engines-hostile@bsd.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl6/igt@gem_ctx_persistence@legacy-engines-hostile@bsd.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [SKIP][76] ([i915#4525]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          [INCOMPLETE][78] ([i915#4547]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl1/igt@gem_exec_capture@pi@bcs0.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl8/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          [FAIL][80] ([i915#2842]) -> [PASS][81] +2 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][82] ([i915#2842]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@edp-1-pipe-a:
>     - shard-skl:          [DMESG-WARN][84] ([i915#1982]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@edp-1-pipe-a.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl9/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@edp-1-pipe-a.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-apl:          [DMESG-WARN][86] ([i915#62]) -> [PASS][87] +30 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89] +3 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
>     - shard-glk:          [DMESG-FAIL][90] ([i915#118] / [i915#1982]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-snb:          [FAIL][92] ([fdo#103375]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-snb7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][94] ([i915#79]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-vga1:
>     - shard-snb:          [INCOMPLETE][96] -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-kbl:          [INCOMPLETE][98] ([i915#3614]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][100] ([i915#1188]) -> [PASS][101] +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][102] ([fdo#108145] / [i915#265]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [FAIL][104] ([i915#31]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-glk4/igt@kms_setmode@basic.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-glk1/igt@kms_setmode@basic.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-skl:          [INCOMPLETE][106] ([i915#4939]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl8/igt@perf_pmu@rc6-suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl10/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [FAIL][108] ([i915#1731]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl1/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl8/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [FAIL][110] ([i915#232]) -> [TIMEOUT][111] ([i915#3063] / [i915#3648])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-tglb2/igt@gem_eio@unwedge-stress.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][112] ([i915#2684]) -> [WARN][113] ([i915#1804] / [i915#2684])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-skl:          [SKIP][114] ([fdo#109271] / [i915#3886]) -> [SKIP][115] ([fdo#109271] / [i915#1888] / [i915#3886])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
>     - shard-glk:          [FAIL][116] ([i915#1888] / [i915#2546]) -> [FAIL][117] ([i915#2546])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-glk5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-glk8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-skl:          [SKIP][118] ([fdo#109271] / [i915#533]) -> [SKIP][119] ([fdo#109271] / [i915#1888] / [i915#533])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][120] ([fdo#111068] / [i915#658]) -> [SKIP][121] ([i915#2920])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [FAIL][122] ([i915#4148]) -> [SKIP][123] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132]) ([i915#180] / [i915#3002] / [i915#4312])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl3/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl7/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl3/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl6/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-kbl7/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl7/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl7/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl6/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-kbl6/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl6/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl2/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl8/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl4/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl2/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl4/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl4/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11135/shard-apl1/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl4/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl3/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl7/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl7/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl8/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/shard-apl8/igt@runner@aborted.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1937]: https://gitla
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22105/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
