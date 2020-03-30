Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0FB1983ED
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 21:08:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A086E1BD;
	Mon, 30 Mar 2020 19:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 26BCC6E1B6;
 Mon, 30 Mar 2020 19:08:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D95FA47E1;
 Mon, 30 Mar 2020 19:08:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Mar 2020 19:08:14 -0000
Message-ID: <158559529411.13827.1653641227994971189@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330133710.14385-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200330133710.14385-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Split_eb=5Fvma_into_its_own_allocation?=
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

Series: drm/i915/gem: Split eb_vma into its own allocation
URL   : https://patchwork.freedesktop.org/series/75241/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8216 -> Patchwork_17133
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/index.html


Changes
-------

  No changes found


Participating hosts (45 -> 38)
------------------------------

  Additional (6): fi-bdw-5557u fi-glk-dsi fi-snb-2520m fi-ivb-3770 fi-elk-e7500 fi-blb-e6850 
  Missing    (13): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-gdg-551 fi-bsw-kefka fi-skl-lmem fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8216 -> Patchwork_17133

  CI-20190529: 20190529
  CI_DRM_8216: 4ccea545b3b32da9999542abd56251e4e13bdf04 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17133: 0a256bee623e135ab7ab1188ca52c07dc5357df3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0a256bee623e drm/i915/gem: Split eb_vma into its own allocation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17133/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
