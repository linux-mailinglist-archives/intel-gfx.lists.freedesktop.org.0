Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F283C433C42
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 18:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A64F6EB34;
	Tue, 19 Oct 2021 16:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C466EB33
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 16:32:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="228442085"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="228442085"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 09:32:06 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="718459451"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 09:32:04 -0700
Date: Tue, 19 Oct 2021 19:32:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20211019163200.GD1598321@ideak-desk.fi.intel.com>
References: <20211018094154.1407705-1-imre.deak@intel.com>
 <163460474246.5184.4830208682587976156@emeril.freedesktop.org>
 <20211019125406.GB1598321@ideak-desk.fi.intel.com>
 <b7e21be158784dbca5c701988aed075e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b7e21be158784dbca5c701988aed075e@intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Fix_link_parameter_use_in_lack_of_a_valid_DPCD_=28r?=
 =?utf-8?q?ev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 19, 2021 at 06:33:12PM +0300, Vudum, Lakshminarayana wrote:
> Re-reported.  Looks like kms_bw tests are broken?

Thanks. Yes, I think so.

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com> 
> Sent: Tuesday, October 19, 2021 5:54 AM
> To: intel-gfx@lists.freedesktop.org; Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>
> Subject: Re: ✗ Fi.CI.IGT: failure for drm/i915/dp: Fix link parameter use in lack of a valid DPCD (rev2)
> 
> Hi Lakshmi,
> 
> the failure below is expected, could we add cibug filter for it?
> 
> On Tue, Oct 19, 2021 at 12:52:22AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/i915/dp: Fix link parameter use in lack of a valid DPCD (rev2)
> > URL   : https://patchwork.freedesktop.org/series/95948/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_10753_full -> Patchwork_21374_full 
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_21374_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_21374_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_21374_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@kms_bw@linear-tiling-4-displays-1920x1080p:
> >     - shard-apl:          NOTRUN -> [FAIL][1] +2 similar issues
> >    [1]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl3/ig
> > t@kms_bw@linear-tiling-4-displays-1920x1080p.html
> 
> The test is broken, since it assumes it can set any mode on any connector. However these modesets won't through a WARN() any more after this change.
> 
> > #### Warnings ####
> > 
> >   * igt@kms_bw@linear-tiling-3-displays-2560x1440p:
> >     - shard-apl:          [DMESG-FAIL][2] ([i915#4298]) -> [FAIL][3] +2 similar issues
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-apl7/igt@kms_bw@linear-tiling-3-displays-2560x1440p.html
> >    [3]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl7/ig
> > t@kms_bw@linear-tiling-3-displays-2560x1440p.html
> > 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_21374_full that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_create@create-massive:
> >     - shard-apl:          NOTRUN -> [DMESG-WARN][4] ([i915#3002])
> >    [4]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl3/ig
> > t@gem_create@create-massive.html
> > 
> >   * igt@gem_ctx_isolation@preservation-s3@rcs0:
> >     - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1373])
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> >    [6]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb7/i
> > gt@gem_ctx_isolation@preservation-s3@rcs0.html
> > 
> >   * igt@gem_ctx_param@set-priority-not-supported:
> >     - shard-iclb:         NOTRUN -> [SKIP][7] ([fdo#109314])
> >    [7]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@gem_ctx_param@set-priority-not-supported.html
> > 
> >   * igt@gem_ctx_persistence@legacy-engines-hostile:
> >     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099])
> >    [8]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-snb7/ig
> > t@gem_ctx_persistence@legacy-engines-hostile.html
> > 
> >   * igt@gem_ctx_persistence@many-contexts:
> >     - shard-tglb:         NOTRUN -> [FAIL][9] ([i915#2410])
> >    [9]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/i
> > gt@gem_ctx_persistence@many-contexts.html
> > 
> >   * igt@gem_eio@unwedge-stress:
> >     - shard-tglb:         [PASS][10] -> [TIMEOUT][11] ([i915#2369] / [i915#3063] / [i915#3648])
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb2/igt@gem_eio@unwedge-stress.html
> >    [11]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb2/i
> > gt@gem_eio@unwedge-stress.html
> > 
> >   * igt@gem_exec_fair@basic-none-rrul@rcs0:
> >     - shard-glk:          NOTRUN -> [FAIL][12] ([i915#2842])
> >    [12]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/ig
> > t@gem_exec_fair@basic-none-rrul@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@rcs0:
> >     - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
> >    [14]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl1/ig
> > t@gem_exec_fair@basic-pace@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@vcs0:
> >     - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842])
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html
> >    [16]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb7/i
> > gt@gem_exec_fair@basic-pace@vcs0.html
> > 
> >   * igt@gem_exec_params@no-blt:
> >     - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#109283])
> >    [17]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/i
> > gt@gem_exec_params@no-blt.html
> > 
> >   * igt@gem_exec_params@secure-non-master:
> >     - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#112283])
> >    [18]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/i
> > gt@gem_exec_params@secure-non-master.html
> > 
> >   * igt@gem_exec_schedule@u-semaphore-user:
> >     - shard-snb:          NOTRUN -> [SKIP][19] ([fdo#109271]) +195 similar issues
> >    [19]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-snb7/ig
> > t@gem_exec_schedule@u-semaphore-user.html
> > 
> >   * igt@gem_huc_copy@huc-copy:
> >     - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#2190])
> >    [20]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/ig
> > t@gem_huc_copy@huc-copy.html
> > 
> >   * igt@gem_mmap_gtt@coherency:
> >     - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#111656])
> >    [21]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@gem_mmap_gtt@coherency.html
> > 
> >   * igt@gem_pread@exhaustion:
> >     - shard-tglb:         NOTRUN -> [WARN][22] ([i915#2658])
> >    [22]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@gem_pread@exhaustion.html
> > 
> >   * igt@gem_pxp@reject-modify-context-protection-on:
> >     - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#4270])
> >    [23]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@gem_pxp@reject-modify-context-protection-on.html
> > 
> >   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
> >     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#4270])
> >    [24]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/i
> > gt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> > 
> >   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
> >     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#768]) +1 similar issue
> >    [25]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> > 
> >   * igt@gem_softpin@noreloc-s3:
> >     - shard-kbl:          NOTRUN -> [DMESG-WARN][26] ([i915#180])
> >    [26]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl1/ig
> > t@gem_softpin@noreloc-s3.html
> > 
> >   * igt@gem_userptr_blits@dmabuf-sync:
> >     - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3323])
> >    [27]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/ig
> > t@gem_userptr_blits@dmabuf-sync.html
> > 
> >   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
> >     - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#3297]) +2 similar issues
> >    [28]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/i
> > gt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> > 
> >   * igt@gem_userptr_blits@vma-merge:
> >     - shard-tglb:         NOTRUN -> [FAIL][29] ([i915#3318])
> >    [29]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@gem_userptr_blits@vma-merge.html
> > 
> >   * igt@gem_workarounds@suspend-resume-context:
> >     - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +1 similar issue
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
> >    [31]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl3/ig
> > t@gem_workarounds@suspend-resume-context.html
> > 
> >   * igt@gen7_exec_parse@basic-rejected:
> >     - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#109289]) +1 similar issue
> >    [32]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/i
> > gt@gen7_exec_parse@basic-rejected.html
> > 
> >   * igt@i915_pm_dc@dc6-psr:
> >     - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#454])
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
> >    [34]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@i915_pm_dc@dc6-psr.html
> > 
> >   * igt@i915_pm_rc6_residency@rc6-fence:
> >     - shard-tglb:         NOTRUN -> [WARN][35] ([i915#2681])
> >    [35]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@i915_pm_rc6_residency@rc6-fence.html
> > 
> >   * igt@kms_async_flips@crc:
> >     - shard-skl:          NOTRUN -> [FAIL][36] ([i915#4272])
> >    [36]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/ig
> > t@kms_async_flips@crc.html
> > 
> >   * igt@kms_atomic_transition@plane-all-modeset-transition:
> >     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#1769])
> >    [37]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_atomic_transition@plane-all-modeset-transition.html
> > 
> >   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
> >     - shard-glk:          [PASS][38] -> [DMESG-WARN][39] ([i915#118])
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> >    [39]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk1/ig
> > t@kms_big_fb@x-tiled-32bpp-rotate-180.html
> > 
> >   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
> >     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110725] / [fdo#111614])
> >    [40]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/i
> > gt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> >     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3777])
> >    [41]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl2/ig
> > t@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> > 
> >   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> >     - shard-skl:          NOTRUN -> [FAIL][42] ([i915#3722])
> >    [42]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/ig
> > t@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> > 
> >   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> >     - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#111615]) +2 similar issues
> >    [43]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip
> > .html
> > 
> >   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
> >     - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271]) +241 similar issues
> >    [44]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/ig
> > t@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> > 
> >   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
> >     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#110723])
> >    [45]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/i
> > gt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
> > 
> >   * igt@kms_bw@linear-tiling-4-displays-2560x1440p:
> >     - shard-kbl:          NOTRUN -> [FAIL][46] ([i915#4299])
> >    [46]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/ig
> > t@kms_bw@linear-tiling-4-displays-2560x1440p.html
> > 
> >   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
> >     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278] / [i915#3886]) +5 similar issues
> >    [47]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
> >     - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3886])
> >    [48]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/ig
> > t@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> > 
> >   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
> >     - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#3689] / [i915#3886])
> >    [49]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/i
> > gt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
> >     - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#3886]) +9 similar issues
> >    [50]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/ig
> > t@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
> >     - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#3886]) +7 similar issues
> >    [51]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/ig
> > t@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
> >     - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3886]) +3 similar issues
> >    [52]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl5/ig
> > t@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:
> >     - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3689]) +3 similar issues
> >    [53]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html
> > 
> >   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs:
> >     - shard-glk:          NOTRUN -> [SKIP][54] ([fdo#109271]) +41 similar issues
> >    [54]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/ig
> > t@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs.html
> > 
> >   * igt@kms_chamelium@dp-crc-fast:
> >     - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +8 similar issues
> >    [55]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-snb7/ig
> > t@kms_chamelium@dp-crc-fast.html
> > 
> >   * igt@kms_chamelium@vga-edid-read:
> >     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109284] / [fdo#111827]) +5 similar issues
> >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/igt@kms_chamelium@vga-edid-read.html
> >     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +2 similar issues
> >    [57]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl5/ig
> > t@kms_chamelium@vga-edid-read.html
> > 
> >   * igt@kms_chamelium@vga-hpd:
> >     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +13 similar issues
> >    [58]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/ig
> > t@kms_chamelium@vga-hpd.html
> > 
> >   * igt@kms_chamelium@vga-hpd-without-ddc:
> >     - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +10 similar issues
> >    [59]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/ig
> > t@kms_chamelium@vga-hpd-without-ddc.html
> > 
> >   * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
> >     - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#109284] / [fdo#111827]) +4 similar issues
> >    [60]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_color_chamelium@pipe-a-ctm-green-to-red.html
> > 
> >   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
> >     - shard-glk:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +1 similar issue
> >    [61]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/ig
> > t@kms_color_chamelium@pipe-d-ctm-0-75.html
> > 
> >   * igt@kms_content_protection@atomic:
> >     - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#111828])
> >    [62]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_content_protection@atomic.html
> > 
> >   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
> >     - shard-tglb:         [PASS][63] -> [INCOMPLETE][64] ([i915#2411] / [i915#2828] / [i915#456])
> >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> >    [64]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb7/i
> > gt@kms_cursor_crc@pipe-a-cursor-suspend.html
> > 
> >   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
> >     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3319])
> >    [65]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/i
> > gt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
> > 
> >   * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
> >     - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109278] / [fdo#109279]) +1 similar issue
> >    [66]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html
> > 
> >   * igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:
> >     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109279] / [i915#3359]) +2 similar issues
> >    [67]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html
> > 
> >   * igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen:
> >     - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#3359])
> >    [68]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen.html
> > 
> >   * igt@kms_cursor_crc@pipe-d-cursor-suspend:
> >     - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +155 similar issues
> >    [69]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/ig
> > t@kms_cursor_crc@pipe-d-cursor-suspend.html
> > 
> >   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
> >     - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109274] / [fdo#109278])
> >    [70]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb2/i
> > gt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.
> > html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> >     - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#2346])
> >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> >    [72]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl9/ig
> > t@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> > 
> >   * igt@kms_cursor_legacy@pipe-d-single-bo:
> >     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#533]) +2 similar issues
> >    [73]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl4/ig
> > t@kms_cursor_legacy@pipe-d-single-bo.html
> > 
> >   * igt@kms_cursor_legacy@pipe-d-torture-bo:
> >     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#533])
> >    [74]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl5/ig
> > t@kms_cursor_legacy@pipe-d-torture-bo.html
> > 
> >   * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
> >     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109274]) +1 similar issue
> >    [75]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/i
> > gt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
> >     - shard-skl:          [PASS][76] -> [FAIL][77] ([i915#79])
> >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> >    [77]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/ig
> > t@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
> >     - shard-glk:          [PASS][78] -> [FAIL][79] ([i915#79])
> >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> >    [79]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk4/ig
> > t@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
> >     - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#2122])
> >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> >    [81]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl1/ig
> > t@kms_flip@flip-vs-expired-vblank@a-edp1.html
> > 
> >   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> >     - shard-apl:          NOTRUN -> [DMESG-WARN][82] ([i915#180]) +1 similar issue
> >    [82]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl3/ig
> > t@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
> >     - shard-iclb:         [PASS][83] -> [SKIP][84] ([i915#3701])
> >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> >    [84]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb2/i
> > gt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
> >     - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2672])
> >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> >     - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#2587])
> >    [86]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/i
> > gt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
> >     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109280]) +5 similar issues
> >    [87]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.ht
> > ml
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
> >     - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#2546])
> >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-glk9/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
> >    [89]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/ig
> > t@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
> >     - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#111825]) +13 similar issues
> >    [90]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html
> > 
> >   * igt@kms_hdr@bpc-switch-suspend:
> >     - shard-kbl:          [PASS][91] -> [DMESG-WARN][92] ([i915#180]) +4 similar issues
> >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
> >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
> >     - shard-tglb:         [PASS][93] -> [INCOMPLETE][94] ([i915#1373] / [i915#2828])
> >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb6/igt@kms_hdr@bpc-switch-suspend.html
> >    [94]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb7/i
> > gt@kms_hdr@bpc-switch-suspend.html
> > 
> >   * igt@kms_hdr@static-toggle:
> >     - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#1187])
> >    [95]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/i
> > gt@kms_hdr@static-toggle.html
> > 
> >   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
> >     - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533])
> >    [96]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl7/ig
> > t@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
> >     - shard-kbl:          NOTRUN -> [FAIL][97] ([fdo#108145] / [i915#265])
> >    [97]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl4/ig
> > t@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
> >     - shard-apl:          NOTRUN -> [FAIL][98] ([fdo#108145] / [i915#265]) +1 similar issue
> >    [98]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl2/ig
> > t@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
> >     - shard-skl:          NOTRUN -> [FAIL][99] ([fdo#108145] / [i915#265])
> >    [99]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl4/ig
> > t@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> >     - shard-skl:          [PASS][100] -> [FAIL][101] ([fdo#108145] / [i915#265]) +1 similar issue
> >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> >    [101]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl9/ig
> > t@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> >     - shard-apl:          NOTRUN -> [FAIL][102] ([i915#265])
> >    [102]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl2/ig
> > t@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
> >     - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109278]) +10 similar issues
> >    [103]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html
> > 
> >   * igt@kms_plane_lowres@pipe-a-tiling-none:
> >     - shard-iclb:         NOTRUN -> [SKIP][104] ([i915#3536])
> >    [104]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb2/i
> > gt@kms_plane_lowres@pipe-a-tiling-none.html
> > 
> >   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
> >     - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#2920])
> >    [105]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> > 
> >   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
> >     - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#658]) +4 similar issues
> >    [106]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/ig
> > t@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> > 
> >   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
> >     - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#658])
> >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> >     - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#658])
> >    [108]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> > 
> >   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
> >     - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#658]) +4 similar issues
> >    [109]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl4/ig
> > t@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> > 
> >   * igt@kms_psr2_su@frontbuffer:
> >     - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#1911])
> >    [110]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@kms_psr2_su@frontbuffer.html
> > 
> >   * igt@kms_psr@psr2_basic:
> >     - shard-tglb:         NOTRUN -> [FAIL][111] ([i915#132] / [i915#3467])
> >    [111]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/i
> > gt@kms_psr@psr2_basic.html
> > 
> >   * igt@kms_psr@psr2_primary_mmap_cpu:
> >     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109441]) +1 similar issue
> >    [112]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/i
> > gt@kms_psr@psr2_primary_mmap_cpu.html
> > 
> >   * igt@kms_psr@psr2_suspend:
> >     - shard-iclb:         [PASS][113] -> [SKIP][114] ([fdo#109441]) +2 similar issues
> >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-iclb2/igt@kms_psr@psr2_suspend.html
> >    [114]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/i
> > gt@kms_psr@psr2_suspend.html
> > 
> >   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
> >     - shard-kbl:          [PASS][115] -> [DMESG-WARN][116] ([i915#180] / [i915#295])
> >    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> >    [116]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl7/ig
> > t@kms_vblank@pipe-a-ts-continuation-suspend.html
> > 
> >   * igt@kms_vblank@pipe-d-query-forked-busy:
> >     - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271]) +34 similar issues
> >    [117]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/ig
> > t@kms_vblank@pipe-d-query-forked-busy.html
> > 
> >   * igt@nouveau_crc@pipe-b-source-rg:
> >     - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#2530]) +1 similar issue
> >    [118]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb5/i
> > gt@nouveau_crc@pipe-b-source-rg.html
> > 
> >   * igt@nouveau_crc@pipe-c-ctx-flip-detection:
> >     - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#2530]) +1 similar issue
> >    [119]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@nouveau_crc@pipe-c-ctx-flip-detection.html
> > 
> >   * igt@perf@polling-parameterized:
> >     - shard-skl:          [PASS][120] -> [FAIL][121] ([i915#1542])
> >    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl1/igt@perf@polling-parameterized.html
> >    [121]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/ig
> > t@perf@polling-parameterized.html
> > 
> >   * igt@perf@unprivileged-single-ctx-counters:
> >     - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#109289])
> >    [122]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@perf@unprivileged-single-ctx-counters.html
> > 
> >   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
> >     - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109291])
> >    [123]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/i
> > gt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> > 
> >   * igt@prime_nv_pcopy@test3_3:
> >     - shard-tglb:         NOTRUN -> [SKIP][124] ([fdo#109291])
> >    [124]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/i
> > gt@prime_nv_pcopy@test3_3.html
> > 
> >   * igt@sysfs_clients@create:
> >     - shard-apl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2994]) +3 similar issues
> >    [125]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl1/ig
> > t@sysfs_clients@create.html
> > 
> >   * igt@sysfs_clients@sema-50:
> >     - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#2994])
> >    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb2/igt@sysfs_clients@sema-50.html
> >     - shard-kbl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2994]) +1 similar issue
> >    [127]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl4/ig
> > t@sysfs_clients@sema-50.html
> > 
> >   * igt@sysfs_clients@split-25:
> >     - shard-tglb:         NOTRUN -> [SKIP][128] (
> > 
> > == Logs ==
> > 
> > For more details see: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/index.html
