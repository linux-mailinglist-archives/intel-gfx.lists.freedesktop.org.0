Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A47542F99CA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 07:18:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3252A6E0D5;
	Mon, 18 Jan 2021 06:18:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A03396E0D5;
 Mon, 18 Jan 2021 06:18:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A845A9932;
 Mon, 18 Jan 2021 06:18:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Mon, 18 Jan 2021 06:18:18 -0000
Message-ID: <161095069860.28166.10985010137244815137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210118060730.15425-1-sean.z.huang@intel.com>
In-Reply-To: <20210118060730.15425-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Intel_PXP_component_-_Mesa_single_session_=28rev2?=
 =?utf-8?q?1=29?=
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

Series: Introduce Intel PXP component - Mesa single session (rev21)
URL   : https://patchwork.freedesktop.org/series/84620/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4396cc471fa4 drm/i915/pxp: Introduce Intel PXP component
-:123: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#123: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 193 lines checked
18eb5c1f3813 drm/i915/pxp: set KCR reg init during the boot time
d3d5b2b2f9ce drm/i915/pxp: Implement funcs to create the TEE channel
-:89: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#89: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 245 lines checked
8fe0a04af720 drm/i915/pxp: Create the arbitrary session after boot
-:47: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#47: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 271 lines checked
af0d329ae1de drm/i915/pxp: Func to send hardware session termination
-:61: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#61: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 188 lines checked
f3091e967834 drm/i915/pxp: Enable PXP irq worker and callback stub
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
    - Fix bug, access i915 pointer before assigning the value at intel_pxp_irq_handler()

total: 0 errors, 1 warnings, 0 checks, 246 lines checked
325e18a57b1d drm/i915/pxp: Destroy arb session upon teardown
78610e3d2545 drm/i915/pxp: Enable PXP power management
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 148 lines checked
dff69f1a3083 drm/i915/pxp: Expose session state for display protection flip
d68784e0dd80 mei: pxp: export pavp client to me client bus
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 277 lines checked
cb92589b1f0b drm/i915/uapi: introduce drm_i915_gem_create_ext
-:109: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#109: FILE: include/uapi/drm/i915_drm.h:395:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create_ext)

total: 0 errors, 1 warnings, 0 checks, 135 lines checked
f2d3dd1da350 drm/i915/pxp: User interface for Protected buffer
c3f48d1b5a60 drm/i915/pxp: Add plane decryption support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
