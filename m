Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB211DD60B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 20:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C926E22E;
	Thu, 21 May 2020 18:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6455E6E22A;
 Thu, 21 May 2020 18:34:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 627A6A47EA;
 Thu, 21 May 2020 18:34:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 21 May 2020 18:34:53 -0000
Message-ID: <159008609339.4441.15551464129460863587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521170255.27035-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200521170255.27035-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Stop_cross-poluting_PIN=5FGLOBAL_with_PIN=5FUSER_wi?=
 =?utf-8?q?th_no-ppgtt?=
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

Series: drm/i915/gt: Stop cross-poluting PIN_GLOBAL with PIN_USER with no-ppgtt
URL   : https://patchwork.freedesktop.org/series/77517/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8520 -> Patchwork_17753
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/index.html


Changes
-------

  No changes found


Participating hosts (47 -> 41)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8520 -> Patchwork_17753

  CI-20190529: 20190529
  CI_DRM_8520: 1dd5736705657844b104b48d36677cd1096cdfc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5669: 918d56bd0181d516e41e3505134f7a81b8fef8fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17753: d248fc3b877b275b48e9060278ec5c2d2428fad2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d248fc3b877b drm/i915/gt: Stop cross-poluting PIN_GLOBAL with PIN_USER with no-ppgtt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
