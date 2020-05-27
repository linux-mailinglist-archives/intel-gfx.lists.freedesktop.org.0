Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5641E3E06
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 11:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D878984C;
	Wed, 27 May 2020 09:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A6998984C;
 Wed, 27 May 2020 09:50:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 228CEA0019;
 Wed, 27 May 2020 09:50:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 27 May 2020 09:50:49 -0000
Message-ID: <159057304911.342.11567526575336304683@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Special_handling_for_bonded_requests?=
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

Series: drm/i915: Special handling for bonded requests
URL   : https://patchwork.freedesktop.org/series/77688/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8541 -> Patchwork_17782
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/index.html

Known issues
------------

  Here are the changes found in Patchwork_17782 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [PASS][1] -> [DMESG-FAIL][2] ([i915#1748])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/fi-gdg-551/igt@i915_selftest@live@coherency.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][3] -> [DMESG-FAIL][4] ([i915#165])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8541 -> Patchwork_17782

  CI-20190529: 20190529
  CI_DRM_8541: 6f35fec9320a0ee5178075dd3d9df6507f55af68 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17782: 10e39c0f7a03edbe826ad25606a4d465b1817d6b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

10e39c0f7a03 drm/i915: Special handling for bonded requests

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
