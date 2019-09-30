Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7104C2676
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 22:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2DC6E456;
	Mon, 30 Sep 2019 20:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4BC089C1E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 20:22:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 13:22:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; 
 d="scan'208,217";a="342769706"
Received: from rmfosha-dev-1.fm.intel.com (HELO [10.19.83.123])
 ([10.19.83.123])
 by orsmga004.jf.intel.com with ESMTP; 30 Sep 2019 13:22:24 -0700
To: intel-gfx@lists.freedesktop.org
References: <20190927180426.23931-1-robert.m.fosha@intel.com>
 <20190928103623.25633.55799@emeril.freedesktop.org>
From: "Fosha, Robert M" <robert.m.fosha@intel.com>
Message-ID: <ead158fc-c20b-5de9-74d4-f40219bdebc5@intel.com>
Date: Mon, 30 Sep 2019 13:16:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190928103623.25633.55799@emeril.freedesktop.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_H2G_enable_logging_action_definition?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============0516487441=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0516487441==
Content-Type: multipart/alternative;
 boundary="------------0AF403E2DE2597B499B96C55"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0AF403E2DE2597B499B96C55
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 9/28/19 3:36 AM, Patchwork wrote:
> == Series Details ==
>
> Series: drm/i915/guc: Update H2G enable logging action definition
> URL   : https://patchwork.freedesktop.org/series/67351/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_6970_full -> Patchwork_14570_full
> ====================================================
>
> Summary
> -------
>
>    **FAILURE**
>
>    Serious unknown changes coming with Patchwork_14570_full absolutely need to be
>    verified manually.
>    
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_14570_full, please notify your bug team to allow them
>    to document this new failure mode, which will reduce false positives in CI.
>
>    
>
> Possible new issues
> -------------------
>
>    Here are the unknown changes that may have been introduced in Patchwork_14570_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>    * igt@i915_pm_rpm@system-suspend-execbuf:
>      - shard-iclb:         [PASS][1] -> [DMESG-WARN][2]
>     [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb8/igt@i915_pm_rpm@system-suspend-execbuf.html
>     [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@i915_pm_rpm@system-suspend-execbuf.html

Dmesg warnings are for thunderbolt and do not look to be related to this patch. It looks to be related to
fdo#111764. I think patch should be safe to merge.

>    
> New tests
> ---------
>
>    New tests have been introduced between CI_DRM_6970_full and Patchwork_14570_full:
>
> ### New Piglit tests (7) ###
>
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-2-float-2darray:
>      - Statuses : 1 incomplete(s)
>      - Exec time: [0.0] s
>
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-3-float-2darray:
>      - Statuses : 1 incomplete(s)
>      - Exec time: [0.0] s
>
>    * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-float-2darray:
>      - Statuses : 1 incomplete(s)
>      - Exec time: [0.0] s
>
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-0-float-2d:
>      - Statuses : 1 incomplete(s)
>      - Exec time: [0.0] s
>
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-float-2d:
>      - Statuses : 1 incomplete(s)
>      - Exec time: [0.0] s
>
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-2-float-2d:
>      - Statuses : 1 incomplete(s)
>      - Exec time: [0.0] s
>
>    * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-3-float-2d:
>      - Statuses : 1 incomplete(s)
>      - Exec time: [0.0] s
>
>    
>
> Known issues
> ------------
>
>    Here are the changes found in Patchwork_14570_full that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>    * igt@gem_exec_async@concurrent-writes-bsd:
>      - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#111325]) +3 similar issues
>     [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html
>     [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
>
>    * igt@gem_exec_schedule@preempt-queue-bsd1:
>      - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +17 similar issues
>     [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
>     [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html
>
>    * igt@i915_pm_rpm@cursor-dpms:
>      - shard-iclb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#107713] / [fdo#108840])
>     [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb7/igt@i915_pm_rpm@cursor-dpms.html
>     [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb7/igt@i915_pm_rpm@cursor-dpms.html
>
>    * igt@kms_busy@basic-modeset-a:
>      - shard-iclb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#107713])
>     [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb4/igt@kms_busy@basic-modeset-a.html
>     [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@kms_busy@basic-modeset-a.html
>
>    * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
>      - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103927]) +3 similar issues
>     [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
>     [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
>
>    * igt@kms_flip@flip-vs-suspend-interruptible:
>      - shard-hsw:          [PASS][13] -> [INCOMPLETE][14] ([fdo#103540])
>     [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html
>     [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html
>
>    * igt@kms_flip@plain-flip-fb-recreate-interruptible:
>      - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#100368])
>     [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>     [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>
>    * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>      - shard-iclb:         [PASS][17] -> [FAIL][18] ([fdo#103167]) +4 similar issues
>     [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
>     [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
>
>    * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>      - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [fdo#110403])
>     [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>     [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>
>    * igt@kms_psr@psr2_sprite_mmap_cpu:
>      - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
>     [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
>     [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html
>
>    * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>      - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([fdo#108566]) +2 similar issues
>     [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>     [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>
>    * igt@tools_test@tools_test:
>      - shard-apl:          [PASS][25] -> [SKIP][26] ([fdo#109271])
>     [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl5/igt@tools_test@tools_test.html
>     [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl8/igt@tools_test@tools_test.html
>
>    
> #### Possible fixes ####
>
>    * igt@gem_exec_schedule@preempt-other-chain-bsd:
>      - shard-iclb:         [SKIP][27] ([fdo#111325]) -> [PASS][28] +6 similar issues
>     [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>     [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>
>    * igt@gem_workarounds@suspend-resume-context:
>      - shard-apl:          [DMESG-WARN][29] ([fdo#108566]) -> [PASS][30] +4 similar issues
>     [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
>     [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
>
>    * igt@gem_workarounds@suspend-resume-fd:
>      - shard-skl:          [INCOMPLETE][31] ([fdo#104108]) -> [PASS][32]
>     [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html
>     [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-skl6/igt@gem_workarounds@suspend-resume-fd.html
>
>    * {igt@i915_pm_dc@dc6-dpms}:
>      - shard-iclb:         [FAIL][33] ([fdo#110548]) -> [PASS][34]
>     [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>     [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
>
>    * igt@kms_flip_tiling@flip-to-y-tiled:
>      - shard-iclb:         [FAIL][35] ([fdo#107931] / [fdo#108134]) -> [PASS][36]
>     [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb4/igt@kms_flip_tiling@flip-to-y-tiled.html
>     [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb5/igt@kms_flip_tiling@flip-to-y-tiled.html
>
>    * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
>      - shard-iclb:         [FAIL][37] ([fdo#103167]) -> [PASS][38] +2 similar issues
>     [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
>     [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
>
>    * igt@kms_plane_lowres@pipe-a-tiling-y:
>      - shard-iclb:         [FAIL][39] ([fdo#103166]) -> [PASS][40]
>     [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb8/igt@kms_plane_lowres@pipe-a-tiling-y.html
>     [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@kms_plane_lowres@pipe-a-tiling-y.html
>
>    * igt@kms_psr@psr2_cursor_render:
>      - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +3 similar issues
>     [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb1/igt@kms_psr@psr2_cursor_render.html
>     [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>
>    * igt@prime_vgem@fence-wait-bsd2:
>      - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +18 similar issues
>     [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
>     [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
>
>    
> #### Warnings ####
>
>    * igt@gem_mocs_settings@mocs-isolation-bsd2:
>      - shard-iclb:         [FAIL][45] ([fdo#111330]) -> [SKIP][46] ([fdo#109276])
>     [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb2/igt@gem_mocs_settings@mocs-isolation-bsd2.html
>     [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb3/igt@gem_mocs_settings@mocs-isolation-bsd2.html
>
>    * igt@kms_content_protection@atomic:
>      - shard-apl:          [FAIL][47] ([fdo#110321] / [fdo#110336]) -> [INCOMPLETE][48] ([fdo#103927])
>     [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl3/igt@kms_content_protection@atomic.html
>     [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl8/igt@kms_content_protection@atomic.html
>
>    
>    {name}: This element is suppressed. This means it is ignored when computing
>            the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>    [fdo#100368]: https://bugs.freedesktop.org/show_bug.cgi?id=100368
>    [fdo#103166]: https://bugs.freedesktop.org/show_bug.cgi?id=103166
>    [fdo#103167]: https://bugs.freedesktop.org/show_bug.cgi?id=103167
>    [fdo#103540]: https://bugs.freedesktop.org/show_bug.cgi?id=103540
>    [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>    [fdo#104108]: https://bugs.freedesktop.org/show_bug.cgi?id=104108
>    [fdo#107713]: https://bugs.freedesktop.org/show_bug.cgi?id=107713
>    [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
>    [fdo#108134]: https://bugs.freedesktop.org/show_bug.cgi?id=108134
>    [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>    [fdo#108566]: https://bugs.freedesktop.org/show_bug.cgi?id=108566
>    [fdo#108840]: https://bugs.freedesktop.org/show_bug.cgi?id=108840
>    [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>    [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>    [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>    [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
>    [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
>    [fdo#110403]: https://bugs.freedesktop.org/show_bug.cgi?id=110403
>    [fdo#110548]: https://bugs.freedesktop.org/show_bug.cgi?id=110548
>    [fdo#111325]: https://bugs.freedesktop.org/show_bug.cgi?id=111325
>    [fdo#111330]: https://bugs.freedesktop.org/show_bug.cgi?id=111330
>
>
> Participating hosts (16 -> 10)
> ------------------------------
>
>    Missing    (6): shard-tglb1 shard-tglb2 shard-tglb3 shard-tglb4 shard-tglb5 shard-tglb6
>
>
> Build changes
> -------------
>
>    * CI: CI-20190529 -> None
>    * Linux: CI_DRM_6970 -> Patchwork_14570
>
>    CI-20190529: 20190529
>    CI_DRM_6970: ee94847f064c84de51b33d8d843aa6bde51a8af6 @ git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_5206: 5a6c68568def840cd720f18fc66f529a89f84675 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>    Patchwork_14570: dd46ccd6797dfc6474e57ca0b4fc160fe7c66f7c @ git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/


--------------0AF403E2DE2597B499B96C55
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 9/28/19 3:36 AM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20190928103623.25633.55799@emeril.freedesktop.org">
      <pre class="moz-quote-pre" wrap="">== Series Details ==

Series: drm/i915/guc: Update H2G enable logging action definition
URL   : <a class="moz-txt-link-freetext" href="https://patchwork.freedesktop.org/series/67351/">https://patchwork.freedesktop.org/series/67351/</a>
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_6970_full -&gt; Patchwork_14570_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_14570_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_14570_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_14570_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-iclb:         [PASS][1] -&gt; [DMESG-WARN][2]
   [1]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb8/igt@i915_pm_rpm@system-suspend-execbuf.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb8/igt@i915_pm_rpm@system-suspend-execbuf.html</a>
   [2]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@i915_pm_rpm@system-suspend-execbuf.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@i915_pm_rpm@system-suspend-execbuf.html</a>
</pre>
    </blockquote>
    <pre>
Dmesg warnings are for thunderbolt and do not look to be related to this patch. It looks to be related to
fdo#111764. I think patch should be safe to merge.

</pre>
    <blockquote type="cite"
      cite="mid:20190928103623.25633.55799@emeril.freedesktop.org">
      <pre class="moz-quote-pre" wrap="">
  
New tests
---------

  New tests have been introduced between CI_DRM_6970_full and Patchwork_14570_full:

### New Piglit tests (7) ###

  * spec@arb_gpu_shader5@texturegather@vs-rgba-2-float-2darray:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-3-float-2darray:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-float-2darray:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-0-float-2d:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-float-2d:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-2-float-2d:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-3-float-2d:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_14570_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][3] -&gt; [SKIP][4] ([fdo#111325]) +3 similar issues
   [3]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html</a>
   [4]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html</a>

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][5] -&gt; [SKIP][6] ([fdo#109276]) +17 similar issues
   [5]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html</a>
   [6]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html</a>

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-iclb:         [PASS][7] -&gt; [INCOMPLETE][8] ([fdo#107713] / [fdo#108840])
   [7]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb7/igt@i915_pm_rpm@cursor-dpms.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb7/igt@i915_pm_rpm@cursor-dpms.html</a>
   [8]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb7/igt@i915_pm_rpm@cursor-dpms.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb7/igt@i915_pm_rpm@cursor-dpms.html</a>

  * igt@kms_busy@basic-modeset-a:
    - shard-iclb:         [PASS][9] -&gt; [INCOMPLETE][10] ([fdo#107713])
   [9]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb4/igt@kms_busy@basic-modeset-a.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb4/igt@kms_busy@basic-modeset-a.html</a>
   [10]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@kms_busy@basic-modeset-a.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@kms_busy@basic-modeset-a.html</a>

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-apl:          [PASS][11] -&gt; [INCOMPLETE][12] ([fdo#103927]) +3 similar issues
   [11]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html</a>
   [12]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html</a>

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][13] -&gt; [INCOMPLETE][14] ([fdo#103540])
   [13]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html</a>
   [14]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html</a>

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][15] -&gt; [FAIL][16] ([fdo#100368])
   [15]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html</a>
   [16]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html</a>

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         [PASS][17] -&gt; [FAIL][18] ([fdo#103167]) +4 similar issues
   [17]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html</a>
   [18]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html</a>

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][19] -&gt; [FAIL][20] ([fdo#108145] / [fdo#110403])
   [19]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html</a>
   [20]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html</a>

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][21] -&gt; [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html</a>
   [22]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html</a>

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][23] -&gt; [DMESG-WARN][24] ([fdo#108566]) +2 similar issues
   [23]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html</a>
   [24]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html</a>

  * igt@tools_test@tools_test:
    - shard-apl:          [PASS][25] -&gt; [SKIP][26] ([fdo#109271])
   [25]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl5/igt@tools_test@tools_test.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl5/igt@tools_test@tools_test.html</a>
   [26]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl8/igt@tools_test@tools_test.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl8/igt@tools_test@tools_test.html</a>

  
#### Possible fixes ####

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][27] ([fdo#111325]) -&gt; [PASS][28] +6 similar issues
   [27]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html</a>
   [28]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html</a>

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][29] ([fdo#108566]) -&gt; [PASS][30] +4 similar issues
   [29]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl7/igt@gem_workarounds@suspend-resume-context.html</a>
   [30]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl2/igt@gem_workarounds@suspend-resume-context.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl2/igt@gem_workarounds@suspend-resume-context.html</a>

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][31] ([fdo#104108]) -&gt; [PASS][32]
   [31]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html</a>
   [32]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-skl6/igt@gem_workarounds@suspend-resume-fd.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-skl6/igt@gem_workarounds@suspend-resume-fd.html</a>

  * {igt@i915_pm_dc@dc6-dpms}:
    - shard-iclb:         [FAIL][33] ([fdo#110548]) -&gt; [PASS][34]
   [33]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html</a>
   [34]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html</a>

  * igt@kms_flip_tiling@flip-to-y-tiled:
    - shard-iclb:         [FAIL][35] ([fdo#107931] / [fdo#108134]) -&gt; [PASS][36]
   [35]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb4/igt@kms_flip_tiling@flip-to-y-tiled.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb4/igt@kms_flip_tiling@flip-to-y-tiled.html</a>
   [36]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb5/igt@kms_flip_tiling@flip-to-y-tiled.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb5/igt@kms_flip_tiling@flip-to-y-tiled.html</a>

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-iclb:         [FAIL][37] ([fdo#103167]) -&gt; [PASS][38] +2 similar issues
   [37]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html</a>
   [38]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html</a>

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-iclb:         [FAIL][39] ([fdo#103166]) -&gt; [PASS][40]
   [39]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb8/igt@kms_plane_lowres@pipe-a-tiling-y.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb8/igt@kms_plane_lowres@pipe-a-tiling-y.html</a>
   [40]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@kms_plane_lowres@pipe-a-tiling-y.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@kms_plane_lowres@pipe-a-tiling-y.html</a>

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -&gt; [PASS][42] +3 similar issues
   [41]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb1/igt@kms_psr@psr2_cursor_render.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb1/igt@kms_psr@psr2_cursor_render.html</a>
   [42]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb2/igt@kms_psr@psr2_cursor_render.html</a>

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -&gt; [PASS][44] +18 similar issues
   [43]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html</a>
   [44]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html</a>

  
#### Warnings ####

  * igt@gem_mocs_settings@mocs-isolation-bsd2:
    - shard-iclb:         [FAIL][45] ([fdo#111330]) -&gt; [SKIP][46] ([fdo#109276])
   [45]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb2/igt@gem_mocs_settings@mocs-isolation-bsd2.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-iclb2/igt@gem_mocs_settings@mocs-isolation-bsd2.html</a>
   [46]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb3/igt@gem_mocs_settings@mocs-isolation-bsd2.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-iclb3/igt@gem_mocs_settings@mocs-isolation-bsd2.html</a>

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][47] ([fdo#110321] / [fdo#110336]) -&gt; [INCOMPLETE][48] ([fdo#103927])
   [47]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl3/igt@kms_content_protection@atomic.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6970/shard-apl3/igt@kms_content_protection@atomic.html</a>
   [48]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl8/igt@kms_content_protection@atomic.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/shard-apl8/igt@kms_content_protection@atomic.html</a>

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#100368]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=100368">https://bugs.freedesktop.org/show_bug.cgi?id=100368</a>
  [fdo#103166]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=103166">https://bugs.freedesktop.org/show_bug.cgi?id=103166</a>
  [fdo#103167]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=103167">https://bugs.freedesktop.org/show_bug.cgi?id=103167</a>
  [fdo#103540]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=103540">https://bugs.freedesktop.org/show_bug.cgi?id=103540</a>
  [fdo#103927]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=103927">https://bugs.freedesktop.org/show_bug.cgi?id=103927</a>
  [fdo#104108]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=104108">https://bugs.freedesktop.org/show_bug.cgi?id=104108</a>
  [fdo#107713]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=107713">https://bugs.freedesktop.org/show_bug.cgi?id=107713</a>
  [fdo#107931]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=107931">https://bugs.freedesktop.org/show_bug.cgi?id=107931</a>
  [fdo#108134]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=108134">https://bugs.freedesktop.org/show_bug.cgi?id=108134</a>
  [fdo#108145]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">https://bugs.freedesktop.org/show_bug.cgi?id=108145</a>
  [fdo#108566]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=108566">https://bugs.freedesktop.org/show_bug.cgi?id=108566</a>
  [fdo#108840]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=108840">https://bugs.freedesktop.org/show_bug.cgi?id=108840</a>
  [fdo#109271]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">https://bugs.freedesktop.org/show_bug.cgi?id=109271</a>
  [fdo#109276]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=109276">https://bugs.freedesktop.org/show_bug.cgi?id=109276</a>
  [fdo#109441]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">https://bugs.freedesktop.org/show_bug.cgi?id=109441</a>
  [fdo#110321]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=110321">https://bugs.freedesktop.org/show_bug.cgi?id=110321</a>
  [fdo#110336]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=110336">https://bugs.freedesktop.org/show_bug.cgi?id=110336</a>
  [fdo#110403]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=110403">https://bugs.freedesktop.org/show_bug.cgi?id=110403</a>
  [fdo#110548]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=110548">https://bugs.freedesktop.org/show_bug.cgi?id=110548</a>
  [fdo#111325]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=111325">https://bugs.freedesktop.org/show_bug.cgi?id=111325</a>
  [fdo#111330]: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=111330">https://bugs.freedesktop.org/show_bug.cgi?id=111330</a>


Participating hosts (16 -&gt; 10)
------------------------------

  Missing    (6): shard-tglb1 shard-tglb2 shard-tglb3 shard-tglb4 shard-tglb5 shard-tglb6 


Build changes
-------------

  * CI: CI-20190529 -&gt; None
  * Linux: CI_DRM_6970 -&gt; Patchwork_14570

  CI-20190529: 20190529
  CI_DRM_6970: ee94847f064c84de51b33d8d843aa6bde51a8af6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5206: 5a6c68568def840cd720f18fc66f529a89f84675 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_14570: dd46ccd6797dfc6474e57ca0b4fc160fe7c66f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14570/</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------0AF403E2DE2597B499B96C55--

--===============0516487441==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0516487441==--
