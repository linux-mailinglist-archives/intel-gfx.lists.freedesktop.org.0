Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4457518A238
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 19:17:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F6C389EAE;
	Wed, 18 Mar 2020 18:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F400789E5A;
 Wed, 18 Mar 2020 18:17:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECE86A0091;
 Wed, 18 Mar 2020 18:17:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 18 Mar 2020 18:17:44 -0000
Message-ID: <158455546493.25102.4019816354122435081@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318154959.9017-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200318154959.9017-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Reject_dumb_buffers_when_driver/device_doesn=27t_support_mo?=
 =?utf-8?q?desetting?=
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

Series: drm: Reject dumb buffers when driver/device doesn't support modesetting
URL   : https://patchwork.freedesktop.org/series/74841/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8151 -> Patchwork_17010
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17010 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17010, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17010/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17010:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-elk-e7500:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17010/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-ilk-650:         NOTRUN -> [DMESG-WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17010/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-hsw-peppy:       NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17010/fi-hsw-peppy/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-guc:         NOTRUN -> [DMESG-WARN][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17010/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17010/fi-ilk-650/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17010/fi-hsw-peppy/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17010/fi-elk-e7500/igt@runner@aborted.html

  


Participating hosts (41 -> 38)
------------------------------

  Additional (6): fi-hsw-peppy fi-skl-guc fi-bdw-gvtdvm fi-ilk-650 fi-elk-e7500 fi-snb-2600 
  Missing    (9): fi-ilk-m540 fi-byt-squawks fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-cfl-8109u fi-bsw-kefka fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8151 -> Patchwork_17010

  CI-20190529: 20190529
  CI_DRM_8151: 20887f81adb13a9ff582aa079bb5a7e7fc36b7f5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17010: a77d1080eb589fe2a2178dbada738b8dcd4e9b57 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a77d1080eb58 drm: Reject dumb buffers when driver/device doesn't support modesetting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17010/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
