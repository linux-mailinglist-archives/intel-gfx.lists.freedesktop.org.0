Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 769A6509194
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 22:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 924E510E374;
	Wed, 20 Apr 2022 20:47:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E25C10E374;
 Wed, 20 Apr 2022 20:47:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B50CA9932;
 Wed, 20 Apr 2022 20:47:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 20 Apr 2022 20:47:18 -0000
Message-ID: <165048763847.24580.9275996772658905634@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220420171328.57253-1-matthew.auld@intel.com>
In-Reply-To: <20220420171328.57253-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/doc=3A_add_rfc_section_for_small_BAR_uapi?=
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

Series: drm/doc: add rfc section for small BAR uapi
URL   : https://patchwork.freedesktop.org/series/102875/
State : warning

== Summary ==

Error: dim checkpatch failed
778440992ee2 drm/doc: add rfc section for small BAR uapi
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

-:33: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#33: FILE: Documentation/gpu/rfc/i915_small_bar.h:1:
+/**

-:218: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#218: FILE: Documentation/gpu/rfc/i915_small_bar.h:186:
+#define DRM_I915_QUERY_VMA_INFO_CPU_VISIBLE (1<<0)
                                               ^

-:229: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#229: FILE: Documentation/gpu/rfc/i915_small_bar.rst:1:
+==========================

total: 0 errors, 3 warnings, 1 checks, 255 lines checked


