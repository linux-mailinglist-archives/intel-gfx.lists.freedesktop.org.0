Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E40A854F6
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 09:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D10810EB07;
	Fri, 11 Apr 2025 07:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iUOI6Fot";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B4D10EB03;
 Fri, 11 Apr 2025 07:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744355311; x=1775891311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U242x1vAU2NFV3Qbr8wUlA1X+qzHSNCzfqqg52VmghE=;
 b=iUOI6FotGv1HP5Hm2Vc1gx3OgUf0lFPg7Z93RgIleOB6LGoFqI3GWvmA
 xkoZDDKgAsPSecQjLO9/3pM9vbUWpHFpZp9+g+ZoaQLHB1/icbRF/+Gug
 ojkydKbrxxYEeHfYC2LZZAYQ4tbWZn+fk81l0YnJwuTV8tzDJxebeU2yF
 hEewvitbOx8ZUliyEUhmGfrjUG3e3uvVPmAEqoxct4Jx7IYJQu8RWL+Jb
 T+vUHI3zUF0gmzCNc6A6fbwE1wnQ4fbi3QIofFpSOmeySoxl2MU+acPgx
 6L6Pt+1GIMJYLOOBCq8uu2Is1oiK2Dq9ILXzs0SJ0AAduSHk2Qmdemzhr Q==;
X-CSE-ConnectionGUID: mIFiS0NPR36AefEGF2G1oQ==
X-CSE-MsgGUID: DjluPghGRrmvKfCu7PQ7Qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="33511535"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="33511535"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 00:08:31 -0700
X-CSE-ConnectionGUID: Gn1TvwEzSXCxsQOzcoMoWA==
X-CSE-MsgGUID: i9alWONpQPqnm+etBE69Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="129678449"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.67])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 00:08:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH] drm/i915: don't capture DERRMR for VLV/CHV
Date: Fri, 11 Apr 2025 10:08:23 +0300
Message-Id: <20250411070823.230909-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744208554.git.jani.nikula@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
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

