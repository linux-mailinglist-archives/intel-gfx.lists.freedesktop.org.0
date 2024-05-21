Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAEF8CA9D3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36A9110E326;
	Tue, 21 May 2024 08:17:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="keWr/tHm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 471BD10E2AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716279448; x=1747815448;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/qa51wWxKplpvYvwKULKJ/xqBE62fghMhLeVE557QSc=;
 b=keWr/tHmgLBKtimhnb9pmZaQSi0tEwHz/FourtSGqLbyXz0MGbnyUo2l
 h+MjHE7DFjg8InIxWnIDjssoMbJm83FVjcnxFuCn+/RJ7v64yI5u9bPDR
 VtC3Rl9nBV2m7zd1ActuH2jj6A36Flx4O+aDbEehkLFsxgX9Cu6FWY96L
 ComXl0zrsNZXxLCibgX8HUdVs4O1Ww5SzI3+985/3WV3lbguMFTZolJ3z
 mHkyAm0iuTt/vyPVCyD+P6Y2/6t+V/GXXxTmxNV/ALpCKhxgErSvUI/LZ
 yViLOBU7G2wS8hLrBP52mH7rRpTdz5BzlN4vydE09FIQND58Q8nxQt5Xw g==;
X-CSE-ConnectionGUID: 6mJKdt0fQi+UjVVZsM0zLg==
X-CSE-MsgGUID: 6HbR3JvXScugUdWcWI7KKA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12394153"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12394153"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:17:28 -0700
X-CSE-ConnectionGUID: nX9zklFNSl+wv7nJeeBZSg==
X-CSE-MsgGUID: Bea50M+7S8+dj2jBKmg/FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="32858131"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa006.fm.intel.com with ESMTP; 21 May 2024 01:17:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Imre Deak <imre.deak@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine connector type
Date: Tue, 21 May 2024 13:44:57 +0530
Message-ID: <20240521081458.1500327-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521081458.1500327-1-suraj.kandpal@intel.com>
References: <20240521081458.1500327-1-suraj.kandpal@intel.com>
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

Check mst_port field in intel_connector to check connector type
rather than rely on encoder as it may not be attached to connector
at times.

--v2
-Add closes tag [Imre]

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10898
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 551c862ed7a6..2edffe62f360 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -693,7 +693,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 
 	*hdcp_capable = false;
 	*hdcp2_capable = false;
-	if (!intel_encoder_is_mst(connector->encoder))
+	if (!connector->mst_port)
 		return -EINVAL;
 
 	aux = &connector->port->aux;
-- 
2.43.2

