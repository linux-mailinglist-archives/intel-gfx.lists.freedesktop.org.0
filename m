Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E9B12D8A4
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 13:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56BB6E21F;
	Tue, 31 Dec 2019 12:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E6FE6E21D;
 Tue, 31 Dec 2019 12:48:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6876CA0134;
 Tue, 31 Dec 2019 12:48:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Dec 2019 12:48:36 -0000
Message-ID: <157779651640.26887.9011288502658898867@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231122708.4025916-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231122708.4025916-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Restore_coarse_power_gating?=
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

Series: drm/i915/gt: Restore coarse power gating
URL   : https://patchwork.freedesktop.org/series/71520/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0bd0e98f0db7 drm/i915/gt: Restore coarse power gating
-:31: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#31: FILE: drivers/gpu/drm/i915/i915_drv.h:1660:
+#define NEEDS_WaRsDisableCoarsePowerGating(dev_priv) ^I^I^I\$

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#31: FILE: drivers/gpu/drm/i915/i915_drv.h:1660:
+#define NEEDS_WaRsDisableCoarsePowerGating(dev_priv) 			\
+	(IS_CANNONLAKE(dev_priv) ||					\
+	 IS_SKL_GT3(dev_priv) ||					\
+	 IS_SKL_GT4(dev_priv))

total: 0 errors, 1 warnings, 1 checks, 13 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
