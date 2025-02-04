Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08530A2742C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 15:13:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7E310E652;
	Tue,  4 Feb 2025 14:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB7110E347;
 Tue,  4 Feb 2025 14:13:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/xe=3A_Convert_xe?=
 =?utf-8?q?=5Fforce=5Fwake_calls_to_guard_helpers=2E?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Feb 2025 14:13:13 -0000
Message-ID: <173867839377.912174.13221946290964070047@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250204124909.158315-1-dev@lankhorst.se>
In-Reply-To: <20250204124909.158315-1-dev@lankhorst.se>
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

Series: drm/xe: Convert xe_force_wake calls to guard helpers.
URL   : https://patchwork.freedesktop.org/series/144302/
State : warning

== Summary ==

Error: dim checkpatch failed
d4ebce4f3af9 header/cleanup.h: Add _init_args to DEFINE_LOCK_GUARD_1(_COND)
-:22: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#22: 
The first optional argument in DEFINE_LOCK_GUARD_1 is now used for the struct members,

-:75: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_type' may be better as '(_type)' to avoid precedence issues
#75: FILE: include/linux/cleanup.h:388:
+#define __DEFINE_LOCK_GUARD_1(_name, _type, _lock, ...)			\
+static inline class_##_name##_t class_##_name##_constructor(_type *l, ##__VA_ARGS__)	\
 {									\
 	class_##_name##_t _t = { .lock = l }, *_T = &_t;		\
 	_lock;								\

-:76: CHECK:SPACING: spaces preferred around that '*' (ctx:WxV)
#76: FILE: include/linux/cleanup.h:389:
+static inline class_##_name##_t class_##_name##_constructor(_type *l, ##__VA_ARGS__)	\
                                                                   ^

-:85: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#85: FILE: include/linux/cleanup.h:405:
+#define __DO_DEFINE_LOCK_GUARD_1(_name, _type, _lock, _unlock, _lock_members, _init_args...) \
 __DEFINE_CLASS_IS_CONDITIONAL(_name, false);				\
+__DEFINE_UNLOCK_GUARD(_name, _type, _unlock, _lock_members)		\
+__DEFINE_LOCK_GUARD_1(_name, _type, _lock, ##_init_args)

-:85: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_name' - possible side-effects?
#85: FILE: include/linux/cleanup.h:405:
+#define __DO_DEFINE_LOCK_GUARD_1(_name, _type, _lock, _unlock, _lock_members, _init_args...) \
 __DEFINE_CLASS_IS_CONDITIONAL(_name, false);				\
+__DEFINE_UNLOCK_GUARD(_name, _type, _unlock, _lock_members)		\
+__DEFINE_LOCK_GUARD_1(_name, _type, _lock, ##_init_args)

-:85: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_type' - possible side-effects?
#85: FILE: include/linux/cleanup.h:405:
+#define __DO_DEFINE_LOCK_GUARD_1(_name, _type, _lock, _unlock, _lock_members, _init_args...) \
 __DEFINE_CLASS_IS_CONDITIONAL(_name, false);				\
+__DEFINE_UNLOCK_GUARD(_name, _type, _unlock, _lock_members)		\
+__DEFINE_LOCK_GUARD_1(_name, _type, _lock, ##_init_args)

-:102: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#102: FILE: include/linux/cleanup.h:419:
+#define DEFINE_LOCK_GUARD_1_COND(_name, _ext, _condlock, ...)		\
 	__DEFINE_CLASS_IS_CONDITIONAL(_name##_ext, true);		\
 	EXTEND_CLASS(_name, _ext,					\
 		     ({ class_##_name##_t _t = { .lock = l }, *_T = &_t;\
 		        if (_T->lock && !(_condlock)) _T->lock = NULL;	\
 			_t; }),						\
+		     typeof_member(class_##_name##_t, lock) l, ##__VA_ARGS__)		\
 	static inline void * class_##_name##_ext##_lock_ptr(class_##_name##_t *_T) \
 	{ return class_##_name##_lock_ptr(_T); }

-:112: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 2 errors, 2 warnings, 4 checks, 69 lines checked
778e6919715e drm/xe/gt: Unify xe_hw_fence_irq_finish() calls.
12cd5978cbd9 drm/xe: Add scoped guards for xe_force_wake
-:30: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#30: FILE: drivers/gpu/drm/xe/xe_force_wake.c:27:
+ * ^Iunsigned int fw_ref = xe_force_wake_get(fw, XE_FORCEWAKE_ALL);$

-:31: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#31: FILE: drivers/gpu/drm/xe/xe_force_wake.c:28:
+ * ^Iif (!fw_ref)$

-:32: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#32: FILE: drivers/gpu/drm/xe/xe_force_wake.c:29:
+ * ^I^Ireturn -ETIMEDOUT;$

-:34: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#34: FILE: drivers/gpu/drm/xe/xe_force_wake.c:31:
+ * ^Ierr = do_something();$

-:36: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#36: FILE: drivers/gpu/drm/xe/xe_force_wake.c:33:
+ * ^Ixe_force_wake_put(fw, fw_ref);$

-:37: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#37: FILE: drivers/gpu/drm/xe/xe_force_wake.c:34:
+ * ^Ireturn err;$

-:45: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#45: FILE: drivers/gpu/drm/xe/xe_force_wake.c:42:
+ * ^Iscoped_cond_guard(xe_force_wake_get, return -ETIMEDOUT, fw, XE_FORCEWAKE_ALL) {$

-:46: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#46: FILE: drivers/gpu/drm/xe/xe_force_wake.c:43:
+ * ^I^Ireturn do_something();$

-:47: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#47: FILE: drivers/gpu/drm/xe/xe_force_wake.c:44:
+ * ^I}$

-:53: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#53: FILE: drivers/gpu/drm/xe/xe_force_wake.c:50:
+ * ^Iscoped_guard(xe_force_wake_get, fw, XE_FORCEWAKE_ALL) {$

-:54: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#54: FILE: drivers/gpu/drm/xe/xe_force_wake.c:51:
+ * ^I^Ido_something_only_if_fw_acquired();$

-:55: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#55: FILE: drivers/gpu/drm/xe/xe_force_wake.c:52:
+ * ^I}$

-:62: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#62: FILE: drivers/gpu/drm/xe/xe_force_wake.c:59:
+ * ^Iscoped_guard(xe_force_wake, fw, XE_FORCEWAKE_ALL) {$

-:63: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#63: FILE: drivers/gpu/drm/xe/xe_force_wake.c:60:
+ * ^I^Ialways_do_something_maybe_fw();$

-:64: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#64: FILE: drivers/gpu/drm/xe/xe_force_wake.c:61:
+ * ^I}$

-:66: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#66: FILE: drivers/gpu/drm/xe/xe_force_wake.c:63:
+ * ^Ido_something_no_fw();$

-:68: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#68: FILE: drivers/gpu/drm/xe/xe_force_wake.c:65:
+ * ^Iguard(xe_force_wake)(fw, XE_FORCEWAKE_ALL);$

-:69: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#69: FILE: drivers/gpu/drm/xe/xe_force_wake.c:66:
+ * ^Ialways_do_something_maybe_fw();$

total: 0 errors, 18 warnings, 0 checks, 82 lines checked
7af8df3ea7b5 drm/xe: Add xe_force_wake_get_all
-:111: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#111: FILE: drivers/gpu/drm/xe/xe_force_wake.c:308:
+/**
+  * xe_force_wake_get_all() : Increase the domain refcount

total: 0 errors, 1 warnings, 0 checks, 152 lines checked
717a3a0c3186 drm/xe/coredump: Use guard helpers for xe_force_wake.
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:77: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 63 lines checked
d95681cb76bb drm/xe/gsc: Use guard helper for xe_gsc_print_info.
-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/xe/xe_gsc.c:613:
+		drm_printf(p, "\nHECI1 FWSTS: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
+				xe_mmio_read32(mmio, HECI_FWSTS1(MTL_GSC_HECI1_BASE)),

total: 0 errors, 0 warnings, 1 checks, 32 lines checked
e155dadbae3b drm/xe/vram: Use xe_force_wake guard helper
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:58: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#58: FILE: drivers/gpu/drm/xe/xe_vram.c:254:
+		if (xe->info.has_flat_ccs) {
[...]
+		} else {
[...]

total: 0 errors, 2 warnings, 0 checks, 60 lines checked
3201afcd4133 drm/xe/gt: Convert to xe_force_wake guard helpers
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:295: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#295: FILE: drivers/gpu/drm/xe/xe_gt.c:751:
+	scoped_cond_guard(xe_force_wake_get, err = -ETIMEDOUT; goto err_out, gt_to_fw(gt), XE_FORCEWAKE_ALL) {

total: 0 errors, 2 warnings, 0 checks, 409 lines checked


