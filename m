Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A934AE4D2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 23:40:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F0C10E4F8;
	Tue,  8 Feb 2022 22:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84CB410E2D8;
 Tue,  8 Feb 2022 22:40:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85354A66C9;
 Tue,  8 Feb 2022 22:40:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jordan Justen" <jordan.l.justen@intel.com>
Date: Tue, 08 Feb 2022 22:40:52 -0000
Message-ID: <164436005254.22542.768758737692145873@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208210503.869491-1-jordan.l.justen@intel.com>
In-Reply-To: <20220208210503.869491-1-jordan.l.justen@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GuC_HWCONFIG_with_documentation_=28rev3=29?=
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

Series: GuC HWCONFIG with documentation (rev3)
URL   : https://patchwork.freedesktop.org/series/99787/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e77bdf7a8928 drm/i915/guc: Add fetch of hwconfig table
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 227 lines checked
a25a127e8175 drm/i915/uapi: Add query for hwconfig blob
2acfafee266e drm/i915/uapi: Add struct drm_i915_query_hwconfig_blob_item
016c4656556a drm/i915/guc: Verify hwconfig blob matches supported format
-:35: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!hwconfig->ptr"
#35: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c:80:
+	if (hwconfig->size % 4 != 0 || hwconfig->ptr == NULL)

total: 0 errors, 0 warnings, 1 checks, 75 lines checked


