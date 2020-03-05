Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0F517A40E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 12:20:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E483F6E264;
	Thu,  5 Mar 2020 11:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE6E56E25B;
 Thu,  5 Mar 2020 11:19:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 03:19:58 -0800
X-IronPort-AV: E=Sophos;i="5.70,517,1574150400"; d="scan'208";a="259154739"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 03:19:56 -0800
Message-ID: <0f11ef94e835e8a0ca076a5e0224b2a91d15444f.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 05 Mar 2020 12:19:54 +0100
In-Reply-To: <20200304095841.8781-1-janusz.krzysztofik@linux.intel.com>
References: <20200304095841.8781-1-janusz.krzysztofik@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZ2Vt?=
 =?utf-8?q?=5Fuserptr=5Fblits=3A_mmap-offset-invalidate_enhancements?=
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
Cc: intel-gfx@lists.freedesktop.org, Martin Peres <martin.peres@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Here are my comments to CI results from testing the IGT changes on
Trybot with kernel change that prevents non-GTT mmap-offset mapping to
userptr reverted.

On Thu, 2020-03-05 at 06:15 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: gem_userptr_blits: mmap-offset-invalidate enhancements
> URL   : https://patchwork.freedesktop.org/series/74255/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8063_full -> Trybot_5722_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Trybot_5722_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Trybot_5722_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Trybot_5722_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html

This has nothing to do with the IGT changes.

> 
>   * {igt@gem_userptr_blits@mmap-offset-invalidate-active@gtt} (NEW):
>     - shard-iclb:         NOTRUN -> [SKIP][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb7/igt@gem_userptr_blits@mmap-offset-invalidate-active@gtt.html
>     - shard-tglb:         NOTRUN -> [SKIP][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb7/igt@gem_userptr_blits@mmap-offset-invalidate-active@gtt.html
> 
>   * {igt@gem_userptr_blits@mmap-offset-invalidate-active@wb} (NEW):
>     - shard-snb:          NOTRUN -> [DMESG-FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb4/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html
>     - shard-kbl:          NOTRUN -> [DMESG-FAIL][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl6/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html
>     - shard-glk:          NOTRUN -> [DMESG-FAIL][7]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-glk5/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][8]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl9/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][9]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl1/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html
>     - shard-tglb:         NOTRUN -> [DMESG-FAIL][10]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb7/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html
>     - shard-iclb:         NOTRUN -> [INCOMPLETE][11]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb7/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html
> 
>   * {igt@gem_userptr_blits@mmap-offset-invalidate-active@wc} (NEW):
>     - shard-tglb:         NOTRUN -> [INCOMPLETE][12]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb7/igt@gem_userptr_blits@mmap-offset-invalidate-active@wc.html
>     - shard-skl:          NOTRUN -> [INCOMPLETE][13]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl9/igt@gem_userptr_blits@mmap-offset-invalidate-active@wc.html

Here we have driver issues reported by the active subtest variant when
run on a kernel with the lockdep loop preventive patch reverted.

> 
>   * igt@i915_pm_backlight@fade_with_dpms:
>     - shard-iclb:         [PASS][14] -> [SKIP][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb8/igt@i915_pm_backlight@fade_with_dpms.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb2/igt@i915_pm_backlight@fade_with_dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          [PASS][16] -> [FAIL][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl10/igt@i915_pm_dc@dc6-psr.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl2/igt@i915_pm_dc@dc6-psr.html

The above two also have nothing to do with the IGT changes.

Thanks,
Janusz


> 
>   * igt@runner@aborted:
>     - shard-tglb:         NOTRUN -> ([FAIL][18], [FAIL][19], [FAIL][20]) ([fdo#111870])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb7/igt@runner@aborted.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb5/igt@runner@aborted.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb2/igt@runner@aborted.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_schedule@pi-userfault-bsd1:
>     - shard-iclb:         [SKIP][21] ([fdo#109276]) -> [INCOMPLETE][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd1.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd1.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@gem_userptr_blits@mmap-offset-invalidate@gtt}:
>     - shard-iclb:         [SKIP][23] ([i915#1317]) -> [SKIP][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb8/igt@gem_userptr_blits@mmap-offset-invalidate@gtt.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb3/igt@gem_userptr_blits@mmap-offset-invalidate@gtt.html
>     - shard-tglb:         [SKIP][25] ([i915#1317]) -> [SKIP][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-tglb5/igt@gem_userptr_blits@mmap-offset-invalidate@gtt.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb2/igt@gem_userptr_blits@mmap-offset-invalidate@gtt.html
> 
>   * {igt@gem_userptr_blits@mmap-offset-invalidate@wb}:
>     - shard-iclb:         [SKIP][27] ([i915#1317]) -> [DMESG-WARN][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb8/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb3/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
>     - shard-kbl:          [SKIP][29] ([fdo#109271]) -> [DMESG-WARN][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl1/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl4/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
>     - shard-glk:          [SKIP][31] ([fdo#109271]) -> [DMESG-WARN][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk7/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-glk8/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
>     - shard-skl:          [SKIP][33] ([fdo#109271]) -> [DMESG-WARN][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl7/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl9/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
>     - shard-tglb:         [SKIP][35] ([i915#1317]) -> [DMESG-WARN][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-tglb5/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb2/igt@gem_userptr_blits@mmap-offset-invalidate@wb.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_8063_full and Trybot_5722_full:
> 
> ### New IGT tests (4) ###
> 
>   * igt@gem_userptr_blits@mmap-offset-invalidate-active:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_userptr_blits@mmap-offset-invalidate-active@gtt:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
>     - Statuses : 6 dmesg-fail(s) 1 incomplete(s)
>     - Exec time: [0.0, 3.02] s
> 
>   * igt@gem_userptr_blits@mmap-offset-invalidate-active@wc:
>     - Statuses : 5 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Trybot_5722_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@vcs1-dirty-create:
>     - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +9 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html
> 
>   * igt@gem_exec_balancer@smoke:
>     - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#110854])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@gem_exec_balancer@smoke.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb3/igt@gem_exec_balancer@smoke.html
> 
>   * igt@gem_exec_schedule@implicit-both-bsd:
>     - shard-iclb:         [PASS][41] -> [SKIP][42] ([i915#677])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html
> 
>   * igt@gem_exec_schedule@implicit-write-read-bsd1:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276] / [i915#677]) +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd1.html
> 
>   * igt@gem_exec_schedule@promotion-bsd:
>     - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#112146]) +3 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb5/igt@gem_exec_schedule@promotion-bsd.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb4/igt@gem_exec_schedule@promotion-bsd.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#644])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
>     - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#644])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-snb:          [PASS][51] -> [DMESG-WARN][52] ([i915#478] / [i915#793])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@sync-unmap-after-close:
>     - shard-snb:          [PASS][53] -> [DMESG-WARN][54] ([fdo#111870] / [i915#478])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb6/igt@gem_userptr_blits@sync-unmap-after-close.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb4/igt@gem_userptr_blits@sync-unmap-after-close.html
> 
>   * igt@i915_pm_backlight@fade_with_dpms:
>     - shard-tglb:         [PASS][55] -> [SKIP][56] ([i915#1311])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-tglb5/igt@i915_pm_backlight@fade_with_dpms.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb7/igt@i915_pm_backlight@fade_with_dpms.html
> 
>   * igt@kms_color@pipe-a-ctm-max:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#168])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl8/igt@kms_color@pipe-a-ctm-max.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl5/igt@kms_color@pipe-a-ctm-max.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
>     - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#54]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
>     - shard-kbl:          [PASS][61] -> [FAIL][62] ([i915#54])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
>     - shard-apl:          [PASS][63] -> [FAIL][64] ([i915#54])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
>     - shard-snb:          [PASS][65] -> [DMESG-WARN][66] ([i915#478])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-apl:          [PASS][67] -> [INCOMPLETE][68] ([fdo#103927])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl3/igt@kms_flip@flip-vs-suspend.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl4/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-kbl:          [PASS][69] -> [DMESG-WARN][70] ([i915#180]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#1188])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-apl:          [PASS][73] -> [DMESG-WARN][74] ([i915#180]) +4 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][75] -> [FAIL][76] ([fdo#108145]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109642] / [fdo#111068])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm:
>     - shard-skl:          [PASS][81] -> [SKIP][82] ([fdo#109271]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
>     - shard-tglb:         [PASS][83] -> [SKIP][84] ([fdo#112015])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-tglb6/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
>     - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109278])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
>     - shard-glk:          [PASS][87] -> [SKIP][88] ([fdo#109271])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk1/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-glk3/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
> 
>   * igt@prime_busy@hang-bsd2:
>     - shard-iclb:         [PASS][89] -> [SKIP][90] ([fdo#109276]) +21 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb4/igt@prime_busy@hang-bsd2.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb3/igt@prime_busy@hang-bsd2.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_schedule@fifo-bsd1:
>     - shard-iclb:         [SKIP][91] ([fdo#109276]) -> [PASS][92] +11 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html
> 
>   * igt@gem_exec_schedule@in-order-bsd:
>     - shard-iclb:         [SKIP][93] ([fdo#112146]) -> [PASS][94] +8 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
> 
>   * igt@gem_exec_schedule@pi-shared-iova-bsd:
>     - shard-iclb:         [SKIP][95] ([i915#677]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +4 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
> 
>   * {igt@gem_userptr_blits@mmap-offset-invalidate@uc}:
>     - shard-iclb:         [SKIP][99] ([i915#1317]) -> [PASS][100] +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb8/igt@gem_userptr_blits@mmap-offset-invalidate@uc.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb3/igt@gem_userptr_blits@mmap-offset-invalidate@uc.html
> 
>   * {igt@gem_userptr_blits@mmap-offset-invalidate@wc}:
>     - shard-apl:          [SKIP][101] ([fdo#109271]) -> [PASS][102] +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl8/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl2/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>     - shard-glk:          [SKIP][103] ([fdo#109271]) -> [PASS][104] +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk7/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-glk8/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>     - shard-tglb:         [SKIP][105] ([i915#1317]) -> [PASS][106] +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-tglb5/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb2/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>     - shard-kbl:          [SKIP][107] ([fdo#109271]) -> [PASS][108] +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl1/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl4/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>     - shard-skl:          [SKIP][109] ([fdo#109271]) -> [PASS][110] +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl7/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl9/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>     - shard-snb:          [SKIP][111] ([fdo#109271]) -> [PASS][112] +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb2/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb4/igt@gem_userptr_blits@mmap-offset-invalidate@wc.html
> 
>   * igt@gem_userptr_blits@sync-unmap:
>     - shard-snb:          [DMESG-WARN][113] ([fdo#111870] / [i915#478]) -> [PASS][114] +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb5/igt@gem_userptr_blits@sync-unmap.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb5/igt@gem_userptr_blits@sync-unmap.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [INCOMPLETE][115] ([i915#716]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl10/igt@gen9_exec_parse@allowed-single.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-iclb:         [FAIL][117] ([i915#413]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@i915_pm_rps@reset.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb4/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [DMESG-WARN][119] ([i915#180]) -> [PASS][120] +3 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl1/igt@i915_suspend@sysfs-reader.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl8/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [FAIL][121] ([i915#72]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
>     - shard-skl:          [FAIL][123] ([i915#52] / [i915#54]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-glk:          [FAIL][125] ([i915#79]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-skl:          [INCOMPLETE][127] ([i915#221]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl8/igt@kms_flip@flip-vs-suspend.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl3/igt@kms_flip@flip-vs-suspend.html
>     - shard-snb:          [DMESG-WARN][129] ([i915#42]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb6/igt@kms_flip@flip-vs-suspend.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb5/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-snb:          [DMESG-WARN][131] ([i915#478]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          [FAIL][133] ([fdo#108145]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
>     - shard-skl:          [DMESG-WARN][135] ([IGT#6]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-skl1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-iclb:         [SKIP][137] ([fdo#109441]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@kms_psr@psr2_primary_blt.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][139] ([i915#31]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl2/igt@kms_setmode@basic.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl7/igt@kms_setmode@basic.html
> 
>   * igt@perf_pmu@busy-no-semaphores-vcs1:
>     - shard-iclb:         [SKIP][141] ([fdo#112080]) -> [PASS][142] +10 similar issues
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_schedule@pi-userfault-bsd:
>     - shard-iclb:         [INCOMPLETE][143] -> [SKIP][144] ([i915#677])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [FAIL][145] -> [SKIP][146] ([i915#468])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-kbl:          [DMESG-WARN][147] ([i915#180]) -> [INCOMPLETE][148] ([fdo#103665] / [i915#600])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl6/igt@kms_flip@flip-vs-suspend.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl2/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          [FAIL][149] ([i915#92]) -> ([FAIL][150], [FAIL][151], [FAIL][152]) ([fdo#111870] / [i915#92])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl2/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl4/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl3/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-kbl6/igt@runner@aborted.html
>     - shard-apl:          [FAIL][153] ([fdo#103927]) -> ([FAIL][154], [FAIL][155]) ([fdo#103927] / [fdo#111870] / [i915#211])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl4/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl3/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-apl2/igt@runner@aborted.html
>     - shard-snb:          ([FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([fdo#111870] / [i915#1077] / [i915#698]) -> ([FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172]) ([fdo#111870] / [i915#1077])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb2/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb4/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb5/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb6/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb5/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb6/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb6/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb6/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb5/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb5/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/shard-snb4/igt@runner@aborted.html
>    [167]: https://intel-g
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_5722/index.html

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
