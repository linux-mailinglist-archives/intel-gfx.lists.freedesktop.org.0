Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA46188142
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 12:16:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EC5989F97;
	Tue, 17 Mar 2020 11:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91EB189F97;
 Tue, 17 Mar 2020 11:16:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89C29A0088;
 Tue, 17 Mar 2020 11:16:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Navik" <ankit.p.navik@intel.com>
Date: Tue, 17 Mar 2020 11:16:55 -0000
Message-ID: <158444381553.5180.5438307767465059525@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1584440962-28453-1-git-send-email-ankit.p.navik@intel.com>
In-Reply-To: <1584440962-28453-1-git-send-email-ankit.p.navik@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRHlu?=
 =?utf-8?q?amic_EU_configuration_of_Slice/Sub-slice/EU_=28rev8=29?=
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

Series: Dynamic EU configuration of Slice/Sub-slice/EU (rev8)
URL   : https://patchwork.freedesktop.org/series/69980/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8141 -> Patchwork_16989
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16989 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16989, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16989/index.html


Changes
-------

  No changes found


Participating hosts (47 -> 12)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_16989 prevented too many machines from booting.

  Missing    (35): fi-kbl-soraka fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-lmem fi-icl-guc fi-icl-dsi fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-tgl-u fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-ehl-1 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8141 -> Patchwork_16989

  CI-20190529: 20190529
  CI_DRM_8141: f7be958f2574d30bad18983c3afe2c5401674dfb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5513: 417c926459dacf062f2945d3ba01a3f94551b16f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16989: 0267ce00b30c4ebd3b4de30a1edf7c19c1a43b49 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0267ce00b30c drm/i915: Predictive governor to control slice/subslice/eu
a8e1bd3e403d drm/i915: set optimum eu/slice/sub-slice configuration based on load type
bb031637fc75 drm/i915: Get active pending request for given context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16989/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
