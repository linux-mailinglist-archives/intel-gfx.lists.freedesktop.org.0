Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CB2347FEC
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 19:00:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D916EC95;
	Wed, 24 Mar 2021 18:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5ED56EC95
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 18:00:30 +0000 (UTC)
IronPort-SDR: qdYsC2nW7HJbhRl/wLBmrwa7hHBCnbpTJRVd7m8Rkdlj4sUymY5GH5PZz93/CdBPTTQRz0OjwE
 qRsUnn4j4sag==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="187453658"
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; d="scan'208";a="187453658"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 11:00:30 -0700
IronPort-SDR: ZVTYppthWl4KPp8DvyfV7xIlYVi8gm47rsbWA/BbDgt+ymPMxgKk71UqxgurssdqpDopGUulLb
 NxrOBbv5c6Gg==
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; d="scan'208";a="391391846"
Received: from mcraighe-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.154.209])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 11:00:29 -0700
Date: Wed, 24 Mar 2021 11:00:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210324180029.gcj5eqoojvuv2oxp@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210319173603.521779-1-lucas.demarchi@intel.com>
 <161660579573.19037.13272886377927862493@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161660579573.19037.13272886377927862493@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2lt?=
 =?utf-8?q?plify_intel=5Fsetup=5Foutputs=28=29_=28rev3=29?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 24, 2021 at 05:09:55PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: Simplify intel_setup_outputs() (rev3)
>URL   : https://patchwork.freedesktop.org/series/87068/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_9886_full -> Patchwork_19844_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_19844_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_19844_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_19844_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_exec_capture@capture@vecs0:
>    - shard-kbl:          [PASS][1] -> [FAIL][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-kbl3/igt@gem_exec_capture@capture@vecs0.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-kbl7/igt@gem_exec_capture@capture@vecs0.html

this only changes ddi initialization and cannot cause any problem in
gem_exec_capture.

Same issue observed in CI_DRM_9876 and CI_DRM_9878.


>  * igt@gem_exec_whisper@basic-queues-priority-all:
>    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb2/igt@gem_exec_whisper@basic-queues-priority-all.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb6/igt@gem_exec_whisper@basic-queues-priority-all.html

same argument as above, although I can't figure out yet why it's failing
nor correlate it with a previous issue.

Lucas De Marchi

>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_19844_full that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@device_reset@unbind-reset-rebind:
>    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#750])
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb6/igt@device_reset@unbind-reset-rebind.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb7/igt@device_reset@unbind-reset-rebind.html
>
>  * igt@gem_create@create-massive:
>    - shard-apl:          NOTRUN -> [DMESG-WARN][7] ([i915#3002])
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl2/igt@gem_create@create-massive.html
>
>  * igt@gem_ctx_persistence@idempotent:
>    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +3 similar issues
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-snb6/igt@gem_ctx_persistence@idempotent.html
>
>  * igt@gem_eio@kms:
>    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#3115])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-glk5/igt@gem_eio@kms.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-glk3/igt@gem_eio@kms.html
>
>  * igt@gem_eio@unwedge-stress:
>    - shard-tglb:         [PASS][11] -> [TIMEOUT][12] ([i915#2369] / [i915#3063])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb5/igt@gem_eio@unwedge-stress.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb1/igt@gem_eio@unwedge-stress.html
>    - shard-skl:          [PASS][13] -> [TIMEOUT][14] ([i915#2369] / [i915#2771] / [i915#3063])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl10/igt@gem_eio@unwedge-stress.html
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl2/igt@gem_eio@unwedge-stress.html
>
>  * igt@gem_exec_balancer@hang:
>    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#3031])
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb1/igt@gem_exec_balancer@hang.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb7/igt@gem_exec_balancer@hang.html
>
>  * igt@gem_exec_fair@basic-deadline:
>    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2846])
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
>    - shard-apl:          NOTRUN -> [FAIL][19] ([i915#2846])
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl2/igt@gem_exec_fair@basic-deadline.html
>
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:
>    - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#2842])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace@vcs1:
>    - shard-iclb:         NOTRUN -> [FAIL][22] ([i915#2842])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
>    - shard-kbl:          [PASS][23] -> [SKIP][24] ([fdo#109271])
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
>    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#2842])
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html
>
>  * igt@gem_exec_reloc@basic-many-active@rcs0:
>    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#2389])
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-glk5/igt@gem_exec_reloc@basic-many-active@rcs0.html
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-glk3/igt@gem_exec_reloc@basic-many-active@rcs0.html
>
>  * igt@gem_exec_reloc@basic-wide-active@rcs0:
>    - shard-snb:          NOTRUN -> [FAIL][29] ([i915#2389]) +2 similar issues
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html
>
>  * igt@gem_exec_schedule@u-fairslice@bcs0:
>    - shard-tglb:         [PASS][30] -> [DMESG-WARN][31] ([i915#2803])
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.html
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb8/igt@gem_exec_schedule@u-fairslice@bcs0.html
>
>  * igt@gem_mmap_gtt@big-copy:
>    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#307]) +1 similar issue
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-glk4/igt@gem_mmap_gtt@big-copy.html
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-glk6/igt@gem_mmap_gtt@big-copy.html
>
>  * igt@gem_mmap_gtt@cpuset-medium-copy:
>    - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#307])
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy.html
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy.html
>
>  * igt@gem_pread@exhaustion:
>    - shard-skl:          NOTRUN -> [WARN][36] ([i915#2658])
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl8/igt@gem_pread@exhaustion.html
>
>  * igt@gem_pwrite@basic-exhaustion:
>    - shard-snb:          NOTRUN -> [WARN][37] ([i915#2658]) +1 similar issue
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
>
>  * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
>    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#1699]) +3 similar issues
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl6/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html
>
>  * igt@gen9_exec_parse@allowed-single:
>    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1436] / [i915#716])
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl10/igt@gen9_exec_parse@allowed-single.html
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl5/igt@gen9_exec_parse@allowed-single.html
>
>  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#1937])
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
>
>  * igt@kms_chamelium@dp-crc-multiple:
>    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +15 similar issues
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl6/igt@kms_chamelium@dp-crc-multiple.html
>
>  * igt@kms_chamelium@hdmi-hpd-storm-disable:
>    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +7 similar issues
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl4/igt@kms_chamelium@hdmi-hpd-storm-disable.html
>
>  * igt@kms_color_chamelium@pipe-a-ctm-negative:
>    - shard-snb:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +18 similar issues
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-negative.html
>
>  * igt@kms_content_protection@atomic-dpms:
>    - shard-apl:          NOTRUN -> [TIMEOUT][45] ([i915#1319])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl6/igt@kms_content_protection@atomic-dpms.html
>
>  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
>    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#54])
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
>
>  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>    - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180])
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>    - shard-apl:          NOTRUN -> [DMESG-WARN][50] ([i915#180])
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#2346])
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
>    - shard-apl:          NOTRUN -> [DMESG-FAIL][53] ([IGT#6])
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
>
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>    - shard-tglb:         [PASS][54] -> [FAIL][55] ([i915#2598])
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2672])
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>    - shard-snb:          NOTRUN -> [SKIP][57] ([fdo#109271]) +385 similar issues
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-snb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
>    - shard-apl:          NOTRUN -> [FAIL][58] ([i915#2641])
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
>    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +55 similar issues
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
>
>  * igt@kms_hdr@bpc-switch-dpms:
>    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#1188])
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
>
>  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#533])
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
>
>  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>    - shard-skl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265])
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
>
>  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>    - shard-skl:          [PASS][64] -> [FAIL][65] ([fdo#108145] / [i915#265]) +1 similar issue
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>
>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
>    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +7 similar issues
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
>
>  * igt@kms_psr2_su@frontbuffer:
>    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658])
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl8/igt@kms_psr2_su@frontbuffer.html
>
>  * igt@kms_psr@psr2_cursor_mmap_cpu:
>    - shard-iclb:         [PASS][68] -> [SKIP][69] ([fdo#109441]) +1 similar issue
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
>
>  * igt@kms_psr@suspend:
>    - shard-skl:          [PASS][70] -> [INCOMPLETE][71] ([i915#198])
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl4/igt@kms_psr@suspend.html
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl8/igt@kms_psr@suspend.html
>
>  * igt@perf_pmu@module-unload:
>    - shard-skl:          [PASS][72] -> [DMESG-WARN][73] ([i915#1982] / [i915#262])
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl6/igt@perf_pmu@module-unload.html
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl7/igt@perf_pmu@module-unload.html
>
>  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
>    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +168 similar issues
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl7/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
>
>  * igt@sysfs_clients@recycle:
>    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#3028])
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl4/igt@sysfs_clients@recycle.html
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl8/igt@sysfs_clients@recycle.html
>
>  * igt@sysfs_clients@sema-10@rcs0:
>    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3026])
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl7/igt@sysfs_clients@sema-10@rcs0.html
>
>
>#### Possible fixes ####
>
>  * igt@gem_eio@in-flight-contexts-immediate:
>    - shard-skl:          [TIMEOUT][78] ([i915#3063]) -> [PASS][79]
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl7/igt@gem_eio@in-flight-contexts-immediate.html
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl5/igt@gem_eio@in-flight-contexts-immediate.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-tglb:         [FAIL][80] ([i915#2842]) -> [PASS][81]
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    - shard-glk:          [FAIL][82] ([i915#2842]) -> [PASS][83]
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace@rcs0:
>    - shard-kbl:          [FAIL][84] ([i915#2842]) -> [PASS][85]
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
>
>  * igt@gem_exec_schedule@u-fairslice@vcs0:
>    - shard-apl:          [DMESG-WARN][86] ([i915#1610]) -> [PASS][87]
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-apl1/igt@gem_exec_schedule@u-fairslice@vcs0.html
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl8/igt@gem_exec_schedule@u-fairslice@vcs0.html
>
>  * igt@gem_exec_whisper@basic-contexts-forked-all:
>    - shard-glk:          [DMESG-WARN][88] ([i915#118] / [i915#95]) -> [PASS][89] +1 similar issue
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked-all.html
>
>  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>    - shard-iclb:         [FAIL][90] ([i915#307]) -> [PASS][91] +1 similar issue
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>
>  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
>    - shard-skl:          [FAIL][92] ([i915#54]) -> [PASS][93]
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>    - shard-skl:          [FAIL][94] ([i915#2346]) -> [PASS][95]
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>    - shard-skl:          [FAIL][96] ([i915#79]) -> [PASS][97]
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>
>  * igt@kms_hdr@bpc-switch-suspend:
>    - shard-skl:          [FAIL][98] ([i915#1188]) -> [PASS][99]
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
>
>  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>    - shard-skl:          [FAIL][100] ([fdo#108145] / [i915#265]) -> [PASS][101]
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>
>  * igt@kms_psr@psr2_primary_mmap_cpu:
>    - shard-iclb:         [SKIP][102] ([fdo#109441]) -> [PASS][103] +1 similar issue
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>
>  * igt@sysfs_clients@recycle:
>    - shard-apl:          [FAIL][104] ([i915#3028]) -> [PASS][105]
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-apl7/igt@sysfs_clients@recycle.html
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl8/igt@sysfs_clients@recycle.html
>
>  * igt@sysfs_clients@recycle-many:
>    - shard-iclb:         [FAIL][106] ([i915#3028]) -> [PASS][107]
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb2/igt@sysfs_clients@recycle-many.html
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb8/igt@sysfs_clients@recycle-many.html
>    - shard-tglb:         [FAIL][108] ([i915#3028]) -> [PASS][109]
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb6/igt@sysfs_clients@recycle-many.html
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb7/igt@sysfs_clients@recycle-many.html
>    - shard-snb:          [FAIL][110] ([i915#3028]) -> [PASS][111]
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-snb7/igt@sysfs_clients@recycle-many.html
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-snb5/igt@sysfs_clients@recycle-many.html
>
>
>#### Warnings ####
>
>  * igt@gem_exec_balancer@hang:
>    - shard-iclb:         [INCOMPLETE][112] ([i915#1895]) -> [INCOMPLETE][113] ([i915#1895] / [i915#3031])
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb2/igt@gem_exec_balancer@hang.html
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb1/igt@gem_exec_balancer@hang.html
>
>  * igt@i915_pm_rc6_residency@rc6-fence:
>    - shard-iclb:         [WARN][114] ([i915#2684]) -> [WARN][115] ([i915#1804] / [i915#2684])
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
>
>  * igt@i915_pm_rc6_residency@rc6-idle:
>    - shard-iclb:         [WARN][116] ([i915#2681] / [i915#2684]) -> [WARN][117] ([i915#1804] / [i915#2684])
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
>
>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>    - shard-iclb:         [SKIP][118] ([i915#658]) -> [SKIP][119] ([i915#2920])
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
>
>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>    - shard-iclb:         [SKIP][120] ([i915#2920]) -> [SKIP][121] ([i915#658]) +3 similar issues
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-iclb4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>
>  * igt@runner@aborted:
>    - shard-apl:          ([FAIL][122], [FAIL][123], [FAIL][124]) ([i915#1610] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128]) ([i915#1814] / [i915#2724] / [i915#3002])
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-apl8/igt@runner@aborted.html
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-apl1/igt@runner@aborted.html
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-apl1/igt@runner@aborted.html
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl8/igt@runner@aborted.html
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl1/igt@runner@aborted.html
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl2/igt@runner@aborted.html
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-apl2/igt@runner@aborted.html
>    - shard-tglb:         ([FAIL][129], [FAIL][130], [FAIL][131]) ([i915#2667] / [i915#3002]) -> ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([i915#2426] / [i915#2667] / [i915#2803] / [i915#3002])
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb3/igt@runner@aborted.html
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb6/igt@runner@aborted.html
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-tglb3/igt@runner@aborted.html
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb2/igt@runner@aborted.html
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb8/igt@runner@aborted.html
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb3/igt@runner@aborted.html
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-tglb8/igt@runner@aborted.html
>    - shard-snb:          ([FAIL][136], [FAIL][137]) ([i915#2292] / [i915#2426] / [i915#3002] / [i915#698]) -> [FAIL][138] ([i915#3002] / [i915#698])
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-snb6/igt@runner@aborted.html
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-snb6/igt@runner@aborted.html
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-snb7/igt@runner@aborted.html
>    - shard-skl:          ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([i915#2029] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2426] / [i915#2724] / [i915#3002])
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl2/igt@runner@aborted.html
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl6/igt@runner@aborted.html
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl6/igt@runner@aborted.html
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl1/igt@runner@aborted.html
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9886/shard-skl2/igt@runner@aborted.html
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl7/igt@runner@aborted.html
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl7/igt@runner@aborted.html
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl5/igt@runner@aborted.html
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl6/igt@runner@aborted.html
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl2/igt@runner@aborted.html
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/shard-skl10/igt@runner@aborted.html
>
>
>  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
>  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
>  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
>  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
>  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
>  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
>  [i915#2641]: https://gitlab.freedesktop.org/drm/intel/issues/2641
>  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
>  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
>  [i915#2771]: https://gitlab.freedesktop.org/drm/intel/issues/2771
>  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
>  [i915#2842]: https://g
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19844/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
