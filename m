Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CF34B6254
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 06:15:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F74410E152;
	Tue, 15 Feb 2022 05:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0854B10E152
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 05:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644902138; x=1676438138;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=puqsXWMuL44N1RNAyL2KNYanVSM4e7MROMrYeLET8xQ=;
 b=jjn5FuDvuIiSuPCNHwRP0EXQZqpvA0AHOPFbulA4Q7bReVabCCYE/cga
 LgBiDrOP70j7h2JXnbVub3TjceDxsWqZtiTwMjV3PdD9Q4Bfurtozho8N
 1Niwd5AuGB3y8gvdPNxuzwwsp8oxoRC94dJPRZAIoS4PyZjYwrLsYwJML
 PSCDRQvheSW4OpTicniJ6+kvSGoQf7VFJOMBglAvplac5lZ5N3dNIwliW
 R78gmMGrQSajl7AhYYGCsrf9labfrhhWOysKPSomsM0xMCculWsRZWH0S
 Ih5P7r/qHt3MfxlJWbYocmyRDH1UbBrmIR1vBDEY6Jnltk7uWRH1ZwI1s Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="336679316"
X-IronPort-AV: E=Sophos;i="5.88,369,1635231600"; d="scan'208";a="336679316"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 21:15:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,369,1635231600"; d="scan'208";a="544098589"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 21:15:37 -0800
Date: Mon, 14 Feb 2022 21:15:35 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Ygs29z2jenQMR5yG@mdroper-desk1.amr.corp.intel.com>
References: <20220210050501.87795-1-chuansheng.liu@intel.com>
 <164447703263.24640.16759524386239145418@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164447703263.24640.16759524386239145418@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/dg1=3A_Update_DMC=5FDEBUG3_register?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 10, 2022 at 07:10:32AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg1: Update DMC_DEBUG3 register
> URL   : https://patchwork.freedesktop.org/series/99942/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11207_full -> Patchwork_22233_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22233_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22233_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 12)
> ------------------------------
> 
>   Additional (1): shard-rkl 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22233_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb2/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb7/igt@i915_pm_rpm@system-suspend-execbuf.html

Seems like a crash in the filesystem code, unrelated to the graphics
driver.  Might be related to
https://gitlab.freedesktop.org/drm/intel/-/issues/5096 which is also a
crash in the filesystem code (although with a different signature).

> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-iclb:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

Appears to be https://gitlab.freedesktop.org/drm/intel/-/issues/2370


> 
>   * igt@kms_flip@flip-vs-fences-interruptible@a-vga1:
>     - shard-snb:          [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-snb5/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-snb4/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.html

Appears to be https://gitlab.freedesktop.org/drm/intel/-/issues/5000


None of these failures are caused by this series.  Merging v2 (which is
just a commit message tweak) to drm-intel-next.  CI for v2 failed
because a KBL system failed to boot, but that's not caused by this
series.  Thanks for the patch.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - {shard-rkl}:        NOTRUN -> [DMESG-WARN][7]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-rkl-2/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22233_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         NOTRUN -> [SKIP][8] ([i915#658])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb8/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         NOTRUN -> [SKIP][9] ([i915#4525]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [PASS][10] -> [INCOMPLETE][11] ([i915#4547])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-skl2/igt@gem_exec_capture@pi@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl2/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#2842]) +2 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][16] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_schedule@submit-early-slice@vcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][19] ([i915#3797])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl10/igt@gem_exec_schedule@submit-early-slice@vcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#118]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl7/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl3/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#4613]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#4613])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglb:         NOTRUN -> [WARN][26] ([i915#2658])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb5/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-iclb:         NOTRUN -> [WARN][27] ([i915#2658])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#4270]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb8/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#768])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb8/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#3297])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][31] ([i915#3318])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109289]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb3/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1436] / [i915#716])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-apl4/igt@gen9_exec_parse@allowed-all.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl8/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([i915#2856])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][36] -> [FAIL][37] ([i915#454])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#1769])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#110725] / [fdo#111614]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][41] ([i915#3743])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111615])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3777])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#110723]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [i915#3886]) +3 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3886])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb5/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl8/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl3/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_color@pipe-d-ctm-0-75:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278] / [i915#1149])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb8/igt@kms_color@pipe-d-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109284] / [fdo#111827]) +5 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109300] / [fdo#111066])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-random:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278]) +25 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-32x32-random.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278] / [fdo#109279]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
>     - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +54 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109274] / [fdo#109278]) +3 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
>     - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#109274] / [fdo#111825])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#2346])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#3528])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb3/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109274]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +31 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
>     - shard-glk:          [PASS][69] -> [FAIL][70] ([i915#2546])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-glk9/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-glk3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +56 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][72] ([fdo#109280] / [fdo#111825]) +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109280]) +16 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#1188])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#1187]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#1187])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb5/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#533])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-apl:          [PASS][79] -> [DMESG-WARN][80] ([i915#180]) +3 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#533])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][82] ([fdo#108145] / [i915#265])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
>     - shard-apl:          NOTRUN -> [FAIL][83] ([fdo#108145] / [i915#265])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][84] ([fdo#108145] / [i915#265])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109441]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         [PASS][88] -> [SKIP][89] ([fdo#109441]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb3/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][90] -> [FAIL][91] ([i915#31])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-glk5/igt@kms_setmode@basic.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-glk3/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][92] -> [DMESG-WARN][93] ([i915#180] / [i915#295])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>     - shard-apl:          [PASS][94] -> [DMESG-WARN][95] ([i915#180] / [i915#295])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109502]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb8/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2437])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#2530]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb5/igt@nouveau_crc@pipe-a-source-outp-inactive.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-tglb:         NOTRUN -> [SKIP][99] ([fdo#109289])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@prime_nv_api@i915_nv_import_twice:
>     - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109291])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-tglb1/igt@prime_nv_api@i915_nv_import_twice.html
> 
>   * igt@prime_nv_pcopy@test3_4:
>     - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109291]) +3 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@prime_nv_pcopy@test3_4.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][102] ([i915#5084])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#2994])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_preempt_timeout@timeout@rcs0:
>     - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#3259])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-skl6/igt@sysfs_preempt_timeout@timeout@rcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl1/igt@sysfs_preempt_timeout@timeout@rcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][106] ([i915#4525]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - shard-iclb:         [INCOMPLETE][108] ([i915#3371]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb1/igt@gem_exec_capture@pi@vcs0.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb8/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][110] ([i915#2842]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][112] ([i915#2842]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_parallel@contexts@rcs0:
>     - shard-iclb:         [INCOMPLETE][114] ([i915#1895]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb8/igt@gem_exec_parallel@contexts@rcs0.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb5/igt@gem_exec_parallel@contexts@rcs0.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-apl:          [FAIL][116] ([i915#644]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [DMESG-WARN][118] ([i915#180]) -> [PASS][119] +2 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-kbl6/igt@i915_suspend@forcewake.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-kbl4/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [INCOMPLETE][120] ([i915#180]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [FAIL][122] ([i915#2122]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][124] ([i915#3701]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
>     - shard-skl:          [DMESG-WARN][126] ([i915#1982]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [FAIL][128] ([i915#1188]) -> [PASS][129] +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_scaling@plane-scaling@pipe-a-plane-scaling:
>     - shard-glk:          [DMESG-WARN][130] ([i915#118] / [i915#1888]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-glk1/igt@kms_plane_scaling@plane-scaling@pipe-a-plane-scaling.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-glk2/igt@kms_plane_scaling@plane-scaling@pipe-a-plane-scaling.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][132] ([fdo#109441]) -> [PASS][133] +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][134] ([i915#180]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22233/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
