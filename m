Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B382D1DCA89
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 11:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1156C6E925;
	Thu, 21 May 2020 09:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03ED06E923;
 Thu, 21 May 2020 09:56:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F28D7A47E6;
 Thu, 21 May 2020 09:56:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 21 May 2020 09:56:10 -0000
Message-ID: <159005497096.4441.17877207523556777793@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520200252.2808-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200520200252.2808-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Trace_the_CS_interrupt_=28rev9=29?=
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

Series: drm/i915/gt: Trace the CS interrupt (rev9)
URL   : https://patchwork.freedesktop.org/series/77441/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8517 -> Patchwork_17745
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17745 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17745, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17745/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17745:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17745/fi-apl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17745 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][2] -> [DMESG-FAIL][3] ([i915#165])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17745/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][4] ([i915#62]) -> [SKIP][5] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17745/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (46 -> 42)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8517 -> Patchwork_17745

  CI-20190529: 20190529
  CI_DRM_8517: 7c5c05e694bf83e9d4ef64172ef6c9d55aa334a5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5666: dfa3b1fdc9813a48314a43faaacb7dacc06112d6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17745: daf509d8a40bef29edb99364bc2d970a4cb5cbee @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

daf509d8a40b drm/i915/gt: Trace the CS interrupt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17745/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
