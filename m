Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B63A5497586
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Jan 2022 21:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D8AC10E12F;
	Sun, 23 Jan 2022 20:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54C2A10E11D;
 Sun, 23 Jan 2022 20:37:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F724A00A0;
 Sun, 23 Jan 2022 20:37:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7858383620528312449=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Sun, 23 Jan 2022 20:37:06 -0000
Message-ID: <164297022628.8376.13439589464014444618@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220122000822.25616-1-matthew.brost@intel.com>
In-Reply-To: <20220122000822.25616-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Use_less_in_contexts_steal_guc_id_test_=28re?=
 =?utf-8?b?djMp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7858383620528312449==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Use less in contexts steal guc id test (rev3)
URL   : https://patchwork.freedesktop.org/series/99179/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11120_full -> Patchwork_22071_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22071_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22071_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 12)
------------------------------

  Additional (2): shard-dg1 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22071_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-fences-interruptible@b-vga1:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-snb6/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - {shard-tglu}:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-tglu-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@sysfs_heartbeat_interval@precise@bcs0:
    - {shard-dg1}:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-dg1-13/igt@sysfs_heartbeat_interval@precise@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_22071_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) -> ([PASS][30], [PASS][31], [FAIL][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54]) ([i915#4386])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +7 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@hibernate:
    - shard-iclb:         [PASS][57] -> [DMESG-WARN][58] ([i915#4391]) +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb1/igt@gem_eio@hibernate.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb7/igt@gem_eio@hibernate.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-skl:          NOTRUN -> [TIMEOUT][59] ([i915#3063])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#4525]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          NOTRUN -> [FAIL][62] ([i915#2846])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#2842]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][65] -> [FAIL][66] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][67] -> [FAIL][68] ([i915#2842]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][69] -> [FAIL][70] ([i915#2842])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl2/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3323])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][74] ([i915#3002])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#3297])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#3297])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb2/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][77] -> [DMESG-WARN][78] ([i915#1436] / [i915#716])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#454])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl1/igt@i915_pm_dc@dc6-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][81] -> [INCOMPLETE][82] ([i915#3921])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-snb2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][83] -> [DMESG-WARN][84] ([i915#180]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3777]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3777])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][87] ([i915#3763])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271]) +10 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886]) +4 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3886]) +6 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl6/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109284] / [fdo#111827])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html
    - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#109284] / [fdo#111827])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl2/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][96] ([i915#1319])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][97] ([i915#2105])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#3319]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109278] / [fdo#109279])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109279] / [i915#3359])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-random:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109278]) +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#2346] / [i915#533])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#79])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          NOTRUN -> [INCOMPLETE][106] ([i915#4839])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][107] -> [FAIL][108] ([i915#4911])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271]) +189 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109280]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][112] ([fdo#109271]) +152 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][113] -> [FAIL][114] ([i915#1188])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#1187])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_hdr@static-toggle-dpms.html
    - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#1187])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#533])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#533]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][119] ([fdo#108145] / [i915#265]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][120] ([fdo#108145] / [i915#265]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][121] -> [FAIL][122] ([fdo#108145] / [i915#265])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2733])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][124] -> [SKIP][125] ([fdo#109642] / [fdo#111068] / [i915#658])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb5/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-kbl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#658])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl4/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][128] -> [FAIL][129] ([i915#31])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk6/igt@kms_setmode@basic.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-glk2/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][130] ([IGT#2])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2437])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@sysfs_clients@recycle:
    - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#2994]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl4/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2994]) +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][134] ([i915#2410]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-iclb:         [TIMEOUT][136] ([i915#3070]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb1/igt@gem_eio@in-flight-contexts-10ms.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb7/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][138] ([i915#2481] / [i915#3070]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb2/igt@gem_eio@unwedge-stress.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][140] ([i915#4525]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][142] ([i915#2842]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-apl:          [FAIL][144] ([i915#2842]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][146] ([i915#2842]) -> [PASS][147] +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [DMESG-WARN][148] ([i915#118]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk4/igt@gem_exec_whisper@basic-fds.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-glk6/igt@gem_exec_whisper@basic-fds.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][150] ([i915#2346]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][152] ([i915#180]) -> [PASS][153] +7 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][154] ([i915#180]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:
    - shard-apl:          [FAIL][156] ([i915#2122]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][158] ([fdo#109441]) -> [PASS][159] +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][160] ([i915#180] / [i915#295]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_vgem@wait@vecs0:
    - shard-skl:          [DMESG-WARN][162] ([i915#1982]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl3/igt@prime_vgem@wait@vecs0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl6/igt@prime_vgem@wait@vecs0.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-skl:          [WARN][164] ([i915#4055]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl3/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-s

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/index.html

--===============7858383620528312449==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Use less in contexts ste=
al guc id test (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99179/">https://patchwork.freedesktop.org/series/99179/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22071/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11120_full -&gt; Patchwork_22071_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22071_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22071_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 12)</h2>
<p>Additional (2): shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22071_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@flip-vs-fences-interruptible@b-vga1:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-snb6/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22071/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.ht=
ml">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-tglu-5/igt@gem_partial_pwrite_pread@wri=
tes-after-reads-uncached.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@bcs0:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-dg1-13/igt@sysfs_heartbeat_interval@pre=
cise@bcs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22071_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11120/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11120/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11120/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11120/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11120/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11120/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1120/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11120/shard-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22071/shard-apl1/boot.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22071/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22071/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22071/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22071/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22071/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22071/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22071/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-apl8/boot.html">PAS=
S</a>) ([i915#4386])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22071/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WA=
RN</a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-iclb1/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb7/i=
gt@gem_eio@hibernate.html">DMESG-WARN</a> ([i915#4391]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@gem_eio@in-flight-contexts-10m=
s.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22071/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> ([i915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
071/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/s=
hard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/sh=
ard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/s=
hard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl2/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-tglb5/igt@gem_userptr_blits@unsync-unmap=
-cycles.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-iclb2/igt@gem_userptr_blits@unsync-unmap=
-cycles.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/s=
hard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1=
436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-skl1/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-skl2/i=
gt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/sha=
rd-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22071/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html">DMES=
G-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 sim=
ilar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-apl6/igt@kms_big_fb@yf-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([fdo#109271]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl1/igt@kms_ccs@pipe-a-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-apl6/igt@kms_chamelium@dp-crc-single.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@kms_chamelium@hdmi-crc-multipl=
e.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_color_chamelium@pipe-a-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl2/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-apl6/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-offscreen.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-5=
12x512-rapid-movement.html">SKIP</a> ([fdo#109278] / [fdo#109279])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-5=
12x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-=
128x128-random.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22071/shard-skl3/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22071/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_flip@flip-vs-suspend@b-edp=
1.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-=
ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl3/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +189 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109280]) +1 simi=
lar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109280] / [fdo#1=
11825]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl1/igt@kms_frontbuffer_tracking@psr-r=
gb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +152 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard=
-skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-tglb5/igt@kms_hdr@static-toggle-dpms.htm=
l">SKIP</a> ([i915#1187])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22071/shard-iclb2/igt@kms_hdr@static-toggle-dpms.htm=
l">SKIP</a> ([i915#1187])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl4/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22071/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2207=
1/shard-iclb5/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109=
642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl4/igt@kms_psr2_su@page_flip-p010.htm=
l">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl3/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-glk6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-glk2/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl9/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-skl4/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@sysfs_clients@split-50.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> ([i915#2410]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22071/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-iclb1/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT=
</a> ([i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22071/shard-iclb7/igt@gem_eio@in-flight-contexts-10ms.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-iclb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22071/shard-iclb5/igt@gem_eio@unwedge-stress.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22071/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-=
fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11120/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22071/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11120/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22071/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22071/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +=
2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-glk4/igt@gem_exec_whisper@basic-fds.html">DMESG-WARN</a=
> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22071/shard-glk6/igt@gem_exec_whisper@basic-fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-iclb1/igt@kms_cursor_=
legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22071/shard-kbl6/igt@kms_flip@flip-vs-suspend-int=
erruptible@a-dp1.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22071/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-apl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-dp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22071/shard-apl6/igt@kms_flip@plain-flip-fb-rec=
reate-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> =
([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22071/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">DMESG-WARN</a> ([i915#180] / [i915#295]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22071/shard-kbl4/igt@kms_vblank@pipe-a-=
ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@wait@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-skl3/igt@prime_vgem@wait@vecs0.html">DMESG-WARN</a> ([i=
915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22071/shard-skl6/igt@prime_vgem@wait@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11120/shard-skl3/igt@sysfs_heartbeat_interval@mixed@bcs0.html">WARN=
</a> ([i915#4055]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22071/shard-s">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============7858383620528312449==--
