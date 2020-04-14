Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9DB1A8491
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 18:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5AC6E110;
	Tue, 14 Apr 2020 16:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BC9C6E110;
 Tue, 14 Apr 2020 16:23:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7481DA3C0D;
 Tue, 14 Apr 2020 16:23:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kishore Kadiyala" <kishore.kadiyala@intel.com>
Date: Tue, 14 Apr 2020 16:23:16 -0000
Message-ID: <158688139644.30377.3964128122460591513@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200413071346.14612-1-kishore.kadiyala@intel.com>
In-Reply-To: <20200413071346.14612-1-kishore.kadiyala@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_Plane_color_encoding_support_for_YCBCR=5FBT2020_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915: Add Plane color encoding support for YCBCR_BT2020 (rev5)
URL   : https://patchwork.freedesktop.org/series/75660/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8295 -> Patchwork_17285
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/index.html

Known issues
------------

  Here are the changes found in Patchwork_17285 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       [INCOMPLETE][1] ([i915#69]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69


Participating hosts (49 -> 44)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8295 -> Patchwork_17285

  CI-20190529: 20190529
  CI_DRM_8295: 4cb6dbe0a641129fd07ad1fbfcd6e7b4f03ec5c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17285: c23e702e8b821acdcb9e35f4ffd05e14bc0e058a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c23e702e8b82 drm/i915: Add Plane color encoding support for YCBCR_BT2020

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17285/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
