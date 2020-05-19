Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD3A1D8E64
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 05:52:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CFC6E2A8;
	Tue, 19 May 2020 03:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D110B6E0AF;
 Tue, 19 May 2020 03:52:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2A86A0138;
 Tue, 19 May 2020 03:52:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Hubbard" <jhubbard@nvidia.com>
Date: Tue, 19 May 2020 03:52:55 -0000
Message-ID: <158986037563.31239.9753117538360281832@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519002124.2025955-1-jhubbard@nvidia.com>
In-Reply-To: <20200519002124.2025955-1-jhubbard@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgbW0v?=
 =?utf-8?q?gup=2C_drm/i915=3A_refactor_gup=5Ffast=2C_convert_to_pin=5Fuser?=
 =?utf-8?b?X3BhZ2VzKCk=?=
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

Series: mm/gup, drm/i915: refactor gup_fast, convert to pin_user_pages()
URL   : https://patchwork.freedesktop.org/series/77381/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8498_full -> Patchwork_17704_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17704_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17704_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17704_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb7/igt@gem_userptr_blits@dmabuf-unsync.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb1/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-glk8/igt@gem_userptr_blits@dmabuf-unsync.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-glk8/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-iclb:         [PASS][5] -> [DMESG-WARN][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb6/igt@gem_userptr_blits@dmabuf-unsync.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb8/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt:
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8] +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb3/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html

  * igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt:
    - shard-kbl:          [PASS][9] -> [INCOMPLETE][10] +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl1/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl4/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl1/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl7/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html

  * igt@gem_userptr_blits@stress-purge:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl10/igt@gem_userptr_blits@stress-purge.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-skl10/igt@gem_userptr_blits@stress-purge.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl6/igt@gem_userptr_blits@sync-unmap-after-close.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl2/igt@gem_userptr_blits@sync-unmap-after-close.html
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl4/igt@gem_userptr_blits@sync-unmap-after-close.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl2/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb1/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@userfault:
    - shard-snb:          [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-snb4/igt@gem_userptr_blits@userfault.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb1/igt@gem_userptr_blits@userfault.html
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl2/igt@gem_userptr_blits@userfault.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-skl6/igt@gem_userptr_blits@userfault.html

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][25], [FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35], [FAIL][36], [FAIL][37]) ([i915#1611] / [i915#836])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl1/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl2/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl2/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl3/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl1/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl2/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl1/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl6/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl1/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl4/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl3/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl7/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         NOTRUN -> ([FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb8/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb7/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb6/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb2/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb4/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb1/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb8/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb5/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb3/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb8/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb7/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb6/igt@runner@aborted.html
    - shard-tglb:         NOTRUN -> ([FAIL][50], [FAIL][51], [FAIL][52], [FAIL][53], [FAIL][54], [FAIL][55], [FAIL][56], [FAIL][57], [FAIL][58], [FAIL][59], [FAIL][60], [FAIL][61], [FAIL][62])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb1/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb2/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb6/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb7/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb7/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb1/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb6/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb5/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb7/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb3/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb1/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb2/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb6/igt@runner@aborted.html
    - shard-snb:          NOTRUN -> ([FAIL][63], [FAIL][64], [FAIL][65], [FAIL][66], [FAIL][67], [FAIL][68], [FAIL][69], [FAIL][70], [FAIL][71], [FAIL][72], [FAIL][73], [FAIL][74], [FAIL][75])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb2/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb1/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb2/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb6/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb4/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb6/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb5/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb5/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb6/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb5/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb1/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb1/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb4/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-apl:          [FAIL][76] ([fdo#109271] / [i915#716]) -> ([FAIL][77], [FAIL][78], [FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88]) ([i915#1611] / [i915#836])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl1/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl7/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl7/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl2/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl8/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl7/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl2/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl8/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl6/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl6/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@pi-distinct-iova@rcs0}:
    - shard-iclb:         [PASS][89] -> [INCOMPLETE][90] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html

  * {igt@gem_exec_schedule@pi-userfault@bcs0}:
    - shard-tglb:         [PASS][91] -> [INCOMPLETE][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb8/igt@gem_exec_schedule@pi-userfault@bcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb8/igt@gem_exec_schedule@pi-userfault@bcs0.html

  * {igt@gem_exec_schedule@pi-userfault@rcs0}:
    - shard-skl:          [PASS][93] -> [INCOMPLETE][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl4/igt@gem_exec_schedule@pi-userfault@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-skl5/igt@gem_exec_schedule@pi-userfault@rcs0.html
    - shard-glk:          [PASS][95] -> [DMESG-WARN][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-glk8/igt@gem_exec_schedule@pi-userfault@rcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-glk1/igt@gem_exec_schedule@pi-userfault@rcs0.html

  * {igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt}:
    - shard-tglb:         [PASS][97] -> [DMESG-WARN][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb3/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-tglb1/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html

  * {igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt}:
    - shard-kbl:          [PASS][99] -> [INCOMPLETE][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl3/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
    - shard-apl:          [PASS][101] -> [INCOMPLETE][102] +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17704_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-apl:          [PASS][103] -> [INCOMPLETE][104] ([i915#95])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl8/igt@gem_userptr_blits@dmabuf-unsync.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl6/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-kbl:          [PASS][105] -> [DMESG-WARN][106] ([i915#93] / [i915#95])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl4/igt@gem_userptr_blits@dmabuf-unsync.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt:
    - shard-glk:          [PASS][107] -> [INCOMPLETE][108] ([i915#58] / [k.org#198133]) +8 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-glk7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-glk6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html

  * igt@gem_userptr_blits@stress-purge:
    - shard-snb:          [PASS][109] -> [INCOMPLETE][110] ([i915#82]) +9 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-snb6/igt@gem_userptr_blits@stress-purge.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-snb5/igt@gem_userptr_blits@stress-purge.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-skl:          [PASS][111] -> [FAIL][112] ([i915#54])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][113] -> [INCOMPLETE][114] ([i915#300])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][115] -> [DMESG-WARN][116] ([i915#180]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-iclb:         [PASS][117] -> [DMESG-WARN][118] ([i915#128])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb2/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb6/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][119] -> [FAIL][120] ([i915#1188])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][121] -> [FAIL][122] ([fdo#108145] / [i915#265]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][123] -> [SKIP][124] ([fdo#109441])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb6/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][125] -> [INCOMPLETE][126] ([i915#69])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][127] ([i915#180]) -> [PASS][128] +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-apl:          [DMESG-WARN][129] ([i915#180]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][131] ([i915#173]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb1/igt@kms_psr@no_drrs.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb2/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][133] ([fdo#109441]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb1/igt@kms_psr@psr2_cursor_render.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [DMESG-FAIL][135] ([fdo#110321]) -> [TIMEOUT][136] ([i915#1319])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl7/igt@kms_content_protection@atomic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [FAIL][137] ([fdo#110321]) -> [TIMEOUT][138] ([i915#1319])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl3/igt@kms_content_protection@lic.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/shard-kbl2/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8498 -> Patchwork_17704

  CI-20190529: 20190529
  CI_DRM_8498: 1493c649ae92207a758afa50a639275bd6c80e2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5659: 66ab5e42811fee3dea8c21ab29e70e323a0650de @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17704: ace503a8f42c4de5395983002282f6d0302543bc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
