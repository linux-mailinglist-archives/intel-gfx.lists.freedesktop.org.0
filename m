Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E028A9408B
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Apr 2025 02:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F6B510E43A;
	Sat, 19 Apr 2025 00:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4094410E43A;
 Sat, 19 Apr 2025 00:08:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/guc=3A_Enab?=
 =?utf-8?q?le_DUAL=5FQUEUE=5FWA_for_newer_platforms?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Julia Filipchuk" <julia.filipchuk@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 19 Apr 2025 00:08:56 -0000
Message-ID: <174502133625.18651.10117111892494120577@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250418233918.2217759-1-julia.filipchuk@intel.com>
In-Reply-To: <20250418233918.2217759-1-julia.filipchuk@intel.com>
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

Series: drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms
URL   : https://patchwork.freedesktop.org/series/147987/
State : warning

== Summary ==

Error: dim checkpatch failed
c5649d6a3089 drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms
-:25: WARNING:TYPO_SPELLING: 'atleast' may be misspelled - perhaps 'at least'?
#25: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:28:
+ * Check that the GT is a graphics GT and has atleast minimum IP version.
                                               ^^^^^^^

-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:30:
+#define IS_GFX_GT_IP_ATLEAST(gt, from) ( \
+	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
+	((gt)->type != GT_MEDIA && \
+	 GRAPHICS_VER_FULL((gt)->i915) >= (from)))

-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'from' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:30:
+#define IS_GFX_GT_IP_ATLEAST(gt, from) ( \
+	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
+	((gt)->type != GT_MEDIA && \
+	 GRAPHICS_VER_FULL((gt)->i915) >= (from)))

total: 0 errors, 1 warnings, 2 checks, 36 lines checked


