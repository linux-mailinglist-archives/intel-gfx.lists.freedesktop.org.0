Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D48AF502FCE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 22:33:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E44010E473;
	Fri, 15 Apr 2022 20:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E6E10E45E
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 20:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650054835; x=1681590835;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0ULV+Ggqjq4JFwhl1S4MIw2UKMDkVVBlfpY8D1NXurw=;
 b=DwH9rAo+aY93ekX35zQIVi9eIbgx2/a+qV+9rPZ8CvNJJjSrIvQrwnFQ
 bp+VspBXJoKMuqMtLf+u4G5VU05wuJYJqlH/hJ2hH0FUCGRgYg/TLxxjS
 DcufNfJDHngGKoxZZuzTaAYqAQ1jDE7rBJpJRZbX22QSSt39ungqNG3mo
 dGvsbciaCw1a8uj6lPv9o0/7Ru7J7QL5elWR1SCTS4tjIR8roy/B7TMr5
 nPbve+TybCTIEahAoeesljxlf6ffnqvuqUfKbCbNsKeJ28w1AUKaXtCJE
 17xi9etsvr6ceVoQ8Tx4yDTL+JghRTRAYnxXfzG6IBFDmQf/pI5gOoarJ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="250523031"
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="250523031"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 13:33:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="527584848"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 13:33:54 -0700
Date: Fri, 15 Apr 2022 13:33:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YlnWsdurGx+M7z/W@mdroper-desk1.amr.corp.intel.com>
References: <20220412224852.21501-1-vinay.belgaumkar@intel.com>
 <165005439212.6521.13864948527173424848@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165005439212.6521.13864948527173424848@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Use_i915=5Fprobe=5Ferror_instead_of_drm=5Ferr?=
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

On Fri, Apr 15, 2022 at 08:26:32PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/guc/slpc: Use i915_probe_error instead of drm_err
> URL   : https://patchwork.freedesktop.org/series/102625/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11496_full -> Patchwork_102625v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks for the patch and review.


Matt

> 
>   
> 
> Participating hosts (11 -> 13)
> ------------------------------
> 
>   Additional (2): shard-rkl shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_102625v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_whisper@basic-fds-all:
>     - {shard-rkl}:        NOTRUN -> [DMESG-WARN][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-rkl-5/igt@gem_exec_whisper@basic-fds-all.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102625v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@close-race:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][2] ([i915#5229])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl2/igt@gem_busy@close-race.html
> 
>   * igt@gem_create@create-massive:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][3] ([i915#4991])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl3/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-skl:          [PASS][4] -> [INCOMPLETE][5] ([i915#4793])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [PASS][6] -> [FAIL][7] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-pro-default:
>     - shard-snb:          [PASS][8] -> [SKIP][9] ([fdo#109271]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-snb5/igt@gem_exec_flush@basic-wb-pro-default.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-snb6/igt@gem_exec_flush@basic-wb-pro-default.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-glk:          [PASS][10] -> [DMESG-WARN][11] ([i915#118])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk8/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-glk6/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-kbl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl6/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][14] ([i915#2658])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#4270])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb5/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][16] ([i915#768])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][17] ([i915#4991])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb5/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#5566] / [i915#716])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk1/igt@gen9_exec_parse@allowed-all.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-glk9/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#454])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +52 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl6/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#110892])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#5286])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][27] ([i915#3743])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#1888])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb7/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109278] / [i915#3886])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-degamma:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl6/igt@kms_color_chamelium@pipe-c-degamma.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][37] ([i915#1319])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278] / [fdo#109279])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#5713])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [fdo#109279] / [i915#5691])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278]) +6 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109274] / [fdo#109278])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2346])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#533])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#4767])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#79])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274]) +2 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2122]) +2 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#3701])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#4911])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +137 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109280]) +5 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#1188]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl2/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl1/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180]) +5 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
>     - shard-iclb:         [PASS][65] -> [SKIP][66] ([i915#5176]) +2 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#111068] / [i915#658])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2437])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl3/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#2437])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb5/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2437])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl8/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-complete:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#2530])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@nouveau_crc@pipe-b-source-outp-complete.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109278] / [i915#2530])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@nouveau_crc@pipe-d-source-outp-inactive.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#1542])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl1/igt@perf@blocking.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl8/igt@perf@blocking.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-kbl:          NOTRUN -> [DMESG-FAIL][76] ([i915#5098])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl6/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-glk:          [DMESG-WARN][78] ([i915#118]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk7/igt@gem_ctx_persistence@many-contexts.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-glk5/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@kms:
>     - {shard-tglu}:       [INCOMPLETE][80] ([i915#5182]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-tglu-2/igt@gem_eio@kms.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-tglu-1/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][82] ([i915#2842]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [FAIL][84] ([i915#2842]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [FAIL][86] ([i915#2842]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>     - shard-skl:          [INCOMPLETE][88] ([i915#5436]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl4/igt@gem_exec_whisper@basic-fds-priority-all.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl2/igt@gem_exec_whisper@basic-fds-priority-all.html
> 
>   * igt@gem_mmap_wc@coherency:
>     - shard-snb:          [SKIP][90] ([fdo#109271]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-snb6/igt@gem_mmap_wc@coherency.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-snb5/igt@gem_mmap_wc@coherency.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - {shard-tglu}:       [DMESG-WARN][92] ([i915#402]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-tglu-2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-tglu-1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95] +5 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][96] ([i915#2346] / [i915#533]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][98] ([fdo#108145] / [i915#265]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale:
>     - shard-iclb:         [SKIP][100] ([i915#5235]) -> [PASS][101] +5 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-iclb:         [SKIP][102] ([fdo#109441]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb3/igt@kms_psr@psr2_sprite_plane_onoff.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [SKIP][104] ([i915#5519]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [DMESG-WARN][106] ([i915#5614]) -> [SKIP][107] ([i915#4525]) +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@gem_exec_balancer@parallel.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb5/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][108] ([i915#4525]) -> [DMESG-WARN][109] ([i915#5614])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [DMESG-FAIL][110] ([i915#5614]) -> [SKIP][111] ([i915#4525])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][112] ([i915#2842]) -> [FAIL][113] ([i915#2852])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][114] ([i915#1804] / [i915#2684]) -> [WARN][115] ([i915#2684])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-skl:          [SKIP][116] ([fdo#109271] / [i915#1888]) -> [SKIP][117] ([fdo#109271])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-skl6/igt@kms_content_protection@atomic-dpms.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-skl3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][118] ([fdo#111068] / [i915#658]) -> [SKIP][119] ([i915#2920])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][120] ([i915#2920]) -> [SKIP][121] ([fdo#111068] / [i915#658]) +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [SKIP][122] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][123] ([i915#4148])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb3/igt@kms_psr2_su@page_flip-p010.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#180] / [i915#1814] / [i915#4312] / [i915#5257]) -> ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl1/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl4/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl7/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl7/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl1/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl4/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl4/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl1/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl7/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl3/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl6/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl7/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl1/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl7/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-kbl7/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl7/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl6/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl7/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl6/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl7/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl6/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl7/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl6/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl4/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl1/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl1/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-kbl3/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159]) ([i915#1814] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb1/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb1/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb1/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-iclb2/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb5/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb5/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb7/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb2/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb1/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-iclb8/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl6/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl4/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl6/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl2/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl1/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11496/shard-apl1/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl2/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl7/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl3/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl8/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl6/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl8/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl4/igt@runner@aborted.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl8/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/shard-apl8/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
>   [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3719]: https://gitlab.freedesktop.org/drm/intel/issues/3719
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4148]: https://gitlab.freedesktop.org/drm/intel/issues/4148
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4886]: https://gitlab.freedesktop.org/drm/intel/issues/4886
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
>   [i915#4934]: https://gitlab.freedesktop.org/drm/intel/issues/4934
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5043]: https://gitlab.freedesktop.org/drm/intel/issues/5043
>   [i915#5046]: https://gitlab.freedesktop.org/drm/intel/issues/5046
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5229]: https://gitlab.freedesktop.org/drm/intel/issues/5229
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5303]: https://gitlab.freedesktop.org/drm/intel/issues/5303
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5436]: https://gitlab.freedesktop.org/drm/intel/issues/5436
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5564]: https://gitlab.freedesktop.org/drm/intel/issues/5564
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5577]: https://gitlab.freedesktop.org/drm/intel/issues/5577
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#5698]: https://gitlab.freedesktop.org/drm/intel/issues/5698
>   [i915#5701]: https://gitlab.freedesktop.org/drm/intel/issues/5701
>   [i915#5713]: https://gitlab.freedesktop.org/drm/intel/issues/5713
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11496 -> Patchwork_102625v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11496: 6dec7597a5027afe15cf36f1e796a0f2e5189741 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_102625v1: 102625v1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102625v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
