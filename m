Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAF71E9FFB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 10:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8122A89BC0;
	Mon,  1 Jun 2020 08:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1032989BC0;
 Mon,  1 Jun 2020 08:23:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A195A47E0;
 Mon,  1 Jun 2020 08:23:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kishore Kadiyala" <kishore.kadiyala@intel.com>
Date: Mon, 01 Jun 2020 08:23:38 -0000
Message-ID: <159099981801.14888.15973783215975147663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601073544.11291-1-kishore.kadiyala@intel.com>
In-Reply-To: <20200601073544.11291-1-kishore.kadiyala@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_Plane_color_encoding_support_for_YCBCR=5FBT2020_?=
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

Series: drm/i915: Add Plane color encoding support for YCBCR_BT2020 (rev6)
URL   : https://patchwork.freedesktop.org/series/75660/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8560 -> Patchwork_17827
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/index.html

Known issues
------------

  Here are the changes found in Patchwork_17827 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][1] ([fdo#109271]) -> [FAIL][2] ([i915#62] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-ehl-1 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8560 -> Patchwork_17827

  CI-20190529: 20190529
  CI_DRM_8560: 02fe287fdb4a3d6bceb1bb61b3c8538b4b941b3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5687: 668a5be752186b6e08f361bac34da37309d08393 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17827: 2d67bb8cef9491f3109c6c2dbc237b5cff273ebb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2d67bb8cef94 drm/i915: Add Plane color encoding support for YCBCR_BT2020

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17827/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
