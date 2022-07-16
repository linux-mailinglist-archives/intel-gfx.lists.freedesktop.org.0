Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2C45770B8
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 20:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D0C010F055;
	Sat, 16 Jul 2022 18:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5247510E360;
 Sat, 16 Jul 2022 18:21:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B99FA8830;
 Sat, 16 Jul 2022 18:21:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sat, 16 Jul 2022 18:21:39 -0000
Message-ID: <165799569921.13613.5590194492073329293@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220715225451.1294354-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220715225451.1294354-1-daniele.ceraolospurio@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/106406/
State : warning

== Summary ==

Error: dim checkpatch failed
ef841c4deadb drm/i915/guc: support v69 in parallel to v70
-:391: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#391: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2161:
+static int __guc_action_register_multi_lrc_v69(struct intel_guc *guc,
 					   struct intel_context *ce,

-:731: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#731: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_GUC_FIRMWARE_DEFS_FALLBACK(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(DG1,          0, guc_def(dg1,  69, 0, 3)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  69, 0, 3)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  69, 0, 3)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  69, 0, 3)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  69, 0, 3)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  69, 0, 3)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  69, 0, 3)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  69, 0, 3))

-:731: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fw_def' - possible side-effects?
#731: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_GUC_FIRMWARE_DEFS_FALLBACK(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(DG1,          0, guc_def(dg1,  69, 0, 3)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  69, 0, 3)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  69, 0, 3)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  69, 0, 3)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  69, 0, 3)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  69, 0, 3)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  69, 0, 3)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  69, 0, 3))

-:731: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc_def' - possible side-effects?
#731: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:73:
+#define INTEL_GUC_FIRMWARE_DEFS_FALLBACK(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(DG1,          0, guc_def(dg1,  69, 0, 3)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  69, 0, 3)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  69, 0, 3)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  69, 0, 3)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  69, 0, 3)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  69, 0, 3)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  69, 0, 3)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  69, 0, 3)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  69, 0, 3)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  69, 0, 3))

-:787: WARNING:LINE_SPACING: Missing a blank line after declarations
#787: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:217:
+				const struct uc_fw_blob *blob = &blobs[i].blob;
+				uc_fw->fallback.path = blob->path;

-:806: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#806: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:457:
+			drm_warn(&i915->drm, "%s firmware %s not found, falling back to %s\n",
+					     intel_uc_fw_type_repr(uc_fw->type),

total: 1 errors, 1 warnings, 4 checks, 764 lines checked


