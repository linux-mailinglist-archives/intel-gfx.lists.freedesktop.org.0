Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 398659C0FC6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:32:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC59210E8DB;
	Thu,  7 Nov 2024 20:32:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SL4t3xde";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA23E10E8D9;
 Thu,  7 Nov 2024 20:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731011569; x=1762547569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UwloWRI2hCiHSihxoN/+eg4kUxMz53rjB9T7ZtB3BUI=;
 b=SL4t3xdehpMpNQbIcQOk68SMHykDJXUHlIawuwm2/KgE9VlzmEx+uNPn
 x/hm9nOiaXnykMHngc/fKu3MjzY9+mUjFakbmNLqOV1v4y8bOcie4FTbu
 ID+zd8z3Jc6lFDN2EFCS5CjSN7SgduwgtIf7q6M/G3S+3EfWpCl1TyOfu
 Iy8TTCPdeWTXVSQ7MVuRfz4cIqxgEIw92mz0Igv4JCn9yoDNjrlH8kxwy
 z5uEER4+Xt3z0ZZMX3iwCWnLtFbb2dEYTcHsdzkDl9qr3o00aPBWhlqbk
 c4n94MPnQM43sLKGbLyDEsYtNjP3Tjj6POfE1kMIRKMKcsNEezOQYHove w==;
X-CSE-ConnectionGUID: My0Hw95pTNK9Q+j2R70Lsw==
X-CSE-MsgGUID: X5Jpda5IQFSSTbecA+/WcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="30298074"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="30298074"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:49 -0800
X-CSE-ConnectionGUID: zVE/wkyLRuCfv6C0D6Ykzw==
X-CSE-MsgGUID: FLEaQO0dQ9+8x520oxr1/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="108493841"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 4/8] drm/i915/mst: use primary_encoder in fake mst encoder
 creation
Date: Thu,  7 Nov 2024 22:32:17 +0200
Message-Id: <96be1ba5dcaf1a758f6b75527374b881bd01dd4a.1731011435.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731011435.git.jani.nikula@intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Use a primary_encoder local variable in
intel_dp_create_fake_mst_encoder() for clarity.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 558cf13b977f..6d0b4a8f4849 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1789,6 +1789,7 @@ static const struct drm_dp_mst_topology_cbs mst_cbs = {
 static struct intel_dp_mst_encoder *
 intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
 {
+	struct intel_encoder *primary_encoder = &dig_port->base;
 	struct intel_dp_mst_encoder *intel_mst;
 	struct intel_encoder *encoder;
 	struct drm_device *dev = dig_port->base.base.dev;
@@ -1806,8 +1807,8 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
 
 	encoder->type = INTEL_OUTPUT_DP_MST;
-	encoder->power_domain = dig_port->base.power_domain;
-	encoder->port = dig_port->base.port;
+	encoder->power_domain = primary_encoder->power_domain;
+	encoder->port = primary_encoder->port;
 	encoder->cloneable = 0;
 	/*
 	 * This is wrong, but broken userspace uses the intersection
-- 
2.39.5

