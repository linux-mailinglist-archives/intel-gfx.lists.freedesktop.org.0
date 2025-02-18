Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D02E5A39082
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 02:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C27C10E02E;
	Tue, 18 Feb 2025 01:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB6A10E02E;
 Tue, 18 Feb 2025 01:40:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_drm/=7Bi915=2Cxe=7D=3A_Move_intel=5Fpch_under_display?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2025 01:40:21 -0000
Message-ID: <173984282175.3425230.15915772512139509878@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250218010224.761209-1-rodrigo.vivi@intel.com>
In-Reply-To: <20250218010224.761209-1-rodrigo.vivi@intel.com>
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

Series: series starting with [1/2] drm/{i915,xe}: Move intel_pch under display
URL   : https://patchwork.freedesktop.org/series/144988/
State : warning

== Summary ==

Error: dim checkpatch failed
0af56b324b0e drm/{i915,xe}: Move intel_pch under display
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
rename from drivers/gpu/drm/i915/soc/intel_pch.c

total: 0 errors, 1 warnings, 0 checks, 65 lines checked
8eb6c16154c7 drm/i915/display: Convert intel_pch towards intel_display
-:471: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'display' - possible side-effects?
#471: FILE: drivers/gpu/drm/i915/display/intel_pch.h:49:
+#define HAS_PCH_LPT(display)			(INTEL_PCH_TYPE(display) == PCH_LPT_H || \
+						 INTEL_PCH_TYPE(display) == PCH_LPT_LP)

total: 0 errors, 0 warnings, 1 checks, 474 lines checked


