Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D91E3762F0
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 11:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54FFC6EE11;
	Fri,  7 May 2021 09:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1A16EE11
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 09:36:20 +0000 (UTC)
IronPort-SDR: V9lRAglgqiTAUU6kn/SrQm0PCZxc+gYpH5gxykLPvQmT5qsE2qmGh9zvEr25M62e59HeU5Eb5K
 QSrHk7HZ18mA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="195578767"
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="195578767"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 02:36:19 -0700
IronPort-SDR: x3ZgMCaIjOYHLedixWMhATunY9lry/IjQnKhHCe7GR+LsvF4eUHwB1y/4AlsZXSLwMwNX6eGb4
 cAijEGBPfafg==
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="407370413"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 02:36:16 -0700
Date: Fri, 7 May 2021 12:36:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Clint A Taylor <clinton.a.taylor@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>,
 Jose Souza <jose.souza@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20210507093612.GB432226@ideak-desk.fi.intel.com>
References: <20210506161930.309688-1-imre.deak@intel.com>
 <162033225739.15692.11920567710148875103@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162033225739.15692.11920567710148875103@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fp=3A_Add_support_for_Display_Page_Tables_=28rev2=29?=
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

On Thu, May 06, 2021 at 08:17:37PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adl_p: Add support for Display Page Tables (rev2)
> URL   : https://patchwork.freedesktop.org/series/89078/
> State : failure

Merged to -din, thanks for the patches and reviews.

The failure is unrelated see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10053_full -> Patchwork_20077_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20077_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20077_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20077_full:
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@ext_transform_feedback@builtin-varyings gl_clipvertex (NEW):
>     - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][1]

I didn't find a way to match dmesg to the test, but looks like:
<3>[  290.820108] intel_rps_park:864 GEM_BUG_ON(atomic_read(&rps->num_waiters))

Previous instances of the above issue on the same machine during Piglit runs:
CI_DIN_195/pig-glk-j5005
CI_DRM_10019/pig-glk-j5005
Patchwork_20044/pig-glk-j5005

on SKL-6260u:
Patchwork_20068/pig-skl-6260u

during IGT runs on GLK:
https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5785/shard-glk4/igt@gem_exec_flush@basic-uc-rw-default.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20032/shard-glk1/igt@gem_exec_flush@basic-wb-ro-before-default.html
CI_DIN_193/shard-glk8
Trybot_7699/shard-glk3

on other platforms:
kasan_247/fi-bsw-kefka
kasan_250/fi-kbl-r
kasan_250/fi-jsl-1
kasan_251/fi-bsw-kefka
kasan_252/fi-bsw-kefka

The changes in the patchset are not relevant on GLK.

>    [1]: None
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_10053_full and Patchwork_20077_full:
> 
> ### New Piglit tests (1) ###
> 
>   * spec@ext_transform_feedback@builtin-varyings gl_clipvertex:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20077_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-2x:
>     - shard-iclb:         NOTRUN -> [SKIP][2] ([i915#1839])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@feature_discovery@display-2x.html
> 
>   * igt@gem_ctx_persistence@clone:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +5 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-snb6/igt@gem_ctx_persistence@clone.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][4] ([i915#3354])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-snb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [PASS][13] -> [SKIP][14] ([fdo#109271])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][15] ([i915#2658])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +38 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl4/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#768])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][18] ([i915#3002])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl8/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen7_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109289])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@gen7_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1436] / [i915#716])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl8/igt@gen9_exec_parse@allowed-single.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-snb:          NOTRUN -> [SKIP][22] ([fdo#109271]) +367 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-snb2/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109288])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][24] ([i915#2782])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#1769])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271]) +108 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl6/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#110723])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111304])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl7/igt@kms_ccs@pipe-c-bad-pixel-format.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl8/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl5/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl6/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color@pipe-a-ctm-green-to-red:
>     - shard-skl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1982]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl7/igt@kms_color@pipe-a-ctm-green-to-red.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl10/igt@kms_color@pipe-a-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][37] ([i915#1319])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109300] / [fdo#111066])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [fdo#109279])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
>     - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#3444])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-atomic:
>     - shard-snb:          [PASS][43] -> [SKIP][44] ([fdo#109271]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          NOTRUN -> [FAIL][45] ([i915#2346] / [i915#533])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2346])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#79])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +4 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
>     - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#2122])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-iclb:         [PASS][55] -> [FAIL][56] ([i915#49])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +86 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-stridechange:
>     - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#49])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-glk7/igt@kms_frontbuffer_tracking@fbc-stridechange.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-glk7/igt@kms_frontbuffer_tracking@fbc-stridechange.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109280]) +9 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#1188])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109278]) +7 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
>     - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][68] -> [FAIL][69] ([fdo#108145] / [i915#265]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_properties@connector-properties-atomic:
>     - shard-glk:          [PASS][70] -> [DMESG-WARN][71] ([i915#118] / [i915#95]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-glk7/igt@kms_properties@connector-properties-atomic.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-glk7/igt@kms_properties@connector-properties-atomic.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658]) +2 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109441]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2437])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2437])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl7/igt@kms_writeback@writeback-pixel-formats.html
>     - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl4/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-a-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2530])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@nouveau_crc@pipe-a-ctx-flip-detection.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][81] -> [FAIL][82] ([i915#1542])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-glk7/igt@perf@polling-parameterized.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-glk4/igt@perf@polling-parameterized.html
>     - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#1542])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl4/igt@perf@polling-parameterized.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl1/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@i915_nv_double_import:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109291])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@prime_nv_api@i915_nv_double_import.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#3301])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@prime_vgem@basic-userptr.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109295])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sysfs_clients@create:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2994])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl9/igt@sysfs_clients@sema-10.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl1/igt@sysfs_clients@sema-25.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl6/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_shared@q-smoketest-all:
>     - shard-glk:          [DMESG-WARN][92] ([i915#118] / [i915#95]) -> [PASS][93] +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-glk9/igt@gem_ctx_shared@q-smoketest-all.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-glk5/igt@gem_ctx_shared@q-smoketest-all.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][94] ([i915#2842]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglb:         [FAIL][96] ([i915#2842]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_vm_create@destroy-race:
>     - shard-tglb:         [TIMEOUT][98] ([i915#2795]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-tglb5/igt@gem_vm_create@destroy-race.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-tglb5/igt@gem_vm_create@destroy-race.html
> 
>   * igt@i915_pm_dc@dc5-psr:
>     - shard-skl:          [INCOMPLETE][100] ([i915#198]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl2/igt@i915_pm_dc@dc5-psr.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl7/igt@i915_pm_dc@dc5-psr.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-skl:          [INCOMPLETE][102] ([i915#151]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl7/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl5/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][104] ([i915#180]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][106] ([i915#180]) -> [PASS][107] +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
>     - shard-iclb:         [FAIL][108] -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][110] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
>     - shard-skl:          [FAIL][112] ([i915#53]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][114] ([fdo#108145] / [i915#265]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-glk:          [FAIL][116] ([i915#899]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-glk7/igt@kms_plane_lowres@pipe-c-tiling-none.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-glk7/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [SKIP][118] ([fdo#109441]) -> [PASS][119] +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [FAIL][120] ([i915#1542]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl9/igt@perf@blocking.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl6/igt@perf@blocking.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [FAIL][122] ([i915#1722]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-skl8/igt@perf@polling-small-buf.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-skl6/igt@perf@polling-small-buf.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][124] ([i915#1804] / [i915#2684]) -> [WARN][125] ([i915#2684])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          [INCOMPLETE][126] ([i915#2405]) -> [DMESG-WARN][127] ([i915#180])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][128] ([i915#658]) -> [SKIP][129] ([i915#2920]) +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-iclb:         [SKIP][130] ([i915#2920]) -> [SKIP][131] ([i915#658]) +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#92]) -> ([FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#180] / [i915#1814] / [i915#2292] / [i915#3002] / [i915#3363])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl1/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl3/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl3/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl1/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-kbl6/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl7/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl1/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl3/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl3/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl1/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl2/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl1/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/shard-kbl7/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][149], [FAIL][150]) ([i915#3002] / [i915#3363])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-apl6/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-apl6/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/shard-apl1/igt@runner@
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
