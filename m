Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6870493890F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 08:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A36DD10E397;
	Mon, 22 Jul 2024 06:47:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k188xSw3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D98F10E379;
 Mon, 22 Jul 2024 06:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721630841; x=1753166841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=01Mg8/Ynkf2T10801wGm3d+EGE6OLmpw9AX3TKT08ik=;
 b=k188xSw3MmV+hIN89OYST3Gdd7JT1sdVAYNuTGFOb6VcMaP22U62iFHR
 ZxQX/Jbjl8VEEhDxzoSeJZHt/2PZgonD4CyrunZulYpEZsCTvd1ahweYQ
 OtNk2Tgvmau3cW/IVkJsBsUieSss9XKLEn18uyvbLT37Ti3z00gmizeyN
 X9crk9lpk9ARybD3eKJlRCM0c5cYX78WOcmoU/GrUn0HtP6vJvDi+T0lW
 ZhVZVr/kulw6O3B0EhyhyM5+2HxuZW9qjxkwuy2BnkgTEWrd4H7NJUFfI
 bLNQD4HOcotAh1fEq7dw9sBzvGuOgufhkO+1oD2KAaPFyKqBhBVNKXQIt A==;
X-CSE-ConnectionGUID: rlEutXhyRum3TPl66mMm6A==
X-CSE-MsgGUID: dg343oE1TDeUwygy4j9BIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="18798184"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="18798184"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2024 23:47:21 -0700
X-CSE-ConnectionGUID: uYLoxkjnRE6djznEQdzqDQ==
X-CSE-MsgGUID: AJosCx2tRdCYqC9HVssgHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51670553"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 21 Jul 2024 23:47:20 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/i915/hdcp: Add encoder check in hdcp2_get_capability
Date: Mon, 22 Jul 2024 12:14:50 +0530
Message-ID: <20240722064451.3610512-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240722064451.3610512-1-suraj.kandpal@intel.com>
References: <20240722064451.3610512-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Add encoder check in intel_hdcp2_get_capability to avoid
null pointer error.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 2edffe62f360..47f51a5ab493 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -675,8 +675,15 @@ static
 int intel_dp_hdcp2_get_capability(struct intel_connector *connector,
 				  bool *capable)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_dp_aux *aux = &dig_port->dp.aux;
+	struct intel_digital_port *dig_port;
+	struct drm_dp_aux *aux;
+
+	*capable = false;
+	if (!intel_attached_encoder(connector))
+		return -EINVAL;
+
+	dig_port = intel_attached_dig_port(connector);
+	aux = &dig_port->dp.aux;
 
 	return _intel_dp_hdcp2_get_capability(aux, capable);
 }
-- 
2.43.2

