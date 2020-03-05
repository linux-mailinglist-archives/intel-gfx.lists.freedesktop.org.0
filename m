Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A2617ADC0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 19:00:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96A516E388;
	Thu,  5 Mar 2020 18:00:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710BF6E388
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 18:00:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 10:00:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="439587710"
Received: from bpaauwe-desk1.fm.intel.com (HELO
 bpaauwe-desk1.amr.corp.intel.com) ([10.105.128.11])
 by fmsmga005.fm.intel.com with ESMTP; 05 Mar 2020 10:00:27 -0800
Date: Thu, 5 Mar 2020 10:00:26 -0800
From: Bob Paauwe <bob.j.paauwe@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
Message-ID: <20200305100026.4acdea24@bpaauwe-desk1.amr.corp.intel.com>
In-Reply-To: <158296748013.19637.2610796559720199692@emeril.freedesktop.org>
References: <20200219211551.20125-1-bob.j.paauwe@intel.com>
 <158296748013.19637.2610796559720199692@emeril.freedesktop.org>
Organization: Intel Corporation
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?ing_YUV444_packed_format_support_for_skl+_=28rev4=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 29 Feb 2020 09:11:20 +0000
Patchwork <patchwork@emeril.freedesktop.org> wrote:

> == Series Details ==
> 
> Series: Adding YUV444 packed format support for skl+ (rev4)
> URL   : https://patchwork.freedesktop.org/series/73020/
> State : failure

I'm a bit confused by this.  The build changes listed at the bottom
indicate that this did use a modified IGT tree with the test patch (per
the cover-letter test-with tag) but the errors below look exactly like
what I'd expect if testing with a non-modified IGT tree.  In fact the
line number where the error occurs matches with an non-modified tree
and not the modified tree.

Did I do something wrong with the cover letter?

Do I just re-run?

Should I resubmit the series?

Bob

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8023_full -> Patchwork_16744_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16744_full absolutely
> need to be verified manually.
>   
>   If you think the reported changes have nothing to do with the
> changes introduced in Patchwork_16744_full, please notify your bug
> team to allow them to document this new failure mode, which will
> reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in
> Patchwork_16744_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_plane@pixel-format-pipe-a-planes:
>     - shard-iclb:         [PASS][1] -> [FAIL][2] +13 similar issues
>    [1]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@kms_plane@pixel-format-pipe-a-planes.html
> [2]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb3/igt@kms_plane@pixel-format-pipe-a-planes.html
> 
>   * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
>     - shard-kbl:          NOTRUN -> [FAIL][3]
>    [3]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-kbl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-pipe-b-planes:
>     - shard-skl:          [PASS][4] -> [FAIL][5] +12 similar issues
>    [4]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html
> [5]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html
>     - shard-kbl:          [PASS][6] -> [FAIL][7] +12 similar issues
>    [6]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes.html
> [7]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes.html
> 
>   * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
>     - shard-tglb:         [PASS][8] -> [FAIL][9] +19 similar issues
>    [8]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-tglb8/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
> [9]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-tglb3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
> 
>   * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
>     - shard-glk:          [PASS][10] -> [FAIL][11] +13 similar issues
>    [10]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk9/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
> [11]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-glk5/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
> 
>   * igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format:
>     - shard-apl:          [PASS][12] -> [FAIL][13] +13 similar issues
>    [12]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl3/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html
> [13]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-apl1/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:
>     - shard-iclb:         NOTRUN -> [FAIL][14]
>    [14]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16744_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_schedule@pi-common-bsd:
>     - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +2
> similar issues [15]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
> [16]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +6
> similar issues [17]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> [18]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#644])
>    [19]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> [20]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
>     - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#644])
>    [21]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
> [22]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#716])
>    [23]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl1/igt@gen9_exec_parse@allowed-single.html
> [24]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
> +3 similar issues [25]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
> [26]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
> +7 similar issues [27]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> [28]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#72])
>    [29]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> [30]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#79])
>    [31]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> [32]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#221])
>    [33]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
> [34]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#34])
>    [35]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html
> [36]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#1188]) +1
> similar issue [37]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
> [38]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145] /
> [i915#265]) +1 similar issue [39]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> [40]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
>     - shard-skl:          [PASS][41] -> [DMESG-WARN][42] ([IGT#6]) +1
> similar issue [41]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl10/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
> [42]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl3/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441])
>    [43]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> [44]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@perf_pmu@busy-vcs1:
>     - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#112080]) +9
> similar issues [45]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@perf_pmu@busy-vcs1.html
> [46]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb3/igt@perf_pmu@busy-vcs1.html
> 
>   * igt@prime_vgem@fence-wait-bsd2:
>     - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109276]) +13
> similar issues [47]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
> [48]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
>     - shard-skl:          [INCOMPLETE][49] ([i915#1197] /
> [i915#1239]) -> [PASS][50] [49]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
> [50]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
>     - shard-skl:          [FAIL][51] ([i915#679]) -> [PASS][52]
>    [51]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
> [52]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
> 
>   * {igt@gem_ctx_ringsize@active@bcs0}:
>     - shard-iclb:         [INCOMPLETE][53] ([i915#1333]) -> [PASS][54]
>    [53]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@gem_ctx_ringsize@active@bcs0.html
> [54]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb3/igt@gem_ctx_ringsize@active@bcs0.html
> 
>   * igt@gem_ctx_shared@exec-single-timeline-bsd:
>     - shard-iclb:         [SKIP][55] ([fdo#110841]) -> [PASS][56]
>    [55]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
> [56]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
> 
>   * igt@gem_exec_schedule@implicit-read-write-bsd2:
>     - shard-iclb:         [SKIP][57] ([fdo#109276] / [i915#677]) ->
> [PASS][58] [57]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html
> [58]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html
> 
>   * igt@gem_exec_schedule@pi-shared-iova-bsd:
>     - shard-iclb:         [SKIP][59] ([i915#677]) -> [PASS][60]
>    [59]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
> [60]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +5
> similar issues [61]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
> [62]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@gem_exec_schedule@promotion-bsd1:
>     - shard-iclb:         [SKIP][63] ([fdo#109276]) -> [PASS][64] +14
> similar issues [63]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
> [64]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked:
>     - shard-apl:          [INCOMPLETE][65] ([fdo#103927]) ->
> [PASS][66] [65]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl2/igt@gem_exec_whisper@basic-contexts-forked.html
> [66]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-apl2/igt@gem_exec_whisper@basic-contexts-forked.html
> 
>   * igt@gem_userptr_blits@sync-unmap-after-close:
>     - shard-glk:          [DMESG-WARN][67] ([fdo#111870] /
> [i915#836]) -> [PASS][68] [67]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk1/igt@gem_userptr_blits@sync-unmap-after-close.html
> [68]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-glk6/igt@gem_userptr_blits@sync-unmap-after-close.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70]
> +4 similar issues [69]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
> [70]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
>     - shard-skl:          [INCOMPLETE][71] ([i915#69]) -> [PASS][72]
>    [71]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl7/igt@gem_workarounds@suspend-resume-context.html
> [72]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl3/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [INCOMPLETE][73] -> [PASS][74]
>    [73]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
> [74]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][75] ([i915#454]) -> [PASS][76]
>    [75]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> [76]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
>     - shard-skl:          [FAIL][77] ([i915#54]) -> [PASS][78] +2
> similar issues [77]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
> [78]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
>     - shard-apl:          [FAIL][79] ([i915#54]) -> [PASS][80]
>    [79]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
> [80]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][81] ([IGT#5]) -> [PASS][82]
>    [81]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> [82]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84]
> +3 similar issues [83]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
> [84]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          [FAIL][85] ([fdo#108145]) -> [PASS][86]
>    [85]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> [86]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-glk:          [FAIL][87] ([i915#899]) -> [PASS][88]
>    [87]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
> [88]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         [SKIP][89] ([fdo#109441]) -> [PASS][90]
>    [89]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb7/igt@kms_psr@psr2_primary_render.html
> [90]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb2/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@perf_pmu@busy-no-semaphores-vcs1:
>     - shard-iclb:         [SKIP][91] ([fdo#112080]) -> [PASS][92] +7
> similar issues [91]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
> [92]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [SKIP][93] ([fdo#112080]) -> [FAIL][94]
> ([IGT#28]) [93]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
> [94]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [SKIP][95] ([i915#468]) -> [FAIL][96]
> ([i915#454]) [95]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
> [96]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-tglb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [FAIL][97] ([i915#46]) -> [FAIL][98]
> ([i915#79]) [97]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
> [98]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when
> computing the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
>   [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
>   [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
>   [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
>   [i915#1333]: https://gitlab.freedesktop.org/drm/intel/issues/1333
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
>   [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
> 
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * IGT: IGT_5474 -> IGTPW_4011
>   * Linux: CI_DRM_8023 -> Patchwork_16744
> 
>   CI-20190529: 20190529
>   CI_DRM_8023: fa9a02bbdfd6553ee633171f23183a115d0da577 @
> git://anongit.freedesktop.org/gfx-ci/linux IGTPW_4011:
> https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4011/index.html
> IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_16744: 8e8ab83649cddfd4640699468df891986565b31b @
> git://anongit.freedesktop.org/gfx-ci/linux piglit_4509:
> fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/index.html



-- 
--
Bob Paauwe                  
Bob.J.Paauwe@intel.com
IOTG / PED Software Organization
Intel Corp.  Folsom, CA
(916) 356-6193    

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
