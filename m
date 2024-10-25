Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 892EA9AFC07
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 10:06:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2887010EA1E;
	Fri, 25 Oct 2024 08:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2538010EA1E;
 Fri, 25 Oct 2024 08:06:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?use_x100_version_for_full_version_and_release_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2024 08:06:43 -0000
Message-ID: <172984360312.1331322.3598172678446892766@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241024171104.2427750-1-jani.nikula@intel.com>
In-Reply-To: <20241024171104.2427750-1-jani.nikula@intel.com>
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

Series: drm/i915/display: use x100 version for full version and release (rev2)
URL   : https://patchwork.freedesktop.org/series/140454/
State : warning

== Summary ==

Error: dim checkpatch failed
2a11c9d84f96 drm/i915/display: use x100 version for full version and release
-:105: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#105: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:171:
+#define IS_DISPLAY_VERx100(__i915, from, until) ( \
+	BUILD_BUG_ON_ZERO((from) < 200) + \
+	(DISPLAY_VERx100(__i915) >= (from) && \
+	 DISPLAY_VERx100(__i915) <= (until)))

-:105: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'from' - possible side-effects?
#105: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:171:
+#define IS_DISPLAY_VERx100(__i915, from, until) ( \
+	BUILD_BUG_ON_ZERO((from) < 200) + \
+	(DISPLAY_VERx100(__i915) >= (from) && \
+	 DISPLAY_VERx100(__i915) <= (until)))

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#126: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:191:
+#define IS_DISPLAY_VERx100_STEP(__i915, ipver, from, until) \
+	(IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ipver' - possible side-effects?
#126: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:191:
+#define IS_DISPLAY_VERx100_STEP(__i915, ipver, from, until) \
+	(IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))

-:136: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#136: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:199:
+#define DISPLAY_VERx100(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver * 100 + \
+				 DISPLAY_RUNTIME_INFO(i915)->ip.rel)

total: 0 errors, 0 warnings, 5 checks, 201 lines checked


