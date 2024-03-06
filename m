Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B041872DE2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 05:08:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D242112E8C;
	Wed,  6 Mar 2024 04:08:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iJDvWbrk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F0F112E8F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 04:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709698102; x=1741234102;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UcbZlS+IP+W/VeQMXmPpRsjPa6LUDfTG1WdzOOlbWuw=;
 b=iJDvWbrk4o4dsn1EOauGouRgOnzYbJvmLRFL8iXoaGj2SmJ8i8Citvbu
 VC0BXQaArqhlprT/xlYzkcSHGgYbbbI0tnwooj9fzkqMWzUNvQoEz4XSp
 wMQgOIjFXVFB9JJxfbCylgHBgbY7/qDdiwCK1khZidJqhcGTrON0cc5cq
 i4ArYr0+PFUAZqYd4qD94hLKOJX1AP88x9gN1+tN7einJV7nIYnWypoyv
 hpL7nXMIriLm1RoWvMm9F1EvJRc43GLFM0ogV2jdyoYstJ+QJqfTZgGGD
 +/8gNr0bDKqRG1/GJbz86b+qaNiNlNG2ddmsNfaZcl2v/2njFpaSgdQxc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="21817376"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="21817376"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 20:08:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="827774100"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="827774100"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 20:08:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Mar 2024 06:08:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/dsb: Always set DSB_SKIP_WAITS_EN
Date: Wed,  6 Mar 2024 06:08:06 +0200
Message-ID: <20240306040806.21697-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
References: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bspec asks us to always set the DSB_SKIP_WAITS_EN bit in
DSB_CHICKEN. This seems to instruct DSB to skip vblank and
scanline waits when PSR is entered.

I don't think we have any cases currently where we would want
to enter PSR while DSB is waiting for something, but let's
set the bit anyway to align with Bspec's wishes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index e4515bf92038..4baaa92ceaec 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -343,12 +343,13 @@ static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
 static u32 dsb_chicken(struct intel_crtc *crtc)
 {
 	if (crtc->mode_flags & I915_MODE_FLAG_VRR)
-		return DSB_CTRL_WAIT_SAFE_WINDOW |
+		return DSB_SKIP_WAITS_EN |
+			DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
 			DSB_INST_NO_WAIT_VBLANK;
 	else
-		return 0;
+		return DSB_SKIP_WAITS_EN;
 }
 
 static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
-- 
2.43.0

