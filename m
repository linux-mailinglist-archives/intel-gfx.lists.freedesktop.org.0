Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39158578E5B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 01:40:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD5C112308;
	Mon, 18 Jul 2022 23:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF763112308;
 Mon, 18 Jul 2022 23:40:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2C2FA0078;
 Mon, 18 Jul 2022 23:40:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Mon, 18 Jul 2022 23:40:17 -0000
Message-ID: <165818761789.9321.18305245888852733291@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220718230732.1409641-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220718230732.1409641-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_support_v69_in_parallel_to_v70?=
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

Series: drm/i915/guc: support v69 in parallel to v70
URL   : https://patchwork.freedesktop.org/series/106457/
State : warning

== Summary ==

Error: dim checkpatch failed
5b8282554b81 drm/i915/guc: support v69 in parallel to v70
-:742: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#742: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_GUC_FIRMWARE_DEFS_FALLBACK(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3))

-:742: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#742: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_GUC_FIRMWARE_DEFS_FALLBACK(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3))

-:742: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc_def' - possible side-effects?
#742: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_GUC_FIRMWARE_DEFS_FALLBACK(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3))

total: 1 errors, 0 warnings, 2 checks, 771 lines checked


