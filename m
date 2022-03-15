Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E084DA345
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 20:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1132610E34F;
	Tue, 15 Mar 2022 19:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9325210E25D;
 Tue, 15 Mar 2022 19:28:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82BFCA363D;
 Tue, 15 Mar 2022 19:28:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Tue, 15 Mar 2022 19:28:33 -0000
Message-ID: <164737251353.20493.2361052587577781008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220315180444.3327283-1-bob.beckett@collabora.com>
In-Reply-To: <20220315180444.3327283-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_ttm_for_stolen?=
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

Series: drm/i915: ttm for stolen
URL   : https://patchwork.freedesktop.org/series/101396/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
26eebf54d3e6 drm/i915: instantiate ttm ranger manager for stolen memory
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
882cbce55afd drm/i915: add ability to create memory region object in place
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 189 lines checked
f844b84b6eeb drm/i915: use gem objects to track stolen nodes
-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:507:
+	intel_de_write(i915, ILK_DPFC_CB_BASE(fbc->id),
+			i915_gem_object_stolen_offset(fbc->compressed_fb));

-:243: CHECK:LINE_SPACING: Please don't use multiple blank lines
#243: FILE: drivers/gpu/drm/i915/gem/i915_gem_stolen.c:969:
+
+

total: 0 errors, 0 warnings, 2 checks, 230 lines checked
743f6cc618c7 drm/i915: stolen memory use ttm backend
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 516 lines checked
5045ae7a8418 drm/ttm: add range busy check for range manager
-:33: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#33: FILE: drivers/gpu/drm/ttm/ttm_range_manager.c:220:
+			      unsigned fpfn, unsigned lpfn)

-:33: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#33: FILE: drivers/gpu/drm/ttm/ttm_range_manager.c:220:
+			      unsigned fpfn, unsigned lpfn)

-:53: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#53: FILE: include/drm/ttm/ttm_range_manager.h:58:
+			      unsigned fpfn, unsigned lpfn);

-:53: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#53: FILE: include/drm/ttm/ttm_range_manager.h:58:
+			      unsigned fpfn, unsigned lpfn);

total: 0 errors, 4 warnings, 0 checks, 31 lines checked
9ed1deb99315 drm/i915: add range busy check for ttm region
673869ce0f7c drm/i915: cleanup old stolen state


