Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9184BBA7F
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 15:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2296D10E19A;
	Fri, 18 Feb 2022 14:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 496EA10E19A;
 Fri, 18 Feb 2022 14:15:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46C3DA47DF;
 Fri, 18 Feb 2022 14:15:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 18 Feb 2022 14:15:57 -0000
Message-ID: <164519375726.25451.14493637001540031087@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220218112242.2117968-1-matthew.auld@intel.com>
In-Reply-To: <20220218112242.2117968-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_doc/rfc_for_small_BAR_support?=
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

Series: doc/rfc for small BAR support
URL   : https://patchwork.freedesktop.org/series/100399/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b54660c8b559 drm/doc: remove rfc section for dg1
-:20: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#20: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
5a0f497847ee drm/doc: add rfc section for small BAR uapi
-:20: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#20: 
new file mode 100644

-:25: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#25: FILE: Documentation/gpu/rfc/i915_small_bar.h:1:
+/**

-:173: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#173: FILE: Documentation/gpu/rfc/i915_small_bar.h:149:
+#define DRM_I915_QUERY_VMA_INFO_CPU_VISIBLE (1<<0)
                                               ^

-:184: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#184: FILE: Documentation/gpu/rfc/i915_small_bar.rst:1:
+==========================

total: 0 errors, 3 warnings, 1 checks, 200 lines checked


