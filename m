Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 925F28BD9E6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 05:53:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352C510E64F;
	Tue,  7 May 2024 03:53:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KInOOHEx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC9C610E64F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 03:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715053988; x=1746589988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XhhhqyC+hcaCn0Y7l9BAZt5QvZ3MCA3pGGyG/EYeBsc=;
 b=KInOOHEx+YpepuVxcVwyTZQqpqi06B9eubi4bNfYD2xWza9goCM2n4Pl
 qK0LQxuGVd+B07kpj2i3YtN79Ulu/YakT2T5dIklcMJIdKehwpGZAjPAr
 icJVLbotuCzejikY2bMboSCkZGfJM10qyuRQkxJ4Igby/xyj75bNpUoBv
 tUutKmCitw0Rq6JpCjLsAdT+9EwTrUQg6lAH2CtQXgRegFMVWJeNuZTnK
 f6uimNHIGzyDx1uDKFQrU9hOrAssPi++00Tt251uHLMINL1HyUlPZBCTk
 Y46BCQk07UnrJBb7N9VlQXXEjaTf76bNH+E2v8HbDHWWV6eqRrFZD4213 Q==;
X-CSE-ConnectionGUID: 37dwHzaiQxSll4/xkM35vA==
X-CSE-MsgGUID: a/aXBUvqTZuwkkYZ6NnVqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21501937"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="21501937"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 20:53:07 -0700
X-CSE-ConnectionGUID: s8Lqk44eROW4aaoWpJvaYQ==
X-CSE-MsgGUID: y8aKAnX7RCaegQA030X9NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28452083"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa006.fm.intel.com with ESMTP; 06 May 2024 20:53:06 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine connector type
Date: Tue,  7 May 2024 09:20:37 +0530
Message-ID: <20240507035037.1025012-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507035037.1025012-1-suraj.kandpal@intel.com>
References: <20240507035037.1025012-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
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

