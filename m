Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6C7928AFA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC62310EBEA;
	Fri,  5 Jul 2024 14:53:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilmzzP0u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6925D10EBEA;
 Fri,  5 Jul 2024 14:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191212; x=1751727212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DpvIvquIVG2iV+r+CNnZ4LovWjVr2NIsfT/OK4Kg81g=;
 b=ilmzzP0uZIqbOTV4uD0fij9UNksZQ/wg7wi6OhHGkS+rik7oohJAdpRu
 SNa2PB9QuCKJe1BtK2YnC65hdlLQqNHIG+jD88P+DBWojS9fJSvqFgWYd
 l5HbhIdT1jS5/CTYY6m2deu0/bKfa5d7Kbn8qcgRr8e+7vQRTrvIdoSWp
 T2ovR5zZNjnJJZex6fOWAAw1HbjRd0jSWKS/UQHYAf3ogk1bqH+QYlW+N
 4DmTtylB42tFrv7rNDfcDiJDRnddqAF6xSb9El+F466baAX3GZ6RmB+tE
 f6a+CKrADKPnHVywejZ1N4nztjYUbRWWaGJ9a9oLl2TxGyDWPqK9OQN8m w==;
X-CSE-ConnectionGUID: MOUhu7zbREao9TvAmMG8uQ==
X-CSE-MsgGUID: cMVE+4OnQGWgVuuqBAHJoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204768"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204768"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:32 -0700
X-CSE-ConnectionGUID: Ga4BqNHASsWISLj95bbOcw==
X-CSE-MsgGUID: n/A3ly8xSYigWnNeUecCow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864478"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/20] drm/i915/fbc: Extract _intel_fbc_cfb_size()
Date: Fri,  5 Jul 2024 17:52:46 +0300
Message-ID: <20240705145254.3355-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
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

Pull the lower level stuff out from intel_fbc_cfb_size() into
a separate function that doesn't depend on the plane_state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 47b715e5d533..293e1a3b9a9d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -218,13 +218,18 @@ static unsigned int intel_fbc_max_cfb_height(struct intel_display *display)
 		return 1536;
 }
 
+static unsigned int _intel_fbc_cfb_size(struct intel_display *display,
+					unsigned int height, unsigned int stride)
+{
+	return min(height, intel_fbc_max_cfb_height(display)) * stride;
+}
+
 static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 	unsigned int height = drm_rect_height(&plane_state->uapi.src) >> 16;
 
-	return min(height, intel_fbc_max_cfb_height(display)) *
-		intel_fbc_cfb_stride(plane_state);
+	return _intel_fbc_cfb_size(display, height, intel_fbc_cfb_stride(plane_state));
 }
 
 static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_state)
-- 
2.44.2

