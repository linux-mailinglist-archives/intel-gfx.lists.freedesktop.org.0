Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E24874DA8A2
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 03:51:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1015110E52E;
	Wed, 16 Mar 2022 02:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D07E10E524
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 02:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647399109; x=1678935109;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ePPFaC4/vDwZ9bKWwWRnIAqcMU/khiwsbrSsPiLhcRg=;
 b=Wh1X546Vf3/FGfFVCenvTjSXbH1+AR2D3kL/lDj7qqtHPOLYLQdipngL
 1jVLITFyO2bdpmtWvC/qJdYwFqMjjjlqQhVe8IKjQir03Du8npT3Sjakm
 g22Zrxbvzf4ZLFRy3RUgBP7fg+GSmGpdZgjHoLHcIAQz/VdT2wHPAGWbO
 OpfYdCGTlEf3+x9dPpYnM2RCp0IGZDsktl68mXWGle0ZVks8+CMqCyAjB
 L5Ne5uufhrgTwLaqQ9LGGyQcBuZT92jmtn/Leq+E9WZFtPmyalinSfdAv
 IVDxOpK1CPQPmBKofg+VZcLeazpQIf3hq8X9+q5eiaj6Lh1n8HMdsVyw3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="281251926"
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="281251926"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 19:51:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="498268447"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 19:51:47 -0700
Date: Tue, 15 Mar 2022 19:51:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YjFQwvFDRfLxiHTt@mdroper-desk1.amr.corp.intel.com>
References: <20220314234203.799268-1-matthew.d.roper@intel.com>
 <164738758199.20491.1073899977929723519@emeril.freedesktop.org>
 <YjEq80I4/wR/YKCt@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YjEq80I4/wR/YKCt@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_General_multicast_steering_updates_=28rev2=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 15, 2022 at 05:10:28PM -0700, Matt Roper wrote:
> On Tue, Mar 15, 2022 at 11:39:41PM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: i915: General multicast steering updates (rev2)
> > URL   : https://patchwork.freedesktop.org/series/101367/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_11365_full -> Patchwork_22574_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_22574_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_22574_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Participating hosts (13 -> 13)
> > ------------------------------
> > 
> >   No changes in participating hosts
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_22574_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@gem_exec_whisper@basic-fds-forked-all:
> >     - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-kbl6/igt@gem_exec_whisper@basic-fds-forked-all.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-kbl4/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
> <4> [222.484874] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b7c23: 0000 [#1] PREEMPT SMP PTI
> <4> [222.484889] CPU: 3 PID: 1279 Comm: gem_exec_whispe Not tainted 5.17.0-rc8-CI-Patchwork_22574+ #1
> <4> [222.484899] Hardware name:  /NUC7i5BNB, BIOS BNKBL357.86A.0054.2017.1025.1822 10/25/2017
> <4> [222.484906] RIP: 0010:__lock_acquire+0x612/0x2940
> 
> This implies a use-after-free mistake somewhere; it wouldn't be caused
> by the steering changes in this series.
> 
> I see a similar stack trace and error on a different test/platform here:
> https://gitlab.freedesktop.org/drm/intel/-/issues/5268 which might be
> caused by the same underlying bug.

Since this failure seems unrelated to this series, patches applied to
drm-intel-gt-next (with the one extra 'const' suggested by sparse
added).  Thanks Jose and Lucas for the reviews.


Matt

> 
> 
> Matt
> 
> > 
> >   
> > #### Suppressed ####
> > 
> >   The following results come from untrusted machines, tests, or statuses.
> >   They do not affect the overall result.
> > 
> >   * igt@gem_bad_reloc@negative-reloc-bltcopy:
> >     - {shard-rkl}:        [PASS][3] -> [DMESG-WARN][4]
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-bltcopy.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-bltcopy.html
> > 
> >   * igt@gem_ccs@block-copy-inplace:
> >     - {shard-dg1}:        NOTRUN -> [SKIP][5]
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-dg1-12/igt@gem_ccs@block-copy-inplace.html
> > 
> >   * igt@gem_exec_schedule@submit-early-slice@vecs0:
> >     - {shard-dg1}:        NOTRUN -> [INCOMPLETE][6]
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-dg1-15/igt@gem_exec_schedule@submit-early-slice@vecs0.html
> > 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_22574_full that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@feature_discovery@chamelium:
> >     - shard-iclb:         NOTRUN -> [SKIP][7] ([fdo#111827])
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@feature_discovery@chamelium.html
> > 
> >   * igt@gem_eio@unwedge-stress:
> >     - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#3063] / [i915#3648])
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglb7/igt@gem_eio@unwedge-stress.html
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-tglb7/igt@gem_eio@unwedge-stress.html
> > 
> >   * igt@gem_exec_fair@basic-deadline:
> >     - shard-skl:          NOTRUN -> [FAIL][10] ([i915#2846])
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl6/igt@gem_exec_fair@basic-deadline.html
> > 
> >   * igt@gem_exec_fair@basic-none-vip@rcs0:
> >     - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-tglb5/igt@gem_exec_fair@basic-none-vip@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-none@vcs0:
> >     - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace-solo@rcs0:
> >     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@rcs0:
> >     - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842])
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@vcs1:
> >     - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#2851])
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
> >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
> > 
> >   * igt@gem_exec_params@secure-non-root:
> >     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#112283])
> >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@gem_exec_params@secure-non-root.html
> > 
> >   * igt@gem_exec_whisper@basic-fds:
> >     - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#118]) +1 similar issue
> >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk1/igt@gem_exec_whisper@basic-fds.html
> >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-glk3/igt@gem_exec_whisper@basic-fds.html
> > 
> >   * igt@gem_lmem_swapping@heavy-random:
> >     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#4613])
> >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@gem_lmem_swapping@heavy-random.html
> > 
> >   * igt@gem_lmem_swapping@parallel-random:
> >     - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#4613]) +3 similar issues
> >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl8/igt@gem_lmem_swapping@parallel-random.html
> > 
> >   * igt@gem_lmem_swapping@smem-oom:
> >     - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#4613]) +1 similar issue
> >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl2/igt@gem_lmem_swapping@smem-oom.html
> > 
> >   * igt@gem_userptr_blits@access-control:
> >     - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#3297])
> >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb3/igt@gem_userptr_blits@access-control.html
> > 
> >   * igt@gem_userptr_blits@vma-merge:
> >     - shard-skl:          NOTRUN -> [FAIL][28] ([i915#3318])
> >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl8/igt@gem_userptr_blits@vma-merge.html
> > 
> >   * igt@gen3_render_mixed_blits:
> >     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109289])
> >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@gen3_render_mixed_blits.html
> > 
> >   * igt@gen9_exec_parse@allowed-single:
> >     - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1436] / [i915#716])
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-skl7/igt@gen9_exec_parse@allowed-single.html
> >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl4/igt@gen9_exec_parse@allowed-single.html
> > 
> >   * igt@gen9_exec_parse@bb-secure:
> >     - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#2856])
> >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@gen9_exec_parse@bb-secure.html
> > 
> >   * igt@i915_pm_dc@dc6-dpms:
> >     - shard-skl:          NOTRUN -> [FAIL][33] ([i915#454])
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl10/igt@i915_pm_dc@dc6-dpms.html
> > 
> >   * igt@i915_pm_rpm@gem-execbuf-stress:
> >     - shard-skl:          NOTRUN -> [INCOMPLETE][34] ([i915#151] / [i915#5324])
> >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl8/igt@i915_pm_rpm@gem-execbuf-stress.html
> >     - shard-iclb:         NOTRUN -> [INCOMPLETE][35] ([i915#5324])
> >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@i915_pm_rpm@gem-execbuf-stress.html
> > 
> >   * igt@kms_async_flips@crc:
> >     - shard-skl:          NOTRUN -> [FAIL][36] ([i915#4272])
> >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl8/igt@kms_async_flips@crc.html
> > 
> >   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
> >     - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#5286])
> >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> > 
> >   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> >     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777]) +1 similar issue
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> > 
> >   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
> >     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3777])
> >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> > 
> >   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
> >     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110725] / [fdo#111614])
> >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> > 
> >   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> >     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886]) +14 similar issues
> >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
> >     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278] / [i915#3886]) +1 similar issue
> >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_chamelium@dp-hpd-with-enabled-mode:
> >     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +3 similar issues
> >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@kms_chamelium@dp-hpd-with-enabled-mode.html
> > 
> >   * igt@kms_color@pipe-d-ctm-0-75:
> >     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109278] / [i915#1149])
> >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@kms_color@pipe-d-ctm-0-75.html
> > 
> >   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
> >     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +4 similar issues
> >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl2/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> > 
> >   * igt@kms_color_chamelium@pipe-d-degamma:
> >     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +23 similar issues
> >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl6/igt@kms_color_chamelium@pipe-d-degamma.html
> > 
> >   * igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
> >     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278]) +9 similar issues
> >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html
> > 
> >   * igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
> >     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [fdo#109279]) +1 similar issue
> >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> >     - shard-skl:          NOTRUN -> [FAIL][49] ([i915#2346] / [i915#533])
> >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> > 
> >   * igt@kms_fbcon_fbt@fbc-suspend:
> >     - shard-apl:          [PASS][50] -> [INCOMPLETE][51] ([i915#180] / [i915#1982])
> >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
> >    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
> > 
> >   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
> >     - shard-glk:          [PASS][52] -> [FAIL][53] ([i915#79])
> >    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> >    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> > 
> >   * igt@kms_flip@flip-vs-suspend@a-dp1:
> >     - shard-apl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +3 similar issues
> >    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
> >    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
> > 
> >   * igt@kms_flip@flip-vs-suspend@c-dp1:
> >     - shard-kbl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +1 similar issue
> >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
> >    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
> >     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109280]) +5 similar issues
> >    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
> >     - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#1888] / [i915#2546])
> >    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
> >    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
> >     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +57 similar issues
> >    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> > 
> >   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
> >     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#533]) +3 similar issues
> >    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> > 
> >   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
> >     - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#533])
> >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> >     - shard-skl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265]) +2 similar issues
> >    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> > 
> >   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
> >     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +253 similar issues
> >    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html
> > 
> >   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale:
> >     - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#5235]) +2 similar issues
> >    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
> > 
> >   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
> >     - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +3 similar issues
> >    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> > 
> >   * igt@kms_psr@psr2_suspend:
> >     - shard-iclb:         [PASS][68] -> [SKIP][69] ([fdo#109441]) +2 similar issues
> >    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb2/igt@kms_psr@psr2_suspend.html
> >    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb1/igt@kms_psr@psr2_suspend.html
> > 
> >   * igt@kms_writeback@writeback-pixel-formats:
> >     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2437]) +1 similar issue
> >    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl6/igt@kms_writeback@writeback-pixel-formats.html
> > 
> >   * igt@perf@polling:
> >     - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#1542])
> >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-skl6/igt@perf@polling.html
> >    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl7/igt@perf@polling.html
> > 
> >   * igt@perf_pmu@rc6-suspend:
> >     - shard-skl:          [PASS][73] -> [INCOMPLETE][74] ([i915#4939])
> >    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-skl9/igt@perf_pmu@rc6-suspend.html
> >    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl9/igt@perf_pmu@rc6-suspend.html
> > 
> >   * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
> >     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109291])
> >    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
> > 
> >   * igt@sysfs_clients@fair-0:
> >     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2994]) +3 similar issues
> >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl10/igt@sysfs_clients@fair-0.html
> > 
> >   * igt@sysfs_clients@pidname:
> >     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2994])
> >    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl2/igt@sysfs_clients@pidname.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@fbdev@nullptr:
> >     - {shard-rkl}:        [SKIP][78] ([i915#2582]) -> [PASS][79]
> >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@fbdev@nullptr.html
> >    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@fbdev@nullptr.html
> > 
> >   * igt@gem_eio@unwedge-stress:
> >     - {shard-tglu}:       [TIMEOUT][80] ([i915#3063] / [i915#3648]) -> [PASS][81]
> >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglu-4/igt@gem_eio@unwedge-stress.html
> >    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-tglu-4/igt@gem_eio@unwedge-stress.html
> > 
> >   * igt@gem_exec_fair@basic-deadline:
> >     - shard-glk:          [FAIL][82] ([i915#2846]) -> [PASS][83]
> >    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk9/igt@gem_exec_fair@basic-deadline.html
> >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-glk3/igt@gem_exec_fair@basic-deadline.html
> > 
> >   * igt@gem_exec_fair@basic-flow@rcs0:
> >     - shard-tglb:         [FAIL][84] ([i915#2842]) -> [PASS][85]
> >    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> >     - {shard-rkl}:        [FAIL][86] ([i915#2842]) -> [PASS][87]
> >    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-2/igt@gem_exec_fair@basic-flow@rcs0.html
> >    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-2/igt@gem_exec_fair@basic-flow@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-none@vcs0:
> >     - shard-kbl:          [FAIL][88] ([i915#2842]) -> [PASS][89] +2 similar issues
> >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
> >    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace-solo@rcs0:
> >     - shard-apl:          [FAIL][90] ([i915#2842]) -> [PASS][91]
> >    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-throttle@rcs0:
> >     - shard-iclb:         [FAIL][92] ([i915#2849]) -> [PASS][93]
> >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
> >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
> > 
> >   * igt@gem_exec_schedule@smoketest@rcs0:
> >     - {shard-rkl}:        [DMESG-WARN][94] -> [PASS][95]
> >    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@gem_exec_schedule@smoketest@rcs0.html
> >    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@gem_exec_schedule@smoketest@rcs0.html
> > 
> >   * igt@gem_exec_whisper@basic-fds-forked-all:
> >     - shard-iclb:         [INCOMPLETE][96] ([i915#1895]) -> [PASS][97]
> >    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked-all.html
> >    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb2/igt@gem_exec_whisper@basic-fds-forked-all.html
> > 
> >   * igt@i915_pm_backlight@basic-brightness:
> >     - {shard-rkl}:        [SKIP][98] ([i915#3012]) -> [PASS][99]
> >    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html
> >    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html
> > 
> >   * igt@i915_pm_dc@dc6-dpms:
> >     - {shard-rkl}:        [FAIL][100] ([i915#3989]) -> [PASS][101]
> >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html
> >    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-2/igt@i915_pm_dc@dc6-dpms.html
> > 
> >   * igt@i915_pm_rpm@modeset-non-lpsp:
> >     - {shard-dg1}:        [SKIP][102] ([i915#1397]) -> [PASS][103]
> >    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp.html
> >    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp.html
> > 
> >   * igt@kms_big_fb@linear-32bpp-rotate-180:
> >     - {shard-tglu}:       [DMESG-WARN][104] ([i915#402]) -> [PASS][105] +1 similar issue
> >    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglu-1/igt@kms_big_fb@linear-32bpp-rotate-180.html
> >    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-tglu-1/igt@kms_big_fb@linear-32bpp-rotate-180.html
> > 
> >   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> >     - {shard-rkl}:        [SKIP][106] ([i915#1845] / [i915#4098]) -> [PASS][107] +16 similar issues
> >    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> > 
> >   * igt@kms_color@pipe-a-ctm-negative:
> >     - {shard-rkl}:        [SKIP][108] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][109]
> >    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@kms_color@pipe-a-ctm-negative.html
> >    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_color@pipe-a-ctm-negative.html
> > 
> >   * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
> >     - {shard-rkl}:        [SKIP][110] ([fdo#112022] / [i915#4070]) -> [PASS][111] +1 similar issue
> >    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
> >    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
> > 
> >   * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
> >     - {shard-rkl}:        [SKIP][112] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][113] +3 similar issues
> >    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
> >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
> > 
> >   * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
> >     - {shard-rkl}:        [SKIP][114] ([fdo#111825] / [i915#4070]) -> [PASS][115] +2 similar issues
> >    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
> >    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
> > 
> >   * igt@kms_cursor_legacy@pipe-c-forked-bo:
> >     - {shard-rkl}:        [SKIP][116] ([i915#4070]) -> [PASS][117]
> >    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_cursor_legacy@pipe-c-forked-bo.html
> >    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-bo.html
> > 
> >   * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
> >     - {shard-rkl}:        [SKIP][118] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][119] +3 similar issues
> >    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
> >    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
> > 
> >   * igt@kms_fbcon_fbt@psr:
> >     - {shard-rkl}:        [SKIP][120] ([fdo#110189] / [i915#3955]) -> [PASS][121]
> >    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
> >    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> > 
> >   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
> >     - shard-glk:          [FAIL][122] ([i915#79]) -> [PASS][123] +1 similar issue
> >    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> >    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
> >     - shard-iclb:         [SKIP][124] ([i915#3701]) -> [PASS][125]
> >    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> >    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
> >     - shard-kbl:          [DMESG-WARN][126] ([i915#62] / [i915#92]) -> [PASS][127] +8 similar issues
> >    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
> >    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
> >     - {shard-rkl}:        [SKIP][128] ([i915#1849]) -> [PASS][129] +10 similar issues
> >    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> >    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> > 
> >   * igt@kms_invalid_mode@int-max-clock:
> >     - {shard-rkl}:        [SKIP][130] ([i915#4278]) -> [PASS][131]
> >    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_invalid_mode@int-max-clock.html
> >    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html
> > 
> >   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
> >     - {shard-rkl}:        [SKIP][132] ([i915#1849] / [i915#4098]) -> [PASS][133] +1 similar issue
> >    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
> >    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
> > 
> >   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
> >     - shard-apl:          [DMESG-WARN][134] ([i915#180]) -> [PASS][135] +2 similar issues
> >    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> >    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> > 
> >   * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
> >     - {shard-rkl}:        [SKIP][136] ([i915#1849] / [i915#3558]) -> [PASS][137] +1 similar issue
> >    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
> >    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
> > 
> >   * igt@kms_plane@plane-panning-top-left@pipe-b-planes:
> >     - {shard-rkl}:        [SKIP][138] ([i915#3558]) -> [PASS][139] +1 similar issue
> >    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html
> >    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
> >     - shard-skl:          [FAIL][140] ([fdo#108145] / [i915#265]) -> [PASS][141]
> >    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> >    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/shard-skl10/igt@kms_plane_alpha_blend
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22574/index.html
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
