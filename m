Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8A61B66CC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 00:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7166EA05;
	Thu, 23 Apr 2020 22:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D867A6E9FC;
 Thu, 23 Apr 2020 22:29:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1617A47EA;
 Thu, 23 Apr 2020 22:29:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Apr 2020 22:29:53 -0000
Message-ID: <158768099383.26750.11250447116824317088@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423182440.21876-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200423182440.21876-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Add_context_batchbuffers_registers_to_live?=
 =?utf-8?b?X2xyY19maXhlZCAocmV2Myk=?=
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

Series: drm/i915/selftests: Add context batchbuffers registers to live_lrc_fixed (rev3)
URL   : https://patchwork.freedesktop.org/series/76407/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8354 -> Patchwork_17448
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17448 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17448, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17448/index.html

Known issues
------------

  Here are the changes found in Patchwork_17448 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34


Participating hosts (48 -> 19)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17448 prevented too many machines from booting.

  Additional (1): fi-bwr-2160 
  Missing    (30): fi-kbl-soraka fi-bdw-gvtdvm fi-apl-guc fi-skl-lmem fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-ctg-p8600 fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8354 -> Patchwork_17448

  CI-20190529: 20190529
  CI_DRM_8354: 6ec6eeeda39e1733777f9115ba813a992a47b5fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5608: e7bcaf1dd251d454706c7cd64282f531aec50183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17448: 65c4f744373730554f6471b0556bc62727098bd7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

65c4f7443737 drm/i915/selftests: Add context batchbuffers registers to live_lrc_fixed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17448/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
