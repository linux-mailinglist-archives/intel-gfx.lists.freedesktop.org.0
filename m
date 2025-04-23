Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F93A98C68
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 16:08:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6584410E6C2;
	Wed, 23 Apr 2025 14:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2299A10E6BF;
 Wed, 23 Apr 2025 14:08:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Rework/Correction_on?=
 =?utf-8?q?_minimum_hblank_calculation_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Apr 2025 14:08:12 -0000
Message-ID: <174541729214.824.329096185785560842@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250423-hblank-v5-0-6bee618bc979@intel.com>
In-Reply-To: <20250423-hblank-v5-0-6bee618bc979@intel.com>
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

Series: Rework/Correction on minimum hblank calculation (rev5)
URL   : https://patchwork.freedesktop.org/series/147361/
State : warning

== Summary ==

Error: dim checkpatch failed
23f27b87e286 drm/display/dp: Export fn to calculate link symbol cycles
63582b51e068 drm/i915/display: move min_hblank from dp_mst.c to dp.c
-:76: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#76: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3108:
+int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
+				 struct drm_connector_state *conn_state,

-:106: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#106: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3138:
+		dsc_slices = intel_dp_dsc_get_slice_count(connector,
+						     adjusted_mode->crtc_clock,

total: 0 errors, 0 warnings, 2 checks, 235 lines checked


