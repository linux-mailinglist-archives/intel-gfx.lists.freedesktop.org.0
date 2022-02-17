Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CC94BABF2
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 22:42:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4489510E842;
	Thu, 17 Feb 2022 21:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02FC510E8B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 21:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645134142; x=1676670142;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=c6iLiel9BYcoyHvqfDce96KWH43uTnJx0eaNCQwOXgM=;
 b=gk7JIpkOVfR3hLIrb/bmGzMHYOzOLKvgOvm0cnPBedwxflVseNTHWRkF
 5CWEm9NlaYcQptzrxo2iebrq56wMKlaCYxxNiZzXs9JwNDJwMjRpD6IVy
 /ZeJUWlXgR2PrYMXpOlscExQVh3aMUrg7BUO838t+6/dVF/cBdRVoyxbv
 pLMbo1B+ICEvoszcDnQTF4YzhFx/P7li8UPgfHJeZguHPDSlZbkeSl2Q4
 xXlycmrBn2z/Cf9wv91Th60igMuxZ74qMqKwTWjvCvfnQe0Hu6tuZB0JF
 uVYOdMEV+AKK1j5HGE73Bdc0Qn/Ao0ZcT6iV/W9Ti4h26EDfZI6vrH4ks g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="238385920"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="238385920"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 13:42:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="488748112"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 13:42:21 -0800
Date: Thu, 17 Feb 2022 13:42:19 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yg7BO+nJEPuv84r8@mdroper-desk1.amr.corp.intel.com>
References: <20220215235531.2236399-1-matthew.d.roper@intel.com>
 <164509480436.18053.10413847707188310003@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164509480436.18053.10413847707188310003@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Move_misplaced_=27ctx=27_=26_=27gt=27_wa=27s_to_en?=
 =?utf-8?q?gine_wa_list?=
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

On Thu, Feb 17, 2022 at 10:46:44AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Move misplaced 'ctx' & 'gt' wa's to engine wa list
> URL   : https://patchwork.freedesktop.org/series/100212/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11238_full -> Patchwork_22291_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22291_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22291_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 11)
> ------------------------------
> 
>   Missing    (1): shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22291_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
>     - shard-glk:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-glk4/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-glk6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

https://gitlab.freedesktop.org/drm/intel/-/issues/5138

> 
>   * igt@perf_pmu@module-unload:
>     - shard-iclb:         NOTRUN -> [FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@perf_pmu@module-unload.html

https://gitlab.freedesktop.org/drm/intel/-/issues/5136


Neither is caused by this patch.  Applied to drm-intel-gt-next.  Thanks
for the patch.



Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22291_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#4525])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][6] ([i915#4547])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#2849])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-iclb:         NOTRUN -> [SKIP][9] ([fdo#112283])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked:
>     - shard-glk:          [PASS][10] -> [DMESG-WARN][11] ([i915#118]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl10/igt@gem_lmem_swapping@heavy-verify-random.html
>     - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#4613])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb3/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-apl4/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-skl4/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl8/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][17] ([i915#2658])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#768]) +2 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#3323])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#3297]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb3/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109289]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#2856])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>     - shard-skl:          NOTRUN -> [FAIL][25] ([i915#454])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][26] -> [SKIP][27] ([i915#4281])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#110892])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][29] -> [INCOMPLETE][30] ([i915#3921])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-snb4/igt@i915_selftest@live@hangcheck.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-snb:          [PASS][31] -> [SKIP][32] ([fdo#109271])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-snb7/igt@i915_suspend@fence-restore-untiled.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-snb5/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([i915#636])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl6/igt@i915_suspend@forcewake.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-kbl4/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110725] / [fdo#111614]) +4 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][37] ([i915#3743])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111615])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-tglb6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#110723]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb3/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3777]) +5 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#2705])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-apl4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl3/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-glk3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278] / [i915#3886]) +6 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +16 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl3/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109284] / [fdo#111827]) +6 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_chamelium@hdmi-crc-fast.html
> 
>   * igt@kms_color@pipe-d-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [i915#1149]) +2 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_color@pipe-d-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-apl4/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109300] / [fdo#111066])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3359])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278] / [fdo#109279]) +2 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278]) +23 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109274] / [fdo#109278]) +3 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb6/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#3528])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_dsc@basic-dsc-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#3840])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_dsc@basic-dsc-enable.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#2122])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@d-edp1:
>     - shard-tglb:         [PASS][61] -> [DMESG-WARN][62] ([i915#2411] / [i915#2867])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-tglb5/igt@kms_flip@flip-vs-suspend@d-edp1.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-tglb6/igt@kms_flip@flip-vs-suspend@d-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#4911])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][65] ([i915#3701])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109280]) +19 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#1188])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-skl4/igt@kms_hdr@bpc-switch.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl3/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180]) +9 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#1187]) +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#1839])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#533])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][75] ([fdo#108145] / [i915#265])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
>     - shard-apl:          NOTRUN -> [FAIL][76] ([fdo#108145] / [i915#265])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#3536])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_plane_lowres@pipe-b-tiling-x.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109274]) +5 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109441]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [PASS][81] -> [SKIP][82] ([fdo#109441])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
>     - shard-glk:          NOTRUN -> [SKIP][83] ([fdo#109271]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-glk3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271]) +245 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl10/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html
> 
>   * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#2530]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html
> 
>   * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109278] / [i915#2530])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html
> 
>   * igt@perf@non-zero-reason:
>     - shard-skl:          NOTRUN -> [TIMEOUT][87] ([i915#2836])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl2/igt@perf@non-zero-reason.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][88] ([i915#1722])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl4/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_pcopy@test3_5:
>     - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271]) +38 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-apl4/igt@prime_nv_pcopy@test3_5.html
> 
>   * igt@prime_nv_test@i915_import_cpu_mmap:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109291]) +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@prime_nv_test@i915_import_cpu_mmap.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-apl4/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#2994])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb5/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl4/igt@sysfs_clients@sema-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-apl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95] +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-apl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-apl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][96] ([i915#2481] / [i915#3070]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb4/igt@gem_eio@unwedge-stress.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][98] ([i915#2842]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-tglu-1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][100] ([i915#2842]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][102] ([i915#2190]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-tglb8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][104] ([i915#1436] / [i915#716]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-glk5/igt@gen9_exec_parse@allowed-all.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-glk3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][106] ([i915#2346]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [FAIL][108] ([i915#79]) -> [PASS][109] +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-kbl:          [INCOMPLETE][110] ([i915#636]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-edp1:
>     - shard-skl:          [FAIL][112] ([i915#2122]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl8/igt@kms_flip@plain-flip-ts-check@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-skl:          [INCOMPLETE][114] ([i915#123]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          [DMESG-WARN][116] ([i915#180]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [SKIP][118] ([fdo#109441]) -> [PASS][119] +2 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [FAIL][120] ([i915#31]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-glk4/igt@kms_setmode@basic.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-glk1/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][122] ([i915#4525]) -> [DMESG-WARN][123] ([i915#5076]) +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][124] ([i915#4525]) -> [DMESG-FAIL][125] ([i915#5076])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [DMESG-WARN][126] ([i915#5076]) -> [SKIP][127] ([i915#4525]) +3 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][128] ([i915#1804] / [i915#2684]) -> [WARN][129] ([i915#2684])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][130] ([i915#4148]) -> [SKIP][131] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/shard-iclb8/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312]) -> ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#4312] / [i915#602])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl1/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl1/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl6/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl1/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl4/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11238/shard-kbl1/igt@runner
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22291/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
