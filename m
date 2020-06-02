Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D381EBEBD
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 17:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0B86E40F;
	Tue,  2 Jun 2020 15:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C18E6E40D;
 Tue,  2 Jun 2020 15:08:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0573AA66C7;
 Tue,  2 Jun 2020 15:08:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Jun 2020 15:08:18 -0000
Message-ID: <159111049800.21429.5192006753433775744@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200602140541.5481-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200602140541.5481-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Identify_Cometla?=
 =?utf-8?q?ke_platform?=
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

Series: series starting with [1/2] drm/i915: Identify Cometlake platform
URL   : https://patchwork.freedesktop.org/series/77922/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cb7a71f01dd4 drm/i915: Identify Cometlake platform
-:367: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#367: FILE: drivers/gpu/drm/i915/i915_drv.h:1471:
+#define IS_CML_GT2(dev_priv)	(IS_COMETLAKE(dev_priv) && \
+				 INTEL_INFO(dev_priv)->gt == 2)

-:381: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#381: FILE: drivers/gpu/drm/i915/i915_pci.c:769:
+#define CML_PLATFORM \
+	GEN9_FEATURES, \
+	PLATFORM(INTEL_COMETLAKE)

total: 1 errors, 0 warnings, 1 checks, 448 lines checked
fd76a0e5a47e drm/i915/gt: Make the CTX_TIMESTAMP readable on !rcs

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
