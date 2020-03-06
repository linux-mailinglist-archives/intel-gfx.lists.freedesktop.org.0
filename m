Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8F717C871
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 23:40:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF1C6ED82;
	Fri,  6 Mar 2020 22:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170BC6ED82
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 22:40:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 14:40:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,523,1574150400"; d="scan'208";a="234943489"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 06 Mar 2020 14:40:11 -0800
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 6 Mar 2020 14:40:11 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.72]) with mapi id 14.03.0439.000;
 Fri, 6 Mar 2020 14:40:10 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvaG90cGx1ZzogVXNlIHBoeSB0byBnZXQgdGhlIGhwZF9waW4gaW5zdGVh?=
 =?utf-8?Q?d_of_the_port_(rev6)?=
Thread-Index: AQHV82OUO/PatTQ3lEOe1E1BNT9lJag8r/8A
Date: Fri, 6 Mar 2020 22:40:09 +0000
Message-ID: <44ea0c1816f40d09cead8ff893c572560870bae8.camel@intel.com>
References: <20200129224729.4684-1-vivek.kasireddy@intel.com>
 <158346369732.3081.14966549069816886562@emeril.freedesktop.org>
In-Reply-To: <158346369732.3081.14966549069816886562@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <1B18E96F837231479EB3D9F1FC3CEAC9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hotplug=3A_Use_phy_to_get_the_hpd=5Fpin_instead_of_the_po?=
 =?utf-8?b?cnQgKHJldjYp?=
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

On Fri, 2020-03-06 at 03:01 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/hotplug: Use phy to get the hpd_pin instead of the
> port (rev6)
> URL   : https://patchwork.freedesktop.org/series/72747/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8068_full -> Patchwork_16830_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Pushed to dinq, thanks for the patch.

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16830_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@busy-vcs1:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10
> similar issues
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb4/igt@gem_busy@busy-vcs1.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb6/igt@gem_busy@busy-vcs1.html
> 
>   * igt@gem_exec_schedule@implicit-both-bsd2:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] /
> [i915#677])
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd2.html
> 
>   * igt@gem_exec_schedule@pi-shared-iova-bsd:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +4
> similar issues
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-apl8/igt@i915_suspend@sysfs-reader.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-apl6/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_color@pipe-b-ctm-green-to-red:
>     - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#129])
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl1/igt@kms_color@pipe-b-ctm-green-to-red.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl8/igt@kms_color@pipe-b-ctm-green-to-red.html
> 
>   * igt@kms_color@pipe-c-ctm-0-25:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#182])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
>     - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#72])
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
> +2 similar issues
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145]) +1
> similar issue
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +4
> similar issues
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr@suspend:
>     - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#198])
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl9/igt@kms_psr@suspend.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl6/igt@kms_psr@suspend.html
> 
>   * igt@perf@short-reads:
>     - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#51])
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-apl6/igt@perf@short-reads.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-apl8/igt@perf@short-reads.html
> 
>   * igt@prime_busy@hang-bsd2:
>     - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109276]) +6
> similar issues
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb4/igt@prime_busy@hang-bsd2.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb6/igt@prime_busy@hang-bsd2.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_shared@exec-shared-gtt-bsd:
>     - shard-tglb:         [FAIL][33] ([i915#616]) -> [PASS][34]
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-tglb5/igt@gem_ctx_shared@exec-shared-gtt-bsd.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-tglb2/igt@gem_ctx_shared@exec-shared-gtt-bsd.html
> 
>   * igt@gem_exec_parallel@vcs1-fds:
>     - shard-iclb:         [SKIP][35] ([fdo#112080]) -> [PASS][36] +9
> similar issues
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
> 
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +3
> similar issues
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd1:
>     - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +9
> similar issues
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
> 
>   * igt@gem_exec_schedule@wide-bsd:
>     - shard-glk:          [INCOMPLETE][41] ([i915#58] /
> [k.org#198133]) -> [PASS][42]
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk4/igt@gem_exec_schedule@wide-bsd.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-glk1/igt@gem_exec_schedule@wide-bsd.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-skl:          [INCOMPLETE][43] ([i915#69]) -> [PASS][44]
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl1/igt@gem_exec_suspend@basic-s3.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl7/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][45] ([i915#644]) -> [PASS][46]
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_pm_dc@dc5-dpms:
>     - shard-iclb:         [FAIL][47] -> [PASS][48]
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-iclb:         [FAIL][49] ([i915#413]) -> [PASS][50]
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb6/igt@i915_pm_rps@reset.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb3/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52]
> +2 similar issues
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-kbl4/igt@i915_suspend@sysfs-reader.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-kbl1/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
>     - shard-skl:          [FAIL][53] ([i915#54]) -> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
>     - shard-snb:          [SKIP][55] ([fdo#109271]) -> [PASS][56]
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-snb5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-snb4/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [FAIL][57] ([IGT#5]) -> [PASS][58]
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][59] ([fdo#103665]) ->
> [PASS][60]
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-apl:          [FAIL][61] ([i915#79]) -> [PASS][62]
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64]
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-glk:          [FAIL][65] ([i915#899]) -> [PASS][66]
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [SKIP][67] ([fdo#109642] / [fdo#111068]) ->
> [PASS][68]
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][69] ([i915#146] / [i915#69])
> -> [PASS][70]
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_schedule@pi-userfault-bsd:
>     - shard-iclb:         [INCOMPLETE][71] ([i915#1381]) ->
> [SKIP][72] ([i915#677])
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][73] ([i915#716]) ->
> [INCOMPLETE][74] ([i915#58] / [k.org#198133])
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-glk7/igt@gen9_exec_parse@allowed-all.html
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-glk5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [SKIP][75] ([i915#468]) -> [FAIL][76]
> ([i915#454])
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-snb:          [INCOMPLETE][77] ([i915#82]) -> [SKIP][78]
> ([fdo#109271]) +1 similar issue
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/shard-snb5/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/shard-snb2/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   
>   [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
>   [i915#1381]: https://gitlab.freedesktop.org/drm/intel/issues/1381
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#182]: https://gitlab.freedesktop.org/drm/intel/issues/182
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
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
>   * Linux: CI_DRM_8068 -> Patchwork_16830
> 
>   CI-20190529: 20190529
>   CI_DRM_8068: f8e69af5cca45947ebce78f677b75b0ecc4ba744 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5492: 2be153507cdd652843f6ab44cc2a52a7f30206d9 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16830: 5bce3620610d00ef00a407fbf3f20eee734f84f7 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16830/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
