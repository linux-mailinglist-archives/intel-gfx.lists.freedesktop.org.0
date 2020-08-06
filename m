Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B818723E041
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 20:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244F26E8FD;
	Thu,  6 Aug 2020 18:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32226E8FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 18:21:08 +0000 (UTC)
IronPort-SDR: AYFoNxyyB7W4Z0OSNjeCY5HlxsYWMBbhR9D4LTxQPRNLfJwwFAlBnLTeLrdqPYaoJtPGH5omMv
 FT6Smeo+shrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="132449621"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="132449621"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 11:21:08 -0700
IronPort-SDR: hRbWHjlt7yqq/UvkX2/D0JQyu4dToa0Zjbys81WqtjbCFK4zcjXor9axrU4KjT0/PyeHhzsKW+
 T5/E+zYlxNPg==
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="276460525"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 11:21:07 -0700
Date: Thu, 6 Aug 2020 21:20:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>
Message-ID: <20200806182053.GC4241@ideak-desk.fi.intel.com>
References: <20200805150056.24248-1-imre.deak@intel.com>
 <159666157363.4768.11312774892700058613@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159666157363.4768.11312774892700058613@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5/tgl=3A_Fix_TC-cold_block/unblock_sequence?=
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

On Wed, Aug 05, 2020 at 09:06:13PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915/tgl: Fix TC-cold block/unblock sequence
> URL   : https://patchwork.freedesktop.org/series/80302/
> State : success

Pushed to -dinq, thanks for the review.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8845_full -> Patchwork_18311_full
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
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18311_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@bonded-early:
>     - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#2079])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-kbl1/igt@gem_exec_balancer@bonded-early.html
> 
>   * igt@gem_exec_balancer@nop:
>     - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#2268])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-iclb2/igt@gem_exec_balancer@nop.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-iclb2/igt@gem_exec_balancer@nop.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#1635])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-apl7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-apl2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-180:
>     - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-180.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
> 
>   * igt@kms_color@pipe-a-gamma:
>     - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#71])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-skl3/igt@kms_color@pipe-a-gamma.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-skl3/igt@kms_color@pipe-a-gamma.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
>     - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#300])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:
>     - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
>     - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#1982])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-apl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-apl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +8 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format:
>     - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +12 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-skl7/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-skl2/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@prime_busy@after@vecs0:
>     - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#2258]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-hsw1/igt@prime_busy@after@vecs0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-hsw4/igt@prime_busy@after@vecs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_create@forked:
>     - shard-glk:          [DMESG-WARN][29] ([i915#118] / [i915#95]) -> [PASS][30] +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-glk6/igt@gem_exec_create@forked.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-glk5/igt@gem_exec_create@forked.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-active:
>     - shard-snb:          [TIMEOUT][31] ([i915#1958]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-snb2/igt@gem_exec_reloc@basic-wc-cpu-active.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-snb5/igt@gem_exec_reloc@basic-wc-cpu-active.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][33] ([i915#1436] / [i915#716]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-glk5/igt@gen9_exec_parse@allowed-all.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-glk8/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_selftest@perf@request:
>     - shard-tglb:         [INCOMPLETE][35] ([i915#1823]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-tglb5/igt@i915_selftest@perf@request.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-tglb7/igt@i915_selftest@perf@request.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
>     - shard-glk:          [DMESG-FAIL][37] ([i915#118] / [i915#95]) -> [PASS][38] +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
>     - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +7 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
>     - shard-hsw:          [INCOMPLETE][43] ([i915#2055]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
> 
>   * igt@kms_flip_tiling@flip-changes-tiling-yf:
>     - shard-kbl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-yf.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling-yf.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack:
>     - shard-tglb:         [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [PASS][50] +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
>     - shard-skl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +5 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-skl3/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-skl10/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
> 
>   * igt@prime_busy@after-wait@vcs0:
>     - shard-hsw:          [FAIL][53] ([i915#2258]) -> [PASS][54] +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-hsw1/igt@prime_busy@after-wait@vcs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-hsw4/igt@prime_busy@after-wait@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-snb:          [TIMEOUT][55] ([i915#1958]) -> [FAIL][56] ([i915#1930])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@kms_color@pipe-c-ctm-max:
>     - shard-snb:          [TIMEOUT][57] ([i915#1958]) -> [SKIP][58] ([fdo#109271]) +3 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-snb2/igt@kms_color@pipe-c-ctm-max.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-snb5/igt@kms_color@pipe-c-ctm-max.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          [TIMEOUT][59] ([i915#1319] / [i915#1958]) -> [TIMEOUT][60] ([i915#1319])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-kbl6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-apl:          [DMESG-FAIL][61] ([fdo#108145] / [i915#1635] / [i915#1982]) -> [FAIL][62] ([fdo#108145] / [i915#1635] / [i915#265])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [DMESG-WARN][63] ([i915#1982]) -> [FAIL][64] ([fdo#108145] / [i915#265])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8845/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
>   [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
>   [i915#2258]: https://gitlab.freedesktop.org/drm/intel/issues/2258
>   [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_8845 -> Patchwork_18311
> 
>   CI-20190529: 20190529
>   CI_DRM_8845: a486392fed875e0b9154eaeb4bf6a4193484e0b3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5758: bb34603947667cb44ed9ff0db8dccbb9d3f42357 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18311: 26989606f3cd7e4b6c55a672e426457f3df6ebbb @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18311/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
