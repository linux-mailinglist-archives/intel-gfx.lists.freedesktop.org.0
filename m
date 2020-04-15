Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 893AC1A909A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 03:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E53566E81C;
	Wed, 15 Apr 2020 01:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6921B6E81C;
 Wed, 15 Apr 2020 01:46:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 625DAA0088;
 Wed, 15 Apr 2020 01:46:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Wed, 15 Apr 2020 01:46:59 -0000
Message-ID: <158691521939.21013.18012244469158468057@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414184835.2878-1-sean@poorly.run>
In-Reply-To: <20200414184835.2878-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Fix_HDCP_failures_when_SRM_fw_is_missing_=28rev2=29?=
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

Series: drm: Fix HDCP failures when SRM fw is missing (rev2)
URL   : https://patchwork.freedesktop.org/series/75938/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8298 -> Patchwork_17299
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17299 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17299, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17299/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17299:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17299/fi-bsw-n3050/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17299 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][2] -> [INCOMPLETE][3] ([i915#1436])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17299/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436


Participating hosts (48 -> 44)
------------------------------

  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17299

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17299: e0a6dea979f6de3160fd4579d029c45131e86c69 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e0a6dea979f6 drm: Fix HDCP failures when SRM fw is missing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17299/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
