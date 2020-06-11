Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B31F1F615A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 07:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF3186E062;
	Thu, 11 Jun 2020 05:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CF7A6E062;
 Thu, 11 Jun 2020 05:43:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E984A00C7;
 Thu, 11 Jun 2020 05:43:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Date: Thu, 11 Jun 2020 05:43:37 -0000
Message-ID: <159185421736.22714.13394861558378645759@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200610191232.11620-1-uma.shankar@intel.com>
In-Reply-To: <20200610191232.11620-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev3=29?=
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

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev3)
URL   : https://patchwork.freedesktop.org/series/68081/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8611 -> Patchwork_17922
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/index.html

Known issues
------------

  Here are the changes found in Patchwork_17922 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cml-s:           [DMESG-WARN][3] ([i915#1982]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-cml-s/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/fi-cml-s/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#62] / [i915#92]) -> [DMESG-WARN][10] ([i915#1982] / [i915#62] / [i915#92] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92]) -> [DMESG-WARN][12] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 43)
------------------------------

  Additional (2): fi-kbl-7560u fi-tgl-u2 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8611 -> Patchwork_17922

  CI-20190529: 20190529
  CI_DRM_8611: b87354483fa40fef86da19ade9bfe9349f0cf6d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5702: d16ad07e7f2a028e14d61f570931c87fa5ce404c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17922: 0903ebe28a8fb9c912916613977b2e77d83eac8c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0903ebe28a8f drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON
e67c4219c55f drm/i915/display: Implement DRM infoframe read for LSPCON
90fe2351734a drm/i915/display: Implement infoframes readback for LSPCON
7aab4641b28f drm/i915/display: Enable HDR for Parade based lspcon
e71a13eb3147 drm/i915/display: Enable BT2020 for HDR on LSPCON devices
5940d801abf4 drm/i915/display: Attach HDR property for capable Gen9 devices
ae1436b72a1c drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
292e80f577e6 drm/i915/display: Add HDR Capability detection for LSPCON

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17922/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
