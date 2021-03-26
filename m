Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E37E34B222
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 23:27:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902DD6F4F5;
	Fri, 26 Mar 2021 22:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58316F4EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 22:27:46 +0000 (UTC)
IronPort-SDR: 76Lu9bzu7cb7ojqjJA+e8ovUPDWOSoaf0rwMoqWPaacNrVfmGBCV4Rrp5JcGL2xnKO+/1SP/8G
 mZj6IH2iGnbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="255224086"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="255224086"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 15:27:45 -0700
IronPort-SDR: JklCCGGhFZ8MgR+kgkN+Ta8pwdrspcBlw+QnMOT18muEokjDcqKd8hlPtf31+9BV38IXgvJMqV
 3YrrfEoNhg1A==
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="453675900"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 15:27:44 -0700
Date: Sat, 27 Mar 2021 00:27:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210326222740.GA2654@ideak-desk.fi.intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
 <161674446645.10682.4683010586316683753@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161674446645.10682.4683010586316683753@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_FBs_requiring_a_POT_stride_padding_=28?=
 =?utf-8?q?rev2=29?=
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

+Chris for the gem_userptr_blits error:

On Fri, Mar 26, 2021 at 07:41:06AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add support for FBs requiring a POT stride padding (rev2)
> URL   : https://patchwork.freedesktop.org/series/87859/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9898_full -> Patchwork_19860_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19860_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19860_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19860_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_userptr_blits@set-cache-level:
>     - shard-skl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl3/igt@gem_userptr_blits@set-cache-level.html

The above tries to set I915_CACHE_NONE, which is incorrect according the
kernel, so should the test be fixed?

>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-snb:          NOTRUN -> [FAIL][2] +14 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-snb7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
>     - shard-snb:          [PASS][3] -> [FAIL][4] +29 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-glk:          NOTRUN -> [FAIL][5] +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
>     - shard-apl:          NOTRUN -> [FAIL][6] +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
>     - shard-kbl:          [PASS][7] -> [FAIL][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
>     - shard-apl:          [PASS][9] -> [FAIL][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-apl6/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl3/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
>     - shard-glk:          [PASS][11] -> [FAIL][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-glk7/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk2/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
>     - shard-iclb:         [PASS][13] -> [FAIL][14] +4 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-iclb2/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-iclb2/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
>     - shard-skl:          [PASS][15] -> [FAIL][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl8/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl7/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
>     - shard-tglb:         [PASS][17] -> [FAIL][18] +8 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-snb:          [SKIP][19] ([fdo#109271]) -> [FAIL][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-snb7/igt@kms_fbcon_fbt@fbc.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-snb2/igt@kms_fbcon_fbt@fbc.html

All the above fail b/c the kernel won't install a fence for
!I915_GGTT_VIEW_NORMAL vmas and this patchset forces the remapping on
whenever possible. This will need some solution on ADL_P in any case,
since there all (or most) tiled surfaces will need to be remapped. But
for now we can ignore these, as a pre-existing issue for remapped
surfaces.

>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25]) ([i915#2029] / [i915#2263] / [i915#3002]) -> ([FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31]) ([i915#1814] / [i915#2029] / [i915#3002])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl9/igt@runner@aborted.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl3/igt@runner@aborted.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl4/igt@runner@aborted.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl2/igt@runner@aborted.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl3/igt@runner@aborted.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl2/igt@runner@aborted.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl1/igt@runner@aborted.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl8/igt@runner@aborted.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl3/igt@runner@aborted.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl3/igt@runner@aborted.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl3/igt@runner@aborted.html

All the above should be fixed by:
https://patchwork.freedesktop.org/patch/426295/?series=88503&rev=1

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19860_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-snb2/igt@gem_ctx_persistence@engines-mixed.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#2410])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][35] -> [TIMEOUT][36] ([i915#2369] / [i915#3063])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-tglb2/igt@gem_eio@unwedge-stress.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [PASS][37] -> [FAIL][38] ([i915#2846])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
>     - shard-apl:          NOTRUN -> [FAIL][39] ([i915#2846])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_parallel@contexts@vecs0:
>     - shard-skl:          [PASS][40] -> [INCOMPLETE][41] ([i915#2369] / [i915#2624])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl8/igt@gem_exec_parallel@contexts@vecs0.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl3/igt@gem_exec_parallel@contexts@vecs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#307])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [PASS][44] -> [FAIL][45] ([i915#2428])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][46] ([i915#2658])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-snb7/igt@gem_pwrite@basic-exhaustion.html
>     - shard-apl:          NOTRUN -> [WARN][47] ([i915#2658])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][48] ([i915#3002])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl4/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][49] ([i915#2782])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_async_flips@test-time-stamp:
>     - shard-tglb:         [PASS][50] -> [FAIL][51] ([i915#2574])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-tglb3/igt@kms_async_flips@test-time-stamp.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-tglb7/igt@kms_async_flips@test-time-stamp.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-glk:          NOTRUN -> [SKIP][52] ([fdo#109271]) +30 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk7/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo:
>     - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271]) +322 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-snb5/igt@kms_ccs@pipe-a-ccs-on-another-bo.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111304])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +19 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl6/igt@kms_chamelium@dp-crc-multiple.html
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl10/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
>     - shard-snb:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +19 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-snb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>     - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][60] ([i915#1319]) +2 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          NOTRUN -> [TIMEOUT][61] ([i915#1319])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl6/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          NOTRUN -> [FAIL][62] ([i915#2346])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-kbl:          NOTRUN -> [DMESG-FAIL][63] ([IGT#6])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][64] ([i915#180])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#2122])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-kbl:          NOTRUN -> [FAIL][67] ([i915#2641])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2672])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2672])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>     - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2672])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
>     - shard-apl:          NOTRUN -> [FAIL][71] ([i915#2641])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-apl:          NOTRUN -> [FAIL][72] ([i915#49]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
>     - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#49]) +32 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
>     - shard-kbl:          [PASS][75] -> [FAIL][76] ([i915#2546] / [i915#49]) +11 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-kbl:          NOTRUN -> [FAIL][77] ([i915#2546] / [i915#49])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
>     - shard-apl:          [PASS][78] -> [FAIL][79] ([i915#49]) +3 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
>     - shard-kbl:          [PASS][80] -> [FAIL][81] ([i915#2546])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
>     - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +70 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-iclb:         [PASS][83] -> [FAIL][84] ([i915#49]) +44 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-skl:          NOTRUN -> [FAIL][85] ([i915#49])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-tglb:         [PASS][86] -> [FAIL][87] ([i915#2416]) +44 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#49]) +13 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#533])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-glk:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#533])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
>     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#533]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][93] -> [DMESG-WARN][94] ([i915#180]) +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
>     - shard-skl:          NOTRUN -> [FAIL][95] ([i915#1036])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl6/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-pipe-c-planes:
>     - shard-kbl:          [PASS][96] -> [FAIL][97] ([i915#1036]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html
>     - shard-apl:          [PASS][98] -> [FAIL][99] ([i915#1036]) +2 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-apl7/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl8/igt@kms_plane@plane-panning-bottom-right-pipe-c-planes.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-tglb:         [PASS][100] -> [FAIL][101] ([i915#2411] / [i915#533])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>     - shard-glk:          [PASS][102] -> [FAIL][103] ([i915#1036] / [i915#533])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-glk5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>     - shard-apl:          [PASS][104] -> [FAIL][105] ([i915#1036] / [i915#533])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>     - shard-kbl:          [PASS][106] -> [FAIL][107] ([i915#1036] / [i915#533])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>     - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#1036] / [i915#533])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-iclb:         [PASS][110] -> [FAIL][111] ([i915#1036]) +5 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>     - shard-apl:          NOTRUN -> [FAIL][112] ([i915#1036])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>     - shard-glk:          [PASS][113] -> [FAIL][114] ([i915#1036]) +4 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>     - shard-tglb:         [PASS][115] -> [FAIL][116] ([i915#2411]) +2 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-tglb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-skl:          [PASS][117] -> [FAIL][118] ([i915#1036]) +2 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>     - shard-kbl:          NOTRUN -> [FAIL][119] ([i915#1036]) +1 similar issue
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][120] ([fdo#108145] / [i915#265])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][121] ([i915#265])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>     - shard-kbl:          NOTRUN -> [FAIL][122] ([i915#265])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>     - shard-skl:          NOTRUN -> [FAIL][123] ([i915#265])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][124] ([fdo#108145] / [i915#265]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-glk:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#658])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-kbl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#658]) +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658]) +2 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
>     - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658]) +5 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [PASS][129] -> [SKIP][130] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-iclb2/igt@kms_psr2_su@page_flip.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-iclb5/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][131] -> [SKIP][132] ([fdo#109441])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][133] ([i915#31])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-snb7/igt@kms_setmode@basic.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][134] ([IGT#2])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl3/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-hang:
>     - shard-apl:          NOTRUN -> [SKIP][135] ([fdo#109271]) +173 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-apl2/igt@kms_vblank@pipe-d-wait-forked-hang.html
> 
>   * igt@perf@gen12-mi-rpc:
>     - shard-skl:          NOTRUN -> [SKIP][136] ([fdo#109271]) +80 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-skl1/igt@perf@gen12-mi-rpc.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-kbl:          [SKIP][137] ([fdo#109271]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-kbl6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl4/igt@gem_exec_fair@basic-flow@rcs0.html
>     - shard-tglb:         [FAIL][139] ([i915#2842]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          [FAIL][141] ([i915#2842]) -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [FAIL][143] ([i915#2842]) -> [PASS][144] +1 similar issue
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/shard-kbl4/igt@gem_exec
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
