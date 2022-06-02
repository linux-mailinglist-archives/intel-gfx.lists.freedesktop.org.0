Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C58E53BC4A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 18:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC58011205C;
	Thu,  2 Jun 2022 16:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 823FE11205C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 16:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654186657; x=1685722657;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1VaZTYSzBOlFfWcjAuPNtegkIgUZuZpxyCDneeJgppc=;
 b=nx06XZ0p6ETzx28MjdH7y385vZX8iuBfLMD04cq2gU9rlaEW7kXVeyd4
 rXOgkg6LqRwe48VscCCQwZlIFBql2wh12p+mgpLfM7xEKyCXnBbKlvYhm
 Qnvi7IDJB6PGJ+P0Mx9u2Bp4v8k1HYqLL70CbW6XzliubvxcDYIo4mw6t
 OLBMXdEtgW4vxyVC3ve65gPS05sJcJmA4YdJnSSfdqmJ8ftRty7FKbY+s
 USGapHEhrb39N8Ji8/ONvbJtjyoEVI0sMTtbv5y8AN8O1gchVpDbFulJR
 nlrKZl8CeMdChlaUAPPrswL5lNccqRc/e/YYhKSlONyaLE9vGbOtgYzGb w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="275728581"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="275728581"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 09:17:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="552908141"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 09:17:33 -0700
Date: Thu, 2 Jun 2022 09:17:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YpjinFRmTR25RDPv@mdroper-desk1.amr.corp.intel.com>
References: <20220601210646.615946-1-matthew.d.roper@intel.com>
 <165413332078.17951.9683885635290107891@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165413332078.17951.9683885635290107891@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_extra_registers_to_GPU_error_dump?=
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

On Thu, Jun 02, 2022 at 01:28:40AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add extra registers to GPU error dump
> URL   : https://patchwork.freedesktop.org/series/104630/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11717_full -> Patchwork_104630v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_104630v1_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104630v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 13)
> ------------------------------
> 
>   Additional (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104630v1_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [FAIL][1] ([i915#4767]) -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

The system just never came back from suspend.  Not related to this
patch.

Patch applied to drm-intel-gt-next.  Thanks Jose for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
>     - {shard-dg1}:        NOTRUN -> [SKIP][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-dg1-19/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_color@pipe-b-invalid-gamma-lut-sizes:
>     - {shard-dg1}:        NOTRUN -> [WARN][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-dg1-19/igt@kms_color@pipe-b-invalid-gamma-lut-sizes.html
> 
>   * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@c-hdmi-a1:
>     - {shard-dg1}:        NOTRUN -> [FAIL][5] +4 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-dg1-19/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@c-hdmi-a1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-edp1:
>     - {shard-rkl}:        NOTRUN -> [FAIL][6] +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check@a-edp1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1:
>     - {shard-rkl}:        NOTRUN -> [SKIP][7] +3 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - {shard-tglu}:       NOTRUN -> [DMESG-WARN][8]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-tglu-5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104630v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#658])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@feature_discovery@psr2.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb4/igt@feature_discovery@psr2.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#5784]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb7/igt@gem_eio@kms.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-tglb5/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [PASS][15] -> [SKIP][16] ([fdo#109271])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][19] ([i915#2849])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@no-bsd:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([fdo#109283])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@gem_exec_params@no-bsd.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl7/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl9/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl7/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#4613])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-snb:          [PASS][25] -> [SKIP][26] ([fdo#109271]) +2 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-snb7/igt@gem_mmap_gtt@coherency.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-snb6/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-iclb:         NOTRUN -> [WARN][27] ([i915#2658])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#768])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#4171])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb6/igt@gem_softpin@evict-single-offset.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-tglb2/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109289])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][32] -> [SKIP][33] ([i915#4281])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#5286])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110723])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([i915#2705])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl9/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl7/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl7/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_chamelium@vga-hpd-enable-disable-mode:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl6/igt@kms_chamelium@vga-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@vga-hpd-fast:
>     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl7/igt@kms_chamelium@vga-hpd-fast.html
> 
>   * igt@kms_color@pipe-d-ctm-blue-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +41 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl9/igt@kms_color@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109300] / [fdo#111066])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [fdo#109279])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271]) +45 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278]) +10 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274] / [fdo#109278])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-iclb:         [PASS][50] -> [FAIL][51] ([i915#2346])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl9/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#5287])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-4tiled.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109274])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +97 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl3/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#2122])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +12 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#3701])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280]) +10 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-apl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl2/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#5176]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#658])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [PASS][71] -> [SKIP][72] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109441]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109441])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2437])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl3/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@prime_nv_pcopy@test3_4:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109291])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@prime_nv_pcopy@test3_4.html
> 
>   * igt@sw_sync@sync_merge_same:
>     - shard-apl:          NOTRUN -> [FAIL][78] ([i915#6140])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl7/igt@sw_sync@sync_merge_same.html
> 
>   * igt@sw_sync@sync_multi_timeline_wait:
>     - shard-iclb:         NOTRUN -> [FAIL][79] ([i915#6140])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@sw_sync@sync_multi_timeline_wait.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2994])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2994])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl3/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl7/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl9/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-tglb:         [TIMEOUT][84] ([i915#3063]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-apl:          [TIMEOUT][86] ([i915#3063]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl8/igt@gem_eio@in-flight-contexts-immediate.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl4/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][88] ([i915#4525]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][90] ([i915#2842]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][92] ([i915#2842]) -> [PASS][93] +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [FAIL][94] ([i915#2842]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-snb:          [SKIP][96] ([fdo#109271]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-snb7/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_schedule@wide@rcs0:
>     - shard-apl:          [FAIL][98] ([i915#5965]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl3/igt@gem_exec_schedule@wide@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl6/igt@gem_exec_schedule@wide@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-skl:          [INCOMPLETE][100] ([i915#5843]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl4/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl9/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority:
>     - shard-iclb:         [INCOMPLETE][102] ([i915#5498]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [DMESG-WARN][104] ([i915#5591]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb3/igt@i915_selftest@live@hangcheck.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-tglb1/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [DMESG-WARN][106] ([i915#180]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl4/igt@i915_suspend@debugfs-reader.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl7/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +2 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
>     - shard-skl:          [FAIL][110] ([i915#2122]) -> [PASS][111] +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl1/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
>     - shard-apl:          [FAIL][112] ([i915#79]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][114] ([i915#3701]) -> [PASS][115] +1 similar issue
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [SKIP][116] ([fdo#109441]) -> [PASS][117] +2 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-iclb:         [SKIP][118] ([i915#5519]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [FAIL][120] ([i915#51]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl4/igt@perf@short-reads.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl4/igt@perf@short-reads.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][122] ([i915#6117]) -> [SKIP][123] ([i915#4525])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][124] ([i915#2852]) -> [FAIL][125] ([i915#2842])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][126] ([i915#658]) -> [SKIP][127] ([i915#588])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][128] ([i915#2684]) -> [FAIL][129] ([i915#2680] / [i915#2684])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
>     - shard-skl:          [SKIP][130] ([fdo#109271] / [i915#1888]) -> [SKIP][131] ([fdo#109271])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl1/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-skl6/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [FAIL][132] -> [DMESG-WARN][133] ([i915#180])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][134] ([i915#658]) -> [SKIP][135] ([i915#2920])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][136] ([fdo#111068] / [i915#658]) -> [SKIP][137] ([i915#2920])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][138] ([i915#2920]) -> [SKIP][139] ([i915#658])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][140] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][141] ([i915#5939])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [FAIL][142] ([i915#5939]) -> [SKIP][143] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/shard-iclb4/igt@kms_psr2_su@page_flip-p010.html
> 
>   
> 
> ### Piglit changes ###
> 
> #### Issues hit ####
> 
>   * spec@ext_transform_feedback@tessellation triangle_strip flat_first:
>     - pig-kbl-iris:       NOTRUN -> [INCOMPLETE][144] ([i915#4747])
>    [144]: None
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
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
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
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
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
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
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4241]: https://gitlab.freedesktop.org/drm/intel/issues/4241
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4747]: https://gitlab.freedesktop.org/drm/intel/issues/4747
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4929]: https://gitlab.freedesktop.org/drm/intel/issues/4929
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>   [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5303]: https://gitlab.freedesktop.org/drm/intel/issues/5303
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5498]: https://gitlab.freedesktop.org/drm/intel/issues/5498
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#5965]: https://gitlab.freedesktop.org/drm/intel/issues/5965
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
>   [i915#6076]: https://gitlab.freedesktop.org/drm/intel/issues/6076
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11717 -> Patchwork_104630v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11717: 9b2cd0320680e7397a9d7bd18eeed5e6a8b3f713 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6504: b31fd736fe7c30a111cca9a76255cad7c18d58db @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104630v1: 9b2cd0320680e7397a9d7bd18eeed5e6a8b3f713 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104630v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
