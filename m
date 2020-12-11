Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3024D2D7132
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 09:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78DD26EC7C;
	Fri, 11 Dec 2020 08:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 013006E02E;
 Fri, 11 Dec 2020 08:05:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1FE9A0019;
 Fri, 11 Dec 2020 08:05:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Fri, 11 Dec 2020 08:05:51 -0000
Message-ID: <160767395189.16100.13969737151992932634@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201211072911.27403-1-sean.z.huang@intel.com>
In-Reply-To: <20201211072911.27403-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Intel_PXP_component_-_Mesa_single_session_=28rev7?=
 =?utf-8?q?=29?=
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

Series: Introduce Intel PXP component - Mesa single session (rev7)
URL   : https://patchwork.freedesktop.org/series/84620/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0cae6c13cf00 drm/i915/pxp: Introduce Intel PXP component
-:111: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#111: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 175 lines checked
f5f3e07588f6 drm/i915/pxp: set KCR reg init during the boot time
b3f4fa4690f9 drm/i915/pxp: Implement funcs to create the TEE channel
-:8: WARNING:TYPO_SPELLING: 'defualt' may be misspelled - perhaps 'default'?
#8: 
(defualt) session.

-:85: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#85: 
new file mode 100644

total: 0 errors, 2 warnings, 0 checks, 248 lines checked
d1465e75c54a drm/i915/pxp: Create the arbitrary session after boot
-:68: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#68: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 297 lines checked
5e4cfcfc2516 drm/i915/pxp: Func to send hardware session termination
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 181 lines checked
8ec5e8ce209a drm/i915/pxp: Enable PXP irq worker and callback stub
-:51: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/i915_reg.h:7970:
+#define GEN11_CRYPTO_INTR_MASK		_MMIO(0x1900f0) /* crypto mask is in bit31-16 (Engine1 Interrupt Mask) */

total: 0 errors, 1 warnings, 0 checks, 210 lines checked
924b2bb0f32c drm/i915/pxp: Destroy arb session upon teardown
4051452e1385 drm/i915/pxp: Enable PXP power management
-:90: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#90: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 148 lines checked
4e1693650a95 drm/i915/pxp: Expose session state for display protection flip
e30b264e9b24 mei: pxp: export pavp client to me client bus
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 277 lines checked
51ca8ba239da drm/i915/uapi: introduce drm_i915_gem_create_ext
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
75b529bb0ead drm/i915/pxp: User interface for Protected buffer
458c4c5f7dc7 drm/i915/pxp: Add plane decryption support
b25888532795 drm/i915/pxp: Implement ioctl action to reserve session slots
-:62: WARNING:PREFER_PACKED: __packed is preferred over __attribute__((packed))
#62: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:39:
+} __attribute__((packed));

-:254: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#254: 
new file mode 100644

-:345: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#345: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_sm.c:87:
+		msleep(10);

total: 0 errors, 3 warnings, 0 checks, 437 lines checked
75aee5d55b35 drm/i915/pxp: Implement ioctl action to set session in play
cb65109b3532 drm/i915/pxp: Implement ioctl action to terminate the session
a6dab9f61328 drm/i915/pxp: Implement ioctl action to send TEE commands
2c9895acb3e8 drm/i915/pxp: Implement ioctl action to query PXP tag
4be1ba306da5 drm/i915/pxp: Termiante the session upon app crash
e028d175a7c7 drm/i915/pxp: Add PXP-related registers into allowlist
63f42b42ce40 drm/i915/pxp: Enable the PXP ioctl for protected session
-:9: WARNING:TYPO_SPELLING: 'destory' may be misspelled - perhaps 'destroy'?
#9: 
destory the protected session via this ioctl.

-:105: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#105: FILE: include/uapi/drm/i915_drm.h:427:
+#define DRM_IOCTL_I915_PXP_OPS		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_PXP_OPS, struct drm_i915_pxp_ops)

total: 0 errors, 2 warnings, 0 checks, 156 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
