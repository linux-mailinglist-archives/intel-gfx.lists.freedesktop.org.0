Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 478CABE5201
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773D910EA62;
	Thu, 16 Oct 2025 18:54:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XurfpzaQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3549610EA66;
 Thu, 16 Oct 2025 18:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760640882; x=1792176882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YsrD+NYSIiSbfGoZfTeGsLYm+3xb0M+3XqFYL/DBVrY=;
 b=XurfpzaQNKGfwYv2hEzwE2IWBfJThVXKiYVnmABDrrEXA77fWYOz3lim
 ykZrA413TbhMucAC73jz8l3vlkkeOV4zWkvW6/LknNMXTOie5hCnDj9LJ
 1XCemEMU2/ESgaRecZQBDyE6+C1nmtAUzg4ZaUDYcW4xVygh404VRIA2f
 Dd0/GOKNfGrLbyDQGOaF2uuFBqNQpRmYAO2T2a8V9tszibSVk66AcPpqi
 Ptw4WF0JguurfSpo3RfVYIVT8PHIoXtw2gwZg/8k/G6/ylzNYOciDCPua
 gCJOIkPyKSqmEvg998KJsOm24UcXpuqbNNcFdmyGQkPird3xqXLWs0twJ w==;
X-CSE-ConnectionGUID: xDxJ4kdgQOWSS6gckaS0FA==
X-CSE-MsgGUID: HCtqKc03SHazZTIVUbbP6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62755589"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62755589"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:42 -0700
X-CSE-ConnectionGUID: rPY69x7NRfeZjUkeii5ImA==
X-CSE-MsgGUID: UdAxdrqjQgWvcUiMSxaudg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="219687936"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:40 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 07/10] drm/i915/frontbuffer: Extract intel_frontbuffer_ref()
Date: Thu, 16 Oct 2025 21:54:05 +0300
Message-ID: <20251016185408.22735-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
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

I want to hide the kref from the high level frontbuffer code.
To that end abstract the kref_get() in intel_frontbuffer_queue_flush()
(which is the only high level function that needs this) as a new
intel_frontbuffer_ref().

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 02b06dfb9fee..e5f3f0d555a8 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -165,6 +165,11 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 		frontbuffer_flush(display, frontbuffer_bits, origin);
 }
 
+static void intel_frontbuffer_ref(struct intel_frontbuffer *front)
+{
+	kref_get(&front->ref);
+}
+
 static void intel_frontbuffer_flush_work(struct work_struct *work)
 {
 	struct intel_frontbuffer *front =
@@ -186,7 +191,7 @@ void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front)
 	if (!front)
 		return;
 
-	kref_get(&front->ref);
+	intel_frontbuffer_ref(front);
 	if (!schedule_work(&front->flush_work))
 		intel_frontbuffer_put(front);
 }
-- 
2.49.1

