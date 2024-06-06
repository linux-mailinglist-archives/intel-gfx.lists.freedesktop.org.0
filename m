Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 791798FF28C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E0B110EA1A;
	Thu,  6 Jun 2024 16:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8CD10EA1A;
 Thu,  6 Jun 2024 16:33:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_drm/i915/dmc=3A_convert_intel=5Fdmc=5Fprint=5Ferror=5F?=
 =?utf-8?q?state=28=29_to_drm=5Fprinter?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 06 Jun 2024 16:33:05 -0000
Message-ID: <171769158589.23779.17635849806454863368@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240606140705.3072987-1-jani.nikula@intel.com>
In-Reply-To: <20240606140705.3072987-1-jani.nikula@intel.com>
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

Series: series starting with [1/2] drm/i915/dmc: convert intel_dmc_print_error_state() to drm_printer
URL   : https://patchwork.freedesktop.org/series/134572/
State : warning

== Summary ==

Error: dim checkpatch failed
5f733b2e5ef9 drm/i915/dmc: convert intel_dmc_print_error_state() to drm_printer
e6cab4f87514 drm/i915/overlay: convert intel_overlay_print_error_state() to drm_printer
-:66: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#66: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:58:
 }
+static inline void intel_overlay_print_error_state(struct drm_printer *p,

total: 0 errors, 0 warnings, 1 checks, 53 lines checked


