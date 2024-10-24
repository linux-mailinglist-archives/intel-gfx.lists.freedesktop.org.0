Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE819ADE4E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 09:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C6510E0BD;
	Thu, 24 Oct 2024 07:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714E310E0BD;
 Thu, 24 Oct 2024 07:54:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/gsc=3A_test?=
 =?utf-8?q?_new_GSC_102=2E1=2E15=2E1926_for_MTL_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 07:54:46 -0000
Message-ID: <172975648645.1325975.10620234190749877857@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241022230050.4176990-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20241022230050.4176990-1-daniele.ceraolospurio@intel.com>
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

Series: drm/i915/gsc: test new GSC 102.1.15.1926 for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/140338/
State : warning

== Summary ==

Error: dim checkpatch failed
f69418bd442c drm/i915/gsc: test new GSC 102.1.15.1926 for MTL
-:25: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#25: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:143:
+	fw_def(METEORLAKE,   0, gsc_def(mtl, 1, 0 , "i915/mtl_gsc_102.1.15.1926.bin"))
 	                                          ^

-:35: WARNING:MACRO_ARG_UNUSED: Argument 'prefix_' is not used in function-like macro
#35: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:180:
+#define MAKE_GSC_FW_PATH(prefix_, major_, minor_, path_) \
+	path_

-:35: WARNING:MACRO_ARG_UNUSED: Argument 'major_' is not used in function-like macro
#35: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:180:
+#define MAKE_GSC_FW_PATH(prefix_, major_, minor_, path_) \
+	path_

-:35: WARNING:MACRO_ARG_UNUSED: Argument 'minor_' is not used in function-like macro
#35: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:180:
+#define MAKE_GSC_FW_PATH(prefix_, major_, minor_, path_) \
+	path_

-:47: WARNING:MACRO_ARG_UNUSED: Argument 'prefix_' is not used in function-like macro
#47: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:243:
+#define GSC_FW_BLOB(prefix_, major_, minor_, path_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, true, path_)

total: 1 errors, 4 warnings, 0 checks, 29 lines checked


