Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1903E666E9F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 10:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCCF10E189;
	Thu, 12 Jan 2023 09:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31D4D10E189;
 Thu, 12 Jan 2023 09:49:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2AFFAAADD8;
 Thu, 12 Jan 2023 09:49:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Date: Thu, 12 Jan 2023 09:49:23 -0000
Message-ID: <167351696317.2072.13083238509599366134@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230112092758.539070-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230112092758.539070-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_new_CDCLK_step_for_RPL-U_=28rev4=29?=
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

Series: Add new CDCLK step for RPL-U (rev4)
URL   : https://patchwork.freedesktop.org/series/111472/
State : warning

== Summary ==

Error: dim checkpatch failed
5f2b67ffb5e8 drm/i915: Add sub platform for 480MHz CDCLK step
-:90: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#90: FILE: include/drm/i915_pciids.h:688:
+#define INTEL_RPLU_IDS(info) \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)

-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#90: FILE: include/drm/i915_pciids.h:688:
+#define INTEL_RPLU_IDS(info) \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)

total: 1 errors, 0 warnings, 1 checks, 64 lines checked
c2a71b9c1e33 drm/i915/display: Add 480 MHz CDCLK steps for RPL-U


