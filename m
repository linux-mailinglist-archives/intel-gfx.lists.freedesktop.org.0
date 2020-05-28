Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA791E5D1F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 12:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5746E172;
	Thu, 28 May 2020 10:26:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A77A66E151;
 Thu, 28 May 2020 10:26:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61433A66C9;
 Thu, 28 May 2020 10:26:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 May 2020 10:26:52 -0000
Message-ID: <159066161237.685.14371169195815648401@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528082427.21402-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528082427.21402-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Restore_both_GGTT_bi?=
 =?utf-8?q?ndings_on_resume?=
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

Series: series starting with [1/2] drm/i915/gt: Restore both GGTT bindings on resume
URL   : https://patchwork.freedesktop.org/series/77734/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8546 -> Patchwork_17802
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17802/index.html

Known issues
------------

  Here are the changes found in Patchwork_17802 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [PASS][1] -> [DMESG-FAIL][2] ([i915#1748])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8546/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17802/fi-gdg-551/igt@i915_selftest@live@coherency.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][3] ([i915#138]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8546/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17802/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
  [i915#138]: https://gitlab.freedesktop.org/drm/intel/issues/138
  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8546 -> Patchwork_17802

  CI-20190529: 20190529
  CI_DRM_8546: 08f7fbd2ef0e82c13fd6e3bd6d7438a14746ae42 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5681: 2991a5d60b1bbf2b2b6004669cd0f9471bd687a2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17802: 46d403b2a10e5d755907017720e1ddb14d3590ac @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

46d403b2a10e drm/i915/gt: Remove local entries from GGTT on suspend
8b64f8f634ee drm/i915/gt: Restore both GGTT bindings on resume

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17802/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
