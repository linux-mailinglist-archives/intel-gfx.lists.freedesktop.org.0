Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB8D1EBC52
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 15:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6BF6E3A8;
	Tue,  2 Jun 2020 13:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B4B96E3A2;
 Tue,  2 Jun 2020 13:04:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95355A47DA;
 Tue,  2 Jun 2020 13:04:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Jun 2020 13:04:31 -0000
Message-ID: <159110307159.21429.13752457768310694750@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200602121557.3888-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200602121557.3888-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_drm/i915=3A_Identify_Cometlake_platfor?=
 =?utf-8?q?m_=28rev2=29?=
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

Series: series starting with drm/i915: Identify Cometlake platform (rev2)
URL   : https://patchwork.freedesktop.org/series/77916/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b57ebeadf460 drm/i915: Identify Cometlake platform
-:354: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#354: FILE: drivers/gpu/drm/i915/i915_drv.h:1471:
+#define IS_CML_GT2(dev_priv)	(IS_COMETLAKE(dev_priv) && \
+				 INTEL_INFO(dev_priv)->gt == 2)

-:368: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#368: FILE: drivers/gpu/drm/i915/i915_pci.c:769:
+#define CML_PLATFORM \
+	GEN9_FEATURES, \
+	PLATFORM(INTEL_COMETLAKE)

total: 1 errors, 0 warnings, 1 checks, 433 lines checked
e06a98a10785 drm/i915/gt: Make the CTX_TIMESTAMP readable on !rcs

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
