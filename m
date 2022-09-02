Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3C05AB211
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 15:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7EC10E855;
	Fri,  2 Sep 2022 13:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8E210E854
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 13:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662126611; x=1693662611;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=YQf+xPuryGg29NtUOTM2EON0yi3+lVSKBDgVG28fEGA=;
 b=USBe8Qv9jP1kJouU56oeauCGA7Hf8a+5Kkiu4V5LzfwT2xrznddLrT5V
 o+WElHlV6IEQL51/ju5Zu9KybFklXjeXcI1ky0zVrlgh0HsGbKHI8tMAB
 6kVjQThZUNDldnBriFD4BZlCLRPLyntZDC6e0s9kw+/MnfFsyq87vdRPC
 4quslm5nLrEc9OpnpvRRjrK32nz2Cjn4xAuo7+WLks/eqvWbejAHd1s9E
 /tiNhhkCidHPRS7M5McU38QRckI3TUOOUeyJeH1/BbxubTleFHZNksLXz
 5oM6AozAiDkezFfIDMYMtr5DVnoe7cUU6266r8Xc2WFs79szpR1NwFiNo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="276384845"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="276384845"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 06:50:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674360606"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 06:50:10 -0700
Date: Fri, 2 Sep 2022 16:50:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Lyude Paul <lyude@redhat.com>
Message-ID: <YxIKDiEdLGtqPyg2@ideak-desk.fi.intel.com>
References: <20220901161933.1004778-1-imre.deak@intel.com>
 <166212020356.22602.5603537935735472401@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <166212020356.22602.5603537935735472401@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=5Fmst=3A_Fix_mst=5Fmgr_lookup_during_atomic_check?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 02, 2022 at 12:03:23PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Fix mst_mgr lookup during atomic check
> URL   : https://patchwork.freedesktop.org/series/108040/
> State : success

Thanks for the review, pushed to drm-misc-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12061_full -> Patchwork_108040v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (13 -> 12)
> ------------------------------
> 
>   Missing    (1): shard-rkl 
> 
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_12061_full and Patchwork_108040v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@gem_media_fill@media-fill@lmem0:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.01] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108040v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-skl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20]) -> ([PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [FAIL][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44]) ([i915#5032])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl10/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl4/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl5/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl7/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl9/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl9/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-skl9/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl10/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl9/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl9/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl9/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl9/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl7/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl7/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl7/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl6/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl6/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl6/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl6/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl5/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl5/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl4/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl3/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl3/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl10/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl10/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-skl10/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#5784])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb7/igt@gem_eio@kms.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-tglb3/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [PASS][47] -> [SKIP][48] ([i915#4525])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb2/igt@gem_exec_balancer@parallel.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb6/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#2842]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
>     - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271]) +75 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-snb6/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-apl3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#3323])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +81 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-apl3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-apl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-apl7/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-snb:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-snb6/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>     - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#6375])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#2672]) +13 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#2672] / [i915#3555])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][63] -> [SKIP][64] ([i915#5235]) +2 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441]) +3 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_vblank@pipe-a-wait-forked-busy-hang:
>     - shard-snb:          [PASS][67] -> [SKIP][68] ([fdo#109271])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-snb5/igt@kms_vblank@pipe-a-wait-forked-busy-hang.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-snb6/igt@kms_vblank@pipe-a-wait-forked-busy-hang.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-apl7/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][70] ([i915#6268]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>     - {shard-dg1}:        [FAIL][72] ([i915#4883]) -> [PASS][73] +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-dg1-16/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-dg1-15/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][74] ([i915#2842]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][76] ([i915#2842]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][78] ([i915#2190]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-tglb1/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_userptr_blits@sync-unmap-cycles:
>     - shard-snb:          [INCOMPLETE][80] ([i915#3297]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-snb6/igt@gem_userptr_blits@sync-unmap-cycles.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - {shard-dg1}:        [SKIP][82] ([i915#1397]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-dg1-16/igt@i915_pm_rpm@dpms-non-lpsp.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-dg1-15/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:
>     - shard-glk:          [FAIL][84] ([i915#2521]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87] +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [SKIP][88] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb1/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         [SKIP][90] ([fdo#109441]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb7/igt@kms_psr@psr2_primary_render.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb2/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@perf_pmu@busy-double-start@vcs0:
>     - {shard-dg1}:        [FAIL][92] ([i915#4349]) -> [PASS][93] +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-dg1-15/igt@perf_pmu@busy-double-start@vcs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-dg1-17/igt@perf_pmu@busy-double-start@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][94] ([i915#658]) -> [SKIP][95] ([i915#2920])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][96] ([i915#2920]) -> [SKIP][97] ([fdo#111068] / [i915#658])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][98] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][99] ([i915#5939])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/shard-iclb1/igt@kms_psr2_su@page_flip-nv12.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12061 -> Patchwork_108040v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12061: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108040v1: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108040v1/index.html
