Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D3F18726C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 19:35:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4DD26E49C;
	Mon, 16 Mar 2020 18:35:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B94076E49C;
 Mon, 16 Mar 2020 18:35:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1BABA47E2;
 Mon, 16 Mar 2020 18:35:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mario Kleiner" <mario.kleiner.de@gmail.com>
Date: Mon, 16 Mar 2020 18:35:14 -0000
Message-ID: <158438371472.18993.1807462504888942469@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316042340.4783-1-mario.kleiner.de@gmail.com>
In-Reply-To: <20200316042340.4783-1-mario.kleiner.de@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Add_dpcd_link=5Frate_quirk_for_Apple_15=22_MBP_2017?=
 =?utf-8?q?_=28rev3=29?=
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

Series: drm/i915/dp: Add dpcd link_rate quirk for Apple 15" MBP 2017 (rev3)
URL   : https://patchwork.freedesktop.org/series/74100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8137 -> Patchwork_16974
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/index.html

Known issues
------------

  Here are the changes found in Patchwork_16974 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][1] ([CI#94]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][3] ([i915#217]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][5] ([i915#1209]) -> [FAIL][6] ([i915#192] / [i915#193] / [i915#194])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-kbl-8809g/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/fi-kbl-8809g/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217


Participating hosts (48 -> 42)
------------------------------

  Additional (2): fi-skl-6770hq fi-tgl-dsi 
  Missing    (8): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8137 -> Patchwork_16974

  CI-20190529: 20190529
  CI_DRM_8137: 5786b5e77cc17a1b494b9bdf3c3f29eedc2e2e7d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5510: e100092d50105463f58db531fa953c70cc58bb10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16974: 3d21f79cfaf691c090222cc2db9655b6379ef2d3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3d21f79cfaf6 drm/i915/dp: Add dpcd link_rate quirk for Apple 15" MBP 2017 (v3)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16974/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
