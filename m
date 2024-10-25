Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3351B9B0934
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:09:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6763010EB17;
	Fri, 25 Oct 2024 16:09:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LajE6GVc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E30A10EB16;
 Fri, 25 Oct 2024 16:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872540; x=1761408540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i4YUdR1DSPIidhVctIx7rbavBn04FmqX4j4yEgyGsgA=;
 b=LajE6GVce7lpMUCry31bJmoMpOqx3qmX1xeafqdLFM0iEhHjc5GeEuI6
 ttVBQYNcxtB9lSjhW3DS6Dlt3QagiR3So4GJWiULL5REvmwyErnfARX03
 EfGp8qof96d/aOgk64N7095k0975GFyeMeF2SN66kg1It4+TP+iLecNLW
 By4KhVdlfIt1ZUoMcaNtGal+ckX12hudmU8umKuaq61NtUZtiAOTlR3dd
 lx33/WxO+hiSGGWjMYiFXWG6M+w1GDreJBfxQb5PX0GvBucpGWyiZ0mEd
 +qXi+hsmhOvlk3zFV9+1b7NAL8+SxPX5BquzlqGuMPUDzt3PpomEu7IO1 g==;
X-CSE-ConnectionGUID: 1p0AfE5sRem/s46KFm6vqw==
X-CSE-MsgGUID: Rsn7XRIeRuSAFb+Kk4U4jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="29655659"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="29655659"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:09:00 -0700
X-CSE-ConnectionGUID: CJm0b17kTlupYfDH1mAKuA==
X-CSE-MsgGUID: L8QGD/INRm2jsgm3M/sqVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85725088"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 25 Oct 2024 09:08:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 daniele.ceraolospurio@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/xe/hdcp: Fix gsc structure check in fw check status
Date: Fri, 25 Oct 2024 21:38:35 +0530
Message-Id: <20241025160834.8785-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241022072920.102033-1-suraj.kandpal@intel.com>
References: <20241022072920.102033-1-suraj.kandpal@intel.com>
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

Fix the condition for gsc structure validity in
gsc_cs_status_check(). It needs to be an OR and not an AND
condition

Fixes: b4224f6bae38 ("drm/xe/hdcp: Check GSC structure validity")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 6d34b55d72bb..7c02323e9531 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -44,7 +44,7 @@ bool intel_hdcp_gsc_check_status(struct intel_display *display)
 	bool ret = true;
 	unsigned int fw_ref;
 
-	if (!gsc && !xe_uc_fw_is_enabled(&gsc->fw)) {
+	if (!gsc || !xe_uc_fw_is_enabled(&gsc->fw)) {
 		drm_dbg_kms(&xe->drm,
 			    "GSC Components not ready for HDCP2.x\n");
 		return false;
-- 
2.34.1

