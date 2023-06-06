Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2307236DA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 07:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D248410E20A;
	Tue,  6 Jun 2023 05:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1103810E20A;
 Tue,  6 Jun 2023 05:32:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07C33AADD6;
 Tue,  6 Jun 2023 05:32:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 06 Jun 2023 05:32:26 -0000
Message-ID: <168602954600.22671.13875811691208039627@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606022402.2048235-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230606022402.2048235-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_GSC_FW_support_for_MTL_=28rev3=29?=
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

Series: drm/i915: GSC FW support for MTL (rev3)
URL   : https://patchwork.freedesktop.org/series/117396/
State : warning

== Summary ==

Error: dim checkpatch failed
b8b9ea4aab9a drm/i915/gsc: fixes and updates for GSC memory allocation
a3b0ea9a67d7 drm/i915/mtl/gsc: extract release and security versions from the gsc binary
-:83: CHECK:LINE_SPACING: Please don't use multiple blank lines
#83: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_binary_headers.h:64:
+
+

-:92: ERROR:SPACING: space required after that ',' (ctx:VxV)
#92: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_binary_headers.h:73:
+#define INTEL_GSC_BPDT_ENTRY_TYPE_MASK GENMASK(15,0)
                                                  ^

-:282: CHECK:LINE_SPACING: Please don't use multiple blank lines
#282: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c:196:
+
+

total: 1 errors, 0 warnings, 2 checks, 395 lines checked
bcc84b63080f drm/i915/mtl/gsc: query the GSC FW for its compatibility version
-:104: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#104: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c:370:
+		gt_err(gt, "invalid GSC reply length %u [expected %zu], s=0x%x, f=0x%x, r=0x%x\n",
+			msg_out->header.message_size, sizeof(*msg_out),

total: 0 errors, 0 warnings, 1 checks, 193 lines checked
2d081dbad641 drm/i915/mtl/gsc: Add a gsc_info debugfs
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:147: CHECK:LINE_SPACING: Please don't use multiple blank lines
#147: FILE: drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c:330:
+
+

-:189: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#189: 
new file mode 100644

-:317: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'base' - possible side-effects?
#317: FILE: drivers/gpu/drm/i915/i915_reg.h:961:
+#define HECI_FWSTS(base, x) _MMIO((base) + _PICK(x, -(base), \
+						    HECI_FWSTS1, \
+						    HECI_FWSTS2, \
+						    HECI_FWSTS3, \
+						    HECI_FWSTS4, \
+						    HECI_FWSTS5, \
+						    HECI_FWSTS6))

total: 0 errors, 1 warnings, 2 checks, 250 lines checked
0d75b5b4975a drm/i915/gsc: define gsc fw
-:66: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#66: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:242:
+#define GSC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, true, \
+		       MAKE_GSC_FW_PATH(prefix_, major_, minor_))

-:66: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#66: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:242:
+#define GSC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, true, \
+		       MAKE_GSC_FW_PATH(prefix_, major_, minor_))

total: 0 errors, 0 warnings, 2 checks, 71 lines checked


