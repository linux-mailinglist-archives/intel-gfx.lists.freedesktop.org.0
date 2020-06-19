Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E2B200ED2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 17:13:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D6B6E0F7;
	Fri, 19 Jun 2020 15:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75CE76E0F7;
 Fri, 19 Jun 2020 15:13:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6FA2DA47EA;
 Fri, 19 Jun 2020 15:13:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Fri, 19 Jun 2020 15:13:41 -0000
Message-ID: <159257962142.12533.6961184573185663134@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200619212356.19285-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200619212356.19285-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgVlJS?=
 =?utf-8?q?_capable_attach_prop_in_i915=2C_DPCD_helper=2C_VRR_debugfs_=28r?=
 =?utf-8?q?ev3=29?=
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

Series: VRR capable attach prop in i915, DPCD helper, VRR debugfs (rev3)
URL   : https://patchwork.freedesktop.org/series/78278/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8645 -> Patchwork_17994
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17994 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17994, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17994/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17994:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17994/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_17994 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17994/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][5] ([i915#1888]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8645/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17994/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 10)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17994 prevented too many machines from booting.

  Missing    (34): fi-kbl-soraka fi-icl-u2 fi-snb-2520m fi-apl-guc fi-icl-y fi-icl-guc fi-icl-dsi fi-byt-n2820 fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-cml-s fi-byt-j1900 fi-bsw-n3050 fi-glk-dsi fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-kbl-7560u fi-bsw-nick fi-ilk-m540 fi-ehl-1 fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8645 -> Patchwork_17994

  CI-20190529: 20190529
  CI_DRM_8645: 9aae33db6b7490634fe14c866077c97fe7263e0a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5712: eba1135ddd35f9d3097ed91032aefe8f9a9f9d02 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17994: b8d579bd6450321c0431ef9d0cac0ad9b8f551b9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b8d579bd6450 drm/debug: Expose connector VRR monitor range via debugfs
8ab5efcf7756 drm/i915/dp: Attach and set drm connector VRR property
d029f13253a7 drm/dp: DRM DP helper for reading Ignore MSA from DPCD

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17994/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
