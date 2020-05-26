Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DE61E1F85
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 12:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708236E14B;
	Tue, 26 May 2020 10:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1600C6E14A;
 Tue, 26 May 2020 10:19:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F06EA73C8;
 Tue, 26 May 2020 10:19:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 26 May 2020 10:19:19 -0000
Message-ID: <159048835905.28044.15047793011394254680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200526090753.11329-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200526090753.11329-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Reorder_await=5Fexecuti?=
 =?utf-8?q?on_before_await=5Frequest?=
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

Series: series starting with [1/2] drm/i915: Reorder await_execution before await_request
URL   : https://patchwork.freedesktop.org/series/77653/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8537 -> Patchwork_17775
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/index.html

Known issues
------------

  Here are the changes found in Patchwork_17775 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-FAIL][2] ([i915#165])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165


Participating hosts (50 -> 45)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8537 -> Patchwork_17775

  CI-20190529: 20190529
  CI_DRM_8537: 05a47cd761c49c3fa87648c30df0fd4d64b0b8c5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5678: c1f30ee09ac2e7eb3e8e90245239731a169a6050 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17775: 95d84329d1e9e74b00a4372c6b5b24a4d5a58d0c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

95d84329d1e9 drm/i915/gt: Do not schedule normal requests immediately along virtual
acc962187d69 drm/i915: Reorder await_execution before await_request

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
