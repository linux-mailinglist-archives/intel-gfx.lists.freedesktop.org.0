Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AA6213B7E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 16:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A89F6E27A;
	Fri,  3 Jul 2020 14:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1D19B6E0D8;
 Fri,  3 Jul 2020 14:07:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 177C8A66C9;
 Fri,  3 Jul 2020 14:07:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jul 2020 14:07:24 -0000
Message-ID: <159378524406.25594.9370683301125549341@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200703102519.26539-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200703102519.26539-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Export_ppgtt=5Fbind=5Fvma?=
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

Series: drm/i915: Export ppgtt_bind_vma
URL   : https://patchwork.freedesktop.org/series/79086/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8707 -> Patchwork_18079
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/index.html

Known issues
------------

  Here are the changes found in Patchwork_18079 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [PASS][1] -> [DMESG-WARN][2] ([i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-tgl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-tgl-u2/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-tgl-u2/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][9] ([i915#1888]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [INCOMPLETE][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-apl-guc/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-apl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Warnings ####

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([i915#62] / [i915#92]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8707 -> Patchwork_18079

  CI-20190529: 20190529
  CI_DRM_8707: d499de3ecccf4923c7e35e298fb6f13611a8f70e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5721: df9004c501b203c1b418781ad2c94dfe36892ef5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18079: 6c4c71972f41187bfc430dd539cfe36bed74c38b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6c4c71972f41 drm/i915: Export ppgtt_bind_vma

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18079/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
