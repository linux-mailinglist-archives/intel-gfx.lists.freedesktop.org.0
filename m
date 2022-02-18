Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 210724BADB5
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 01:05:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E125C10E83D;
	Fri, 18 Feb 2022 00:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A49910E83D
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 00:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645142715; x=1676678715;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yzIUKjKOMfBzBym3U4D3mL9KHvVXitv9e/hXTHEiQVU=;
 b=jEz+wqxcGEQBbE0B0RAPKRGBtl4hDN3ISTY5DQEQVA5/3BgRMXUQSskQ
 Fd7qnyDv+iI9rgRGI7uxj6+UQJ/fm7MMXts8//vyy1QCc4MK2LCGy4lDQ
 /oals3+OnSYz0QKNdk42cNmcYAMUqFrs+udS6rwc8rzUakSNTldrAd3Ho
 4jQB5f8j8B5vDlFkVyVxJsdJ7J7pzwvTmrXgoKFXQZVp6owRD2glfXevr
 Hi8cvSYqZcnj8KOlW5eMVadrOC8pMumejy04ulDmO5krJ6bTu3bLFzUbb
 s1VWJVQGHG4qFc/PePOAofpr/asB9Dwtprz8twLAUAa7cdIwqCM1DRlSU Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="230991507"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="230991507"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 16:05:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="503885144"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 16:05:13 -0800
Date: Thu, 17 Feb 2022 16:05:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yg7iuKEqRvURixSO@mdroper-desk1.amr.corp.intel.com>
References: <20220211052333.12306-1-clinton.a.taylor@intel.com>
 <164456266388.25615.14408558474030814093@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164456266388.25615.14408558474030814093@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/dg2=3A_add_Wa=5F14014947963_=28rev2=29?=
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

On Fri, Feb 11, 2022 at 06:57:43AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: add Wa_14014947963 (rev2)
> URL   : https://patchwork.freedesktop.org/series/99999/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11215_full -> Patchwork_22252_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22252_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22252_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_22252_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb5/igt@gem_ctx_persistence@many-contexts.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb7/igt@gem_ctx_persistence@many-contexts.html

<4> [101.282625] WARNING: CPU: 5 PID: 175 at drivers/gpu/drm/i915/gt/intel_execlists_submission.c:1908 process_csb+0x6d2/0x740 [i915]

which is GEM_WARN_ON(!*execlists->pending).  It looks like we used to
have https://gitlab.freedesktop.org/drm/intel/-/issues/3057 for that
warning.  I also see several other fdo bugs where the warning is
sporadically tripped by other tests.  So it doesn't appear to be caused
by this patch.

> 
>   * igt@kms_flip@flip-vs-suspend@b-vga1:
>     - shard-snb:          [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-snb4/igt@kms_flip@flip-vs-suspend@b-vga1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-snb6/igt@kms_flip@flip-vs-suspend@b-vga1.html

<4> [58.614078] unchecked MSR access error: RDMSR from 0x1b0 at rIP: 0xffffffff8103a69f (intel_epb_restore+0xf/0xa0)

This isn't coming from the graphics driver.  It's also seen on some of
our other suspend/resume tests.  E.g.,

https://gitlab.freedesktop.org/drm/intel/-/issues/5090

Not caused by this test.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_whisper@basic-contexts-priority-all:
>     - {shard-rkl}:        NOTRUN -> [FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-rkl-5/igt@gem_exec_whisper@basic-contexts-priority-all.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22252_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@chamelium:
>     - shard-iclb:         NOTRUN -> [SKIP][7] ([fdo#111827])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@feature_discovery@chamelium.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][10] ([i915#4547])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl4/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][11] ([i915#2846])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +2 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-kbl4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][14] ([i915#2842])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [PASS][17] -> [SKIP][18] ([fdo#109271])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_params@no-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109283])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@gem_exec_params@no-blt.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#118]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][22] -> [SKIP][23] ([i915#2190])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-tglb8/igt@gem_huc_copy@huc-copy.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4613])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl3/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl7/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglb:         NOTRUN -> [WARN][26] ([i915#2658])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb8/igt@gem_pread@exhaustion.html
>     - shard-iclb:         NOTRUN -> [WARN][27] ([i915#2658])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@gem_pread@exhaustion.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [PASS][28] -> [DMESG-WARN][29] ([i915#1436] / [i915#716])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-apl1/igt@gen9_exec_parse@allowed-all.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl2/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109303])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][31] ([i915#3743])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +10 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278] / [i915#3886])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb8/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +14 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl8/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl6/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@pipe-d-gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278] / [i915#1149])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_color@pipe-d-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278] / [fdo#109279])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#109274] / [fdo#111825])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274] / [fdo#109278])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-move:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +162 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl3/igt@kms_cursor_legacy@pipe-d-torture-move.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][51] -> [INCOMPLETE][52] ([i915#180])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +30 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>     - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#2122])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][58] ([i915#3701])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
>     - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2546])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-glk3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-glk9/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109280] / [fdo#111825]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +10 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +4 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#1188])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-skl7/igt@kms_hdr@bpc-switch.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl7/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#1187])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb8/igt@kms_hdr@static-toggle-suspend.html
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#1187])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#533]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][71] ([i915#265])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-y:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#3536])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_plane_lowres@pipe-c-tiling-y.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109441]) +3 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][77] -> [DMESG-WARN][78] ([i915#180] / [i915#295])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2530])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@nouveau_crc@pipe-a-source-outp-inactive.html
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#2530]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb8/igt@nouveau_crc@pipe-a-source-outp-inactive.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109289])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb8/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-kbl:          [PASS][83] -> [FAIL][84] ([i915#1542])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-kbl6/igt@perf@polling-parameterized.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl1/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@i915_nv_import_twice:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109291])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb2/igt@prime_nv_api@i915_nv_import_twice.html
> 
>   * igt@syncobj_timeline@signal-point-0:
>     - shard-skl:          [PASS][86] -> [INCOMPLETE][87] ([i915#2295])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-skl10/igt@syncobj_timeline@signal-point-0.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl2/igt@syncobj_timeline@signal-point-0.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][88] ([i915#5084])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl3/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl7/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl3/igt@sysfs_clients@fair-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +3 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [FAIL][93] ([i915#232]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-tglb3/igt@gem_eio@kms.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglb7/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [INCOMPLETE][95] ([i915#4547]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
>     - {shard-tglu}:       [INCOMPLETE][97] ([i915#3371]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-tglu-1/igt@gem_exec_capture@pi@rcs0.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglu-3/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - {shard-tglu}:       [FAIL][99] ([i915#2842]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][101] ([i915#2842]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][103] ([i915#644]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][105] ([i915#454]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][109] ([i915#118]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
>     - shard-glk:          [DMESG-FAIL][111] ([i915#118]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-glk:          [FAIL][113] ([i915#4911]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][115] ([i915#3701]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-iclb:         [FAIL][117] ([i915#1888] / [i915#2546]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][119] ([fdo#108145] / [i915#265]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-none:
>     - {shard-tglu}:       [FAIL][121] ([i915#3957]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-tglu-1/igt@kms_plane_lowres@pipe-a-tiling-none.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-tglu-3/igt@kms_plane_lowres@pipe-a-tiling-none.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][123] ([fdo#109441]) -> [PASS][124] +3 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [FAIL][125] ([i915#31]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-glk3/igt@kms_setmode@basic.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-glk7/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [SKIP][127] ([i915#4525]) -> [DMESG-WARN][128] ([i915#5076])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb6/igt@gem_exec_balancer@parallel.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb2/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][129] ([i915#2842]) -> [SKIP][130] ([fdo#109271])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][131] ([i915#1804] / [i915#2684]) -> [WARN][132] ([i915#2684])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][133] ([i915#2684]) -> [WARN][134] ([i915#1804] / [i915#2684])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_color@pipe-d-ctm-negative:
>     - shard-glk:          [SKIP][135] ([fdo#109271] / [i915#1888]) -> [SKIP][136] ([fdo#109271])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-glk3/igt@kms_color@pipe-d-ctm-negative.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-glk9/igt@kms_color@pipe-d-ctm-negative.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][137] ([fdo#111068] / [i915#658]) -> [SKIP][138] ([i915#2920]) +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11215/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22252/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
