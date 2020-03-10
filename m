Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D61CA180723
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 19:42:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31EE06E8C4;
	Tue, 10 Mar 2020 18:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E271B6E8C4;
 Tue, 10 Mar 2020 18:42:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB2CBA00C7;
 Tue, 10 Mar 2020 18:42:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 10 Mar 2020 18:42:35 -0000
Message-ID: <158386575589.1150.10601895761119482358@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/17=5D_drm/i915=3A_Add_an_implementation?=
 =?utf-8?q?_for_i915=5Fgem=5Fww=5Fctx_locking=2C_v2=2E_=28rev2=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/17] drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2. (rev2)
URL   : https://patchwork.freedesktop.org/series/74387/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8097_full -> Patchwork_16884_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16884_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16884_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16884_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_blits@basic:
    - shard-hsw:          [PASS][1] -> [DMESG-WARN][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw5/igt@gem_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw2/igt@gem_blits@basic.html

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk8/igt@gem_close@many-handles-one-vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-glk1/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl4/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl8/igt@gem_close@many-handles-one-vma.html
    - shard-skl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl6/igt@gem_close@many-handles-one-vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-skl10/igt@gem_close@many-handles-one-vma.html
    - shard-tglb:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb8/igt@gem_close@many-handles-one-vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb1/igt@gem_close@many-handles-one-vma.html
    - shard-kbl:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl7/igt@gem_close@many-handles-one-vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl2/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-snb6/igt@gem_close@many-handles-one-vma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-snb2/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb3/igt@gem_close@many-handles-one-vma.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb7/igt@gem_close@many-handles-one-vma.html

  * igt@gem_ctx_param@vm:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk5/igt@gem_ctx_param@vm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-glk3/igt@gem_ctx_param@vm.html

  * igt@gem_exec_balancer@full:
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb1/igt@gem_exec_balancer@full.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb1/igt@gem_exec_balancer@full.html

  * igt@gem_exec_balancer@full-late:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb1/igt@gem_exec_balancer@full-late.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb5/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@indices:
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl3/igt@gem_exec_balancer@indices.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl4/igt@gem_exec_balancer@indices.html

  * igt@gem_exec_schedule@pi-distinct-iova-render:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] +10 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb3/igt@gem_exec_schedule@pi-distinct-iova-render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb2/igt@gem_exec_schedule@pi-distinct-iova-render.html

  * igt@gem_exec_schedule@pi-distinct-iova-vebox:
    - shard-iclb:         [PASS][27] -> [DMESG-WARN][28] +9 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-vebox.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-vebox.html

  * igt@gem_exec_schedule@pi-shared-iova-render:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-render.html

  * igt@gem_userptr_blits@process-exit-busy:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] +10 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl5/igt@gem_userptr_blits@process-exit-busy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-skl4/igt@gem_userptr_blits@process-exit-busy.html

  * igt@gem_vm_create@async-destroy:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] +11 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl2/igt@gem_vm_create@async-destroy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl7/igt@gem_vm_create@async-destroy.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-distinct-iova-bsd1:
    - shard-iclb:         [SKIP][34] ([fdo#109276]) -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd1.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43]) ([fdo#111870]) -> ([FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50], [FAIL][51], [FAIL][52], [FAIL][53]) ([fdo#111870] / [i915#226] / [i915#478])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw5/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw4/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw2/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw4/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw5/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw5/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw1/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw1/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw4/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw2/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw6/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw2/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw4/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw6/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw7/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw4/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw6/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw1/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][54], [FAIL][55]) ([i915#1389] / [i915#1402] / [i915#92]) -> ([FAIL][56], [FAIL][57], [FAIL][58], [FAIL][59], [FAIL][60], [FAIL][61], [FAIL][62], [FAIL][63], [FAIL][64], [FAIL][65], [FAIL][66], [FAIL][67], [FAIL][68], [FAIL][69], [FAIL][70], [FAIL][71], [FAIL][72], [FAIL][73], [FAIL][74], [FAIL][75], [FAIL][76], [FAIL][77]) ([fdo#111870] / [i915#1193] / [i915#1389] / [i915#1402] / [i915#836] / [i915#92])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl6/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl6/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl4/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl3/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl1/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl4/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl4/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl6/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl2/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl6/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl7/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl3/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl7/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl1/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl4/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl3/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl6/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl4/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl7/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl4/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl1/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl4/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl7/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          [FAIL][78] ([fdo#103927]) -> ([FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95]) ([fdo#103927] / [fdo#111870] / [i915#1402] / [i915#211] / [i915#771] / [i915#836])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl1/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl7/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl4/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl3/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl6/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl3/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl3/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl1/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl8/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl7/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl1/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl6/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl6/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl2/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl7/igt@runner@aborted.html
    - shard-tglb:         [FAIL][96] ([i915#1389]) -> ([FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118]) ([fdo#111870] / [i915#1389])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb7/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb6/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb8/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb7/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb8/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb7/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb7/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb7/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb7/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb8/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb5/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb5/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb5/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb5/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb5/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb3/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb3/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb3/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb2/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb2/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb2/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb2/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt}:
    - shard-glk:          [PASS][119] -> [DMESG-WARN][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk6/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-glk5/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
    - shard-tglb:         [PASS][121] -> [DMESG-WARN][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb7/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb5/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
    - shard-kbl:          [PASS][123] -> [DMESG-WARN][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl2/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl4/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
    - shard-iclb:         [PASS][125] -> [DMESG-WARN][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb2/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb6/igt@gem_userptr_blits@map-fixed-invalidate-busy@gtt.html

  * {igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt}:
    - shard-glk:          NOTRUN -> [DMESG-WARN][127]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-glk6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_16884_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [PASS][128] -> [DMESG-WARN][129] ([i915#180]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl3/igt@gem_ctx_isolation@bcs0-s3.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl7/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [PASS][130] -> [INCOMPLETE][131] ([i915#69])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl9/igt@gem_ctx_isolation@vcs0-s3.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-skl7/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [PASS][132] -> [INCOMPLETE][133] ([i915#1402])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb7/igt@gem_ctx_persistence@close-replace-race.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][134] -> [INCOMPLETE][135] ([i915#1402])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-skl1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][136] -> [INCOMPLETE][137] ([fdo#111736])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb3/igt@gem_exec_balancer@nop.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb2/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][138] -> [SKIP][139] ([fdo#112080]) +6 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-blt:
    - shard-apl:          [PASS][140] -> [DMESG-WARN][141] ([i915#211]) +11 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl3/igt@gem_exec_schedule@pi-shared-iova-blt.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl1/igt@gem_exec_schedule@pi-shared-iova-blt.html

  * igt@gem_exec_schedule@pi-userfault-bsd1:
    - shard-kbl:          [PASS][142] -> [INCOMPLETE][143] ([i915#1381]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl6/igt@gem_exec_schedule@pi-userfault-bsd1.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl6/igt@gem_exec_schedule@pi-userfault-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-vebox:
    - shard-glk:          [PASS][144] -> [INCOMPLETE][145] ([i915#1381] / [i915#58] / [k.org#198133])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk8/igt@gem_exec_schedule@pi-userfault-vebox.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-glk1/igt@gem_exec_schedule@pi-userfault-vebox.html
    - shard-apl:          [PASS][146] -> [INCOMPLETE][147] ([fdo#103927] / [i915#1381])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl4/igt@gem_exec_schedule@pi-userfault-vebox.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl8/igt@gem_exec_schedule@pi-userfault-vebox.html
    - shard-skl:          [PASS][148] -> [INCOMPLETE][149] ([i915#1381])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl6/igt@gem_exec_schedule@pi-userfault-vebox.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-skl10/igt@gem_exec_schedule@pi-userfault-vebox.html
    - shard-tglb:         [PASS][150] -> [INCOMPLETE][151] ([i915#1381]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb8/igt@gem_exec_schedule@pi-userfault-vebox.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb1/igt@gem_exec_schedule@pi-userfault-vebox.html
    - shard-iclb:         [PASS][152] -> [INCOMPLETE][153] ([i915#1381])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb3/igt@gem_exec_schedule@pi-userfault-vebox.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb7/igt@gem_exec_schedule@pi-userfault-vebox.html

  * igt@gem_exec_schedule@preempt-hang-bsd1:
    - shard-iclb:         [PASS][154] -> [SKIP][155] ([fdo#109276]) +3 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb4/igt@gem_exec_schedule@preempt-hang-bsd1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb8/igt@gem_exec_schedule@preempt-hang-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][156] -> [SKIP][157] ([fdo#112146]) +3 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-hsw:          [PASS][158] -> [INCOMPLETE][159] ([i915#61] / [i915#796])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw1/igt@gem_pipe_control_store_loop@reused-buffer.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][160] -> [FAIL][161] ([i915#644])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-tglb:         [PASS][162] -> [DMESG-WARN][163] ([fdo#111870]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb1/igt@gem_userptr_blits@sync-unmap-after-close.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-tglb2/igt@gem_userptr_blits@sync-unmap-after-close.html
    - shard-kbl:          [PASS][164] -> [DMESG-WARN][165] ([fdo#111870]) +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl3/igt@gem_userptr_blits@sync-unmap-after-close.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-kbl1/igt@gem_userptr_blits@sync-unmap-after-close.html
    - shard-skl:          [PASS][166] -> [DMESG-WARN][167] ([fdo#111870]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl10/igt@gem_userptr_blits@sync-unmap-after-close.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-skl1/igt@gem_userptr_blits@sync-unmap-after-close.html
    - shard-apl:          [PASS][168] -> [DMESG-WARN][169] ([fdo#111870] / [i915#211]) +1 similar issue
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl7/igt@gem_userptr_blits@sync-unmap-after-close.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl7/igt@gem_userptr_blits@sync-unmap-after-close.html
    - shard-glk:          [PASS][170] -> [DMESG-WARN][171] ([fdo#111870]) +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-glk4/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-iclb:         [PASS][172] -> [DMESG-WARN][173] ([fdo#111870]) +1 similar issue
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb4/igt@gem_userptr_blits@sync-unmap-cycles.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb6/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-snb:          [PASS][174] -> [DMESG-WARN][175] ([i915#478]) +4 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-snb6/igt@gem_userptr_blits@unsync-unmap.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-snb4/igt@gem_userptr_blits@unsync-unmap.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-hsw:          [PASS][176] -> [INCOMPLETE][177] ([i915#151] / [i915#61])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw1/igt@i915_pm_rpm@gem-execbuf-stress.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw4/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@i915_selftest@live@gt_mocs:
    - shard-snb:          [PASS][178] -> [INCOMPLETE][179] ([i915#82])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-snb4/igt@i915_selftest@live@gt_mocs.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-snb6/igt@i915_selftest@live@gt_mocs.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-hsw:          [PASS][180] -> [INCOMPLETE][181] ([i915#61]) +17 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-hsw7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][182] -> [DMESG-WARN][183] ([i915#180]) +1 similar issue
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][184] -> [FAIL][185] ([fdo#108145])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][186] -> [SKIP][187] ([fdo#109441])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][188] ([fdo#112080]) -> [PASS][189] +7 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][190] ([i915#677]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [SKIP][192] ([fdo#109276] / [i915#677]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/shard-iclb1/igt@gem_exec_schedule@implic

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16884/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
