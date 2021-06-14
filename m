Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F00FA3A7107
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 23:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512E26E176;
	Mon, 14 Jun 2021 21:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4BB6E176
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Jun 2021 21:11:23 +0000 (UTC)
IronPort-SDR: xFuqB43LJg7wq00irY7gfRg3YyHnHGJ/7AaugfGrw0SADVZuPkg1jzwfCy1jUQScJWV5TGfKvR
 UqCCb8UY2/VQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="192995477"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="192995477"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 14:11:22 -0700
IronPort-SDR: cf06FqS87lQCIBRzMIJHRHeRcquGmrb9yQQL0PtVAZUORuN/XlukOv3E4eRnxCWDOUzL9DGVk8
 oNHwEHivLy1Q==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="404007344"
Received: from dmorgan1-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.36.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 14:11:21 -0700
Date: Mon, 14 Jun 2021 14:11:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210614211120.sdmk75566fjr2zru@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210612053531.1870920-1-lucas.demarchi@intel.com>
 <162348333596.27965.4725601892839171229@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162348333596.27965.4725601892839171229@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/xelpd=3A_break_feature_inheritance?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Lakshmi

On Sat, Jun 12, 2021 at 07:35:35AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915/xelpd: break feature inheritance
>URL   : https://patchwork.freedesktop.org/series/91422/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_10214_full -> Patchwork_20352_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_20352_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_20352_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_20352_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>    - shard-kbl:          NOTRUN -> [INCOMPLETE][1]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>
>  * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
>    - shard-glk:          [PASS][2] -> [INCOMPLETE][3]
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-glk4/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

I'm seeing this test failing on some series. Looking at https://intel-gfx-ci.01.org/tree/drm-tip/index.html?testfilter=kms_flip@2x-flip-vs-suspend
it seems to see something pre-existent that cibuglog doesn't know about
yet.

it's definitely not related with this series since it's only ADL-P that
uses XE_LPD_FEATURES

Lucas De Marchi


>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_20352_full that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@api_intel_bb@blit-noreloc-purge-cache-random:
>    - shard-snb:          NOTRUN -> [SKIP][4] ([fdo#109271]) +245 similar issues
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-snb7/igt@api_intel_bb@blit-noreloc-purge-cache-random.html
>
>  * igt@gem_create@create-massive:
>    - shard-snb:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-snb7/igt@gem_create@create-massive.html
>
>  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>    - shard-skl:          NOTRUN -> [SKIP][6] ([fdo#109271]) +113 similar issues
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl4/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>
>  * igt@gem_ctx_persistence@legacy-engines-mixed:
>    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +4 similar issues
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html
>
>  * igt@gem_exec_fair@basic-none-rrul@rcs0:
>    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-glk1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>
>  * igt@gem_exec_fair@basic-none@vcs0:
>    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842])
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
>
>  * igt@gem_exec_gttfill@engines@rcs0:
>    - shard-glk:          [PASS][12] -> [DMESG-WARN][13] ([i915#118] / [i915#95])
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-glk8/igt@gem_exec_gttfill@engines@rcs0.html
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-glk3/igt@gem_exec_gttfill@engines@rcs0.html
>
>  * igt@gem_pread@exhaustion:
>    - shard-kbl:          NOTRUN -> [WARN][14] ([i915#2658])
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl6/igt@gem_pread@exhaustion.html
>
>  * igt@gem_pwrite@basic-exhaustion:
>    - shard-apl:          NOTRUN -> [WARN][15] ([i915#2658])
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl1/igt@gem_pwrite@basic-exhaustion.html
>
>  * igt@gem_userptr_blits@vma-merge:
>    - shard-snb:          NOTRUN -> [FAIL][16] ([i915#2724])
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-snb7/igt@gem_userptr_blits@vma-merge.html
>
>  * igt@i915_pm_dc@dc6-psr:
>    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#454])
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl5/igt@i915_pm_dc@dc6-psr.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl2/igt@i915_pm_dc@dc6-psr.html
>
>  * igt@i915_suspend@forcewake:
>    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#636])
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl4/igt@i915_suspend@forcewake.html
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl1/igt@i915_suspend@forcewake.html
>
>  * igt@kms_async_flips@alternate-sync-async-flip:
>    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2521])
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html
>
>  * igt@kms_chamelium@dp-crc-multiple:
>    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +13 similar issues
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl3/igt@kms_chamelium@dp-crc-multiple.html
>
>  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +14 similar issues
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
>
>  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
>    - shard-snb:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +13 similar issues
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html
>
>  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +1 similar issue
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
>
>  * igt@kms_content_protection@atomic-dpms:
>    - shard-apl:          NOTRUN -> [TIMEOUT][27] ([i915#1319]) +1 similar issue
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl1/igt@kms_content_protection@atomic-dpms.html
>
>  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#3451])
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>
>  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
>    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#3451])
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
>
>  * igt@kms_fbcon_fbt@fbc-suspend:
>    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([i915#155] / [i915#180] / [i915#636])
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>
>  * igt@kms_flip@flip-vs-suspend@a-dp1:
>    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +1 similar issue
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#2672])
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#2672])
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
>
>  * igt@kms_hdr@bpc-switch-suspend:
>    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +4 similar issues
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
>
>  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#533]) +1 similar issue
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
>
>  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#533])
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
>
>  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>    - shard-skl:          NOTRUN -> [FAIL][42] ([fdo#108145] / [i915#265]) +2 similar issues
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
>
>  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145] / [i915#265]) +2 similar issues
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>
>  * igt@kms_psr2_sf@cursor-plane-update-sf:
>    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#658])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl6/igt@kms_psr2_sf@cursor-plane-update-sf.html
>
>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#658]) +2 similar issues
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
>
>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#658]) +3 similar issues
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
>
>  * igt@kms_psr@psr2_dpms:
>    - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#109441]) +1 similar issue
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-iclb2/igt@kms_psr@psr2_dpms.html
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-iclb6/igt@kms_psr@psr2_dpms.html
>
>  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
>    - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +39 similar issues
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html
>
>  * igt@kms_vblank@pipe-d-wait-forked-hang:
>    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +136 similar issues
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl1/igt@kms_vblank@pipe-d-wait-forked-hang.html
>
>  * igt@kms_writeback@writeback-pixel-formats:
>    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2437])
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl1/igt@kms_writeback@writeback-pixel-formats.html
>
>  * igt@sysfs_clients@create:
>    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2994])
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl6/igt@sysfs_clients@create.html
>
>  * igt@sysfs_clients@fair-7:
>    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2994]) +1 similar issue
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl1/igt@sysfs_clients@fair-7.html
>
>  * igt@sysfs_clients@recycle-many:
>    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2994]) +1 similar issue
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl3/igt@sysfs_clients@recycle-many.html
>
>  * igt@sysfs_heartbeat_interval@mixed@rcs0:
>    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#1731]) +1 similar issue
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>
>
>#### Possible fixes ####
>
>  * igt@gem_ctx_isolation@preservation-s3@bcs0:
>    - shard-apl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +1 similar issue
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-apl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>
>  * igt@gem_eio@unwedge-stress:
>    - shard-tglb:         [TIMEOUT][60] ([i915#2369] / [i915#3063]) -> [PASS][61]
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-tglb3/igt@gem_eio@unwedge-stress.html
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-tglb2/igt@gem_eio@unwedge-stress.html
>
>  * igt@gem_exec_fair@basic-none-share@rcs0:
>    - shard-iclb:         [FAIL][62] ([i915#2842]) -> [PASS][63]
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-none@vcs1:
>    - shard-kbl:          [FAIL][64] ([i915#2842]) -> [PASS][65]
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-tglb:         [FAIL][66] ([i915#2842]) -> [PASS][67]
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    - shard-glk:          [FAIL][68] ([i915#2842]) -> [PASS][69] +1 similar issue
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_exec_whisper@basic-fds-forked:
>    - shard-glk:          [DMESG-WARN][70] ([i915#118] / [i915#95]) -> [PASS][71]
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-glk6/igt@gem_exec_whisper@basic-fds-forked.html
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-glk7/igt@gem_exec_whisper@basic-fds-forked.html
>
>  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>    - shard-iclb:         [FAIL][72] ([i915#307]) -> [PASS][73]
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>
>  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>    - shard-glk:          [FAIL][74] ([i915#307]) -> [PASS][75]
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-glk7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-glk1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
>
>  * igt@kms_color@pipe-c-ctm-negative:
>    - shard-skl:          [DMESG-WARN][76] ([i915#1982]) -> [PASS][77]
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl3/igt@kms_color@pipe-c-ctm-negative.html
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl8/igt@kms_color@pipe-c-ctm-negative.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
>    - shard-glk:          [FAIL][78] ([i915#3444]) -> [PASS][79]
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-glk5/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-glk3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
>
>  * igt@kms_flip@flip-vs-suspend@c-dp1:
>    - shard-kbl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81] +4 similar issues
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
>
>  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>    - shard-skl:          [FAIL][82] ([i915#2122]) -> [PASS][83]
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>    - shard-glk:          [FAIL][84] ([i915#49]) -> [PASS][85]
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>
>  * igt@kms_psr@psr2_cursor_plane_move:
>    - shard-iclb:         [SKIP][86] ([fdo#109441]) -> [PASS][87] +2 similar issues
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>
>  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>    - shard-kbl:          [INCOMPLETE][88] ([i915#155]) -> [PASS][89]
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>
>  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>    - shard-skl:          [INCOMPLETE][90] ([i915#198] / [i915#2828]) -> [PASS][91]
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>
>
>#### Warnings ####
>
>  * igt@i915_pm_dc@dc3co-vpb-simulation:
>    - shard-iclb:         [SKIP][92] ([i915#588]) -> [SKIP][93] ([i915#658])
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
>
>  * igt@i915_pm_rc6_residency@rc6-fence:
>    - shard-iclb:         [WARN][94] ([i915#1804] / [i915#2684]) -> [WARN][95] ([i915#2684])
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
>
>  * igt@i915_pm_rc6_residency@rc6-idle:
>    - shard-iclb:         [WARN][96] ([i915#2684]) -> [WARN][97] ([i915#1804] / [i915#2684])
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
>
>  * igt@i915_selftest@live@execlists:
>    - shard-tglb:         [DMESG-FAIL][98] ([i915#3462]) -> [INCOMPLETE][99] ([i915#3462])
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-tglb6/igt@i915_selftest@live@execlists.html
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-tglb8/igt@i915_selftest@live@execlists.html
>
>  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>    - shard-iclb:         [SKIP][100] ([i915#2920]) -> [SKIP][101] ([i915#658])
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>
>  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>    - shard-iclb:         [SKIP][102] ([i915#658]) -> [SKIP][103] ([i915#2920]) +1 similar issue
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>
>  * igt@runner@aborted:
>    - shard-kbl:          ([FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92])
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl4/igt@runner@aborted.html
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl4/igt@runner@aborted.html
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl3/igt@runner@aborted.html
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl1/igt@runner@aborted.html
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl7/igt@runner@aborted.html
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl4/igt@runner@aborted.html
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl3/igt@runner@aborted.html
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-kbl4/igt@runner@aborted.html
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl7/igt@runner@aborted.html
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl2/igt@runner@aborted.html
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl4/igt@runner@aborted.html
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl4/igt@runner@aborted.html
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl7/igt@runner@aborted.html
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl2/igt@runner@aborted.html
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl7/igt@runner@aborted.html
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl1/igt@runner@aborted.html
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-kbl2/igt@runner@aborted.html
>    - shard-tglb:         ([FAIL][121], [FAIL][122], [FAIL][123]) ([i915#1436] / [i915#2426] / [i915#2966] / [i915#3002]) -> ([FAIL][124], [FAIL][125], [FAIL][126]) ([i915#1436] / [i915#2966] / [i915#3002])
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-tglb7/igt@runner@aborted.html
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-tglb6/igt@runner@aborted.html
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-tglb6/igt@runner@aborted.html
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-tglb3/igt@runner@aborted.html
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-tglb6/igt@runner@aborted.html
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-tglb8/igt@runner@aborted.html
>    - shard-skl:          ([FAIL][127], [FAIL][128]) ([i915#3002] / [i915#3363]) -> ([FAIL][129], [FAIL][130], [FAIL][131]) ([i915#1436] / [i915#2426] / [i915#3002] / [i915#3363])
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl4/igt@runner@aborted.html
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/shard-skl6/igt@runner@aborted.html
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl2/igt@runner@aborted.html
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl9/igt@runner@aborted.html
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/shard-skl3/igt@runner@aborted.html
>
>
>  {name}: This element is suppressed. This means it is ignored when computing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
>  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
>  [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
>  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
>  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>  [i915#307]: https://gitlab.freedesktop.org/drm/intel/issues/307
>  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
>  [i915#3444]: https://gitlab.freedesktop.org/drm/intel/issues/3444
>  [i915#3451]: https://gitlab.freedesktop.org/drm/intel/issues/3451
>  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
>  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
>  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_10214 -> Patchwork_20352
>
>  CI-20190529: 20190529
>  CI_DRM_10214: 2bba812cf661cf2ffa2874a30d4a2c8fcb3937cc @ git://anongit.freedesktop.org/gfx-ci/linux
>  IGT_6104: f8f81bd3752f3126a47d9dbba2d0ab29f7c17a19 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>  Patchwork_20352: 1d29f900b190af8631473b80ba724478045d44a9 @ git://anongit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
