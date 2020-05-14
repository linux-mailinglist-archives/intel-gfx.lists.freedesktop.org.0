Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCE71D2B9F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 11:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B966E1C4;
	Thu, 14 May 2020 09:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 90CF16E1C4;
 Thu, 14 May 2020 09:39:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8BED8A47DA;
 Thu, 14 May 2020 09:39:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 14 May 2020 09:39:57 -0000
Message-ID: <158944919754.2826.6963581768755459720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514074853.9508-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200514074853.9508-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU0FH?=
 =?utf-8?q?V_support_for_Gen12+_=28rev38=29?=
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

Series: SAGV support for Gen12+ (rev38)
URL   : https://patchwork.freedesktop.org/series/75129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8483 -> Patchwork_17656
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17656/index.html

Known issues
------------

  Here are the changes found in Patchwork_17656 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      [DMESG-FAIL][1] ([i915#1744]) -> [DMESG-FAIL][2] ([i915#1886])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8483/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17656/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886


Participating hosts (50 -> 45)
------------------------------

  Additional (1): fi-skl-6600u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8483 -> Patchwork_17656

  CI-20190529: 20190529
  CI_DRM_8483: eb8997678b25cb3ca507e02cb4e8bfd9c42b4268 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5654: 5637a466a0b09535517751608f5525a8b468a76b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17656: 2d4913a8c4527645b0cac448cc29c854f36c1019 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2d4913a8c452 drm/i915: Enable SAGV support for Gen12
6cb704686cf3 drm/i915: Restrict qgv points which don't have enough bandwidth.
4806d3748f45 drm/i915: Add TGL+ SAGV support

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17656/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
