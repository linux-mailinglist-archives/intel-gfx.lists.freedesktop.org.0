Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8DE13B3A7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 21:31:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 505806E462;
	Tue, 14 Jan 2020 20:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A948E6E462
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 20:31:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 12:31:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="424776423"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga006.fm.intel.com with ESMTP; 14 Jan 2020 12:31:34 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Jan 2020 12:31:33 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.125]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.191]) with mapi id 14.03.0439.000;
 Tue, 14 Jan 2020 12:31:33 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5MTUvZHAvdGdsKzog?=
 =?utf-8?Q?Update_combo_phy_vswing_tables?=
Thread-Index: AQHVyw6RLbKvb5pxd02XzMO7hyoU0qfrIzYA
Date: Tue, 14 Jan 2020 20:31:33 +0000
Message-ID: <30aff682a0e912a1a239d0e554fb2e63c4b62990.camel@intel.com>
References: <20200110233902.154960-1-jose.souza@intel.com>
 <157902913375.24907.11001249752818758228@emeril.freedesktop.org>
In-Reply-To: <157902913375.24907.11001249752818758228@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.14]
Content-ID: <53B9165C3B85824AA10DA69C4E20A122@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp/tgl+=3A_Update_combo_phy_vswing_tables?=
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

On Tue, 2020-01-14 at 19:12 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp/tgl+: Update combo phy vswing tables
> URL   : https://patchwork.freedesktop.org/series/71909/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7721_full -> Patchwork_16062_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.


Pushed to dinq, thanks for the review Matt, Ville and Jani.

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16062_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
> +7 similar issues
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_isolation@vcs1-dirty-switch:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] /
> [fdo#112080]) +1 similar issue
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-switch.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-switch.html
> 
>   * igt@gem_ctx_shared@exec-single-timeline-bsd:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
> 
>   * igt@gem_ctx_shared@q-smoketest-all:
>     - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735])
> +1 similar issue
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb6/igt@gem_ctx_shared@q-smoketest-all.html
> 
>   * igt@gem_exec_balancer@smoke:
>     - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@gem_exec_balancer@smoke.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb5/igt@gem_exec_balancer@smoke.html
> 
>   * igt@gem_exec_create@basic:
>     - shard-tglb:         [PASS][11] -> [INCOMPLETE][12]
> ([fdo#111736] / [i915#472])
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@gem_exec_create@basic.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb4/igt@gem_exec_create@basic.html
> 
>   * igt@gem_exec_gttfill@basic:
>     - shard-tglb:         [PASS][13] -> [INCOMPLETE][14]
> ([fdo#111593] / [i915#472])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb1/igt@gem_exec_gttfill@basic.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb9/igt@gem_exec_gttfill@basic.html
> 
>   * igt@gem_exec_schedule@pi-shared-iova-bsd:
>     - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +6
> similar issues
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@gem_exec_schedule@reorder-wide-bsd1:
>     - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276]) +6
> similar issues
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd1.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd1.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#472])
> +2 similar issues
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_suspend@basic-s0.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb3/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem
> _persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
>     - shard-kbl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271])
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
> +3 similar issues
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl3/igt@gem_softpin@noreloc-s3.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-apl1/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_sync@basic-many-each:
>     - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472]
> / [i915#707])
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@gem_sync@basic-many-each.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb8/igt@gem_sync@basic-many-each.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#151]
> / [i915#69])
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl7/igt@i915_pm_rpm@system-suspend.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-skl3/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#413])
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@i915_pm_rps@reset.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb4/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
>     - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54])
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          [PASS][35] -> [FAIL][36] ([fdo#103375])
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#79])
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79]) +1
> similar issue
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#221])
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl8/igt@kms_flip@flip-vs-suspend.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-skl9/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145]) +1
> similar issue
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441])
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@perf_pmu@busy-vcs1:
>     - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#112080]) +9
> similar issues
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@perf_pmu@busy-vcs1.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb5/igt@perf_pmu@busy-vcs1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50]
> +1 similar issue
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_persistence@vcs1-queued:
>     - shard-iclb:         [SKIP][51] ([fdo#109276] / [fdo#112080]) ->
> [PASS][52] +4 similar issues
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
> 
>   * igt@gem_eio@in-flight-1us:
>     - shard-snb:          [FAIL][53] ([i915#490]) -> [PASS][54] +1
> similar issue
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb4/igt@gem_eio@in-flight-1us.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-snb5/igt@gem_eio@in-flight-1us.html
> 
>   * igt@gem_exec_schedule@independent-bsd2:
>     - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +22
> similar issues
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
> 
>   * igt@gem_exec_schedule@pi-userfault-bsd:
>     - shard-iclb:         [SKIP][57] ([i915#677]) -> [PASS][58]
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
>     - shard-tglb:         [INCOMPLETE][59] ([fdo#111606] /
> [fdo#111677] / [i915#472]) -> [PASS][60]
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
>     - shard-tglb:         [INCOMPLETE][61] ([fdo#111677] /
> [i915#472]) -> [PASS][62]
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
> 
>   * igt@gem_exec_schedule@reorder-wide-bsd:
>     - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +3
> similar issues
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
> 
>   * igt@gem_exec_schedule@smoketest-bsd2:
>     - shard-tglb:         [INCOMPLETE][65] ([i915#472] / [i915#707])
> -> [PASS][66]
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd2.html
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd2.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-tglb:         [INCOMPLETE][67] ([fdo#111736] / [i915#460]
> / [i915#472]) -> [PASS][68]
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_suspend@basic-s3.html
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb6/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem
> _persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
>     - shard-apl:          [TIMEOUT][69] ([fdo#112271] / [i915#530])
> -> [PASS][70]
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
> 
>   * igt@gem_persistent_relocs@forked-interruptible-thrashing:
>     - shard-iclb:         [FAIL][71] ([i915#520]) -> [PASS][72]
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
> 
>   * igt@gem_pipe_control_store_loop@reused-buffer:
>     - shard-tglb:         [INCOMPLETE][73] ([i915#707] / [i915#796])
> -> [PASS][74]
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb5/igt@gem_pipe_control_store_loop@reused-buffer.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][75] ([i915#644]) -> [PASS][76]
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_sync@basic-all:
>     - shard-tglb:         [INCOMPLETE][77] ([i915#470] / [i915#472])
> -> [PASS][78]
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_sync@basic-all.html
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb7/igt@gem_sync@basic-all.html
> 
>   * igt@gem_sync@basic-store-each:
>     - shard-tglb:         [INCOMPLETE][79] ([i915#472]) -> [PASS][80]
> +1 similar issue
>    [79]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@gem_sync@basic-store-each.html
>    [80]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb2/igt@gem_sync@basic-store-each.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-kbl:          [DMESG-WARN][81] ([i915#716]) -> [PASS][82]
>    [81]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
>    [82]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-kbl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-apl:          [FAIL][83] ([i915#39]) -> [PASS][84]
>    [83]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@i915_pm_rps@min-max-config-loaded.html
>    [84]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-apl4/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86]
> +3 similar issues
>    [85]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl3/igt@i915_suspend@forcewake.html
>    [86]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-kbl2/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-iclb:         [DMESG-WARN][87] ([fdo#111764]) ->
> [PASS][88]
>    [87]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@kms_flip@flip-vs-suspend.html
>    [88]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb4/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-skl:          [INCOMPLETE][89] ([i915#221]) -> [PASS][90]
>    [89]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [90]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-tglb:         [INCOMPLETE][91] ([i915#456] / [i915#460] /
> [i915#474]) -> [PASS][92]
>    [91]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [92]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms
> _frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
>     - shard-tglb:         [DMESG-FAIL][93] ([i915#402]) -> [PASS][94]
> +2 similar issues
>    [93]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html
>    [94]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
>     - shard-tglb:         [FAIL][95] ([i915#49]) -> [PASS][96] +1
> similar issue
>    [95]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
>    [96]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
> 
>   * igt@kms_psr@primary_blt:
>     - shard-tglb:         [DMESG-WARN][97] ([i915#402]) -> [PASS][98]
> +19 similar issues
>    [97]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_psr@primary_blt.html
>    [98]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb7/igt@kms_psr@primary_blt.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][99] ([fdo#109441]) -> [PASS][100] +2
> similar issues
>    [99]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [100]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-tglb:         [FAIL][101] ([i915#31]) -> [PASS][102]
>    [101]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@kms_setmode@basic.html
>    [102]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb1/igt@kms_setmode@basic.html
> 
>   * igt@perf_pmu@busy-no-semaphores-vcs1:
>     - shard-iclb:         [SKIP][103] ([fdo#112080]) -> [PASS][104]
> +6 similar issues
>    [103]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
>    [104]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [SKIP][105] ([fdo#109276] / [fdo#112080])
> -> [FAIL][106] ([IGT#28])
>    [105]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
>    [106]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
> 
>   * igt@gem_ctx_isolation@vcs2-nonpriv:
>     - shard-tglb:         [SKIP][107] ([fdo#111912] / [fdo#112080])
> -> [SKIP][108] ([fdo#112080])
>    [107]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_ctx_isolation@vcs2-nonpriv.html
>    [108]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
> 
>   * igt@gem_tiled_blits@interruptible:
>     - shard-hsw:          [FAIL][109] ([i915#818]) -> [FAIL][110]
> ([i915#694])
>    [109]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-hsw7/igt@gem_tiled_blits@interruptible.html
>    [110]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-hsw7/igt@gem_tiled_blits@interruptible.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [SKIP][111] ([i915#468]) -> [FAIL][112]
> ([i915#454])
>    [111]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
>    [112]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb4/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-snb:          [SKIP][113] ([fdo#109271]) ->
> [INCOMPLETE][114] ([i915#82])
>    [113]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb1/igt@i915_pm_rpm@dpms-lpsp.html
>    [114]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-snb2/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_atomic_transition@6x-modeset-transitions-fencing:
>     - shard-tglb:         [SKIP][115] ([fdo#112016] / [fdo#112021])
> -> [SKIP][116] ([fdo#112021])
>    [115]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@kms_atomic_transition@6x-modeset-transitions-fencing.html
>    [116]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-fencing.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180:
>     - shard-tglb:         [DMESG-WARN][117] ([i915#402]) ->
> [FAIL][118] ([i915#979])
>    [117]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-rotation-180.html
>    [118]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-rotation-180.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][119], [FAIL][120]) ([i915#716] /
> [i915#974]) -> [FAIL][121] ([i915#974])
>    [119]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@runner@aborted.html
>    [120]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@runner@aborted.html
>    [121]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/shard-kbl2/igt@runner@aborted.html
> 
>   
>   [IGT#28]: 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
>   [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
>   [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
>   [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
>   [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
>   [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
>   [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
>   [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
>   [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
>   [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
>   [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
>   [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
>   [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
>   [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
>   [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
>   [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
>   [i915#979]: https://gitlab.freedesktop.org/drm/intel/issues/979
> 
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): pig-hsw-4770r 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7721 -> Patchwork_16062
> 
>   CI-20190529: 20190529
>   CI_DRM_7721: 3a2436c56fcf2d133d701a112eb1e0dfce0b846d @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16062: 9cf64dd8e186bcd181b14d0c077f243b8c2eefe8 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16062/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
