Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C28C6A167B1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 08:53:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647C910E358;
	Mon, 20 Jan 2025 07:53:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JJJmHRxs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB6810E356
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 07:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737359631; x=1768895631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k/dKBpnxaC1Vx+/SH9xHfHdda3hOGG45MkI8N3xrJbA=;
 b=JJJmHRxsUFOBC4bV8iqvkqJoQzt9jr75dceK5EBFVtK7hlDDKJqpsWWv
 BRIHbMurQ3ryKTIQ0pMckec/1ZFaXUvEKM9csoRbNS1xKPdzozs70igTM
 OXKeeexeC0xaMvsSVumWixqEokYLBtZpxvwCIf382oJzddSZ1Ty2Jf6zf
 oQHMTSM7F0Val6/vTuaBRIEJxzukYr2lhfWfvz62xpCYHcwR0ZVlgxBSB
 bOIDRi4lBZEGs4NQqkAFG6yRxPq9BJgXBB7aXJ6ujho4fgx/mkrmUqG2c
 xdB242Rjgg+nxchOr0egAfjUhYowaPg2q7vlaZ+5cD6JiAvLmbkyd/NDH A==;
X-CSE-ConnectionGUID: 46/+UoMIS4q/sB8wyHUZJQ==
X-CSE-MsgGUID: Olt5aPdHTISm+w9L2AZNAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="25325804"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="25325804"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 23:53:51 -0800
X-CSE-ConnectionGUID: DcwAGgSJSniXz32cKdG7jQ==
X-CSE-MsgGUID: Jd9PuvnRQmq0hdMGECk6Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="137317988"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa001.fm.intel.com with ESMTP; 19 Jan 2025 23:53:49 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: krzysztof.niemiec@intel.com
Cc: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org, nitin.r.gote@intel.com
Subject: [PATCH v4 4/8] drm/i915/pxp: fix typos in i915/pxp files
Date: Mon, 20 Jan 2025 13:45:13 +0530
Message-Id: <20250120081517.3237326-5-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250120081517.3237326-1-nitin.r.gote@intel.com>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915/pxp reported by codespell tool.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
index 329b4fcdc040..929c20e98300 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
@@ -41,7 +41,7 @@ struct pxp43_huc_auth_out {
 /* PXP-Input-Packet: Init PXP session */
 struct pxp43_create_arb_in {
 	struct pxp_cmd_header header;
-		/* header.stream_id fields for vesion 4.3 of Init PXP session: */
+		/* header.stream_id fields for version 4.3 of Init PXP session: */
 		#define PXP43_INIT_SESSION_VALID BIT(0)
 		#define PXP43_INIT_SESSION_APPTYPE BIT(1)
 		#define PXP43_INIT_SESSION_APPID GENMASK(17, 2)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 07864b584cf4..febdbcd8d61e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -21,7 +21,7 @@ struct drm_i915_private;
  */
 struct intel_pxp {
 	/**
-	 * @ctrl_gt: poiner to the tile that owns the controls for PXP subsystem assets that
+	 * @ctrl_gt: pointer to the tile that owns the controls for PXP subsystem assets that
 	 * the VDBOX, the KCR engine (and GSC CS depending on the platform)
 	 */
 	struct intel_gt *ctrl_gt;
-- 
2.25.1

