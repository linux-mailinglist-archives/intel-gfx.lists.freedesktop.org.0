Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4884C2D7F25
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 20:08:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46AF66EC52;
	Fri, 11 Dec 2020 19:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D22A6EC4C;
 Fri, 11 Dec 2020 19:08:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36D31A9A42;
 Fri, 11 Dec 2020 19:08:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zheng Yongjun" <zhengyongjun3@huawei.com>
Date: Fri, 11 Dec 2020 19:08:36 -0000
Message-ID: <160771371620.16103.254760749416073060@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201211090005.3196-1-zhengyongjun3@huawei.com>
In-Reply-To: <20201211090005.3196-1-zhengyongjun3@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZ3B1?=
 =?utf-8?q?=3A_drm=3A_i915=3A_convert_comma_to_semicolon?=
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
Content-Type: multipart/mixed; boundary="===============1995479896=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1995479896==
Content-Type: multipart/alternative;
 boundary="===============3132311703929745465=="

--===============3132311703929745465==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: gpu: drm: i915: convert comma to semicolon
URL   : https://patchwork.freedesktop.org/series/84845/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9476_full -> Patchwork_19125_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19125_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-hsw:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-hsw7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][4] ([i915#2389])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@uc:
    - shard-skl:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1699]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl9/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html

  * igt@gem_userptr_blits@process-exit-mmap@wc:
    - shard-hsw:          NOTRUN -> [SKIP][6] ([fdo#109271]) +51 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-hsw7/igt@gem_userptr_blits@process-exit-mmap@wc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-hsw:          NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-hsw7/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-skl:          NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl6/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][11] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][12] -> [FAIL][13] ([i915#96])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][14] -> [INCOMPLETE][15] ([i915#155] / [i915#180] / [i915#636])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +55 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#533]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][21] ([i915#2190]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * {igt@gem_vm_create@destroy-race}:
    - shard-tglb:         [TIMEOUT][23] -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-tglb6/igt@gem_vm_create@destroy-race.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-tglb3/igt@gem_vm_create@destroy-race.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [INCOMPLETE][25] ([i915#146] / [i915#198] / [i915#2295]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl8/igt@gem_workarounds@suspend-resume-context.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_color@pipe-c-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][27] ([i915#1982]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl7/igt@kms_color@pipe-c-ctm-green-to-red.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl2/igt@kms_color@pipe-c-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-skl:          [FAIL][29] ([i915#54]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][31] ([i915#2405] / [i915#300]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][33] ([i915#79]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [FAIL][35] ([i915#79]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl7/igt@kms_hdr@bpc-switch.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][45] ([i915#198]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][47] ([i915#2684]) -> [WARN][48] ([i915#1804] / [i915#2684])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [INCOMPLETE][49] ([i915#155] / [i915#2295]) -> [INCOMPLETE][50] ([i915#2295])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][51], [FAIL][52]) ([fdo#109271] / [i915#2295] / [i915#2505]) -> [FAIL][53] ([i915#2295] / [i915#483])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-hsw8/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-hsw1/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-hsw1/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][54], [FAIL][55]) ([i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][56], [FAIL][57], [FAIL][58], [FAIL][59]) ([i915#1436] / [i915#2295] / [i915#2722] / [i915#483] / [i915#92])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-kbl2/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-kbl2/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-kbl3/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-kbl4/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-kbl3/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-kbl6/igt@runner@aborted.html
    - shard-skl:          [FAIL][60] ([i915#2295] / [i915#2722]) -> [FAIL][61] ([i915#2295] / [i915#2722] / [i915#483])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-skl4/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-skl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9476 -> Patchwork_19125

  CI-20190529: 20190529
  CI_DRM_9476: d8abf7202ace9d800683176aab8df3137790a00c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5889: 3e63914556947974bd2d1cf92dda5b83e36848e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19125: 6e021cbcae75d2f5ef4182a1dbb5f98fe2760576 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/index.html

--===============3132311703929745465==
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
<tr><td><b>Series:</b></td><td>gpu: drm: i915: convert comma to semicolon</=
td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84845/">https://patchwork.freedesktop.org/series/84845/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19125/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19125/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9476_full -&gt; Patchwork_19125_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19125_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19125/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i9=
15#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-hsw7/igt@gem_ctx_persistence@smoketest.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-iclb2/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@uc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-skl9/igt@gem_userptr_blits@process-exit=
-mmap-busy@uc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wc:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-hsw7/igt@gem_userptr_blits@process-exit=
-mmap@wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-hsw7/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-skl6/igt@kms_chamelium@vga-frame-dump.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19125/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i9=
15#54</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-6=
4x64-onscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19125/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atom=
ic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-k=
bl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/636">i915#636</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-skl8/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19125/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-ic=
lb7/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/sha=
rd-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_vm_create@destroy-race}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-tglb6/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/sh=
ard-tglb3/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-skl8/igt@gem_workarounds@suspend-resume-context.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/14=
6">i915#146</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/198">i915#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19125/shard-skl8/igt@gem_workarounds@suspend-resume-con=
text.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-skl7/igt@kms_color@pipe-c-ctm-green-to-red.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19125/shard-skl2/igt@kms_color@pipe-c-ctm-green-to-red.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19125/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405=
">i915#2405</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/300">i915#300</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19125/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19125/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19125/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19125/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible=
@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-sk=
l2/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19125/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19125/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19125/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dp=
ms-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9125/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/155"=
>i915#155</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19125/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-hsw:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-hsw8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-hsw1/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2505">i915#2505</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19125/shard-hsw1/igt@runner@aborted.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i=
915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
83">i915#483</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9476/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19125/shard-kbl3/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/s=
hard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19125/shard-kbl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1912=
5/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9476/shard-skl4/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/shard-s=
kl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9476 -&gt; Patchwork_19125</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9476: d8abf7202ace9d800683176aab8df3137790a00c @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5889: 3e63914556947974bd2d1cf92dda5b83e36848e4 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19125: 6e021cbcae75d2f5ef4182a1dbb5f98fe2760576 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3132311703929745465==--

--===============1995479896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1995479896==--
