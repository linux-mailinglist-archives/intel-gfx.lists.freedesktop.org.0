Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E971A08E1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 10:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C627389C6A;
	Tue,  7 Apr 2020 08:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A4FD89C6A;
 Tue,  7 Apr 2020 08:06:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5397EA00E7;
 Tue,  7 Apr 2020 08:06:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeevan B" <jeevan.b@intel.com>
Date: Tue, 07 Apr 2020 08:06:38 -0000
Message-ID: <158624679831.26326.676203527458747107@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
In-Reply-To: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm=3A_report_dp_downstream_port_ty?=
 =?utf-8?q?pe_as_a_subconnector_property?=
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

Series: series starting with [1/5] drm: report dp downstream port type as a subconnector property
URL   : https://patchwork.freedesktop.org/series/75585/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8264 -> Patchwork_17228
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/index.html

Known issues
------------

  Here are the changes found in Patchwork_17228 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2] ([i915#1531] / [i915#1581])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-icl-u2/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/fi-icl-u2/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][3] -> [FAIL][4] ([i915#976])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][5] ([i915#1158]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][7] ([i915#1580]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [i915#1158]: https://gitlab.freedesktop.org/drm/intel/issues/1158
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (53 -> 47)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17228

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17228: 492358bb545e27f7fe4f65d666c2930f954f2a0b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

492358bb545e drm/amdgpu: utilize subconnector property for DP through DisplayManager
39a32c6dd117 drm/amdgpu: utilize subconnector property for DP through atombios
2dfa92187ee6 drm/nouveau: utilize subconnector property for DP
d2c8d8547c2a drm/i915: utilize subconnector property for DP
4bd9a33efdc0 drm: report dp downstream port type as a subconnector property

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17228/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
