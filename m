Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CE71AE660
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04764893EA;
	Fri, 17 Apr 2020 19:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 952616EA0E;
 Fri, 17 Apr 2020 19:56:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E31EA00E6;
 Fri, 17 Apr 2020 19:56:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Apr 2020 19:56:20 -0000
Message-ID: <158715338057.10467.8702495067706573035@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417141555.12028-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200417141555.12028-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Poison_residual_state_=5BHWSP=5D_across_resume=2E?=
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

Series: drm/i915/gt: Poison residual state [HWSP] across resume.
URL   : https://patchwork.freedesktop.org/series/76100/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8319 -> Patchwork_17352
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17352 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17352, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17352/index.html


Changes
-------

  No changes found


Participating hosts (51 -> 12)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17352 prevented too many machines from booting.

  Missing    (39): fi-kbl-soraka fi-skl-6770hq fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-lmem fi-icl-guc fi-icl-dsi fi-skl-6600u fi-cml-u2 fi-tgl-u fi-bdw-5557u fi-cml-s fi-bxt-dsi fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-ctg-p8600 fi-tgl-y fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-ehl-1 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8319 -> Patchwork_17352

  CI-20190529: 20190529
  CI_DRM_8319: 18043327e8a9cba095bca9f80cdc70900a51f92c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17352: 7e430cbbd6690c9bceb6e0f55bbbd5cca33858b5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7e430cbbd669 drm/i915/gt: Poison residual state [HWSP] across resume.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17352/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
