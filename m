Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FD21E8593
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 19:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16346E956;
	Fri, 29 May 2020 17:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A7856E954;
 Fri, 29 May 2020 17:46:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53789A47EA;
 Fri, 29 May 2020 17:46:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 17:46:33 -0000
Message-ID: <159077439331.3334.16960076249006568619@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529085809.23691-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200529085809.23691-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_a_few_asserts_aroun?=
 =?utf-8?q?d_handling_of_i915=5Frequest=5Fis=5Factive=28=29_=28rev6=29?=
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

Series: series starting with [1/2] drm/i915: Add a few asserts around handling of i915_request_is_active() (rev6)
URL   : https://patchwork.freedesktop.org/series/77781/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8554 -> Patchwork_17820
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/index.html


Changes
-------

  No changes found


Participating hosts (49 -> 42)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * Linux: CI_DRM_8554 -> Patchwork_17820

  CI-20190529: 20190529
  CI_DRM_8554: ac5c0538eb79074e97a7a5c03c285f339290d961 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5684: bd399f5eb8263bb4a84ae6a5bb1a13d329e0515d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17820: 319babfa21e7433aad375377305d5ad092615dfa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

319babfa21e7 drm/i915: Check for awaits on still currently executing requests

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
