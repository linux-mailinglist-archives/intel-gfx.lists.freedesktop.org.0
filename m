Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BBC52DAB0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 May 2022 18:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5999311A494;
	Thu, 19 May 2022 16:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF6E11A494
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 May 2022 16:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652979280; x=1684515280;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Aa+ztNIMWsPFITb2QbL21jRkJ6k1FMol+AOPCD+ru6g=;
 b=j1V7A7UdsgTzTw2RPJ2LIuSiDG1kBPls4gIzYCRf0Eya34Wa9UfQBzm4
 VKIo7E8odFzEZ1dGWtnSTMnhdJwtA8NlMlLDaYvpp/sJcmLKJUfBSEOyc
 YpUYUE8pvi9kU8bPz9QZdu5IrSWwuPP+w/5hCbBGV7reqQAMxdI7mAu8L
 pK0JlKHTBsPiIFcBNT830xbBJ+PPR8jEEwXXUFHkN/PzcXIB33sQiazUS
 CNZiZIcJ0KWviB/JeE+wjGs9rAPssJ4TTlfdbN4fhcxHWkLLH4ZeG+AdV
 V93CaeajrBcAioCziVzEDKwEO/2ve/3cSTi8uobK3Dw1ByCxakRzvDDI9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="272406914"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="272406914"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 09:54:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="674114705"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 09:54:39 -0700
Date: Thu, 19 May 2022 09:54:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YoZ2TsNs1f0WXkx5@mdroper-desk1.amr.corp.intel.com>
References: <20220517212905.24212-1-swathi.dhanavanthri@intel.com>
 <165291138176.21386.5892605536023811597@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165291138176.21386.5892605536023811597@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_workaround_22014600077_=28rev2=29?=
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

On Wed, May 18, 2022 at 10:03:01PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Add workaround 22014600077 (rev2)
> URL   : https://patchwork.freedesktop.org/series/104097/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11668_full -> Patchwork_104097v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> 
> Participating hosts (11 -> 13)
> ------------------------------
> 
>   Additional (2): shard-rkl shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104097v2_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_schedule@smoketest@vcs0:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-rkl-5/igt@gem_exec_schedule@smoketest@vcs0.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11668_full and Patchwork_104097v2_full:
> 
> ### New IGT tests (2) ###
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_legacy@forked-move:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104097v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-iclb:         NOTRUN -> [SKIP][2] ([i915#5327])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-glk:          [PASS][3] -> [TIMEOUT][4] ([i915#3063])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-glk9/igt@gem_eio@in-flight-contexts-10ms.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-glk1/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][5] ([i915#3354])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-snb4/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-apl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl3/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap_wc@coherency:
>     - shard-snb:          [PASS][14] -> [SKIP][15] ([fdo#109271])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-snb2/igt@gem_mmap_wc@coherency.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-snb6/igt@gem_mmap_wc@coherency.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][16] ([i915#768])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_spin_batch@spin-each:
>     - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#2898])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl7/igt@gem_spin_batch@spin-each.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl2/igt@gem_spin_batch@spin-each.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#3323])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#3297])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][21] ([i915#3318])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl8/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#109289])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@gen3_mixed_blits.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#2527] / [i915#2856])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#2856])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][25] ([i915#454])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl4/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         NOTRUN -> [WARN][26] ([i915#2684])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111644] / [i915#1397] / [i915#2411])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#5286])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#110725] / [fdo#111614])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111614])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#111615])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3689] / [i915#3886])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111615] / [i915#3689])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_ccs@pipe-b-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278] / [i915#3886]) +3 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +35 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-edid-read:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_chamelium@hdmi-edid-read.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl8/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl3/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-max:
>     - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-snb4/igt@kms_color_chamelium@pipe-c-ctm-max.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          NOTRUN -> [TIMEOUT][43] ([i915#1319])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109279] / [i915#3359] / [i915#5691])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3359]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#72])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * {igt@kms_cursor_legacy@cursora-vs-flipb} (NEW):
>     - {shard-rkl}:        NOTRUN -> [SKIP][48] ([i915#4098])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-rkl-4/igt@kms_cursor_legacy@cursora-vs-flipb.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274] / [fdo#109278])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-move:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +125 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl8/igt@kms_cursor_legacy@pipe-d-torture-move.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271]) +58 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-snb4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#6029])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#5287])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-4tiled.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109274] / [fdo#111825]) +2 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#2122])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#2587])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#3701])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109280] / [fdo#111825]) +4 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +7 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][65] -> [FAIL][66] ([fdo#108145] / [i915#265]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_cursor@pipe-d-viewport-size-128:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109278]) +5 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@kms_plane_cursor@pipe-d-viewport-size-128.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#3536])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_plane_scaling@downscale-with-rotation-factor-0-25@pipe-c-edp-1-downscale-with-rotation:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#5176]) +3 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_plane_scaling@downscale-with-rotation-factor-0-25@pipe-c-edp-1-downscale-with-rotation.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#658]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl8/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][71] ([i915#132] / [i915#3467])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2437])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#2437])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2530])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@nouveau_crc@pipe-b-source-outp-inactive.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109289])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_nv_api@i915_self_import_to_different_fd:
>     - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#109291])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@prime_nv_api@i915_self_import_to_different_fd.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][77] ([i915#5098])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][78] ([i915#5098])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2994])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl4/igt@sysfs_clients@sema-25.html
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-skl:          [INCOMPLETE][82] ([i915#4939]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - {shard-tglu}:       [TIMEOUT][84] ([i915#3063]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglu-3/igt@gem_eio@in-flight-contexts-1us.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglu-1/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][86] ([i915#3070]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@gem_eio@unwedge-stress.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb8/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][88] ([i915#2842]) -> [PASS][89] +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][90] ([i915#2842]) -> [PASS][91] +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@i915_pm_rpm@cursor:
>     - shard-iclb:         [SKIP][92] ([i915#5989]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@i915_pm_rpm@cursor.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb8/igt@i915_pm_rpm@cursor.html
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - shard-iclb:         [DMESG-WARN][94] ([i915#2867]) -> [PASS][95] +7 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@i915_selftest@live@gt_lrc.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb8/igt@i915_selftest@live@gt_lrc.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][96] ([i915#3921]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-snb6/igt@i915_selftest@live@hangcheck.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-snb4/igt@i915_selftest@live@hangcheck.html
>     - shard-tglb:         [DMESG-WARN][98] ([i915#5591]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb8/igt@i915_selftest@live@hangcheck.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb3/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@perf@engine_cs:
>     - shard-tglb:         [DMESG-WARN][100] ([i915#2867]) -> [PASS][101] +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb2/igt@i915_selftest@perf@engine_cs.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb8/igt@i915_selftest@perf@engine_cs.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-iclb:         [FAIL][102] ([i915#5072]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][104] ([i915#2346]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [FAIL][106] ([i915#4767]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][108] ([i915#79]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-edp1:
>     - shard-skl:          [INCOMPLETE][110] ([i915#4839]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl3/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][112] ([i915#3701]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [SKIP][114] ([fdo#109441]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:
>     - shard-iclb:         [SKIP][116] ([fdo#109278]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb8/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][118] ([i915#180]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@perf@stress-open-close:
>     - shard-apl:          [DMESG-FAIL][120] ([i915#5386]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@perf@stress-open-close.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@perf@stress-open-close.html
> 
>   * igt@prime_self_import@reimport-vs-gem_close-race:
>     - shard-tglb:         [FAIL][122] ([i915#6033]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-tglb3/igt@prime_self_import@reimport-vs-gem_close-race.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-tglb5/igt@prime_self_import@reimport-vs-gem_close-race.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][124] ([i915#4525]) -> [DMESG-WARN][125] ([i915#5614])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [DMESG-WARN][126] ([i915#5614]) -> [SKIP][127] ([i915#4525])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][128] ([i915#4525]) -> [DMESG-FAIL][129] ([i915#5614])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         [SKIP][130] ([i915#5989]) -> [SKIP][131] ([fdo#110892])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          [SKIP][132] ([fdo#109271] / [i915#1888]) -> [SKIP][133] ([fdo#109271])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl8/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl7/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-audio:
>     - shard-skl:          [SKIP][134] ([fdo#109271] / [fdo#111827] / [i915#1888]) -> [SKIP][135] ([fdo#109271] / [fdo#111827])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl1/igt@kms_chamelium@dp-audio.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl1/igt@kms_chamelium@dp-audio.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][136] ([i915#2920]) -> [SKIP][137] ([fdo#111068] / [i915#658])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][138] ([fdo#111068] / [i915#658]) -> [SKIP][139] ([i915#2920])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl7/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl4/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl7/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl3/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-apl1/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl4/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl6/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl1/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-apl7/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][153], [FAIL][154], [FAIL][155]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl1/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl10/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11668/shard-skl7/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl7/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl1/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl4/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl3/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl3/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/shard-skl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3354]: https://gitlab.freedesktop.org/drm/intel/issues/3354
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4886]: https://gitlab.freedesktop.org/drm/intel/issues/4886
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5303]: https://gitlab.freedesktop.org/drm/intel/issues/5303
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5386]: https://gitlab.freedesktop.org/drm/intel/issues/5386
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
>   [i915#5989]: https://gitlab.freedesktop.org/drm/intel/issues/5989
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
>   [i915#6029]: https://gitlab.freedesktop.org/drm/intel/issues/6029
>   [i915#6033]: https://gitlab.freedesktop.org/drm/intel/issues/6033
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11668 -> Patchwork_104097v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11668: 0aeb4ff42e2e9fd1dee49e6bb79cc81c8eafd3fc @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6477: 70cfef35851891aeaa829f5e8dcb7fd43b454bde @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104097v2: 0aeb4ff42e2e9fd1dee49e6bb79cc81c8eafd3fc @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104097v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
