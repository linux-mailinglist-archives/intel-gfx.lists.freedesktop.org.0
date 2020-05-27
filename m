Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1146F1E3ECD
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 12:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E6816E2C8;
	Wed, 27 May 2020 10:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A9F56E2C8;
 Wed, 27 May 2020 10:17:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 550E4A0003;
 Wed, 27 May 2020 10:17:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 27 May 2020 10:17:44 -0000
Message-ID: <159057466431.343.5245677044860987632@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/mxsfb=3A_Call_drm=5Fcrtc=5Fvbla?=
 =?utf-8?q?nk=5Fon/off?=
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

Series: series starting with [1/2] drm/mxsfb: Call drm_crtc_vblank_on/off
URL   : https://patchwork.freedesktop.org/series/77689/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8541 -> Patchwork_17783
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17783/index.html


Changes
-------

  No changes found


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8541 -> Patchwork_17783

  CI-20190529: 20190529
  CI_DRM_8541: 6f35fec9320a0ee5178075dd3d9df6507f55af68 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17783: 026d27d53616816edfeab1d8caa0d6af236ef01c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

026d27d53616 drm/atomic-helper: reset vblank on crtc reset
01d3621e8e27 drm/mxsfb: Call drm_crtc_vblank_on/off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17783/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
