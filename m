Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BC3148E2C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 20:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7958F6E42C;
	Fri, 24 Jan 2020 19:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16B66E42C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 19:04:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 10:55:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="230410818"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga006.jf.intel.com with ESMTP; 24 Jan 2020 10:55:25 -0800
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jan 2020 10:55:25 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.114]) with mapi id 14.03.0439.000;
 Fri, 24 Jan 2020 10:55:25 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW0NJLDEvMl0gZHJtL2k5MTUvZGMzY286IERvIHRoZSBmdWxsIGNhbGN1?=
 =?utf-8?Q?lation_of_DC3CO_exit_only_once_(rev2)?=
Thread-Index: AQHV0ozjVRXoxnaZJkmKnVHkP2t0haf6sK0A
Date: Fri, 24 Jan 2020 18:55:25 +0000
Message-ID: <685300161747012e2b0e2aaca7eb100a1a22d8b1.camel@intel.com>
References: <20200122182617.18597-1-jose.souza@intel.com>
 <157985306085.15090.3964330107564247632@emeril.freedesktop.org>
In-Reply-To: <157985306085.15090.3964330107564247632@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.218]
Content-ID: <AA5964936CB4564C873AA4C56550C276@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/dc3co=3A_Do_the_full_?=
 =?utf-8?q?calculation_of_DC3CO_exit_only_once_=28rev2=29?=
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

On Fri, 2020-01-24 at 08:04 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [CI,1/2] drm/i915/dc3co: Do the full
> calculation of DC3CO exit only once (rev2)
> URL   : https://patchwork.freedesktop.org/series/72416/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7799_full -> Patchwork_16222_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16222_full absolutely
> need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the
> changes
>   introduced in Patchwork_16222_full, please notify your bug team to
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
> Patchwork_16222_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_persistent_relocs@forked-interruptible-thrashing:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
> 
> 

Not related with this changes.

Pushed to dinq, thanks for the reviews Anshuman.


>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16222_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@extended-parallel-vcs1:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +4
> similar issues
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb6/igt@gem_busy@extended-parallel-vcs1.html
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-apl8/igt@gem_ctx_isolation@rcs0-s3.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_persistence@vcs1-hostile-preempt:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] /
> [fdo#112080]) +2 similar issues
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb3/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
> 
>   * igt@gem_ctx_persistence@vecs0-mixed-process:
>     - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#679])
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl6/igt@gem_ctx_persistence@vecs0-mixed-process.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl3/igt@gem_ctx_persistence@vecs0-mixed-process.html
> 
>   * igt@gem_exec_schedule@pi-common-bsd1:
>     - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +14
> similar issues
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd1.html
> 
>   * igt@gem_exec_schedule@pi-distinct-iova-bsd:
>     - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
> 
>   * igt@gem_exec_schedule@smoketest-bsd:
>     - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb7/igt@gem_exec_schedule@smoketest-bsd.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb1/igt@gem_exec_schedule@smoketest-bsd.html
> 
>   * igt@gem
> _persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive
> :
>     - shard-glk:          [PASS][17] -> [INCOMPLETE][18] ([i915#58] /
> [k.org#198133])
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-glk6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
> 
>   * igt@gem_persistent_relocs@forked-thrashing:
>     - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#61])
> +1 similar issue
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-hsw6/igt@gem_persistent_relocs@forked-thrashing.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-hsw5/igt@gem_persistent_relocs@forked-thrashing.html
> 
>   * igt@gem_pipe_control_store_loop@reused-buffer:
>     - shard-hsw:          [PASS][21] -> [FAIL][22] ([i915#874])
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-hsw6/igt@gem_pipe_control_store_loop@reused-buffer.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-hsw7/igt@gem_pipe_control_store_loop@reused-buffer.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#644])
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-tglb3/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_tiled_blits@normal:
>     - shard-hsw:          [PASS][25] -> [FAIL][26] ([i915#818])
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-hsw1/igt@gem_tiled_blits@normal.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-hsw5/igt@gem_tiled_blits@normal.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#151]
> / [i915#69])
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl5/igt@i915_pm_rpm@system-suspend-modeset.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@i915_selftest@mock_requests:
>     - shard-snb:          [PASS][29] -> [INCOMPLETE][30] ([i915#82])
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-snb1/igt@i915_selftest@mock_requests.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-snb6/igt@i915_selftest@mock_requests.html
> 
>   * igt@kms_color@pipe-a-ctm-0-75:
>     - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109])
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79])
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180])
> +7 similar issues
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +2
> similar issues
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_setmode@basic:
>     - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#31])
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl5/igt@kms_setmode@basic.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl7/igt@kms_setmode@basic.html
> 
>   * igt@prime_mmap_coherency@ioctl-errors:
>     - shard-hsw:          [PASS][43] -> [FAIL][44] ([i915#831])
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
> +7 similar issues
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_isolation@vcs1-dirty-create:
>     - shard-iclb:         [SKIP][47] ([fdo#109276] / [fdo#112080]) ->
> [PASS][48] +1 similar issue
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
> 
>   * igt@gem_ctx_persistence@bcs0-mixed-process:
>     - shard-skl:          [FAIL][49] ([i915#679]) -> [PASS][50] +1
> similar issue
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl2/igt@gem_ctx_persistence@bcs0-mixed-process.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl2/igt@gem_ctx_persistence@bcs0-mixed-process.html
> 
>   * igt@gem_ctx_persistence@rcs0-mixed-process:
>     - shard-glk:          [FAIL][51] ([i915#679]) -> [PASS][52] +1
> similar issue
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-glk6/igt@gem_ctx_persistence@rcs0-mixed-process.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-glk2/igt@gem_ctx_persistence@rcs0-mixed-process.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-snb:          [FAIL][53] ([i915#232]) -> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-snb4/igt@gem_eio@reset-stress.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-snb2/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +5
> similar issues
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@gem_exec_whisper@normal:
>     - shard-glk:          [DMESG-WARN][57] ([i915#118] / [i915#95])
> -> [PASS][58]
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-glk4/igt@gem_exec_whisper@normal.html
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-glk9/igt@gem_exec_whisper@normal.html
> 
>   * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
>     - shard-tglb:         [INCOMPLETE][59] ([i915#472]) -> [PASS][60]
> +1 similar issue
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-tglb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-tglb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
>     - shard-hsw:          [INCOMPLETE][61] ([i915#61]) -> [PASS][62]
> +2 similar issues
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-hsw2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
> 
>   * igt@gem
> _persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
>     - shard-apl:          [INCOMPLETE][63] ([fdo#103927] /
> [i915#970]) -> [PASS][64]
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>     - shard-glk:          [INCOMPLETE][65] ([i915#58] / [i915#970] /
> [k.org#198133]) -> [PASS][66]
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-glk6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
> 
>   * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
>     - shard-skl:          [INCOMPLETE][67] ([i915#530]) -> [PASS][68]
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl10/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl9/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
>     - shard-hsw:          [INCOMPLETE][69] ([i915#530] / [i915#61])
> -> [PASS][70]
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
> 
>   * igt@gem_persistent_relocs@forked-interruptible-thrashing:
>     - shard-kbl:          [INCOMPLETE][71] ([fdo#103665]) ->
> [PASS][72]
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-apl:          [FAIL][73] ([i915#644]) -> [PASS][74]
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][75] ([i915#454]) -> [PASS][76]
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@mock_requests:
>     - shard-skl:          [INCOMPLETE][77] ([i915#198]) -> [PASS][78]
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl2/igt@i915_selftest@mock_requests.html
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl4/igt@i915_selftest@mock_requests.html
>     - shard-apl:          [INCOMPLETE][79] ([fdo#103927]) ->
> [PASS][80]
>    [79]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-apl7/igt@i915_selftest@mock_requests.html
>    [80]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-apl2/igt@i915_selftest@mock_requests.html
>     - shard-iclb:         [INCOMPLETE][81] ([i915#140]) -> [PASS][82]
>    [81]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb7/igt@i915_selftest@mock_requests.html
>    [82]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb4/igt@i915_selftest@mock_requests.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-apl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84]
> +1 similar issue
>    [83]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [84]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-skl:          [FAIL][85] ([i915#34]) -> [PASS][86]
>    [85]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [86]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-tglb:         [FAIL][87] ([i915#49]) -> [PASS][88] +6
> similar issues
>    [87]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
>    [88]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) ->
> [PASS][90]
>    [89]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [90]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +1
> similar issue
>    [91]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
>    [92]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@perf_pmu@busy-no-semaphores-vcs1:
>     - shard-iclb:         [SKIP][93] ([fdo#112080]) -> [PASS][94] +11
> similar issues
>    [93]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
>    [94]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
> 
>   * igt@prime_busy@hang-bsd2:
>     - shard-iclb:         [SKIP][95] ([fdo#109276]) -> [PASS][96] +15
> similar issues
>    [95]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb7/igt@prime_busy@hang-bsd2.html
>    [96]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb4/igt@prime_busy@hang-bsd2.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
>     - shard-iclb:         [SKIP][97] ([fdo#109276] / [fdo#112080]) ->
> [FAIL][98] ([IGT#28])
>    [97]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
>    [98]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
> 
>   * igt@gem_eio@kms:
>     - shard-snb:          [INCOMPLETE][99] ([i915#82]) -> [DMESG-
> WARN][100] ([i915#444])
>    [99]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-snb1/igt@gem_eio@kms.html
>    [100]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-snb1/igt@gem_eio@kms.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [DMESG-WARN][101] ([fdo#107724]) ->
> [SKIP][102] ([fdo#109349])
>    [101]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [102]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-tglb:         [FAIL][103] ([i915#49]) -> [FAIL][104]
> ([i915#160])
>    [103]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>    [104]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   
>   [IGT#28]: 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
>   [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
>   [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
>   [i915#874]: https://gitlab.freedesktop.org/drm/intel/issues/874
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [i915#970]: https://gitlab.freedesktop.org/drm/intel/issues/970
>   [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
> 
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7799 -> Patchwork_16222
> 
>   CI-20190529: 20190529
>   CI_DRM_7799: 0f8a46a25a7781ef6ede604c9cb50f82cfb5e960 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16222: 864c975779cb95badf454b2f8931dd1868d7c932 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
