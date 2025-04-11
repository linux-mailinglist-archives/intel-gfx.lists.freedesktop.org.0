Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12903A85BB9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 13:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8EE210EB7A;
	Fri, 11 Apr 2025 11:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 32c37dd7f93d (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE7610EB79;
 Fri, 11 Apr 2025 11:33:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/=7Bi915=2Cxe=7D?=
 =?utf-8?q?=3A_Move_PCH_stuff_under_display?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Apr 2025 11:33:19 -0000
Message-ID: <174437119996.4136.16466305607743149779@32c37dd7f93d>
X-Patchwork-Hint: ignore
References: <cover.1744364975.git.jani.nikula@intel.com>
In-Reply-To: <cover.1744364975.git.jani.nikula@intel.com>
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

Series: drm/{i915,xe}: Move PCH stuff under display
URL   : https://patchwork.freedesktop.org/series/147579/
State : warning

== Summary ==

Error: dim checkpatch failed
907fe9c21b1b drm/{i915,xe}: Move intel_pch under display
-:38: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#38: 
rename from drivers/gpu/drm/i915/soc/intel_pch.c

total: 0 errors, 1 warnings, 0 checks, 65 lines checked
280d226e3519 drm/i915/display: Convert intel_pch towards intel_display
-:473: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'display' - possible side-effects?
#473: FILE: drivers/gpu/drm/i915/display/intel_pch.h:49:
+#define HAS_PCH_LPT(display)			(INTEL_PCH_TYPE(display) == PCH_LPT_H || \
+						 INTEL_PCH_TYPE(display) == PCH_LPT_LP)

total: 0 errors, 0 warnings, 1 checks, 474 lines checked
60a4989ff4d8 drm/i915/pch: move PCH detection to intel_display_driver_early_probe()
0910b387ba6e drm/i915/pch: clean up includes


