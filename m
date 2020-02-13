Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C09515B99B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 07:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5456F54F;
	Thu, 13 Feb 2020 06:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9ADFB6F54E;
 Thu, 13 Feb 2020 06:33:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 934C3A66C7;
 Thu, 13 Feb 2020 06:33:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jerry (Fangzhi) Zuo" <Jerry.Zuo@amd.com>
Date: Thu, 13 Feb 2020 06:33:21 -0000
Message-ID: <158157560157.17961.15004174024990934946@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211160832.24259-1-Jerry.Zuo@amd.com>
In-Reply-To: <20200211160832.24259-1-Jerry.Zuo@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Add_support_for_DP_1=2E4_Compliance_edid_corruption_test_?=
 =?utf-8?b?KHJldjYp?=
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

Series: drm: Add support for DP 1.4 Compliance edid corruption test (rev6)
URL   : https://patchwork.freedesktop.org/series/70530/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926 -> Patchwork_16548
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/index.html

Known issues
------------

  Here are the changes found in Patchwork_16548 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([fdo#111407])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (45 -> 40)
------------------------------

  Additional (5): fi-hsw-peppy fi-skl-6770hq fi-bdw-gvtdvm fi-glk-dsi fi-gdg-551 
  Missing    (10): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-ctg-p8600 fi-skl-lmem fi-byt-n2820 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16548

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16548: ef3b47e265d695b7a204faa524604763ee0ee191 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ef3b47e265d6 drm: Add support for DP 1.4 Compliance edid corruption test

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16548/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
