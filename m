Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D68C3C02D
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB8810E932;
	Thu,  6 Nov 2025 15:21:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XFGGxBOC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D2AD10E932;
 Thu,  6 Nov 2025 15:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762442493; x=1793978493;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r8JLmsKFs6ih8RPC380EKVOxX9KV5J6+IRJRxcEGcU4=;
 b=XFGGxBOCyIZ2RVKWXFDL8bZ+we5DkmrGHAqRF8fVR45NXcjQRvWmvhWH
 NnlRBPovXuahNO0Qr4Oyl4dg26cG7O2XaHXvbzEtvVGT74K1RTzX9d4nY
 0Tlh+sWeWO490SFLTCSZhsKhi06tj8F9xLKxRnD4/77ESNvr6twWXqkPs
 +VAgiAHSGOw9dez9tB6ITMyN5ADA8f3QKEj80cDnnlLli05+/wBsr5d2J
 iPD5dVQeBkKlToG96Oa0YDzLzZt+XmY2E1YfgLEEVXabNdDrqvdZf6P2L
 LaY+9KkHAuerXVVhuNLrxEi6EVPQqL0ClXYUhzIQbK0ngNbMcTYuO3bIE w==;
X-CSE-ConnectionGUID: 7qzIc7Z+RW+KZYA3R/qc3Q==
X-CSE-MsgGUID: uIf9JJV9QgWKB7WA6j4ADw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75190000"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75190000"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:33 -0800
X-CSE-ConnectionGUID: lzLva43NQK+b1PheF0C7lw==
X-CSE-MsgGUID: 7fP9+wgZSYuM4oU80qwpew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187444575"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:31 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 10/10] drm/i915/pmdemand: Use the default 2 usec fast
 polling timeout
Date: Thu,  6 Nov 2025 17:20:49 +0200
Message-ID: <20251106152049.21115-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
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

For whatever unknown reason the pmdemand code is using a custom
50 usec fast polling timeout instead of the normal 2 usec
value. Switch to the standard value to get rid of the special
case.

The eventual aim is to get rid of the fast vs. slow timeout
entirely and switch over to poll_timeout_us().

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index f52abd4e2eb0..22d8f720ae7d 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -464,7 +464,7 @@ static void intel_pmdemand_poll(struct intel_display *display)
 
 	ret = intel_de_wait_custom(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
 				   XELPDP_PMDEMAND_REQ_ENABLE, 0,
-				   50, timeout_ms, &status);
+				   2, timeout_ms, &status);
 
 	if (ret == -ETIMEDOUT)
 		drm_err(display->drm,
-- 
2.49.1

