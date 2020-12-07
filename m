Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C76802D08A4
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 01:42:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F1089E69;
	Mon,  7 Dec 2020 00:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD04489E63;
 Mon,  7 Dec 2020 00:42:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3587A0019;
 Mon,  7 Dec 2020 00:42:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Mon, 07 Dec 2020 00:42:48 -0000
Message-ID: <160730176870.8721.17482553750535139633@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201207002134.13731-1-sean.z.huang@intel.com>
In-Reply-To: <20201207002134.13731-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Intel_PXP_component_-_Mesa_single_session?=
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

Series: Introduce Intel PXP component - Mesa single session
URL   : https://patchwork.freedesktop.org/series/84620/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
56ffa1e5dc43 drm/i915/pxp: Introduce Intel PXP component
-:108: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#108: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 125 lines checked
900074c203b4 drm/i915/pxp: Enable PXP irq worker and callback stub
a44a71ee8f7a drm/i915/pxp: Add PXP context for logical hardware states.
-:106: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#106: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 165 lines checked
dbe74e292313 drm/i915/pxp: set KCR reg init during the boot time
-:69: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#69: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 102 lines checked
1f58bdf3d44d drm/i915/pxp: Read register to check hardware session state
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:15:
+#define pxp_session_list(i915, session_type) (((session_type) == SESSION_TYPE_TYPE0) ? \
+	&(i915)->pxp.ctx->active_pxp_type0_sessions : &(i915)->pxp.ctx->active_pxp_type1_sessions)

total: 0 errors, 0 warnings, 1 checks, 255 lines checked
21ed306a5303 drm/i915/pxp: Implement funcs to get/set PXP tag
6535c3768f7b drm/i915/pxp: Implement funcs to create the TEE channel
-:87: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#87: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 244 lines checked
dce0eab4952c drm/i915/pxp: Create the arbitrary session after boot
f3d2af9143ce drm/i915/pxp: Func to send hardware session termination
8d1a900379e7 drm/i915/pxp: Destroy arb session upon teardown
f363d53b2c55 drm/i915/pxp: Enable PXP power management
-:67: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#67: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 140 lines checked
61c300f2e8e9 drm/i915/pxp: Expose session state for display protection flip
ad81178c888f mei: pxp: export pavp client to me client bus
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 277 lines checked
cb5b82433cec drm/i915/uapi: introduce drm_i915_gem_create_ext
-:12: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Joonas Lahtinen joonas.lahtinen@linux.intel.com'
#12: 
Cc: Joonas Lahtinen joonas.lahtinen@linux.intel.com

-:13: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Matthew Auld matthew.auld@intel.com'
#13: 
Cc: Matthew Auld matthew.auld@intel.com

-:46: ERROR:CODE_INDENT: code indent should use tabs where possible
#46: FILE: drivers/gpu/drm/i915/i915_gem.c:265:
+        struct drm_i915_private *i915;$

-:46: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#46: FILE: drivers/gpu/drm/i915/i915_gem.c:265:
+        struct drm_i915_private *i915;$

-:50: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#50: FILE: drivers/gpu/drm/i915/i915_gem.c:269:
+static int __create_setparam(struct drm_i915_gem_object_param *args,
+							struct create_ext *ext_data)

-:95: CHECK:LINE_SPACING: Please don't use multiple blank lines
#95: FILE: drivers/gpu/drm/i915/i915_gem.c:317:
+
+

-:107: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#107: FILE: include/uapi/drm/i915_drm.h:394:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create_ext)

-:155: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#155: FILE: include/uapi/drm/i915_drm.h:1735:
+#define I915_OBJECT_PARAM  (1ull<<32)
                                 ^

total: 3 errors, 2 warnings, 3 checks, 136 lines checked
835fa00f2104 drm/i915/pxp: User interface for Protected buffer
2c2a5ec977c5 drm/i915/pxp: Add plane decryption support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
