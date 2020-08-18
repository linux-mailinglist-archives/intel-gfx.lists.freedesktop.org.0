Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB4F2486B1
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 16:07:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5A089296;
	Tue, 18 Aug 2020 14:07:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E09989296
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 14:07:36 +0000 (UTC)
IronPort-SDR: 6ukZJtHU1XdGIYLarLIP3aBF43jVDp5e0gFtrKz+Ug598uwZdxwtuJl67QtadY/ilQnhJbnpcU
 r2yTzq4yYEbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9716"; a="239729347"
X-IronPort-AV: E=Sophos;i="5.76,327,1592895600"; d="scan'208";a="239729347"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 07:07:35 -0700
IronPort-SDR: +F1nLHCdQgQTWqPOYyXjxjzhpV7vN0MyUV8CDQ/kSZQwXRir0O1jjh4o5DFnVg0VuyV5x2/zJA
 97O5Xz0xTeQg==
X-IronPort-AV: E=Sophos;i="5.76,327,1592895600"; d="scan'208";a="441234156"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 07:07:34 -0700
Date: Tue, 18 Aug 2020 17:07:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Petri Latvala <petri.latvala@intel.com>,
 Tomi P Sarvela <tomi.p.sarvela@intel.com>
Message-ID: <20200818140730.GA12184@ideak-desk.fi.intel.com>
References: <20200714163236.14105-1-imre.deak@intel.com>
 <159769907572.22665.14041322689970462201@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159769907572.22665.14041322689970462201@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl+=3A_Fix_Combo_PHY_DPLL_fractional_divider_for_38=2E4M?=
 =?utf-8?q?Hz_ref_clock_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 17, 2020 at 09:17:55PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl+: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock (rev2)
> URL   : https://patchwork.freedesktop.org/series/79486/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8891_full -> Patchwork_18365_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18365_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18365_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18365_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@runner@aborted:
>     - shard-tglb:         NOTRUN -> ([FAIL][1], [FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25])

This is due to a mismatching fractional divider value used by BIOS vs.
the fractional divider value used by the driver after the workaround.

The latest BIOS versions use already the divider required by the WA as
well, so upgrading BIOS would solve this. Is there any plan for that?


>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb8/igt@runner@aborted.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb8/igt@runner@aborted.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb3/igt@runner@aborted.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb7/igt@runner@aborted.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb3/igt@runner@aborted.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb8/igt@runner@aborted.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb7/igt@runner@aborted.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb7/igt@runner@aborted.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18365_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_whisper@basic-contexts-forked:
>     - shard-glk:          [PASS][26] -> [DMESG-WARN][27] ([i915#118] / [i915#95]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#1436] / [i915#716])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl3/igt@gen9_exec_parse@allowed-single.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_selftest@mock@contexts:
>     - shard-apl:          [PASS][30] -> [INCOMPLETE][31] ([i915#1635] / [i915#2278])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-apl4/igt@i915_selftest@mock@contexts.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-apl1/igt@i915_selftest@mock@contexts.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][32] -> [DMESG-WARN][33] ([i915#1982])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-glk9/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-fences@a-edp1:
>     - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982]) +15 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl5/igt@kms_flip@flip-vs-fences@a-edp1.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl1/igt@kms_flip@flip-vs-fences@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +4 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#2122])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-kbl:          [PASS][42] -> [FAIL][43] ([i915#31])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-kbl2/igt@kms_setmode@basic.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-kbl7/igt@kms_setmode@basic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
>     - shard-skl:          [FAIL][44] ([i915#1528]) -> [PASS][45]
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
> 
>   * igt@gem_ctx_shared@q-smoketest-all:
>     - shard-glk:          [DMESG-WARN][46] ([i915#118] / [i915#95]) -> [PASS][47]
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-glk2/igt@gem_ctx_shared@q-smoketest-all.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-glk8/igt@gem_ctx_shared@q-smoketest-all.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-skl:          [INCOMPLETE][48] -> [PASS][49]
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl9/igt@gem_workarounds@suspend-resume.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl5/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [DMESG-WARN][50] ([i915#1436] / [i915#1635] / [i915#716]) -> [PASS][51]
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-apl4/igt@gen9_exec_parse@allowed-all.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-apl6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-glk:          [DMESG-FAIL][52] ([i915#118] / [i915#95]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-glk2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +9 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl8/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-hdmi-a1:
>     - shard-hsw:          [INCOMPLETE][56] ([CI#80]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-hsw5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-hdmi-a1.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-hsw1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-hdmi-a1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +7 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
>     - shard-skl:          [FAIL][60] ([i915#1188]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-iclb:         [FAIL][62] ([i915#173]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb1/igt@kms_psr@no_drrs.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb5/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][64] ([fdo#109441]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@perf@blocking-parameterized:
>     - shard-iclb:         [FAIL][66] ([i915#1542]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb6/igt@perf@blocking-parameterized.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb1/igt@perf@blocking-parameterized.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-iclb:         [DMESG-WARN][68] ([i915#1982]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb4/igt@perf_pmu@module-unload.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb5/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_busy@after@vecs0:
>     - shard-hsw:          [FAIL][70] ([i915#2258]) -> [PASS][71] +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-hsw7/igt@prime_busy@after@vecs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-hsw2/igt@prime_busy@after@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [DMESG-FAIL][72] ([i915#1982]) -> [DMESG-WARN][73] ([i915#1982])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [SKIP][74] ([fdo#109349]) -> [DMESG-WARN][75] ([i915#1226])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [DMESG-WARN][76] ([i915#1982]) -> [DMESG-FAIL][77] ([fdo#108145] / [i915#1982])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          [FAIL][78] ([fdo#109271] / [i915#1635] / [i915#716]) -> [FAIL][79] ([i915#1635] / [i915#2110])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-apl4/igt@runner@aborted.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-apl1/igt@runner@aborted.html
> 
>   
>   [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2258]: https://gitlab.freedesktop.org/drm/intel/issues/2258
>   [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_8891 -> Patchwork_18365
> 
>   CI-20190529: 20190529
>   CI_DRM_8891: f01d54256ca8735663c14ccf0525777fea682e8a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18365: d27f4a1c75b10bc42abc5e52438eb67171e4107d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
