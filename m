Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0BABC647D
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450C810E88F;
	Wed,  8 Oct 2025 18:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BhXrrzUv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 590FE10E88E;
 Wed,  8 Oct 2025 18:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759947966; x=1791483966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H7MvFCcuhA0vRRgD72Lbg5pnOybWbSLl3gdIO2Ih0xs=;
 b=BhXrrzUvv5i+9G0m8OJ7EoW4z2XS6pHRmeKsIZISP7nDMv4qgLoP/ay8
 JTepA71EKmbb8QYAldPotLcMvGN+vs6aLGMcMREmvBZfV/hCYpYLxK6rm
 nDkdEpQg/t/5qnWsmyQ25oI5LF+5V11leWxu1mlK6nkhdyXN2kcIrDmez
 3ur2KDuAHRRbk7ZGYB72QPrazVBZF8JhKgqMIaxEqTfOM5tAoPljAHxrm
 DH4Ix6tmcW71orYYfBXCUN5q+ZqPKb+baX//JEbH7RJEDnLm3Fgfe7QIN
 tzpY0NzWvtU7zpiHG+tr/0n8WIzQjQkH4RgrL2UiRNFelPqFAsEnsJRba w==;
X-CSE-ConnectionGUID: Gk8tc5/6SOaJ8p0fOnbsTg==
X-CSE-MsgGUID: 4H6a5fTVRgGTC5pPKx3Law==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="62245560"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="62245560"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:06 -0700
X-CSE-ConnectionGUID: zBcdbC8PTcCrzsK40BeNWQ==
X-CSE-MsgGUID: MJZOkjb6R2WShzHuVgYDZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="185799748"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:05 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [RFC][PATCH 01/11] drm/i915: Reject modes with linetime > 64 usec
Date: Wed,  8 Oct 2025 21:25:48 +0300
Message-ID: <20251008182559.20615-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Reject modes whose linetime exceeds 64 usec.

First reason being that WM_LINETIME is limited to (nearly) 64 usec.

Additionally knowing the linetime is bounded will help with
determining whether overflows may be a concern during various
calculations.

I decided to round up, and accept the linetime==64 case. We use
various rounding directions for this in other parts of the code,
so I feel this provides the most consistent result all around.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b57efd870774..afa78774eaeb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7967,6 +7967,14 @@ enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 	    mode->vtotal > vtotal_max)
 		return MODE_V_ILLEGAL;
 
+	/*
+	 * WM_LINETIME only goes up to (almost) 64 usec, and also
+	 * knowing that the linetime is always bounded will ease the
+	 * mind during various calculations.
+	 */
+	if (DIV_ROUND_UP(mode->htotal * 1000, mode->clock) > 64)
+		return MODE_H_ILLEGAL;
+
 	return MODE_OK;
 }
 
-- 
2.49.1

