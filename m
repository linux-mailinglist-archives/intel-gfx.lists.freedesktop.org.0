Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F248D9456DE
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2024 06:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D35A10E082;
	Fri,  2 Aug 2024 04:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC1B10E082;
 Fri,  2 Aug 2024 04:11:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_ARL_requ?=
 =?utf-8?q?ires_a_newer_GSC_firmware?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Aug 2024 04:11:29 -0000
Message-ID: <172257188996.490186.429378824950466551@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240802031051.3816392-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240802031051.3816392-1-John.C.Harrison@Intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: ARL requires a newer GSC firmware
URL   : https://patchwork.freedesktop.org/series/136826/
State : warning

== Summary ==

Error: dim checkpatch failed
7d3aabf63357 drm/i915: ARL requires a newer GSC firmware
-:149: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#149: FILE: include/drm/intel/i915_pciids.h:775:
+#define INTEL_ARL_IDS(MACRO__, ...) \
+	MACRO__(0x7D41, ## __VA_ARGS__), \
+	MACRO__(0x7D51, ## __VA_ARGS__), \
+	MACRO__(0x7D67, ## __VA_ARGS__), \
+	MACRO__(0x7DD1, ## __VA_ARGS__)

-:149: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#149: FILE: include/drm/intel/i915_pciids.h:775:
+#define INTEL_ARL_IDS(MACRO__, ...) \
+	MACRO__(0x7D41, ## __VA_ARGS__), \
+	MACRO__(0x7D51, ## __VA_ARGS__), \
+	MACRO__(0x7D67, ## __VA_ARGS__), \
+	MACRO__(0x7DD1, ## __VA_ARGS__)

total: 1 errors, 0 warnings, 1 checks, 115 lines checked


