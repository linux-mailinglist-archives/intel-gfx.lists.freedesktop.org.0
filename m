Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BB1AD0439
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jun 2025 16:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE4C10EACA;
	Fri,  6 Jun 2025 14:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52E910EAC8;
 Fri,  6 Jun 2025 14:46:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Add_drm?=
 =?utf-8?q?=5Fpanic_support_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jocelyn Falempe" <jfalempe@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Jun 2025 14:46:52 -0000
Message-ID: <174922121285.56455.14066968341185553074@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250606120519.753928-1-jfalempe@redhat.com>
In-Reply-To: <20250606120519.753928-1-jfalempe@redhat.com>
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

Series: drm/i915: Add drm_panic support (rev8)
URL   : https://patchwork.freedesktop.org/series/141935/
State : warning

== Summary ==

Error: dim checkpatch failed
33b96a8be608 drm/i915/fbdev: Add intel_fbdev_get_map()
a7fa07bfc8c8 drm/i915/display/i9xx: Add a disable_tiling() for i9xx planes
79620528279e drm/i915/display: Add a disable_tiling() for skl planes
22299d854306 drm/ttm: Add ttm_bo_kmap_try_from_panic()
87fdcd53951b drm/i915: Add intel_bo_panic_setup and intel_bo_panic_finish
-:145: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#145: FILE: drivers/gpu/drm/i915/gem/i915_gem_pages.c:406:
+		i915_panic_vaddr = kmap_local_page_try_from_panic(

-:220: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#220: FILE: drivers/gpu/drm/xe/display/intel_bo.c:76:
+}
+/*

total: 0 errors, 0 warnings, 2 checks, 218 lines checked
83e82d69b944 drm/i915/display: Add drm_panic support
-:55: CHECK:LINE_SPACING: Please don't use multiple blank lines
#55: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:1274:
 
+

total: 0 errors, 0 warnings, 1 checks, 120 lines checked
c24776e00773 drm/i915/display: Add drm_panic support for Y-tiling with DPT
1c4aae899bc3 drm/i915/display: Add drm_panic support for 4-tiling with DPT
98364088e6e0 drm/i915/psr: Add intel_psr2_panic_force_full_update


