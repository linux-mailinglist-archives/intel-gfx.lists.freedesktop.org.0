Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A49C9A87F0D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 13:30:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D44410E550;
	Mon, 14 Apr 2025 11:30:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0iNWs06";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB7D710E589;
 Mon, 14 Apr 2025 11:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744630218; x=1776166218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U242x1vAU2NFV3Qbr8wUlA1X+qzHSNCzfqqg52VmghE=;
 b=K0iNWs06nMPgo24vz3UJV5McF1BRF9Ok55tj28E+rA5zhHnhJ/piThS4
 R/lC9o4OMkJhiNkqG+eaZOzzvkaky1fNPkj+4s6DIFRmnEC7XqWhWjkHK
 c4YILjhqymS+ruYnsY0RcUry921Bq5RhPfMuC3LETJcecvkF1cjuuJhVg
 EbCzO6UuZAHBTK41ESS3yVb6p+TpeNZOlDjSMjy1yME7jSL5l2emD2pwh
 ksteWun3yrs50gDi9/SRle0wScaZqKKhJvxUyK2mdAbRT6guBia85WJyF
 R6W+FYxhE4yHh5Li7CDGcaZgg2VV5fm+KvkrXJRbQDp4gY+1GaLklUm0/ A==;
X-CSE-ConnectionGUID: 0da+K2rWTJiGc9L/8rESwg==
X-CSE-MsgGUID: /XJxrGgwRSGuphAbp6T/JA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57481075"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57481075"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:18 -0700
X-CSE-ConnectionGUID: 37D+/RpbSAmYCUhyioi/1w==
X-CSE-MsgGUID: lpDeRA4+TAml+zPIAj966Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129761723"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI v3 5/6] drm/i915: don't capture DERRMR for VLV/CHV
Date: Mon, 14 Apr 2025 14:29:47 +0300
Message-Id: <4563cc7eb567ac508b84717c3708a4e48aa8b7bb.1744630147.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744630147.git.jani.nikula@intel.com>
References: <cover.1744630147.git.jani.nikula@intel.com>
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

DERRMR isn't valid for VLV/CHV. Don't capture it for them.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index f5dc050a6344..5d07b6a9e59e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -2343,7 +2343,7 @@ intel_display_irq_snapshot_capture(struct intel_display *display)
 	if (!snapshot)
 		return NULL;
 
-	if (DISPLAY_VER(display) >= 6 && DISPLAY_VER(display) < 20)
+	if (DISPLAY_VER(display) >= 6 && DISPLAY_VER(display) < 20 && !HAS_GMCH(display))
 		snapshot->derrmr = intel_de_read(display, DERRMR);
 
 	return snapshot;
-- 
2.39.5

