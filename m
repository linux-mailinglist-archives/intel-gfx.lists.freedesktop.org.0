Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695679393DA
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 20:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B3A10E28D;
	Mon, 22 Jul 2024 18:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5CDF10E28D;
 Mon, 22 Jul 2024 18:48:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=5Fmst=3A?=
 =?utf-8?q?_Enable_LT_fallback_for_UHBR=3C-=3Enon-UHBR_rates?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2024 18:48:34 -0000
Message-ID: <172167411479.342828.18178181430101534547@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240722165503.2084999-1-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
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

Series: drm/i915/dp_mst: Enable LT fallback for UHBR<->non-UHBR rates
URL   : https://patchwork.freedesktop.org/series/136347/
State : warning

== Summary ==

Error: dim checkpatch failed
5d49b74592ce drm/dp_mst: Factor out function to queue a topology probe work
ef45f46ca8d9 drm/dp_mst: Add a helper to queue a topology probe
183d79de9ab7 drm/dp_mst: Simplify the condition when to enumerate path resources
14940101904c drm/i915/ddi: For an active output call the DP encoder sync_state() only for DP
81ce8f3a558e drm/i915/dp: Initialize the link parameters during HW readout
49a47595c95c drm/i915/dp: Send only a single modeset-retry uevent for a commit
2dd952281032 drm/i915/dp: Add a separate function to reduce the link parameters
3d1525a63fff drm/i915/dp: Add helpers to set link training mode, BW parameters
20d408ad536f drm/i915/dp_mst: Reduce the link parameters in BW order after LT failures
-:38: CHECK:SPACING: No space is necessary after a cast
#38: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1786:
+#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)

total: 0 errors, 0 warnings, 1 checks, 210 lines checked
a1aa62c83a1d drm/i915/dp_mst: Configure MST after the link parameters are reset
29e959a5e212 drm/i915/dp_mst: Queue modeset-retry after a failed payload BW allocation
ae69cc469b4a drm/i915/dp_mst: Reprobe the MST topology after a link parameter change
7bbf6537bee2 drm/i915/dp_mst: Ensure link parameters are up-to-date for a disabled link
2b6a345da76d drm/i915/dp_mst: Enable LT fallback between UHBR/non-UHBR link rates


