Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCA25A957E
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 13:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E34910E69F;
	Thu,  1 Sep 2022 11:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC13410E5C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 11:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662030878; x=1693566878;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Mw6qnmBqoxoXV1TAGrDeRIW3pfNAtQ2S+WA7ce14k1Q=;
 b=QGI7NMWLwxsE+C+JyxEpS1oPomCX0QdIb0gJ4M8DlFAb/0eamI16WZ25
 +qumHaCuaHhqoUaPfuP4uiiRy7W2hnCpVapcBnW56OrjYiTZFHj178eRE
 dLFe3v0axT3U1VGPocundnrFBSnUShg8F4e1DjLJ0SpGXbtQblYWv9NSm
 FHLF7Abx9aRVlC+BF8odr8P17Uw9XAN72PEjCugmyssVoeBBW8Do95EMC
 G4NcHyjm764atYfYcUCxKKx2cQ2qG8Zp97t+4cyA3NeXD3fkhBJW6UaVk
 Tbih6P2NvnD7i8mi+3w1yX1yTY0E/+gzOwrcblAQjwX8JEbULkVBeCXAS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="296969760"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="296969760"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 04:14:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="673803814"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 04:14:36 -0700
Date: Thu, 1 Sep 2022 14:14:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YxCUGNlnmnnEExMo@ideak-desk.fi.intel.com>
References: <20220830085158.577157-1-mitulkumar.ajitkumar.golani@intel.com>
 <166195813044.4257.4545755678859251383@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <166195813044.4257.4545755678859251383@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Fix_warning_callstack_for_imbalance_wakeref_?=
 =?utf-8?b?KHJldjcp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 31, 2022 at 03:02:10PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Fix warning callstack for imbalance wakeref (rev7)
> URL   : https://patchwork.freedesktop.org/series/107211/
> State : success

Thanks for the patch, pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12050_full -> Patchwork_107211v7_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (11 -> 12)
> ------------------------------
> 
>   Additional (1): shard-rkl 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_107211v7_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-tglb:         NOTRUN -> [SKIP][1] ([fdo#109314])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@engines-mixed-process:
>     - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-snb4/igt@gem_ctx_persistence@engines-mixed-process.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-iclb:         [PASS][3] -> [TIMEOUT][4] ([i915#3070])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb7/igt@gem_eio@in-flight-contexts-1us.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-iclb8/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][5] ([i915#3354])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-snb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2846])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-apl:          NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +3 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][14] -> [SKIP][15] ([i915#2190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb1/igt@gem_huc_copy@huc-copy.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][18] ([i915#5161])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][19] ([i915#2658])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-snb4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#3297])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][21] ([i915#2724])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-snb4/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#5566] / [i915#716])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
>     - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#5566] / [i915#716])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl6/igt@gen9_exec_parse@allowed-single.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#2527] / [i915#2856])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#1937])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][28] -> [INCOMPLETE][29] ([i915#3921])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-snb6/igt@i915_selftest@live@hangcheck.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-snb4/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl1/igt@i915_suspend@debugfs-reader.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl3/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111614]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615] / [i915#3689])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_rc_ccs_cc:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#6095])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-snb4/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color_chamelium@ctm-blue-to-red:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl2/igt@kms_color_chamelium@ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@ctm-red-to-blue:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl1/igt@kms_color_chamelium@ctm-red-to-blue.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:
>     - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +2 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl7/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109274] / [fdo#111825] / [i915#3637])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#2672]) +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#3555])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#6497])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271]) +274 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +85 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:
>     - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109280] / [fdo#111825]) +3 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          [PASS][50] -> [FAIL][51] ([i915#1188]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +117 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl2/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658]) +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl1/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441]) +3 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [PASS][58] -> [SKIP][59] ([i915#5519])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#3555])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#533])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl7/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#2530])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#5639])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb3/igt@perf@polling-parameterized.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb2/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@nv_self_import:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109291])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@prime_nv_api@nv_self_import.html
> 
>   * igt@sysfs_clients@create:
>     - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl1/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#2994])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-tglb:         [INCOMPLETE][68] -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb2/igt@device_reset@unbind-reset-rebind.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@gem_busy@close-race:
>     - shard-snb:          [TIMEOUT][70] ([i915#5748]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-snb4/igt@gem_busy@close-race.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-snb6/igt@gem_busy@close-race.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-kbl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglb:         [FAIL][74] ([i915#2842]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [FAIL][76] ([i915#2842]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][78] ([i915#2842]) -> [PASS][79] +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81] +5 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl1/igt@i915_suspend@sysfs-reader.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl7/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglb:         [FAIL][82] ([i915#3743]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-tglb7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@legacy:
>     - shard-iclb:         [FAIL][84] ([i915#5072]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@legacy.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-iclb1/igt@kms_cursor_legacy@cursor-vs-flip@legacy.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [DMESG-FAIL][86] ([i915#180]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][88] ([fdo#109441]) -> [PASS][89] +2 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [FAIL][90] ([i915#4767]) -> [INCOMPLETE][91] ([i915#180] / [i915#4939] / [i915#6598])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][92] ([fdo#111068] / [i915#658]) -> [SKIP][93] ([i915#2920])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl3/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl1/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl8/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl2/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl3/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl1/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl7/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl7/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl6/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl1/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl6/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl1/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-apl3/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716] / [i915#92])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl1/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl1/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/shard-kbl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3354]: https://gitlab.freedesktop.org/drm/intel/issues/3354
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12050 -> Patchwork_107211v7
> 
>   CI-20190529: 20190529
>   CI_DRM_12050: 1be2e4f9c0376496419ad26a35c516de050f746d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6638: 9338ab3ec085292817ab1e74d1f2fb90b6a98332 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_107211v7: 1be2e4f9c0376496419ad26a35c516de050f746d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107211v7/index.html
