Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CAB66D7E4
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 09:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898CB10E518;
	Tue, 17 Jan 2023 08:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F004710E514;
 Tue, 17 Jan 2023 08:18:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2BFFA882E;
 Tue, 17 Jan 2023 08:18:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Date: Tue, 17 Jan 2023 08:18:28 -0000
Message-ID: <167394350889.21230.5020539803207785316@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_new_CDCLK_step_for_RPL-U_=28rev5=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add new CDCLK step for RPL-U (rev5)
URL   : https://patchwork.freedesktop.org/series/111472/
State : warning

== Summary ==

Error: dim checkpatch failed
1160acd42953 drm/i915: Add RPL-U sub platform
-:91: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#91: FILE: include/drm/i915_pciids.h:688:
+#define INTEL_RPLU_IDS(info) \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)

-:91: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#91: FILE: include/drm/i915_pciids.h:688:
+#define INTEL_RPLU_IDS(info) \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)

total: 1 errors, 0 warnings, 1 checks, 64 lines checked
b2a1a12d2ce3 drm/i915/display: Add 480 MHz CDCLK steps for RPL-U


