Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 655B44B92A0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 21:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE8D10E524;
	Wed, 16 Feb 2022 20:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D76810E524
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 20:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645044606; x=1676580606;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=M1IuqqD5Jf4molX2lc/wKGAnCOIihWFsVPxoDpiEKBA=;
 b=lh3iKnQEiHE+jRatJY8ervt4YJCBbJ7/8BEK9ozpW/5FIblIwD/SE+M9
 VGkykeaa9l5OD3G/4A3J5c2oFey7QmDpRaJTJirdOBgm4uubmjZ+uH91A
 WbsQ+gbjQBQ/Y0yetjgYjHITsWqrS1ptLWiS/QGexVQEOJolHZa/qoXNO
 JKmwCvclT7TR1Zns6zfqYm0lDuxCMLboglhJLemxSXRC9X0AwSRR0jZ/v
 TM+ZbsU5wS3gM31UPA62o0EEaMU4rTz0RjT5UUWP1CVVaQheLNoCaGb1A
 fvyXmzp0ulNleTsIoJbmUdernnxjbtLZH59PmkaisCj+sMv8hXt9rRgD9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="313992834"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="313992834"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 12:50:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="503200547"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 12:50:05 -0800
Date: Wed, 16 Feb 2022 12:50:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yg1jfEUfYh/kwelK@mdroper-desk1.amr.corp.intel.com>
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
 <164439046173.23774.15610800098329610354@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164439046173.23774.15610800098329610354@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_GT_register_cleanup?=
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

On Wed, Feb 09, 2022 at 07:07:41AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: More GT register cleanup
> URL   : https://patchwork.freedesktop.org/series/99872/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11205_full -> Patchwork_22217_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22217_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22217_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22217_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-iclb:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb7/igt@gem_ctx_persistence@smoketest.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb6/igt@gem_ctx_persistence@smoketest.html

https://gitlab.freedesktop.org/drm/intel/-/issues/5099

> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-apl7/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl6/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

https://gitlab.freedesktop.org/drm/intel/-/issues/5084



Series applied to drm-intel-next (the i915_reg.h -> intel_gt_regs.h
split hasn't propagated to the gt-next branch yet, and the plan is to
cross-merge intel-next to intel-gt-next).  Thanks Matt Atwood for the
reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22217_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-4x:
>     - shard-tglb:         NOTRUN -> [SKIP][5] ([i915#1839])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#4547])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl7/igt@gem_exec_capture@pi@rcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl8/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          NOTRUN -> [FAIL][8] ([i915#2846])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
>     - shard-skl:          NOTRUN -> [FAIL][9] ([i915#2846])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2842]) +2 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109283])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-apl7/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([i915#4270])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#4270])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-linear:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@gem_render_copy@yf-tiled-to-vebox-linear.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#109312])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#3297])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2856])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#2527] / [i915#2856])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109293] / [fdo#109506])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [PASS][28] -> [DMESG-WARN][29] ([i915#118])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777]) +5 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][33] ([i915#3743])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111615])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3689] / [i915#3886])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3689]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-apl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [i915#3886]) +3 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886]) +9 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-apl4/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_color@pipe-a-ctm-red-to-blue:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][43] ([i915#1982])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl9/igt@kms_color@pipe-a-ctm-red-to-blue.html
> 
>   * igt@kms_color@pipe-d-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109278] / [i915#1149])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb5/igt@kms_color@pipe-d-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-75:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +4 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_color_chamelium@pipe-a-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109284] / [fdo#111827]) +5 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-gamma:
>     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl4/igt@kms_color_chamelium@pipe-c-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +13 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#1063])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
>     - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +56 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#3319])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-random:
>     - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109278]) +14 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-64x64-random.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109274] / [fdo#109278]) +2 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][57] -> [FAIL][58] ([i915#2346]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_dsc@xrgb8888-dsc-compression:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#3828])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@kms_dsc@xrgb8888-dsc-compression.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#109274] / [fdo#111825]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +166 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl2/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109274]) +2 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180]) +3 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109285])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109280]) +15 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109280] / [fdo#111825]) +7 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#1188]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#1187])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265]) +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][73] -> [FAIL][74] ([fdo#108145] / [i915#265])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl6/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#111068] / [i915#658])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#1911])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-iclb:         [PASS][78] -> [SKIP][79] ([fdo#109441])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb5/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_rotation_crc@bad-pixel-format:
>     - shard-skl:          [PASS][80] -> [DMESG-WARN][81] ([i915#1982])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl6/igt@kms_rotation_crc@bad-pixel-format.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl1/igt@kms_rotation_crc@bad-pixel-format.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109309])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_vblank@pipe-a-wait-busy-hang:
>     - shard-snb:          [PASS][83] -> [SKIP][84] ([fdo#109271])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-snb2/igt@kms_vblank@pipe-a-wait-busy-hang.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-snb2/igt@kms_vblank@pipe-a-wait-busy-hang.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109502])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#2437])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271]) +29 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-apl4/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#51])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl10/igt@perf@short-reads.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl10/igt@perf@short-reads.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#112283])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109291]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb5/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html
> 
>   * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
>     - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#109291])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#2994])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@create:
>     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl9/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl3/igt@sysfs_clients@fair-3.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-tglb:         [TIMEOUT][96] ([i915#3063]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-kbl:          [FAIL][98] ([i915#2842]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@i915_selftest@live@gtt:
>     - shard-skl:          [DMESG-FAIL][100] -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl3/igt@i915_selftest@live@gtt.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl2/igt@i915_selftest@live@gtt.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-apl8/igt@i915_suspend@sysfs-reader.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-apl4/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - {shard-tglu}:       [DMESG-WARN][104] ([i915#402]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglu-3/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglu-1/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-tglb:         [INCOMPLETE][106] ([i915#2411] / [i915#2828] / [i915#456]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-suspend:
>     - shard-tglb:         [DMESG-WARN][108] ([i915#2411] / [i915#2867]) -> [PASS][109] +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][110] ([i915#2346]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][112] ([i915#2346] / [i915#533]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [INCOMPLETE][114] ([i915#180] / [i915#1982]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>     - shard-glk:          [FAIL][116] ([i915#79]) -> [PASS][117] +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][118] ([i915#180]) -> [PASS][119] +2 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][120] ([i915#3701]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [FAIL][122] ([i915#1188]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl1/igt@kms_hdr@bpc-switch.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-skl6/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [SKIP][124] ([fdo#109441]) -> [PASS][125] +2 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@perf@non-zero-reason:
>     - shard-glk:          [FAIL][126] -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-glk1/igt@perf@non-zero-reason.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-glk8/igt@perf@non-zero-reason.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-tglb:         [DMESG-WARN][128] ([i915#262] / [i915#2867]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglb6/igt@perf_pmu@module-unload.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-tglb6/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][130] ([i915#4525]) -> [DMESG-WARN][131] ([i915#5076]) +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [DMESG-FAIL][132] -> [SKIP][133] ([i915#4525])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [DMESG-WARN][134] ([i915#5076]) -> [SKIP][135] ([i915#4525])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22217/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
