Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 011C41E3335
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 00:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442DE6E241;
	Tue, 26 May 2020 22:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DA0F6E241;
 Tue, 26 May 2020 22:54:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D406A0BC6;
 Tue, 26 May 2020 22:54:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 26 May 2020 22:54:27 -0000
Message-ID: <159053366722.28045.9244799165266054173@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200526221447.64110-1-jose.souza@intel.com>
In-Reply-To: <20200526221447.64110-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/rkl=3A_Disable_PSR2?=
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

Series: series starting with [1/6] drm/i915/rkl: Disable PSR2
URL   : https://patchwork.freedesktop.org/series/77676/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8540 -> Patchwork_17781
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/index.html

Known issues
------------

  Here are the changes found in Patchwork_17781 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [FAIL][1] ([i915#262]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8540/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262


Participating hosts (51 -> 45)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8540 -> Patchwork_17781

  CI-20190529: 20190529
  CI_DRM_8540: b02ab97d6794973472bfdf91b62448d9354fd698 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5679: 93639b4e52140826c24da21865e912a280f9aefb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17781: d80c35b307494430f7e33f71733ea99e5dc42673 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d80c35b30749 drm/i915: Implement PSR2 selective fetch WAs
8dcb0cb37119 drm/i915: Implement PSR2 selective fetch
837cb19aab8f drm/i915: Add PSR2 software tracking registers
af8c4264fa17 drm/i915: Reorder intel_psr2_config_valid()
54e02163a7f7 drm/i915: Add plane damage clips property
3b5607178b4a drm/i915/rkl: Disable PSR2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17781/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
