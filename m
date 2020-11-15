Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA292B397D
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 22:30:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E39C16E9DA;
	Sun, 15 Nov 2020 21:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60B9889EB4;
 Sun, 15 Nov 2020 21:30:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 572E8A0003;
 Sun, 15 Nov 2020 21:30:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Sun, 15 Nov 2020 21:30:56 -0000
Message-ID: <160547585632.9577.11893099418495214598@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201115210815.5272-1-sean.z.huang@intel.com>
In-Reply-To: <20201115210815.5272-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/27=5D_drm/i915/pxp=3A_Introduce_?=
 =?utf-8?q?Intel_PXP_component?=
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

Series: series starting with [01/27] drm/i915/pxp: Introduce Intel PXP component
URL   : https://patchwork.freedesktop.org/series/83863/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ec0a75ce495b drm/i915/pxp: Introduce Intel PXP component
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

-:83: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/pxp/intel_pxp.c', please use '//' instead
#83: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:1:
+/* SPDX-License-Identifier: MIT */

-:83: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#83: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:1:
+/* SPDX-License-Identifier: MIT */

total: 0 errors, 3 warnings, 0 checks, 95 lines checked
cedefd9b5595 drm/i915/pxp: Enable PXP irq worker and callback stub
3dce6e2b5551 drm/i915/pxp: Add PXP context for logical hardware states.
-:116: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#116: 
new file mode 100644

-:121: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/pxp/intel_pxp_context.c', please use '//' instead
#121: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_context.c:1:
+/* SPDX-License-Identifier: MIT */

-:121: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#121: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_context.c:1:
+/* SPDX-License-Identifier: MIT */

-:142: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#142: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_context.c:22:
+	if (!new_ctx) {
+		drm_dbg(&i915->drm, "unable to allocate new pxp context!\n");

total: 0 errors, 4 warnings, 0 checks, 182 lines checked
1414cf460ee9 drm/i915/pxp: set KCR reg init during the boot time
-:67: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#67: 
new file mode 100644

-:72: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/pxp/intel_pxp_sm.c', please use '//' instead
#72: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:1:
+/* SPDX-License-Identifier: MIT */

-:72: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#72: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:1:
+/* SPDX-License-Identifier: MIT */

total: 0 errors, 3 warnings, 0 checks, 106 lines checked
403845f7ffbd drm/i915/pxp: Enable ioctl action to set the ring3 context
-:42: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:21:
+	if (copy_from_user(&pxp_info, u64_to_user_ptr(pxp_ops->pxp_info_ptr), sizeof(pxp_info)) != 0)

-:79: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#79: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:58:
+		if (copy_to_user(u64_to_user_ptr(pxp_ops->pxp_info_ptr), &pxp_info, sizeof(pxp_info)) != 0)

-:152: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#152: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_context.c:61:
+	if (!r3ctx) {
+		drm_dbg(&i915->drm, "Failed to kzalloc()\n");

-:205: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#205: FILE: include/uapi/drm/i915_drm.h:426:
+#define DRM_IOCTL_I915_PXP_OPS		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_PXP_OPS, struct drm_i915_pxp_ops)

total: 0 errors, 4 warnings, 0 checks, 164 lines checked
e45885b5b387 drm/i915: Rename the whitelist to allowlist
309be6f34e3c drm/i915/pxp: Add PXP-related registers into allowlist
b8289b5f361b drm/i915/pxp: Read register to check hardware session state
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:15:
+#define pxp_session_list(i915, session_type) (((session_type) == SESSION_TYPE_TYPE0) ? \
+	&(i915)->pxp.r0ctx->active_pxp_type0_sessions : &(i915)->pxp.r0ctx->active_pxp_type1_sessions)

-:20: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#20: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:16:
+	&(i915)->pxp.r0ctx->active_pxp_type0_sessions : &(i915)->pxp.r0ctx->active_pxp_type1_sessions)

-:155: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#155: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:144:
+		drm_dbg(&i915->drm, "Failed to %s invalid session_type=[%d]\n", __func__, session_type);

total: 0 errors, 2 warnings, 1 checks, 254 lines checked
e34ed97f0df9 drm/i915/pxp: Implement funcs to get/set PXP tag
333c15e61776 drm/i915/pxp: Enable ioctl action to reserve session slot
-:216: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#216: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:422:
+		drm_dbg(&i915->drm, "Failed to %s, invalid session mode=[%d]\n", __func__, protection_mode);

total: 0 errors, 1 warnings, 0 checks, 254 lines checked
668f4968e125 drm/i915/pxp: Enable ioctl action to set session in play
-:98: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:532:
+		list_for_each_entry(current_session, &i915->pxp.r0ctx->active_pxp_type0_sessions, session_list) {

-:99: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#99: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:533:
+			DRM_DEBUG("Traverse the active type0 list, session_index=[%d]\n", current_session->session_index);

-:100: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#100: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:534:
+			drm_dbg(&i915->drm, "Traverse the active type0 list, session_index=[%d]\n", current_session->session_index);

-:113: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#113: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:547:
+		list_for_each_entry(current_session, &i915->pxp.r0ctx->active_pxp_type1_sessions, session_list) {

-:114: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:548:
+			drm_dbg(&i915->drm, "Traverse the active type1 list, session_index=[%d]\n", current_session->session_index);

total: 0 errors, 5 warnings, 0 checks, 122 lines checked
429636cac96a drm/i915/pxp: Func to send hardware session termination
-:38: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:24:
+	drm_dbg(&i915->drm, ">>> %s cmd_buf=[%p] cmd_size_in_dw=[%d]\n", __func__, cmd_buf, cmd_size_in_dw);

-:196: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:732:
+static int add_pxp_prolog(struct drm_i915_private *i915, u32 *cmd, int session_type, int session_index)

-:206: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#206: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:742:
+	*cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);

-:220: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#220: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:756:
+		*cmd_prolog++ = (MI_SET_APPID | MI_SET_APPID_TYPE1_APP | MI_SET_APPID_SESSION_ID(session_index));

-:231: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#231: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:767:
+	*cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);

-:239: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#239: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:775:
+	*cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);

-:261: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#261: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:797:
+	*cmd_epilog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);

total: 0 errors, 7 warnings, 0 checks, 350 lines checked
049827bba4b3 drm/i915/pxp: Enable ioctl action to terminate the session
-:65: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:905:
+		list_for_each_entry_safe(current_session, n, &i915->pxp.r0ctx->active_pxp_type0_sessions, session_list) {

-:69: WARNING:LONG_LINE: line length of 131 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:909:
+					drm_dbg(&i915->drm, "Failed to %s due to invalid context_id=[%d]\n", __func__, context_id);

-:73: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#73: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:913:
+				ret = issue_hw_terminate_for_session(i915, session_type, session_index);

-:79: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#79: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:919:
+				ret = pxp_set_pxp_tag(i915, session_type, session_index, PROTECTION_MODE_NONE);

-:98: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:938:
+		drm_dbg(&i915->drm, "Warning - Couldn't find the type0 session_index=[0x%08x]\n", session_index);

-:103: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:943:
+		list_for_each_entry_safe(current_session, n, &i915->pxp.r0ctx->active_pxp_type1_sessions, session_list) {

-:107: WARNING:LONG_LINE: line length of 131 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:947:
+					drm_dbg(&i915->drm, "Failed to %s due to invalid context_id=[%d]\n", __func__, context_id);

-:111: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:951:
+				ret = issue_hw_terminate_for_session(i915, session_type, session_index);

-:117: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:957:
+				ret = pxp_set_pxp_tag(i915, session_type, session_index, PROTECTION_MODE_NONE);

-:134: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:974:
+		drm_dbg(&i915->drm, "Warning - Couldn't find the type1 session_index=[0x%08x]\n", session_index);

-:199: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#199: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:1039:
+int pxp_sm_terminate_protected_session_unsafe(struct drm_i915_private *i915, int session_type, int session_id)

total: 0 errors, 11 warnings, 0 checks, 238 lines checked
72b155e8c9fa drm/i915/pxp: Enable ioctl action to query PXP tag
2f7b05c73063 drm/i915/pxp: Destroy all type0 sessions upon teardown
-:128: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#128: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:1134:
+	list_for_each_entry_safe(current_session, n, pxp_session_list(i915, session_type), session_list) {

-:129: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#129: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:1135:
+		ret = pxp_set_pxp_tag(i915, session_type, current_session->session_index, PROTECTION_MODE_NONE);

total: 0 errors, 2 warnings, 0 checks, 159 lines checked
3270a1c64c4e drm/i915/pxp: Termiante the session upon app crash
-:82: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#82: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:1256:
+			ret = terminate_protected_session(i915, 0, s->session_type, s->session_index, false);

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
3bab939267e5 drm/i915/pxp: Enable PXP power management
-:69: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#69: 
new file mode 100644

-:74: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/pxp/intel_pxp_pm.c', please use '//' instead
#74: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.c:1:
+/* SPDX-License-Identifier: MIT */

-:74: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#74: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.c:1:
+/* SPDX-License-Identifier: MIT */

total: 0 errors, 3 warnings, 0 checks, 139 lines checked
12a97546fb0c drm/i915/pxp: Implement funcs to create the TEE channel
-:11: WARNING:BAD_SIGN_OFF: Co-developed-by: must be immediately followed by Signed-off-by:
#11: 
Co-developed-by: Vitaly Lubart <vitaly.lubart@intel.com>
Co-developed-by: Tomas Winkler <tomas.winkler@intel.com>
-:12: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match 
#12: 
Co-developed-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
-:87: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#87: 
new file mode 100644

-:92: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/pxp/intel_pxp_tee.c', please use '//' instead
#92: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:1:
+/* SPDX-License-Identifier: MIT */

-:92: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#92: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:1:
+/* SPDX-License-Identifier: MIT */

total: 0 errors, 5 warnings, 0 checks, 251 lines checked
b68da9355145 drm/i915/pxp: Enable ioctl action to send TEE commands
a7c6e8e4af8e drm/i915/pxp: Create the arbitrary session after boot
-:234: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#234: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.h:22:
+#define PXP_TEE_ARB_CMD_BIN  {0x00040000, 0x0000001e, 0x00000000, 0x00000008, 0x00000002, 0x0000000f}

total: 0 errors, 1 warnings, 0 checks, 188 lines checked
3d82e578d4c8 drm/i915/pxp: Add i915 trace logs for PXP operations
-:11: WARNING:TYPO_SPELLING: 'trun' may be misspelled - perhaps 'turn'?
#11: 
To trun on this feature, we need to set

-:29: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#29: FILE: drivers/gpu/drm/i915/i915_trace.h:1038:
+	    TP_STRUCT__entry(

-:36: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#36: FILE: drivers/gpu/drm/i915/i915_trace.h:1045:
+	    TP_fast_assign(

total: 0 errors, 1 warnings, 2 checks, 79 lines checked
dec5cd52eeda drm/i915/pxp: Expose session state for display protection flip
a944bd332fbb mei: bus: enable pavp device.
ea45bdd158e3 mei: pxp: export pavp client to me client bus
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 277 lines checked
15401e360d14 drm/i915/uapi: introduce drm_i915_gem_create_ext for TGL
-:11: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Joonas Lahtinen joonas.lahtinen@linux.intel.com'
#11: 
Cc: Joonas Lahtinen joonas.lahtinen@linux.intel.com

-:12: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Matthew Auld matthew.auld@intel.com'
#12: 
Cc: Matthew Auld matthew.auld@intel.com

-:45: ERROR:CODE_INDENT: code indent should use tabs where possible
#45: FILE: drivers/gpu/drm/i915/i915_gem.c:265:
+        struct drm_i915_private *i915;$

-:45: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#45: FILE: drivers/gpu/drm/i915/i915_gem.c:265:
+        struct drm_i915_private *i915;$

-:49: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#49: FILE: drivers/gpu/drm/i915/i915_gem.c:269:
+static int __create_setparam(struct drm_i915_gem_object_param *args,
+							struct create_ext *ext_data)

-:94: CHECK:LINE_SPACING: Please don't use multiple blank lines
#94: FILE: drivers/gpu/drm/i915/i915_gem.c:317:
+
+

-:106: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#106: FILE: include/uapi/drm/i915_drm.h:395:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create_ext)

-:154: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#154: FILE: include/uapi/drm/i915_drm.h:1737:
+#define I915_OBJECT_PARAM  (1ull<<32)
                                 ^

total: 3 errors, 2 warnings, 3 checks, 136 lines checked
125fd8d725ba drm/i915/pavp: User interface for Protected buffer
c968d500ff19 drm/i915/pxp: Add plane decryption support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
