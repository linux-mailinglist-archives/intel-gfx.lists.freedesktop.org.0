Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75B795F2DF
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 15:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF20892A1;
	Mon, 26 Aug 2024 13:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43114892A1;
 Mon, 26 Aug 2024 13:25:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/xe=3A_Align_all_?=
 =?utf-8?q?VRAM_scanout_buffers_to_64k_physical_pages_when_needed=2E?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2024 13:25:44 -0000
Message-ID: <172467874426.784489.4303859505406264838@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
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

Series: drm/xe: Align all VRAM scanout buffers to 64k physical pages when needed.
URL   : https://patchwork.freedesktop.org/series/137785/
State : warning

== Summary ==

Error: dim checkpatch failed
b3895b347e5e drm/xe: Align all VRAM scanout buffers to 64k physical pages when needed.
-:30: WARNING:BAD_SIGN_OFF: Co-developed-by: must be immediately followed by Signed-off-by:
#30: 
Co-developed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>

-:47: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#47: FILE: drivers/gpu/drm/xe/display/intel_fb_bo.c:33:
+	if (XE_IOCTL_DBG(xe, mode_cmd->modifier[0] == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
+			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))

total: 0 errors, 1 warnings, 1 checks, 41 lines checked
eee56e82b172 drm/i915/display: Add function for checking 64k physical alignment workaround
-:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#90: FILE: drivers/gpu/drm/xe/display/intel_fb_bo.c:34:
+	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys_wa(mode_cmd->modifier[0]) &&
 			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))

total: 0 errors, 0 warnings, 1 checks, 62 lines checked


