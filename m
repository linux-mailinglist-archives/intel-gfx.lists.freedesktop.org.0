Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C584A4DCC5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 12:39:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C772710E26F;
	Tue,  4 Mar 2025 11:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD71F10E26F;
 Tue,  4 Mar 2025 11:39:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?convert_intel=5Fdisplay=2E=5Bch=5D_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Mar 2025 11:39:08 -0000
Message-ID: <174108834890.578900.2766214643556745371@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1741084010.git.jani.nikula@intel.com>
In-Reply-To: <cover.1741084010.git.jani.nikula@intel.com>
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

Series: drm/i915/display: convert intel_display.[ch] to struct intel_display
URL   : https://patchwork.freedesktop.org/series/145759/
State : warning

== Summary ==

Error: dim checkpatch failed
98626180e4c8 drm/i915/display: convert various port/phy helpers to struct intel_display
bbd0aed0dc13 drm/i915/display: convert some intel_display.[ch] functions to struct intel_display
-:90: CHECK:CAMELCASE: Avoid CamelCase: <ILK_eDP_A_DISABLE>
#90: FILE: drivers/gpu/drm/i915/display/intel_display.c:7649:
+	if (display->platform.ironlake && (intel_de_read(display, FUSE_STRAP) & ILK_eDP_A_DISABLE))

total: 0 errors, 0 warnings, 1 checks, 421 lines checked
53326f0f9d80 drm/i915/display: convert intel_has_pending_fb_unpin() to struct intel_display
5215820b1024 drm/i915/display: remove dupe intel_update_watermarks() declaration
e295d35a5a52 drm/i915/display: convert intel_display.c to struct intel_display
-:948: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#948: FILE: drivers/gpu/drm/i915/display/intel_display.c:2801:
+				     TRANSCONF(display, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;

total: 0 errors, 1 warnings, 0 checks, 2718 lines checked


