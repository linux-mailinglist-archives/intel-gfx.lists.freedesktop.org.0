Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 582C330A287
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 08:12:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4313C6E41A;
	Mon,  1 Feb 2021 07:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1410E6E41A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 07:12:38 +0000 (UTC)
IronPort-SDR: wpZbdaNnFZ77e+XsHu+k8O9Gs3TapCO0Itqxmt61WAmsrnsKZ+rySuTEM1TpQrXEy40q/piFw8
 /iKQRfQSzOmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="199534657"
X-IronPort-AV: E=Sophos;i="5.79,391,1602572400"; d="scan'208";a="199534657"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2021 23:12:37 -0800
IronPort-SDR: ElNUvfmlaTy6gK3K8/Eky1WROAcOd6aHhepEB46T3sxat/tgcRRJEwlTYtblEutdHRrszMOoPx
 VH7Ez2iaEmSA==
X-IronPort-AV: E=Sophos;i="5.79,391,1602572400"; d="scan'208";a="506728921"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2021 23:12:35 -0800
Date: Mon, 1 Feb 2021 12:27:08 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210201065707.GA31943@intel.com>
References: <20210128074209.16986-1-anshuman.gupta@intel.com>
 <161193110319.15522.16854855285370583309@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161193110319.15522.16854855285370583309@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZGlz?=
 =?utf-8?q?able_the_QSES_check_for_HDCP2=2E2_over_MST_=28rev2=29?=
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

On 2021-01-29 at 14:38:23 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: disable the QSES check for HDCP2.2 over MST (rev2)
> URL   : https://patchwork.freedesktop.org/series/86375/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9697_full -> Patchwork_19536_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19536_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19536_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19536_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_flush@basic-wb-ro-default:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl6/igt@gem_exec_flush@basic-wb-ro-default.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl1/igt@gem_exec_flush@basic-wb-ro-default.html
Above are Gem failures not related to HDCP, this patch has already tested successfully with CI with below patchwork link
https://patchwork.freedesktop.org/series/86325/
This patch is floated as stand-alone patch in order to merge it separately.
Pushed to drm-intel-next.
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@gem_ctx_persistence@many-contexts}:
>     - shard-tglb:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * {igt@sysfs_clients@busy@vecs0}:
>     - shard-kbl:          [PASS][5] -> [FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-kbl7/igt@sysfs_clients@busy@vecs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-kbl7/igt@sysfs_clients@busy@vecs0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19536_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#658])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb2/igt@feature_discovery@psr2.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb1/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#198])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-apl:          [PASS][13] -> [SKIP][14] ([fdo#109271])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842]) +3 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][17] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#2389])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html
> 
>   * igt@gem_exec_schedule@u-fairslice@vcs0:
>     - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1610] / [i915#2803])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl3/igt@gem_exec_schedule@u-fairslice@vcs0.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-snb:          [PASS][21] -> [SKIP][22] ([fdo#109271])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-snb2/igt@gem_mmap_wc@set-cache-level.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-snb5/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#151])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl9/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180:
>     - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111304])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl7/igt@kms_ccs@pipe-c-crc-primary-rotation-180.html
> 
>   * igt@kms_chamelium@dp-audio-edid:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl7/igt@kms_chamelium@dp-audio-edid.html
> 
>   * igt@kms_color@pipe-a-legacy-gamma:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#71])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@kms_color@pipe-a-legacy-gamma.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl4/igt@kms_color@pipe-a-legacy-gamma.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
>     - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54]) +4 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
>     - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#177] / [i915#52] / [i915#54])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#79]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#2598])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#79]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][39] ([i915#2122]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +71 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#49])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145] / [i915#265])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][45] ([i915#265])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#658])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-skl:          NOTRUN -> [WARN][49] ([i915#2100])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl7/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#1542])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@perf@blocking.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl6/igt@perf@blocking.html
> 
>   * igt@sysfs_preempt_timeout@timeout@rcs0:
>     - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#2821])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@sysfs_preempt_timeout@timeout@rcs0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl8/igt@sysfs_preempt_timeout@timeout@rcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][54] ([i915#2846]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-glk3/igt@gem_exec_fair@basic-deadline.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-glk2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][56] ([i915#2842]) -> [PASS][57] +2 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [FAIL][58] ([i915#2842]) -> [PASS][59]
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-many-active@rcs0:
>     - shard-apl:          [FAIL][60] ([i915#2389]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-apl4/igt@gem_exec_reloc@basic-many-active@rcs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-apl7/igt@gem_exec_reloc@basic-many-active@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-skl:          [DMESG-WARN][62] ([i915#1610] / [i915#2803]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl5/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][64] ([i915#1436] / [i915#716]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@gen9_exec_parse@allowed-single.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][66] ([i915#454]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][68] ([i915#2684]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
>     - shard-skl:          [FAIL][70] ([i915#54]) -> [PASS][71] +9 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][72] ([i915#2122]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
>     - shard-apl:          [FAIL][74] ([i915#79]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][76] ([fdo#108145] / [i915#265]) -> [PASS][77] +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [FAIL][80] ([i915#1542]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb2/igt@perf@polling-parameterized.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb1/igt@perf@polling-parameterized.html
> 
>   * {igt@sysfs_clients@split-10@bcs0}:
>     - shard-apl:          [SKIP][82] ([fdo#109271]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-apl4/igt@sysfs_clients@split-10@bcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-apl7/igt@sysfs_clients@split-10@bcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][84] ([i915#2842]) -> [FAIL][85] ([i915#2852])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][86] ([i915#658]) -> [SKIP][87] ([i915#588])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][88] ([i915#2681] / [i915#2684]) -> [WARN][89] ([i915#2684])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-skl:          [SKIP][90] ([fdo#109271] / [i915#533]) -> [SKIP][91] ([fdo#109271])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][92] ([i915#658]) -> [SKIP][93] ([i915#2920]) +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][94] ([i915#2920]) -> [SKIP][95] ([i915#658]) +3 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][96], [FAIL][97], [FAIL][98]) ([i915#2295]) -> ([FAIL][99], [FAIL][100], [FAIL][101]) ([i915#2295] / [i915#2505])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-kbl2/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-kbl4/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-kbl7/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-kbl7/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-kbl4/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-kbl6/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106]) ([i915#1436] / [i915#2295] / [i915#2426]) -> ([FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110]) ([i915#2295] / [i915#2426])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl7/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl9/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl4/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl5/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9697/shard-skl1/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl3/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl3/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl8/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/shard-skl7/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#2100]: https://gitlab.freedesktop.org/drm/intel/issues/2100
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
>   [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
>   [i915#2821]: https://gitlab.freedesktop.org/drm/intel/issues/2821
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
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
>   * Linux: CI_DRM_9697 -> Patchwork_19536
> 
>   CI-20190529: 20190529
>   CI_DRM_9697: f4f5294bd767b553ae354d78607c530049351b0b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5978: e1e5b3fea2baafdae0160940ecb8bf0242703840 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19536: 603c4c91a321e4333e408ea1bef5224c99838441 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19536/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
