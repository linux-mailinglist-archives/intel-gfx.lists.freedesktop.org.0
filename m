Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FD713B3C1
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 21:40:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7C489B98;
	Tue, 14 Jan 2020 20:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB55689B83
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 20:40:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 12:40:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="423277124"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jan 2020 12:40:15 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Jan 2020 12:40:15 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.125]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.53]) with mapi id 14.03.0439.000;
 Tue, 14 Jan 2020 12:40:14 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdmJ0OiBSZW5h?=
 =?utf-8?B?bWUgQkRCX0xWRFNfUE9XRVIgdG8gQkRCX0xGUF9QT1dFUg==?=
Thread-Index: AQHVyxfOBKNFvI88HkW/Sqr4g6zQX6frJZCA
Date: Tue, 14 Jan 2020 20:40:14 +0000
Message-ID: <f6c8cc87473962b9d04525777dbbdf02c321b2f0.camel@intel.com>
References: <20200110235045.176640-1-jose.souza@intel.com>
 <157903311504.24908.8635160956871107531@emeril.freedesktop.org>
In-Reply-To: <157903311504.24908.8635160956871107531@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.14]
Content-ID: <68CCD16D8241594D80E634F238345D5D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vbt=3A_Rename_BDB=5FLVDS=5FPOWER_to_BDB=5FLFP=5FPOWER?=
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

On Tue, 2020-01-14 at 20:18 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/vbt: Rename BDB_LVDS_POWER to BDB_LFP_POWER
> URL   : https://patchwork.freedesktop.org/series/71912/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7721_full -> Patchwork_16063_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16063_full absolutely
> need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the
> changes
>   introduced in Patchwork_16063_full, please notify your bug team to
> allow them
>   to document this new failure mode, which will reduce false
> positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in
> Patchwork_16063_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_plane@pixel-format-pipe-a-planes:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@kms_plane@pixel-format-pipe-a-planes.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb2/igt@kms_plane@pixel-format-pipe-a-planes.html
> 

Do not look related.


>   * igt@runner@aborted:
>     - shard-hsw:          NOTRUN -> [FAIL][3]
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-hsw7/igt@runner@aborted.html

This is a crash in the self tests, that ran before VBT load so not
related at all.

So pushed to dinq, thanks for the review Jani.

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16063_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@vcs1-dirty-switch:
>     - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] /
> [fdo#112080]) +1 similar issue
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-switch.html
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-switch.html
> 
>   * igt@gem_ctx_shared@q-smoketest-all:
>     - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([fdo#111735])
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb6/igt@gem_ctx_shared@q-smoketest-all.html
> 
>   * igt@gem_ctx_shared@q-smoketest-bsd:
>     - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#461])
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
> 
>   * igt@gem_exec_async@concurrent-writes-bsd:
>     - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +4
> similar issues
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
> 
>   * igt@gem_exec_balancer@smoke:
>     - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#110854])
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@gem_exec_balancer@smoke.html
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb8/igt@gem_exec_balancer@smoke.html
> 
>   * igt@gem_exec_gttfill@basic:
>     - shard-tglb:         [PASS][14] -> [INCOMPLETE][15]
> ([fdo#111593] / [i915#472])
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb1/igt@gem_exec_gttfill@basic.html
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb6/igt@gem_exec_gttfill@basic.html
> 
>   * igt@gem_exec_nop@basic-sequential:
>     - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#472])
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@gem_exec_nop@basic-sequential.html
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb5/igt@gem_exec_nop@basic-sequential.html
> 
>   * igt@gem_exec_parallel@vecs0:
>     - shard-tglb:         [PASS][18] -> [INCOMPLETE][19]
> ([fdo#111736] / [i915#472])
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_parallel@vecs0.html
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb8/igt@gem_exec_parallel@vecs0.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd1:
>     - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109276]) +8
> similar issues
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
>     - shard-tglb:         [PASS][22] -> [INCOMPLETE][23]
> ([fdo#111677] / [i915#472])
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
> 
>   * igt@gem_sync@basic-many-each:
>     - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#472]
> / [i915#707])
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@gem_sync@basic-many-each.html
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb7/igt@gem_sync@basic-many-each.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454])
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-iclb:         [PASS][28] -> [INCOMPLETE][29] ([i915#140])
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@i915_suspend@sysfs-reader.html
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb4/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_busy@basic-flip-pipe-a:
>     - shard-snb:          [PASS][30] -> [SKIP][31] ([fdo#109271]) +1
> similar issue
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb1/igt@kms_busy@basic-flip-pipe-a.html
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-snb2/igt@kms_busy@basic-flip-pipe-a.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180])
> +1 similar issue
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#88])
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl10/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-skl9/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#79])
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180])
> +6 similar issues
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-tglb:         [PASS][40] -> [FAIL][41] ([i915#49]) +3
> similar issues
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][42] -> [FAIL][43] ([fdo#108145]) +1
> similar issue
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441])
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@perf_pmu@busy-vcs1:
>     - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#112080]) +9
> similar issues
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@perf_pmu@busy-vcs1.html
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb3/igt@perf_pmu@busy-vcs1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-apl:          [DMESG-WARN][48] ([i915#180]) -> [PASS][49]
> +1 similar issue
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_isolation@vcs1-s3:
>     - shard-iclb:         [SKIP][50] ([fdo#109276] / [fdo#112080]) ->
> [PASS][51]
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_ctx_isolation@vcs1-s3.html
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb1/igt@gem_ctx_isolation@vcs1-s3.html
> 
>   * igt@gem_ctx_isolation@vecs0-s3:
>     - shard-iclb:         [DMESG-WARN][52] ([fdo#111764]) ->
> [PASS][53]
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb5/igt@gem_ctx_isolation@vecs0-s3.html
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb7/igt@gem_ctx_isolation@vecs0-s3.html
> 
>   * igt@gem_eio@in-flight-1us:
>     - shard-snb:          [FAIL][54] ([i915#490]) -> [PASS][55] +1
> similar issue
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb4/igt@gem_eio@in-flight-1us.html
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-snb2/igt@gem_eio@in-flight-1us.html
> 
>   * igt@gem_exec_await@wide-contexts:
>     - shard-tglb:         [INCOMPLETE][56] ([fdo#111736] /
> [i915#472]) -> [PASS][57]
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_exec_await@wide-contexts.html
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb5/igt@gem_exec_await@wide-contexts.html
> 
>   * igt@gem_exec_schedule@pi-distinct-iova-bsd:
>     - shard-iclb:         [SKIP][58] ([i915#677]) -> [PASS][59]
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
>     - shard-tglb:         [INCOMPLETE][60] ([fdo#111606] /
> [fdo#111677] / [i915#472]) -> [PASS][61]
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
>     - shard-tglb:         [INCOMPLETE][62] ([fdo#111677] /
> [i915#472]) -> [PASS][63]
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
> 
>   * igt@gem_exec_schedule@promotion-bsd1:
>     - shard-iclb:         [SKIP][64] ([fdo#109276]) -> [PASS][65] +16
> similar issues
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
> 
>   * igt@gem_exec_schedule@smoketest-bsd2:
>     - shard-tglb:         [INCOMPLETE][66] ([i915#472] / [i915#707])
> -> [PASS][67]
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd2.html
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd2.html
> 
>   * igt@gem_exec_schedule@wide-bsd:
>     - shard-iclb:         [SKIP][68] ([fdo#112146]) -> [PASS][69] +1
> similar issue
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-tglb:         [INCOMPLETE][70] ([fdo#111736] / [i915#460]
> / [i915#472]) -> [PASS][71]
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_suspend@basic-s3.html
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb2/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem
> _persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
>     - shard-apl:          [TIMEOUT][72] ([fdo#112271] / [i915#530])
> -> [PASS][73]
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
> 
>   * igt@gem_persistent_relocs@forked-interruptible-thrashing:
>     - shard-iclb:         [FAIL][74] ([i915#520]) -> [PASS][75]
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
> 
>   * igt@gem_pipe_control_store_loop@reused-buffer:
>     - shard-tglb:         [INCOMPLETE][76] ([i915#707] / [i915#796])
> -> [PASS][77]
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb9/igt@gem_pipe_control_store_loop@reused-buffer.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][78] ([i915#644]) -> [PASS][79]
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [79]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-kbl:          [DMESG-WARN][80] ([i915#716]) -> [PASS][81]
>    [80]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
>    [81]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-kbl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rps@waitboost:
>     - shard-iclb:         [FAIL][82] ([i915#413]) -> [PASS][83]
>    [82]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@i915_pm_rps@waitboost.html
>    [83]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb3/igt@i915_pm_rps@waitboost.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85]
> +3 similar issues
>    [84]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl3/igt@i915_suspend@forcewake.html
>    [85]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-kbl3/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_color@pipe-b-ctm-green-to-red:
>     - shard-skl:          [DMESG-WARN][86] ([i915#109]) -> [PASS][87]
>    [86]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl2/igt@kms_color@pipe-b-ctm-green-to-red.html
>    [87]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-skl6/igt@kms_color@pipe-b-ctm-green-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
>     - shard-hsw:          [INCOMPLETE][88] ([i915#61]) -> [PASS][89]
>    [88]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-hsw2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
>    [89]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-hsw2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-skl:          [INCOMPLETE][90] ([i915#221]) -> [PASS][91]
>    [90]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [91]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-tglb:         [INCOMPLETE][92] ([i915#456] / [i915#460] /
> [i915#474]) -> [PASS][93]
>    [92]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [93]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
>     - shard-tglb:         [FAIL][94] ([i915#49]) -> [PASS][95] +1
> similar issue
>    [94]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
>    [95]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][96] ([fdo#108145]) -> [PASS][97]
>    [96]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [97]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][98] ([fdo#108145] / [i915#265]) ->
> [PASS][99]
>    [98]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [99]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][100] ([fdo#109441]) -> [PASS][101]
>    [100]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb1/igt@kms_psr@psr2_suspend.html
>    [101]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@perf_pmu@idle-vcs1:
>     - shard-iclb:         [SKIP][102] ([fdo#112080]) -> [PASS][103]
> +6 similar issues
>    [102]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@perf_pmu@idle-vcs1.html
>    [103]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb1/igt@perf_pmu@idle-vcs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [SKIP][104] ([fdo#109276] / [fdo#112080])
> -> [FAIL][105] ([IGT#28])
>    [104]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
>    [105]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
> 
>   * igt@gem_ctx_isolation@vcs2-none:
>     - shard-tglb:         [SKIP][106] ([fdo#111912] / [fdo#112080])
> -> [SKIP][107] ([fdo#112080])
>    [106]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_ctx_isolation@vcs2-none.html
>    [107]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-tglb:         [SKIP][108] ([fdo#109313]) ->
> [INCOMPLETE][109] ([i915#472])
>    [108]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>    [109]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [FAIL][110] ([i915#454]) -> [SKIP][111]
> ([i915#468])
>    [110]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html
>    [111]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-kbl:          [INCOMPLETE][112] ([fdo#103665]) -> [DMESG-
> WARN][113] ([i915#180])
>    [112]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [113]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][114], [FAIL][115]) ([i915#716] /
> [i915#974]) -> [FAIL][116] ([i915#974])
>    [114]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@runner@aborted.html
>    [115]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@runner@aborted.html
>    [116]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/shard-kbl3/igt@runner@aborted.html
> 
>   
>   [IGT#28]: 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
>   [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
>   [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
>   [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
>   [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
>   [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
>   [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
>   [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>   [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
>   [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
>   [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
>   [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
>   [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
>   [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
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
>   * Linux: CI_DRM_7721 -> Patchwork_16063
> 
>   CI-20190529: 20190529
>   CI_DRM_7721: 3a2436c56fcf2d133d701a112eb1e0dfce0b846d @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16063: 16f5da2eab332df9c44d60987cfb8a5027306d40 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16063/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
