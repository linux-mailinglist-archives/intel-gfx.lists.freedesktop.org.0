Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F8E4DDC33
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 15:52:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F0810E9F8;
	Fri, 18 Mar 2022 14:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378BB10E9F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 14:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647615151; x=1679151151;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cs89dm9pVYjx2j5sV7FwmrpMOSTxFJ1nhhdaKjO10og=;
 b=IPYNBVjSAXU3R5Nah2EduQLt3q315UN9fplLWNHlayN+0lnwvHfvO/BG
 KpjcML2G/SefEjUHFywnKQrDdkEQrR/uiNy7q7WbG3OfJPW9ZK+MRIibC
 cK26PYF5DqUi2ePq47YAbetzMH5CTpz5pcsmCN2JC7ku9tX6RUc1WN/VU
 SDRUW5L+Fkd0m5TEjsFuTWBtVTXY4nYbOzm4f2C1rwRj7GIYErhOX/0Xv
 TW54BnFrSTb7IfNfNa8BF/2EMEBbKvl0kv1FgFWoTSeFY5FIkqvtazU8+
 PTPmMUto9GML03HyCpIx7PanoM+A1SCVhajcEMZEjxo2uhxDZaKgOT8Ph w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244604660"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="244604660"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:52:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="784258089"
Received: from ankithac-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.159.242])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:52:29 -0700
Date: Fri, 18 Mar 2022 07:52:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220318145227.7wsaslck22r2lws4@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220316234538.434357-1-lucas.demarchi@intel.com>
 <164749045655.32162.2120119101163371291@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <164749045655.32162.2120119101163371291@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgIHNl?=
 =?utf-8?q?ries_starting_with_=5B1/2=5D_drm/i915=3A_Fix_renamed_struct_fie?=
 =?utf-8?q?ld?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 17, 2022 at 04:14:16AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: series starting with [1/2] drm/i915: Fix renamed struct field
>URL   : https://patchwork.freedesktop.org/series/101448/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_11372_full -> Patchwork_22590_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_22590_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_22590_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_22590_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_mmap_wc@write-wc-read-gtt:
>    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl9/igt@gem_mmap_wc@write-wc-read-gtt.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl6/igt@gem_mmap_wc@write-wc-read-gtt.html

nothing related to this series that only changes the behavior for media
engine on media_ver >= 11

Lucas De Marchi

>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_22590_full that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@gem_ctx_isolation@preservation-s3@vcs0:
>    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>
>  * igt@gem_exec_capture@pi@rcs0:
>    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#4547])
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl10/igt@gem_exec_capture@pi@rcs0.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
>
>  * igt@gem_exec_fair@basic-none@vcs0:
>    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +2 similar issues
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:
>    - shard-glk:          NOTRUN -> [FAIL][11] ([i915#2842]) +1 similar issue
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>
>  * igt@gem_exec_fair@basic-throttle@rcs0:
>    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
>
>  * igt@gem_exec_suspend@basic-s3@smem:
>    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +4 similar issues
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html
>
>  * igt@gem_lmem_swapping@basic:
>    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@gem_lmem_swapping@basic.html
>
>  * igt@gem_lmem_swapping@parallel-random-engines:
>    - shard-glk:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@gem_lmem_swapping@parallel-random-engines.html
>    - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@gem_lmem_swapping@parallel-random-engines.html
>
>  * igt@gem_pxp@reject-modify-context-protection-off-2:
>    - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#4270])
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@gem_pxp@reject-modify-context-protection-off-2.html
>
>  * igt@gen3_render_linear_blits:
>    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#109289])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglb7/igt@gen3_render_linear_blits.html
>
>  * igt@i915_pm_dc@dc6-psr:
>    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#454])
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@i915_pm_dc@dc6-psr.html
>
>  * igt@i915_pm_dc@dc9-dpms:
>    - shard-iclb:         [PASS][22] -> [SKIP][23] ([i915#4281])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>
>  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#5286])
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3777]) +3 similar issues
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    - shard-glk:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777])
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777]) +1 similar issue
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +1 similar issue
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>
>  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +2 similar issues
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +8 similar issues
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +1 similar issue
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>    - shard-glk:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +4 similar issues
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
>
>  * igt@kms_chamelium@dp-crc-multiple:
>    - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +3 similar issues
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_chamelium@dp-crc-multiple.html
>
>  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
>    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827])
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
>    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +4 similar issues
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl4/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
>
>  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +10 similar issues
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
>
>  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +5 similar issues
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
>
>  * igt@kms_content_protection@atomic:
>    - shard-kbl:          NOTRUN -> [TIMEOUT][38] ([i915#1319])
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@kms_content_protection@atomic.html
>
>  * igt@kms_content_protection@uevent:
>    - shard-kbl:          NOTRUN -> [FAIL][39] ([i915#2105])
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@kms_content_protection@uevent.html
>
>  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
>    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +58 similar issues
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2346])
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>
>  * igt@kms_cursor_legacy@pipe-d-single-bo:
>    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533]) +1 similar issue
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@kms_cursor_legacy@pipe-d-single-bo.html
>
>  * igt@kms_flip@flip-vs-suspend@c-dp1:
>    - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([i915#636])
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>    - shard-iclb:         [PASS][46] -> [SKIP][47] ([i915#3701])
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109280]) +1 similar issue
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +136 similar issues
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +70 similar issues
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
>    - shard-glk:          NOTRUN -> [SKIP][51] ([fdo#109271]) +41 similar issues
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html
>
>  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
>    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#1188])
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl2/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
>
>  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533]) +1 similar issue
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
>
>  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>    - shard-apl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265])
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
>
>  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>    - shard-skl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>
>  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>    - shard-kbl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265]) +1 similar issue
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>
>  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>    - shard-skl:          [PASS][58] -> [FAIL][59] ([fdo#108145] / [i915#265])
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>
>  * igt@kms_prime@basic-crc@first-to-second:
>    - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#1836])
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@kms_prime@basic-crc@first-to-second.html
>
>  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658])
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>
>  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658])
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>
>  * igt@kms_psr@psr2_primary_page_flip:
>    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441]) +3 similar issues
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
>
>  * igt@syncobj_timeline@transfer-timeline-point:
>    - shard-skl:          NOTRUN -> [DMESG-FAIL][66] ([i915#5098])
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl6/igt@syncobj_timeline@transfer-timeline-point.html
>
>  * igt@sysfs_clients@pidname:
>    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2994]) +1 similar issue
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl3/igt@sysfs_clients@pidname.html
>
>  * igt@sysfs_clients@split-25:
>    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2994]) +1 similar issue
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@sysfs_clients@split-25.html
>
>
>#### Possible fixes ####
>
>  * igt@gem_eio@in-flight-contexts-10ms:
>    - shard-tglb:         [TIMEOUT][69] ([i915#3063]) -> [PASS][70]
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html
>
>  * igt@gem_eio@unwedge-stress:
>    - shard-iclb:         [TIMEOUT][71] ([i915#2481] / [i915#3070]) -> [PASS][72]
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb8/igt@gem_eio@unwedge-stress.html
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb1/igt@gem_eio@unwedge-stress.html
>
>  * igt@gem_exec_fair@basic-none-share@rcs0:
>    - {shard-tglu}:       [FAIL][73] ([i915#2842]) -> [PASS][74]
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-glk:          [FAIL][75] ([i915#2842]) -> [PASS][76]
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-throttle@rcs0:
>    - shard-iclb:         [FAIL][77] ([i915#2849]) -> [PASS][78]
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
>
>  * igt@gem_workarounds@suspend-resume:
>    - shard-skl:          [INCOMPLETE][79] ([i915#4939] / [i915#5129]) -> [PASS][80]
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl6/igt@gem_workarounds@suspend-resume.html
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@gem_workarounds@suspend-resume.html
>
>  * igt@gen9_exec_parse@allowed-all:
>    - shard-glk:          [DMESG-WARN][81] ([i915#1436] / [i915#716]) -> [PASS][82]
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk8/igt@gen9_exec_parse@allowed-all.html
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk6/igt@gen9_exec_parse@allowed-all.html
>
>  * igt@i915_pm_dc@dc9-dpms:
>    - {shard-tglu}:       [SKIP][83] ([i915#4281]) -> [PASS][84]
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglu-4/igt@i915_pm_dc@dc9-dpms.html
>
>  * igt@i915_pm_rpm@system-suspend-modeset:
>    - shard-glk:          [DMESG-WARN][85] ([i915#118] / [i915#1888]) -> [PASS][86]
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk2/igt@i915_pm_rpm@system-suspend-modeset.html
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk8/igt@i915_pm_rpm@system-suspend-modeset.html
>
>  * igt@i915_suspend@forcewake:
>    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +3 similar issues
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@i915_suspend@forcewake.html
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@i915_suspend@forcewake.html
>
>  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>    - {shard-tglu}:       [DMESG-WARN][89] ([i915#402]) -> [PASS][90]
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglu-1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>
>  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
>    - shard-iclb:         [FAIL][91] ([i915#5072]) -> [PASS][92]
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>    - shard-skl:          [FAIL][93] ([i915#2346]) -> [PASS][94]
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>
>  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled:
>    - shard-skl:          [DMESG-WARN][95] ([i915#1982]) -> [PASS][96]
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html
>
>  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
>    - shard-glk:          [FAIL][97] ([i915#79]) -> [PASS][98]
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
>
>  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>    - shard-apl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +3 similar issues
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>
>  * igt@kms_flip@plain-flip-ts-check@a-edp1:
>    - shard-skl:          [FAIL][101] ([i915#2122]) -> [PASS][102]
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>    - shard-glk:          [FAIL][103] ([i915#4911]) -> [PASS][104] +2 similar issues
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>
>  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
>    - shard-iclb:         [FAIL][105] ([i915#1888]) -> [PASS][106]
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb7/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb8/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
>
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale:
>    - shard-iclb:         [SKIP][107] ([i915#5235]) -> [PASS][108] +2 similar issues
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
>
>  * igt@kms_psr@psr2_dpms:
>    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +1 similar issue
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb4/igt@kms_psr@psr2_dpms.html
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb2/igt@kms_psr@psr2_dpms.html
>
>  * igt@perf@polling-parameterized:
>    - shard-skl:          [FAIL][111] ([i915#1542]) -> [PASS][112]
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl2/igt@perf@polling-parameterized.html
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl9/igt@perf@polling-parameterized.html
>
>
>#### Warnings ####
>
>  * igt@gem_exec_balancer@parallel-contexts:
>    - shard-iclb:         [SKIP][113] ([i915#4525]) -> [DMESG-WARN][114] ([i915#5076]) +1 similar issue
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
>
>  * igt@gem_exec_balancer@parallel-ordering:
>    - shard-iclb:         [DMESG-FAIL][115] ([i915#5076]) -> [SKIP][116] ([i915#4525])
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
>
>  * igt@gem_exec_fair@basic-none-rrul@rcs0:
>    - shard-iclb:         [FAIL][117] ([i915#2842]) -> [FAIL][118] ([i915#2852])
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>
>  * igt@gem_pxp@protected-raw-src-copy-not-readible:
>    - shard-skl:          [SKIP][119] ([fdo#109271]) -> [SKIP][120] ([fdo#109271] / [i915#1888])
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@gem_pxp@protected-raw-src-copy-not-readible.html
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl2/igt@gem_pxp@protected-raw-src-copy-not-readible.html
>
>  * igt@i915_pm_rc6_residency@rc6-fence:
>    - shard-iclb:         [WARN][121] ([i915#2684]) -> [WARN][122] ([i915#1804] / [i915#2684])
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
>
>  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>    - shard-skl:          [SKIP][123] ([fdo#109271] / [i915#1888] / [i915#3886]) -> [SKIP][124] ([fdo#109271] / [i915#3886])
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-skl2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_psr2_su@page_flip-xrgb8888:
>    - shard-iclb:         [SKIP][125] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][126] ([i915#4148])
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb6/igt@kms_psr2_su@page_flip-xrgb8888.html
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>
>  * igt@runner@aborted:
>    - shard-kbl:          ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#602]) -> ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1436] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl4/igt@runner@aborted.html
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl6/igt@runner@aborted.html
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl4/igt@runner@aborted.html
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl3/igt@runner@aborted.html
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl6/igt@runner@aborted.html
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl3/igt@runner@aborted.html
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@runner@aborted.html
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@runner@aborted.html
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@runner@aborted.html
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl7/igt@runner@aborted.html
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl6/igt@runner@aborted.html
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl1/igt@runner@aborted.html
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/shard-kbl4/igt@runner@aborted.html
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/P
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22590/index.html
