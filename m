Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7248D19C423
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 16:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3D26EA9D;
	Thu,  2 Apr 2020 14:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 72EA66EA9C;
 Thu,  2 Apr 2020 14:30:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6BB57A0118;
 Thu,  2 Apr 2020 14:30:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Apr 2020 14:30:12 -0000
Message-ID: <158583781241.24293.17841405187894016152@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402124218.6375-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200402124218.6375-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Utilize_rcu_iteration_of_context_engines_=28rev3?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gem: Utilize rcu iteration of context engines (rev3)
URL   : https://patchwork.freedesktop.org/series/75270/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8238 -> Patchwork_17181
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/index.html


Changes
-------

  No changes found


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8238 -> Patchwork_17181

  CI-20190529: 20190529
  CI_DRM_8238: 840f70602a47208a2f1e444ba276f412f10e38df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5558: 3b55a816300d80bc5e0b995cd41ee8c8649a1ea2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17181: 92fc6f8ff1aacb1926e17b399dfa898b17997e36 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

92fc6f8ff1aa drm/i915/gem: Utilize rcu iteration of context engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
