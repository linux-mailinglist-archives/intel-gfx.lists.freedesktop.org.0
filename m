Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA841C84F0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 10:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D626E02F;
	Thu,  7 May 2020 08:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 318516E0D2;
 Thu,  7 May 2020 08:37:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0532BA0091;
 Thu,  7 May 2020 08:37:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 07 May 2020 08:37:36 -0000
Message-ID: <158884065698.2189.16079747279209169650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506205758.14689-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200506205758.14689-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Mark_concurrent_submiss?=
 =?utf-8?q?ions_with_a_weak-dependency_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915: Mark concurrent submissions with a weak-dependency (rev2)
URL   : https://patchwork.freedesktop.org/series/77007/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8441 -> Patchwork_17597
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/index.html


Changes
-------

  No changes found


Participating hosts (49 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8441 -> Patchwork_17597

  CI-20190529: 20190529
  CI_DRM_8441: 6c0ee41a7c3201ef2a89800234803a95f65989be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5637: fdc33f7e1adc5bb6a1ba88b6233aaf224174d75a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17597: b9060fd22920f225e0556c7e171f9630ac1056b7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b9060fd22920 drm/i915: Ignore submit-fences on the same timeline
b860188a0dfb drm/i915/gt: Suppress internal I915_PRIORITY_WAIT for timeslicing
c4a391901bbf drm/i915: Mark concurrent submissions with a weak-dependency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17597/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
