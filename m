Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABD51DD681
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 21:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E226E23B;
	Thu, 21 May 2020 19:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0473A6E22A;
 Thu, 21 May 2020 19:00:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1AB1A008A;
 Thu, 21 May 2020 19:00:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 21 May 2020 19:00:54 -0000
Message-ID: <159008765496.4441.13789361114756205227@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521173348.27467-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200521173348.27467-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Shortcircuit_?=
 =?utf-8?q?queue=5Fprio=28=29_for_no_internal_levels?=
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

Series: series starting with [1/2] drm/i915/execlists: Shortcircuit queue_prio() for no internal levels
URL   : https://patchwork.freedesktop.org/series/77518/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8520 -> Patchwork_17754
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/index.html


Changes
-------

  No changes found


Participating hosts (47 -> 42)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8520 -> Patchwork_17754

  CI-20190529: 20190529
  CI_DRM_8520: 1dd5736705657844b104b48d36677cd1096cdfc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5669: 918d56bd0181d516e41e3505134f7a81b8fef8fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17754: 7b21690733bd41f8d3ea0518c5ed5e035a9621f7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7b21690733bd drm/i915: Improve execute_cb struct packing
2c7b890b8dfb drm/i915/execlists: Shortcircuit queue_prio() for no internal levels

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17754/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
