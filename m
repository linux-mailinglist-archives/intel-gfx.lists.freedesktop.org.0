Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF52097BFED
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71BD10E24B;
	Wed, 18 Sep 2024 17:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F6B010E24B;
 Wed, 18 Sep 2024 17:55:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_drm/i915=3A_remove_IS=5FLP=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2024 17:55:22 -0000
Message-ID: <172668212205.1027304.15393720987397819233@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240918145042.1447857-1-jani.nikula@intel.com>
In-Reply-To: <20240918145042.1447857-1-jani.nikula@intel.com>
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

Series: series starting with [1/2] drm/i915: remove IS_LP()
URL   : https://patchwork.freedesktop.org/series/138830/
State : warning

== Summary ==

Error: dim checkpatch failed
d8687ebb0215 drm/i915: remove IS_LP()
-:26: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:153:
+#define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915) && !IS_GEMINILAKE(i915))

-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#26: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:153:
+#define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915) && !IS_GEMINILAKE(i915))

-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#90: FILE: drivers/gpu/drm/i915/i915_drv.h:615:
+#define IS_GEN9_LP(i915)	(IS_BROXTON(i915) || IS_GEMINILAKE(i915))

-:91: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#91: FILE: drivers/gpu/drm/i915/i915_drv.h:616:
+#define IS_GEN9_BC(i915)	(GRAPHICS_VER(i915) == 9 && !IS_GEN9_LP(i915))

total: 0 errors, 1 warnings, 3 checks, 88 lines checked
be18fe7f3bf2 drm/i915/soc: stop using IS_GEN9_LP() and IS_GEN9_BC()


