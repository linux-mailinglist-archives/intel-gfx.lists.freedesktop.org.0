Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 481DC2CB3D6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:18:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F236E9FD;
	Wed,  2 Dec 2020 04:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A82936E9FB;
 Wed,  2 Dec 2020 04:18:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E965A7DFE;
 Wed,  2 Dec 2020 04:18:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Wed, 02 Dec 2020 04:18:16 -0000
Message-ID: <160688269662.4091.1595872468628227357@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201202040341.31981-1-sean.z.huang@intel.com>
In-Reply-To: <20201202040341.31981-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Intel_PXP_component_=28rev4=29?=
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

Series: Introduce Intel PXP component (rev4)
URL   : https://patchwork.freedesktop.org/series/84136/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3ce53f7dc704 drm/i915/pxp: Introduce Intel PXP component
-:108: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#108: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 125 lines checked
b069e4460363 drm/i915/pxp: Enable PXP irq worker and callback stub
9d93e3de599a drm/i915/pxp: Add PXP context for logical hardware states.
-:106: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#106: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 165 lines checked
ac644173c4a0 drm/i915/pxp: set KCR reg init during the boot time
-:69: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#69: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 102 lines checked
ea5b0b6c33c2 drm/i915/pxp: Implement ioctl action to set the user space context
-:109: WARNING:PREFER_PACKED: __packed is preferred over __attribute__((packed))
#109: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:40:
+} __attribute__((packed));

total: 0 errors, 1 warnings, 0 checks, 147 lines checked
b2bf2b5d0e5c drm/i915/pxp: Add PXP-related registers into allowlist
791a4cc06927 drm/i915/pxp: Read register to check hardware session state
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:15:
+#define pxp_session_list(i915, session_type) (((session_type) == SESSION_TYPE_TYPE0) ? \
+	&(i915)->pxp.ctx->active_pxp_type0_sessions : &(i915)->pxp.ctx->active_pxp_type1_sessions)

total: 0 errors, 0 warnings, 1 checks, 255 lines checked
80f5b789b7aa drm/i915/pxp: Implement funcs to get/set PXP tag
89660e95826a drm/i915/pxp: Implement ioctl action to reserve session slot
4e64444547d5 drm/i915/pxp: Implement ioctl action to set session in play
a50087361687 drm/i915/pxp: Func to send hardware session termination
5c9dfa8888d1 drm/i915/pxp: Implement ioctl action to terminate the session
260be06ba629 drm/i915/pxp: Enable ioctl action to query PXP tag
789007105c02 drm/i915/pxp: Destroy all type0 sessions upon teardown
99e9bd56cb87 drm/i915/pxp: Termiante the session upon app crash
db542427db49 drm/i915/pxp: Enable PXP power management
-:67: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#67: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
62932c88f944 drm/i915/pxp: Implement funcs to create the TEE channel
-:87: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#87: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 244 lines checked
87ef8cfabefd drm/i915/pxp: Implement ioctl action to send TEE commands
0328e28c02df drm/i915/pxp: Create the arbitrary session after boot
3f8d34287fc8 drm/i915/pxp: Add i915 trace logs for PXP operations
-:11: WARNING:TYPO_SPELLING: 'trun' may be misspelled - perhaps 'turn'?
#11: 
To trun on this feature, we need to set

-:29: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#29: FILE: drivers/gpu/drm/i915/i915_trace.h:1038:
+	    TP_STRUCT__entry(

-:36: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#36: FILE: drivers/gpu/drm/i915/i915_trace.h:1045:
+	    TP_fast_assign(

total: 0 errors, 1 warnings, 2 checks, 80 lines checked
0c225361f287 drm/i915/pxp: Expose session state for display protection flip
3f9d21975353 mei: pxp: export pavp client to me client bus
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 277 lines checked
b730c330356d drm/i915/uapi: introduce drm_i915_gem_create_ext
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
afcf0d8a5ee0 drm/i915/pxp: User interface for Protected buffer
6de7943d6605 drm/i915/pxp: Add plane decryption support
71c5f649a82e drm/i915/pxp: Enable the PXP ioctl for protected session
-:9: WARNING:TYPO_SPELLING: 'destory' may be misspelled - perhaps 'destroy'?
#9: 
destory the protected session via this ioctl.

-:100: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#100: FILE: include/uapi/drm/i915_drm.h:427:
+#define DRM_IOCTL_I915_PXP_OPS		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_PXP_OPS, struct drm_i915_pxp_ops)

total: 0 errors, 2 warnings, 0 checks, 154 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
