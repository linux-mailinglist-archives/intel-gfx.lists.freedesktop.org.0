Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB2018C1AC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 21:50:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1866EA7A;
	Thu, 19 Mar 2020 20:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A4CB6EA79;
 Thu, 19 Mar 2020 20:50:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89F9DA0099;
 Thu, 19 Mar 2020 20:50:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Thu, 19 Mar 2020 20:50:05 -0000
Message-ID: <158465100556.17932.4920870275259735363@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318235956.118409-1-jose.souza@intel.com>
In-Reply-To: <20200318235956.118409-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/tc/tgl=3A_Implement_TCCOLD?=
 =?utf-8?q?_sequences_=28rev2=29?=
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

Series: series starting with [1/6] drm/i915/tc/tgl: Implement TCCOLD sequences (rev2)
URL   : https://patchwork.freedesktop.org/series/74851/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8160 -> Patchwork_17027
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/index.html

Known issues
------------

  Here are the changes found in Patchwork_17027 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([i915#323])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323


Participating hosts (37 -> 35)
------------------------------

  Additional (6): fi-bsw-n3050 fi-byt-j1900 fi-cfl-8109u fi-skl-6600u fi-bsw-nick fi-skl-6700k2 
  Missing    (8): fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-gdg-551 fi-elk-e7500 fi-bsw-kefka fi-skl-lmem fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8160 -> Patchwork_17027

  CI-20190529: 20190529
  CI_DRM_8160: 6ba1729e5025761ab74914f6b8aa3288f493e9c7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5523: cf6d524007ac51a7d5a48503ea3dd5f01fd4ebab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17027: 4f6235744a939c05913c4cb014945655ea1d82f3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4f6235744a93 drm/i915/dp: Get TC link reference during DP detection
9ac70989f9f6 drm/i915/tc/icl: Implement the TC cold exit sequence
1781e726775b drm/i915/display: Add intel_aux_ch_to_power_domain()
a940e1299b38 drm/i915/display: Implement intel_display_power_wait_enable_ack()
80fc6f70f951 drm/i915/display: Add intel_display_power_get_without_ack()
61f30e252243 drm/i915/tc/tgl: Implement TCCOLD sequences

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17027/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
