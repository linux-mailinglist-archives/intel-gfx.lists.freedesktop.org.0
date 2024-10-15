Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D90E899FC23
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B42710E63B;
	Tue, 15 Oct 2024 23:11:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilPHMXH0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 950D010E634;
 Tue, 15 Oct 2024 23:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729033899; x=1760569899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5JEC5lBCzUGad9AV/E8lp/x62Yzoe2RcCu2ZxmdL6Xs=;
 b=ilPHMXH0Qpp1pOyrJvCujP9/MmoSVE6IiSmzEzsoZai0g2c3tdctNAXF
 YnlnrJoCKSQcmfnXK5v58+rCn/2HSEPaceC78NhAsYWFQrhfokR5A7BMn
 CK5OI5jy99Cc10iuGuyE3tkPPl7fEi1jXyP6takuJN/n6CQ5XBGMWl7vq
 Bkix5LjWjczjTHUAZ5j0oZnRTmlw6M6HKPxcGjlflcu+G5xRH7n9inqz6
 n29mZNT42yIFsSriQDoqAJI9i9tYJOVtn01R7tL0Mad7dAgZqqU5kYHGB
 Op7OVLOC88tqRb2RMEp7eziXhVxgK69xSmvTHmk/St07tTLsHBztHJ0vO g==;
X-CSE-ConnectionGUID: 5Pi8jDmBSFuqYQIymcbZ1A==
X-CSE-MsgGUID: Am8lr37gQi+qYl5K15Zylg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28600799"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28600799"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:37 -0700
X-CSE-ConnectionGUID: /PyvhZ2uTiawBTw4NM/e5w==
X-CSE-MsgGUID: sYgKEM20Qjmfkxys5cSo5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="83120437"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.108.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:36 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v3 7/7] drm/i915/xe3lpd: Add condition for EDP to powerdown
 P2.PG
Date: Tue, 15 Oct 2024 16:11:24 -0700
Message-ID: <20241015231124.23982-8-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241015231124.23982-1-matthew.s.atwood@intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

Add condition for P2.PG power down value.

v2: change subject line to better match patch condition

Bspec: 74494
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 37c66b32325d..13a99f494680 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3146,7 +3146,8 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
 	if (intel_encoder_is_c10phy(encoder))
 		return CX0_P2PG_STATE_DISABLE;
 
-	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
+	if ((IS_BATTLEMAGE(i915) && encoder->port == PORT_A) ||
+	    (DISPLAY_VER(i915) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
 		return CX0_P2PG_STATE_DISABLE;
 
 	return CX0_P4PG_STATE_DISABLE;
-- 
2.45.0

