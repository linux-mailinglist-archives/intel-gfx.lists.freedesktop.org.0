Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF54C14490B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 01:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A046EB75;
	Wed, 22 Jan 2020 00:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D242F6EB75;
 Wed, 22 Jan 2020 00:42:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB0F8A010F;
 Wed, 22 Jan 2020 00:42:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Wed, 22 Jan 2020 00:42:58 -0000
Message-ID: <157965377880.22395.3746736059034879278@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121235848.8457-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200121235848.8457-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Ensure_that_the_DDI_selection_MUX_is_programmed_co?=
 =?utf-8?q?rrectly?=
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

Series: drm/i915/ehl: Ensure that the DDI selection MUX is programmed correctly
URL   : https://patchwork.freedesktop.org/series/72357/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7787 -> Patchwork_16202
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/index.html

Known issues
------------

  Here are the changes found in Patchwork_16202 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [INCOMPLETE][1] ([i915#283]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-icl-u2:          [FAIL][3] ([i915#217]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][5] ([i915#725]) -> [DMESG-FAIL][6] ([i915#553] / [i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][7] ([IGT#4] / [i915#263]) -> [FAIL][8] ([i915#217])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (44 -> 36)
------------------------------

  Additional (2): fi-hsw-peppy fi-skl-lmem 
  Missing    (10): fi-ilk-m540 fi-ehl-1 fi-hsw-4200u fi-byt-squawks fi-bwr-2160 fi-ctg-p8600 fi-gdg-551 fi-cfl-8109u fi-byt-n2820 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7787 -> Patchwork_16202

  CI-20190529: 20190529
  CI_DRM_7787: b1ab43f77fe73cb93a1676454ae8374f9a439f4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16202: 1308b3ae62e765d495f0928c74609de78cd84ea4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1308b3ae62e7 drm/i915/ehl: Ensure that the DDI selection MUX is programmed correctly

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
