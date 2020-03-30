Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B05119837C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 20:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C94BD6E195;
	Mon, 30 Mar 2020 18:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AC7B6E179;
 Mon, 30 Mar 2020 18:38:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24226A0BC6;
 Mon, 30 Mar 2020 18:38:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Mar 2020 18:38:19 -0000
Message-ID: <158559349911.13825.7221221682484214349@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330125827.5804-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200330125827.5804-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Explicitly_reset_both_reg_and_context_runtim?=
 =?utf-8?q?e_=28rev2=29?=
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

Series: drm/i915/execlists: Explicitly reset both reg and context runtime (rev2)
URL   : https://patchwork.freedesktop.org/series/75127/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8216 -> Patchwork_17132
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17132/index.html


Changes
-------

  No changes found


Participating hosts (45 -> 36)
------------------------------

  Additional (4): fi-bdw-5557u fi-ivb-3770 fi-snb-2520m fi-elk-e7500 
  Missing    (13): fi-hsw-4770r fi-ilk-m540 fi-bsw-n3050 fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-ctg-p8600 fi-bdw-samus fi-tgl-y fi-bsw-nick fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8216 -> Patchwork_17132

  CI-20190529: 20190529
  CI_DRM_8216: 4ccea545b3b32da9999542abd56251e4e13bdf04 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17132: 56c1f7f67f817ca22e115c8713e1638353b6d6c2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

56c1f7f67f81 drm/i915/execlists: Explicitly reset both reg and context runtime

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17132/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
