Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE3318476B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 14:06:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9D36E20B;
	Fri, 13 Mar 2020 13:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC9D06E20B;
 Fri, 13 Mar 2020 13:06:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD7D6A363B;
 Fri, 13 Mar 2020 13:06:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Navik, Ankit P" <ankit.p.navik@intel.com>
Date: Fri, 13 Mar 2020 13:06:14 -0000
Message-ID: <158410477488.30351.15956345460134330326@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
In-Reply-To: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRHlu?=
 =?utf-8?q?amic_EU_configuration_of_Slice/Sub-slice/EU_=28rev5=29?=
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

Series: Dynamic EU configuration of Slice/Sub-slice/EU (rev5)
URL   : https://patchwork.freedesktop.org/series/69980/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8133 -> Patchwork_16963
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16963 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16963, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16963/index.html


Changes
-------

  No changes found


Participating hosts (36 -> 11)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_16963 prevented too many machines from booting.

  Additional (5): fi-hsw-peppy fi-byt-j1900 fi-bwr-2160 fi-snb-2520m fi-blb-e6850 
  Missing    (30): fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-lmem fi-icl-guc fi-icl-dsi fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-tgl-u fi-cml-s fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-kbl-7560u fi-tgl-y fi-skl-6700k2 fi-kbl-r fi-ehl-1 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-kbl-8809g fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8133 -> Patchwork_16963

  CI-20190529: 20190529
  CI_DRM_8133: e9912ab15be5d104fafd00c5e72361ae3b8839a5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5508: 89d644600a1a9f08794cc7106b63758df40ce1d8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16963: c41c32b36236b5bef102d5542d579ce590cc4f19 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c41c32b36236 drm/i915: Predictive governor to control slice/subslice/eu
80a1bbfce2f4 drm/i915: set optimum eu/slice/sub-slice configuration based on load type
b969a95d47cd drm/i915: Get active pending request for given context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16963/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
