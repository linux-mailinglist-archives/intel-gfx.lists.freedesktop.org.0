Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA50389E6F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 08:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0056EEB4;
	Thu, 20 May 2021 06:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17DA06EEB3
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 06:57:30 +0000 (UTC)
IronPort-SDR: D76/koNHORVAciVmPLEBaKyvzsNp6hs8F8M00gt80c71aL00WOxRBbCH23jyTF/I3vb4aSUoPF
 sgF6OXp4Huxw==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="180763876"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="180763876"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:57:29 -0700
IronPort-SDR: nua6zQ2S66QrrfT92vmbfhQUPnVfLYAWwzWSaVZrQvREJh5uQ2NRy0JL36wO8IavCeC6aFazw0
 bRffglz8z3Ww==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="475064319"
Received: from ffong-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.32.126])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:57:29 -0700
Date: Wed, 19 May 2021 23:57:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210520065755.cw5pt6r3rvg5var2@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210519000625.3184321-1-lucas.demarchi@intel.com>
 <162149197711.11680.4449456165284667765@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162149197711.11680.4449456165284667765@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQURM?=
 =?utf-8?q?-P=3A_more_reviewed_patches?=
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

On Thu, May 20, 2021 at 06:26:17AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: ADL-P: more reviewed patches
>URL   : https://patchwork.freedesktop.org/series/90305/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_10100_full -> Patchwork_20151_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_20151_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_20151_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_20151_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@api_intel_bb@render@render-none-1024:
>    - shard-glk:          [PASS][1] -> [WARN][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk8/igt@api_intel_bb@render@render-none-1024.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk7/igt@api_intel_bb@render@render-none-1024.html

like this: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10097/shard-glk8/igt@api_intel_bb@render@render-none-1024.html
or this: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10096/shard-glk2/igt@api_intel_bb@render@render-none-1024.html

>
>  * igt@api_intel_bb@render@render-y-reloc-1024:
>    - shard-glk:          [PASS][3] -> [FAIL][4] +2 similar issues
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk8/igt@api_intel_bb@render@render-y-reloc-1024.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk7/igt@api_intel_bb@render@render-y-reloc-1024.html
>

ditto, failing in recent runs too.

Lucas De Marchi

>  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>    - shard-snb:          NOTRUN -> [INCOMPLETE][5]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>
>
>#### Warnings ####
>
>  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>    - shard-glk:          [INCOMPLETE][6] ([i915#3468]) -> [INCOMPLETE][7] +1 similar issue
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk3/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>
>
>#### Suppressed ####
>
>  The following results come from untrusted machines, tests, or statuses.
>  They do not affect the overall result.
>
>  * {igt@kms_plane@plane-position-covered@pipe-b-planes}:
>    - shard-glk:          [FAIL][8] ([i915#3457]) -> [FAIL][9]
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk4/igt@kms_plane@plane-position-covered@pipe-b-planes.html
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk4/igt@kms_plane@plane-position-covered@pipe-b-planes.html
>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_20151_full that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@api_intel_allocator@execbuf-with-allocator:
>    - shard-iclb:         NOTRUN -> [DMESG-WARN][10] ([i915#3457]) +1 similar issue
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@api_intel_allocator@execbuf-with-allocator.html
>
>  * igt@api_intel_bb@blit-noreloc-purge-cache-random:
>    - shard-tglb:         NOTRUN -> [DMESG-WARN][11] ([i915#3457]) +1 similar issue
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@api_intel_bb@blit-noreloc-purge-cache-random.html
>
>  * igt@api_intel_bb@offset-control:
>    - shard-snb:          NOTRUN -> [DMESG-WARN][12] ([i915#3457]) +1 similar issue
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb5/igt@api_intel_bb@offset-control.html
>
>  * igt@gem_create@create-massive:
>    - shard-snb:          NOTRUN -> [DMESG-WARN][13] ([i915#3002])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb5/igt@gem_create@create-massive.html
>
>  * igt@gem_ctx_persistence@legacy-engines-persistence:
>    - shard-snb:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#1099]) +2 similar issues
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html
>
>  * igt@gem_ctx_persistence@many-contexts:
>    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2410] / [i915#3457])
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
>
>  * igt@gem_ctx_ringsize@idle@bcs0:
>    - shard-skl:          NOTRUN -> [INCOMPLETE][17] ([i915#3316] / [i915#3457])
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@gem_ctx_ringsize@idle@bcs0.html
>
>  * igt@gem_ctx_shared@q-in-order:
>    - shard-snb:          NOTRUN -> [SKIP][18] ([fdo#109271]) +125 similar issues
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb7/igt@gem_ctx_shared@q-in-order.html
>
>  * igt@gem_eio@unwedge-stress:
>    - shard-tglb:         [PASS][19] -> [TIMEOUT][20] ([i915#2369] / [i915#3063] / [i915#3457])
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb3/igt@gem_eio@unwedge-stress.html
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    - shard-snb:          NOTRUN -> [FAIL][21] ([i915#3354] / [i915#3457])
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb7/igt@gem_eio@unwedge-stress.html
>
>  * igt@gem_exec_fair@basic-deadline:
>    - shard-skl:          NOTRUN -> [FAIL][22] ([i915#2846] / [i915#3457])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@gem_exec_fair@basic-deadline.html
>
>  * igt@gem_exec_fair@basic-pace@vcs1:
>    - shard-iclb:         NOTRUN -> [FAIL][23] ([i915#2842] / [i915#3457]) +1 similar issue
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
>
>  * igt@gem_exec_fence@parallel@vcs0:
>    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#3457]) +24 similar issues
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk3/igt@gem_exec_fence@parallel@vcs0.html
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk6/igt@gem_exec_fence@parallel@vcs0.html
>
>  * igt@gem_exec_fence@syncobj-repeat:
>    - shard-apl:          [PASS][26] -> [FAIL][27] ([i915#3457]) +1 similar issue
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@gem_exec_fence@syncobj-repeat.html
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@gem_exec_fence@syncobj-repeat.html
>
>  * igt@gem_exec_gttfill@basic:
>    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#3457] / [i915#3491])
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk1/igt@gem_exec_gttfill@basic.html
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk1/igt@gem_exec_gttfill@basic.html
>
>  * igt@gem_exec_params@no-blt:
>    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109283])
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@gem_exec_params@no-blt.html
>    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109283])
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@gem_exec_params@no-blt.html
>
>  * igt@gem_exec_reloc@basic-wide-active@bcs0:
>    - shard-skl:          NOTRUN -> [FAIL][32] ([i915#2389] / [i915#3457]) +3 similar issues
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html
>
>  * igt@gem_exec_whisper@basic-queues-priority:
>    - shard-glk:          [PASS][33] -> [DMESG-WARN][34] ([i915#118] / [i915#95])
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk8/igt@gem_exec_whisper@basic-queues-priority.html
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.html
>
>  * igt@gem_huc_copy@huc-copy:
>    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#2190])
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@gem_huc_copy@huc-copy.html
>
>  * igt@gem_mmap_gtt@big-copy:
>    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#307])
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk5/igt@gem_mmap_gtt@big-copy.html
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk1/igt@gem_mmap_gtt@big-copy.html
>
>  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>    - shard-snb:          NOTRUN -> [INCOMPLETE][38] ([i915#3468]) +1 similar issue
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>
>  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>    - shard-skl:          NOTRUN -> [INCOMPLETE][39] ([i915#2910] / [i915#3468])
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>
>  * igt@gem_mmap_gtt@fault-concurrent-x:
>    - shard-kbl:          NOTRUN -> [INCOMPLETE][40] ([i915#3468])
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl4/igt@gem_mmap_gtt@fault-concurrent-x.html
>
>  * igt@gem_mmap_gtt@fault-concurrent-y:
>    - shard-skl:          NOTRUN -> [INCOMPLETE][41] ([i915#3468]) +7 similar issues
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@gem_mmap_gtt@fault-concurrent-y.html
>
>  * igt@gem_pwrite@basic-exhaustion:
>    - shard-skl:          NOTRUN -> [WARN][42] ([i915#2658])
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@gem_pwrite@basic-exhaustion.html
>
>  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
>    - shard-skl:          NOTRUN -> [INCOMPLETE][43] ([i915#198] / [i915#3468]) +1 similar issue
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@gem_render_copy@yf-tiled-ccs-to-linear.html
>    - shard-apl:          NOTRUN -> [INCOMPLETE][44] ([i915#3468]) +2 similar issues
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl6/igt@gem_render_copy@yf-tiled-ccs-to-linear.html
>
>  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
>    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#768]) +2 similar issues
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb3/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
>
>  * igt@gem_spin_batch@legacy@default:
>    - shard-apl:          NOTRUN -> [FAIL][46] ([i915#2898] / [i915#3457]) +3 similar issues
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@gem_spin_batch@legacy@default.html
>
>  * igt@gem_userptr_blits@input-checking:
>    - shard-skl:          NOTRUN -> [DMESG-WARN][47] ([i915#3002])
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@gem_userptr_blits@input-checking.html
>    - shard-apl:          NOTRUN -> [DMESG-WARN][48] ([i915#3002])
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@gem_userptr_blits@input-checking.html
>
>  * igt@gem_userptr_blits@unsync-unmap:
>    - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#3297])
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@gem_userptr_blits@unsync-unmap.html
>    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3297])
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@gem_userptr_blits@unsync-unmap.html
>
>  * igt@gem_userptr_blits@vma-merge:
>    - shard-skl:          NOTRUN -> [FAIL][51] ([i915#3318] / [i915#3457])
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@gem_userptr_blits@vma-merge.html
>
>  * igt@gen3_mixed_blits:
>    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109289]) +1 similar issue
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb3/igt@gen3_mixed_blits.html
>
>  * igt@gen7_exec_parse@basic-rejected:
>    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109289])
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@gen7_exec_parse@basic-rejected.html
>
>  * igt@gen9_exec_parse@bb-large:
>    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#3296])
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@gen9_exec_parse@bb-large.html
>
>  * igt@gen9_exec_parse@bb-start-far:
>    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#112306])
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@gen9_exec_parse@bb-start-far.html
>    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#112306])
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@gen9_exec_parse@bb-start-far.html
>
>  * igt@i915_hangman@engine-hang@bcs0:
>    - shard-apl:          NOTRUN -> [DMESG-FAIL][57] ([i915#3457])
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@i915_hangman@engine-hang@bcs0.html
>
>  * igt@i915_hangman@error-state-capture@rcs0:
>    - shard-skl:          NOTRUN -> [DMESG-WARN][58] ([i915#3457]) +15 similar issues
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@i915_hangman@error-state-capture@rcs0.html
>
>  * igt@i915_pm_dc@dc6-psr:
>    - shard-skl:          NOTRUN -> [FAIL][59] ([i915#454])
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@i915_pm_dc@dc6-psr.html
>
>  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#1937])
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
>    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#1937])
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
>
>  * igt@i915_pm_rpm@cursor:
>    - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#3457])
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl2/igt@i915_pm_rpm@cursor.html
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl2/igt@i915_pm_rpm@cursor.html
>    - shard-glk:          [PASS][64] -> [DMESG-WARN][65] ([i915#3457])
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk8/igt@i915_pm_rpm@cursor.html
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk2/igt@i915_pm_rpm@cursor.html
>
>  * igt@i915_pm_rpm@cursor-dpms:
>    - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#3457])
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@i915_pm_rpm@cursor-dpms.html
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@i915_pm_rpm@cursor-dpms.html
>
>  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>    - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#111644] / [i915#1397] / [i915#2411])
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#110892])
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>
>  * igt@i915_pm_rpm@gem-mmap-type@uc:
>    - shard-iclb:         [PASS][70] -> [DMESG-WARN][71] ([i915#3475])
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-iclb8/igt@i915_pm_rpm@gem-mmap-type@uc.html
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb6/igt@i915_pm_rpm@gem-mmap-type@uc.html
>
>  * igt@i915_pm_rpm@gem-mmap-type@wc:
>    - shard-iclb:         [PASS][72] -> [DMESG-WARN][73] ([i915#3457])
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-iclb8/igt@i915_pm_rpm@gem-mmap-type@wc.html
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb6/igt@i915_pm_rpm@gem-mmap-type@wc.html
>
>  * igt@i915_pm_sseu@full-enable:
>    - shard-kbl:          NOTRUN -> [DMESG-WARN][74] ([i915#3457]) +3 similar issues
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl7/igt@i915_pm_sseu@full-enable.html
>    - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109288])
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@i915_pm_sseu@full-enable.html
>    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109288])
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@i915_pm_sseu@full-enable.html
>
>  * igt@i915_selftest@live@execlists:
>    - shard-skl:          NOTRUN -> [INCOMPLETE][77] ([i915#2782] / [i915#3462])
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@i915_selftest@live@execlists.html
>    - shard-apl:          NOTRUN -> [DMESG-FAIL][78] ([i915#3462])
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@i915_selftest@live@execlists.html
>
>  * igt@i915_selftest@live@gt_pm:
>    - shard-skl:          NOTRUN -> [DMESG-FAIL][79] ([i915#1886] / [i915#2291])
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@i915_selftest@live@gt_pm.html
>
>  * igt@i915_selftest@live@mman:
>    - shard-apl:          NOTRUN -> [DMESG-WARN][80] ([i915#3457]) +6 similar issues
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@i915_selftest@live@mman.html
>
>  * igt@i915_suspend@sysfs-reader:
>    - shard-kbl:          [PASS][81] -> [DMESG-WARN][82] ([i915#180]) +1 similar issue
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl2/igt@i915_suspend@sysfs-reader.html
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl2/igt@i915_suspend@sysfs-reader.html
>
>  * igt@kms_big_fb@linear-32bpp-rotate-90:
>    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#110725] / [fdo#111614]) +1 similar issue
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-90.html
>
>  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#111614])
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>
>  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#110723])
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
>
>  * igt@kms_big_joiner@basic:
>    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2705])
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@kms_big_joiner@basic.html
>
>  * igt@kms_ccs@pipe-c-bad-pixel-format:
>    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111304]) +3 similar issues
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@kms_ccs@pipe-c-bad-pixel-format.html
>
>  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +14 similar issues
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
>
>  * igt@kms_chamelium@hdmi-mode-timings:
>    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +8 similar issues
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl7/igt@kms_chamelium@hdmi-mode-timings.html
>    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109284] / [fdo#111827]) +5 similar issues
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@kms_chamelium@hdmi-mode-timings.html
>
>  * igt@kms_chamelium@vga-edid-read:
>    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109284] / [fdo#111827]) +3 similar issues
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@kms_chamelium@vga-edid-read.html
>
>  * igt@kms_color@pipe-a-degamma:
>    - shard-glk:          [PASS][92] -> [FAIL][93] ([fdo#108145] / [i915#71])
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk8/igt@kms_color@pipe-a-degamma.html
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk6/igt@kms_color@pipe-a-degamma.html
>
>  * igt@kms_color@pipe-c-degamma:
>    - shard-iclb:         NOTRUN -> [FAIL][94] ([i915#1149])
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb3/igt@kms_color@pipe-c-degamma.html
>
>  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
>    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +57 similar issues
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html
>    - shard-snb:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +9 similar issues
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb5/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html
>
>  * igt@kms_content_protection@atomic:
>    - shard-kbl:          NOTRUN -> [TIMEOUT][97] ([i915#1319])
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl7/igt@kms_content_protection@atomic.html
>    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109300] / [fdo#111066])
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@kms_content_protection@atomic.html
>    - shard-tglb:         NOTRUN -> [SKIP][99] ([fdo#111828])
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@kms_content_protection@atomic.html
>
>  * igt@kms_content_protection@atomic-dpms:
>    - shard-apl:          NOTRUN -> [TIMEOUT][100] ([i915#1319]) +1 similar issue
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@kms_content_protection@atomic-dpms.html
>
>  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
>    - shard-iclb:         [PASS][101] -> [FAIL][102] ([i915#3457]) +1 similar issue
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
>    - shard-kbl:          [PASS][103] -> [FAIL][104] ([i915#3444] / [i915#3457])
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
>    - shard-tglb:         [PASS][105] -> [FAIL][106] ([i915#2124] / [i915#3457]) +1 similar issue
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
>
>  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
>    - shard-apl:          NOTRUN -> [FAIL][107] ([i915#3444] / [i915#3457]) +4 similar issues
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
>
>  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
>    - shard-glk:          [PASS][108] -> [FAIL][109] ([i915#3444] / [i915#3457]) +1 similar issue
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
>
>  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
>    - shard-iclb:         NOTRUN -> [FAIL][110] ([i915#3457]) +5 similar issues
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
>    - shard-kbl:          NOTRUN -> [FAIL][111] ([i915#3444] / [i915#3457]) +6 similar issues
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
>
>  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
>    - shard-snb:          NOTRUN -> [FAIL][112] ([i915#3457]) +2 similar issues
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
>
>  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
>    - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#3457]) +27 similar issues
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html
>
>  * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
>    - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109278] / [fdo#109279] / [i915#3457]) +1 similar issue
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:
>    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#3319] / [i915#3457])
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
>    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#3457]) +92 similar issues
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
>    - shard-snb:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#3457]) +20 similar issues
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>    - shard-skl:          NOTRUN -> [FAIL][118] ([i915#3444] / [i915#3457]) +52 similar issues
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>
>  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#3457]) +18 similar issues
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
>
>  * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
>    - shard-tglb:         NOTRUN -> [FAIL][120] ([i915#2124] / [i915#3457]) +4 similar issues
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html
>
>  * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
>    - shard-tglb:         NOTRUN -> [SKIP][121] ([fdo#109279] / [i915#3359] / [i915#3457]) +2 similar issues
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html
>
>  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
>    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#109278] / [i915#3457]) +6 similar issues
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-dpms.html
>
>  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>    - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109274] / [fdo#109278]) +3 similar issues
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>    - shard-apl:          NOTRUN -> [FAIL][124] ([i915#3457]) +8 similar issues
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-apl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>    - shard-skl:          NOTRUN -> [FAIL][125] ([i915#2346] / [i915#3457] / [i915#533])
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>
>  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2065])
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
>
>  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109274]) +2 similar issues
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-iclb8/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
>
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>    - shard-skl:          NOTRUN -> [FAIL][128] ([i915#2122])
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>    - shard-skl:          NOTRUN -> [FAIL][129] ([i915#79])
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>
>  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>    - shard-kbl:          NOTRUN -> [DMESG-WARN][130] ([i915#180]) +2 similar issues
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>    - shard-kbl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2672])
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>    - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#2642]) +1 similar issue
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/shard-skl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>    - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2642])
>   [133]: https://inte
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20151/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
