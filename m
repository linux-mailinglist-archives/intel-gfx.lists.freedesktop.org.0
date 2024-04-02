Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 951DE8959D0
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 18:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECFDE10FE71;
	Tue,  2 Apr 2024 16:35:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A766E10FE72;
 Tue,  2 Apr 2024 16:35:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Bigjoine?=
 =?utf-8?q?r_prep_work?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Apr 2024 16:35:05 -0000
Message-ID: <171207570565.1154304.4923984393750353542@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Bigjoiner prep work
URL   : https://patchwork.freedesktop.org/series/131942/
State : warning

== Summary ==

Error: dim checkpatch failed
79f3132bda07 drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from .mode_valid() hooks
24b6b2eb8c3b drm/i915: Shuffle DP .mode_valid() checks
bf6debe75399 drm/i915: Clean up glk_pipe_scaler_clock_gating_wa()
7dbb77f01be2 drm/i915: Extract glk_need_scaler_clock_gating_wa()
84e96c39fc96 drm/i915/mst: Limit MST+DSC to TGL+
-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:50:
+#define HAS_DSC_MST(__i915)		(DISPLAY_VER(__i915) >= 12 && HAS_DSC(__i915))

total: 0 errors, 0 warnings, 1 checks, 15 lines checked
1c3066d956b8 drm/i915/mst: Reject FEC+MST on ICL
60bc803b5d92 drm/i915: Use debugfs_create_bool() for "i915_bigjoiner_force_enable"


