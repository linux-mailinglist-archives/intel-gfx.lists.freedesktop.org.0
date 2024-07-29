Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9F593FACE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 18:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7185310E121;
	Mon, 29 Jul 2024 16:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C907310E42A;
 Mon, 29 Jul 2024 16:25:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=5Fmst=3A?=
 =?utf-8?q?_Enable_LT_fallback_for_UHBR=3C-=3Enon-UHBR_rates_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2024 16:25:17 -0000
Message-ID: <172227031781.425461.17938976657942460167@2413ebb6fbb6>
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

Series: drm/i915/dp_mst: Enable LT fallback for UHBR<->non-UHBR rates (rev2)
URL   : https://patchwork.freedesktop.org/series/136347/
State : warning

== Summary ==

Error: dim checkpatch failed
c00990cce385 drm/dp_mst: Factor out function to queue a topology probe work
911a7b83125e drm/dp_mst: Add a helper to queue a topology probe
3862c1349116 drm/dp_mst: Simplify the condition when to enumerate path resources
a3c7f3c0d9e9 drm/i915/ddi: For an active output call the DP encoder sync_state() only for DP
ca466ffd6ec7 drm/i915/dp: Initialize the link parameters during HW readout
dc86e901d57c drm/i915/dp: Send only a single modeset-retry uevent for a commit
4c5b74ff8063 drm/i915/dp: Add a separate function to reduce the link parameters
c61d9068514a drm/i915/dp: Add helpers to set link training mode, BW parameters
9e1aea550a96 drm/i915/dp_mst: Reduce the link parameters in BW order after LT failures
-:50: CHECK:SPACING: No space is necessary after a cast
#50: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1786:
+#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)

total: 0 errors, 0 warnings, 1 checks, 203 lines checked
1667348e4dbb drm/i915/dp_mst: Configure MST after the link parameters are reset
76688bef397b drm/i915/dp_mst: Queue modeset-retry after a failed payload BW allocation
a3aa484de06a drm/i915/dp_mst: Reprobe the MST topology after a link parameter change
60df09defa65 drm/i915/dp_mst: Ensure link parameters are up-to-date for a disabled link
c85b6f6afcaf drm/i915/dp_mst: Enable LT fallback between UHBR/non-UHBR link rates


