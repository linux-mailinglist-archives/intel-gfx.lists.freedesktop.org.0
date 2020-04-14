Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED031A8C61
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 22:25:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59716E248;
	Tue, 14 Apr 2020 20:25:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 258B46E248;
 Tue, 14 Apr 2020 20:25:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D446A008A;
 Tue, 14 Apr 2020 20:25:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 14 Apr 2020 20:25:41 -0000
Message-ID: <158689594108.30377.7556007528910734027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200413164515.13355-1-jose.souza@intel.com>
In-Reply-To: <20200413164515.13355-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/9=5D_drm/i915/display=3A_Move_out_c?=
 =?utf-8?q?ode_to_return_the_digital=5Fport_of_the_aux_ch?=
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

Series: series starting with [v4,1/9] drm/i915/display: Move out code to return the digital_port of the aux ch
URL   : https://patchwork.freedesktop.org/series/75886/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8298 -> Patchwork_17288
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17288/index.html

Known issues
------------

  Here are the changes found in Patchwork_17288 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@ring_submission:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-bwr-2160/igt@i915_selftest@live@ring_submission.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17288/fi-bwr-2160/igt@i915_selftest@live@ring_submission.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (48 -> 43)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17288

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17288: 167a931dadfee92ceaf749345422501df3c8c4e3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

167a931dadfe drm/i915: Add missing deinitialization cases of load failure
073806ccfac9 drm/i915/tc: Do not warn when aux power well of static TC ports timeout
1de4d7a9096c drm/i915/tc: Catch TC users accessing FIA registers without enable aux
87ba4c5c772a drm/i915/tc/tgl: Implement TC cold sequences
4d5beb240164 drm/i915/tc: Skip ref held check for TC legacy aux power wells
53d8424945c4 drm/i915/tc/icl: Implement TC cold sequences
13beb443d72c drm/i915/display: Split hsw_power_well_enable() into two
0c650cdb3e24 drm/i915/display: Add intel_legacy_aux_to_power_domain()
07f7e1eaedcd drm/i915/display: Move out code to return the digital_port of the aux ch

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17288/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
