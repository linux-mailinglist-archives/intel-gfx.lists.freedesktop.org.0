Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B79119FE03
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 21:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6856E49A;
	Mon,  6 Apr 2020 19:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6AFC66E0E4;
 Mon,  6 Apr 2020 19:23:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6588CA00E7;
 Mon,  6 Apr 2020 19:23:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Apr 2020 19:23:31 -0000
Message-ID: <158620101141.4194.4145785224305206101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406155840.1728-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200406155840.1728-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Make_exclusive_awa?=
 =?utf-8?q?its_on_i915=5Factive_optional?=
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

Series: series starting with [CI,1/3] drm/i915: Make exclusive awaits on i915_active optional
URL   : https://patchwork.freedesktop.org/series/75556/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8261 -> Patchwork_17222
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17222/index.html

Known issues
------------

  Here are the changes found in Patchwork_17222 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [DMESG-WARN][1] ([i915#892]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8261/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17222/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
  [i915#892]: https://gitlab.freedesktop.org/drm/intel/issues/892


Participating hosts (53 -> 47)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8261 -> Patchwork_17222

  CI-20190529: 20190529
  CI_DRM_8261: 80b64adc6f5ffeb1c69996737dbdc5ad275d8e6c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5572: 6c124b5c8501d900966c033ac86c3dc55c16a2da @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17222: cb6f691aa367a0074e18f8e5676a2d9429e15062 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cb6f691aa367 drm/i915/gem: Wait until the context is finally retired before releasing engines
730297c3e327 drm/i915: Allow asynchronous waits on the i915_active barriers
b810c3955e8f drm/i915: Make exclusive awaits on i915_active optional

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17222/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
