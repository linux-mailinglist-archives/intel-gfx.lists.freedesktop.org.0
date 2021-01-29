Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A04053089DF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 16:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD0A46EB5F;
	Fri, 29 Jan 2021 15:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 844B56EB5E;
 Fri, 29 Jan 2021 15:28:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74849A0009;
 Fri, 29 Jan 2021 15:28:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 29 Jan 2021 15:28:21 -0000
Message-ID: <161193410145.15524.9991314908733847186@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev14=29?=
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
Content-Type: multipart/mixed; boundary="===============1426776445=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1426776445==
Content-Type: multipart/alternative;
 boundary="===============2351808741763043192=="

--===============2351808741763043192==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev14)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9695_full -> Patchwork_19530_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19530_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19530_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19530_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk8/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk4/igt@gem_exec_reloc@basic-many-active@vecs0.html
    - shard-apl:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl4/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl1/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_userptr_blits@readonly-mmap-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb1/igt@gem_userptr_blits@readonly-mmap-unsync.html
    - shard-iclb:         NOTRUN -> [SKIP][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@gem_userptr_blits@readonly-mmap-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         [PASS][7] -> [SKIP][8] +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb7/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-iclb:         [PASS][9] -> [SKIP][10] +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb8/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb4/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@bb-large:
    - shard-kbl:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl2/igt@gen9_exec_parse@bb-large.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl4/igt@gen9_exec_parse@bb-large.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_backlight@fade_with_dpms:
    - shard-iclb:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb4/igt@i915_pm_backlight@fade_with_dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb8/igt@i915_pm_backlight@fade_with_dpms.html

  
#### Warnings ####

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglb:         [SKIP][17] ([fdo#110542]) -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb3/igt@gem_userptr_blits@coherency-unsync.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb8/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglb:         [SKIP][19] ([fdo#110426] / [i915#1704]) -> [SKIP][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-iclb:         [SKIP][21] ([fdo#110426] / [i915#1704]) -> [SKIP][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          [INCOMPLETE][23] ([i915#2502] / [i915#2667]) -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl3/igt@gem_userptr_blits@vma-merge.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl4/igt@gem_userptr_blits@vma-merge.html
    - shard-iclb:         [INCOMPLETE][25] ([i915#2502] / [i915#2667]) -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb8/igt@gem_userptr_blits@vma-merge.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb8/igt@gem_userptr_blits@vma-merge.html
    - shard-glk:          [INCOMPLETE][27] ([i915#2502] / [i915#2667]) -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk9/igt@gem_userptr_blits@vma-merge.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk9/igt@gem_userptr_blits@vma-merge.html
    - shard-kbl:          [INCOMPLETE][29] ([i915#2502] / [i915#2667]) -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl1/igt@gem_userptr_blits@vma-merge.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl6/igt@gem_userptr_blits@vma-merge.html
    - shard-tglb:         [INCOMPLETE][31] ([i915#2502] / [i915#2667]) -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb6/igt@gem_userptr_blits@vma-merge.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb2/igt@gem_userptr_blits@vma-merge.html
    - shard-skl:          [INCOMPLETE][33] ([i915#2502] / [i915#2667]) -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl9/igt@gem_userptr_blits@vma-merge.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl5/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@bb-large:
    - shard-skl:          [SKIP][35] ([fdo#109271]) -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl5/igt@gen9_exec_parse@bb-large.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl2/igt@gen9_exec_parse@bb-large.html

  * igt@kms_color@pipe-c-legacy-gamma-reset:
    - shard-kbl:          [FAIL][37] ([i915#2964]) -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl7/igt@kms_color@pipe-c-legacy-gamma-reset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl1/igt@kms_color@pipe-c-legacy-gamma-reset.html
    - shard-apl:          [FAIL][39] ([i915#2964]) -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl8/igt@kms_color@pipe-c-legacy-gamma-reset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl4/igt@kms_color@pipe-c-legacy-gamma-reset.html
    - shard-glk:          [FAIL][41] ([i915#2964]) -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk9/igt@kms_color@pipe-c-legacy-gamma-reset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk6/igt@kms_color@pipe-c-legacy-gamma-reset.html
    - shard-skl:          [FAIL][43] ([i915#2964]) -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl1/igt@kms_color@pipe-c-legacy-gamma-reset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl6/igt@kms_color@pipe-c-legacy-gamma-reset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_userptr_blits@sd-probe}:
    - shard-glk:          [PASS][45] -> [FAIL][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk3/igt@gem_userptr_blits@sd-probe.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk6/igt@gem_userptr_blits@sd-probe.html
    - shard-apl:          [PASS][47] -> [FAIL][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl8/igt@gem_userptr_blits@sd-probe.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl2/igt@gem_userptr_blits@sd-probe.html
    - shard-skl:          [PASS][49] -> [FAIL][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl4/igt@gem_userptr_blits@sd-probe.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl7/igt@gem_userptr_blits@sd-probe.html
    - shard-tglb:         [PASS][51] -> [FAIL][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb7/igt@gem_userptr_blits@sd-probe.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb6/igt@gem_userptr_blits@sd-probe.html
    - shard-iclb:         [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb2/igt@gem_userptr_blits@sd-probe.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb3/igt@gem_userptr_blits@sd-probe.html

  * {igt@gem_userptr_blits@set-cache-level}:
    - shard-kbl:          [PASS][55] -> [FAIL][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl6/igt@gem_userptr_blits@set-cache-level.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl2/igt@gem_userptr_blits@set-cache-level.html
    - shard-snb:          [PASS][57] -> [FAIL][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-snb7/igt@gem_userptr_blits@set-cache-level.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-snb2/igt@gem_userptr_blits@set-cache-level.html

  
Known issues
------------

  Here are the changes found in Patchwork_19530_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#658]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@feature_discovery@psr2.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2846])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][62] -> [FAIL][63] ([i915#2842]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][64] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@bcs0:
    - shard-apl:          [PASS][67] -> [FAIL][68] ([i915#2389]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl4/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl1/igt@gem_exec_reloc@basic-many-active@bcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [PASS][69] -> [FAIL][70] ([i915#2389]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk8/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [PASS][71] -> [SKIP][72] ([fdo#109271]) +8 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-snb6/igt@gem_userptr_blits@dmabuf-sync.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-snb7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@readonly-mmap-unsync:
    - shard-snb:          NOTRUN -> [SKIP][73] ([fdo#109271])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-snb5/igt@gem_userptr_blits@readonly-mmap-unsync.html
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl1/igt@gem_userptr_blits@readonly-mmap-unsync.html
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl1/igt@gem_userptr_blits@readonly-mmap-unsync.html
    - shard-glk:          NOTRUN -> [SKIP][76] ([fdo#109271])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk2/igt@gem_userptr_blits@readonly-mmap-unsync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-skl:          [PASS][77] -> [SKIP][78] ([fdo#109271]) +6 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl9/igt@gem_userptr_blits@readonly-unsync.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl3/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-glk:          [PASS][79] -> [SKIP][80] ([fdo#109271]) +8 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk9/igt@gem_userptr_blits@relocations.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk9/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-apl:          [PASS][81] -> [SKIP][82] ([fdo#109271]) +8 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl4/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl1/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-kbl:          [PASS][83] -> [SKIP][84] ([fdo#109271]) +7 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl4/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][85] -> [INCOMPLETE][86] ([i915#198])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl8/igt@i915_module_load@reload-with-fault-injection.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-kbl:          [PASS][87] -> [INCOMPLETE][88] ([i915#1373])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl7/igt@i915_module_load@reload-with-fault-injection.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-apl:          [PASS][89] -> [INCOMPLETE][90] ([i915#1373])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl2/igt@i915_module_load@reload-with-fault-injection.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#110892])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#1769])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#110723]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_color@pipe-a-degamma:
    - shard-iclb:         NOTRUN -> [FAIL][94] ([i915#1149])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109284] / [fdo#111827])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-kbl:          [PASS][97] -> [FAIL][98] ([i915#54])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
    - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#54])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
    - shard-apl:          [PASS][101] -> [FAIL][102] ([i915#54])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [PASS][103] -> [FAIL][104] ([i915#54]) +6 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          NOTRUN -> [FAIL][105] ([i915#54])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_dp_dsc@basic-dsc-enable-dp:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109349])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-dp.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109274])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#79])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
    - shard-tglb:         [PASS][110] -> [FAIL][111] ([i915#2598])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][112] -> [FAIL][113] ([i915#2122]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-apl:          [PASS][114] -> [FAIL][115] ([i915#49])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
    - shard-glk:          [PASS][116] -> [FAIL][117] ([i915#49])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
    - shard-kbl:          [PASS][118] -> [FAIL][119] ([i915#49])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109280]) +6 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence:
    - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271]) +33 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-iclb:         [PASS][122] -> [INCOMPLETE][123] ([i915#1185] / [i915#1373] / [i915#2828])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb5/igt@kms_hdr@bpc-switch-suspend.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][124] -> [FAIL][125] ([fdo#108145] / [i915#265])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][126] ([fdo#108145] / [i915#265])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109278]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][129] -> [SKIP][130] ([fdo#109441]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vrr@flipline:
    - shard-iclb:         NOTRUN -> [SKIP][131] ([fdo#109502])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_vrr@flipline.html

  * igt@nouveau_crc@pipe-b-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([i915#2530])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@nouveau_crc@pipe-b-source-outp-complete.html

  * igt@perf@polling:
    - shard-skl:          [PASS][133] -> [FAIL][134] ([i915#1542]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl3/igt@perf@polling.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl7/igt@perf@polling.html

  * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([fdo#109291])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][136] ([i915#2842]) -> [PASS][137] +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][138] ([i915#2842]) -> [PASS][139] +2 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][140] ([i915#2842]) -> [PASS][141] +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][142] ([i915#2190]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb5/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][144] ([i915#1436] / [i915#716]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][146] ([i915#54]) -> [PASS][147] +7 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][148] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@blocking-absolute-wf_vblank@a-edp1:
    - shard-skl:          [DMESG-WARN][150] ([i915#1982]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl10/igt@kms_flip@blocking-absolute-wf_vblank@a-edp1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl3/igt@kms_flip@blocking-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][152] ([i915#79]) -> [PASS][153] +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][154] ([i915#2122]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [INCOMPLETE][156] ([i915#1185] / [i915#123]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][158] ([i915#1188]) -> [PASS][159] +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [159]: https://intel

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/index.html

--===============2351808741763043192==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev14)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9695_full -&gt; Patchwork_19530_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19530_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19530_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19530_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk8/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk4/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl4/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl1/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb1/igt@gem_userptr_blits@readonly-mmap-unsync.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@gem_userptr_blits@readonly-mmap-unsync.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb7/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> +5 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb8/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb4/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl2/igt@gen9_exec_parse@bb-large.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl4/igt@gen9_exec_parse@bb-large.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb4/igt@i915_pm_backlight@fade_with_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb8/igt@i915_pm_backlight@fade_with_dpms.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb3/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([fdo#110542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb8/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([fdo#110426] / [i915#1704]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([fdo#110426] / [i915#1704]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl3/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl4/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb8/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb8/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk9/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk9/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl1/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb2/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl9/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl5/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl5/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl2/igt@gen9_exec_parse@bb-large.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-legacy-gamma-reset:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl7/igt@kms_color@pipe-c-legacy-gamma-reset.html">FAIL</a> ([i915#2964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl1/igt@kms_color@pipe-c-legacy-gamma-reset.html">FAIL</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl8/igt@kms_color@pipe-c-legacy-gamma-reset.html">FAIL</a> ([i915#2964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl4/igt@kms_color@pipe-c-legacy-gamma-reset.html">FAIL</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk9/igt@kms_color@pipe-c-legacy-gamma-reset.html">FAIL</a> ([i915#2964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk6/igt@kms_color@pipe-c-legacy-gamma-reset.html">FAIL</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl1/igt@kms_color@pipe-c-legacy-gamma-reset.html">FAIL</a> ([i915#2964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl6/igt@kms_color@pipe-c-legacy-gamma-reset.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_userptr_blits@sd-probe}:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk3/igt@gem_userptr_blits@sd-probe.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk6/igt@gem_userptr_blits@sd-probe.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl8/igt@gem_userptr_blits@sd-probe.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl2/igt@gem_userptr_blits@sd-probe.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl4/igt@gem_userptr_blits@sd-probe.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl7/igt@gem_userptr_blits@sd-probe.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb7/igt@gem_userptr_blits@sd-probe.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb6/igt@gem_userptr_blits@sd-probe.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb2/igt@gem_userptr_blits@sd-probe.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb3/igt@gem_userptr_blits@sd-probe.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_userptr_blits@set-cache-level}:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl6/igt@gem_userptr_blits@set-cache-level.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl2/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-snb7/igt@gem_userptr_blits@set-cache-level.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-snb2/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19530_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl4/igt@gem_exec_reloc@basic-many-active@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl1/igt@gem_exec_reloc@basic-many-active@bcs0.html">FAIL</a> ([i915#2389]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk8/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-snb6/igt@gem_userptr_blits@dmabuf-sync.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-snb7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-snb5/igt@gem_userptr_blits@readonly-mmap-unsync.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl1/igt@gem_userptr_blits@readonly-mmap-unsync.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl1/igt@gem_userptr_blits@readonly-mmap-unsync.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk2/igt@gem_userptr_blits@readonly-mmap-unsync.html">SKIP</a> ([fdo#109271])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl9/igt@gem_userptr_blits@readonly-unsync.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl3/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> ([fdo#109271]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk9/igt@gem_userptr_blits@relocations.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk9/igt@gem_userptr_blits@relocations.html">SKIP</a> ([fdo#109271]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl4/igt@gem_userptr_blits@unsync-unmap-after-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl1/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([fdo#109271]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl4/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl4/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl2/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#198])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl1/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#1373])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl7/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#1373])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_atomic_transition@plane-all-modeset-transition.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_color@pipe-a-degamma.html">FAIL</a> ([i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-random:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">FAIL</a> ([i915#54])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">FAIL</a> ([i915#54])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">FAIL</a> ([i915#54])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">FAIL</a> ([i915#54]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-dp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-dp.html">SKIP</a> ([fdo#109349])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#2598])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">FAIL</a> ([i915#49])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">FAIL</a> ([i915#49])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">FAIL</a> ([i915#49])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence.html">SKIP</a> ([fdo#109271]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb5/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb3/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> ([i915#1185] / [i915#1373] / [i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_vrr@flipline.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@nouveau_crc@pipe-b-source-outp-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl3/igt@perf@polling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl7/igt@perf@polling.html">FAIL</a> ([i915#1542]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_gtt_mmap_read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl10/igt@kms_flip@blocking-absolute-wf_vblank@a-edp1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl3/igt@kms_flip@blocking-absolute-wf_vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-iclb3/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> ([i915#1185] / [i915#123]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/shard-iclb6/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2351808741763043192==--

--===============1426776445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1426776445==--
