Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 289F193EC73
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 06:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18EDE10E078;
	Mon, 29 Jul 2024 04:10:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iDcLZ/wY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09B6310E078
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722226253; x=1753762253;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+i45swbJuzZwem++SmHDcsDxGTfThYyy3EV1xtd6llA=;
 b=iDcLZ/wYAvhS73hYwDMbqBSSq9lSXYdycS5L4fCFNXPRMHFaxaohQngz
 CL87o/f17ffLk4akz5e7kh3pxh4scXZjfdl3Db7JFjVdrTqtSZytuqkka
 z3eBdubyoHGVOcJhAu/eBrURapwlLpkIS1O6/dl5vU9nljvbsZauNVFuj
 z7EgZc5lYPkcg8hVts25uLHfSNEyx1d2A1IiM4aUlUQ+BQtB3Ir3fcv4/
 DCiAgeNAvG6cKByLvFJsLrrtgepg0i3M21VUV+MxS31YK15GueEP0DgQ/
 b+T/1kmZTAX8WCHQBZj+aNk+X4bVM+KLHNIotsyVOtB+dULcGNCTKBo0J Q==;
X-CSE-ConnectionGUID: 46iVECAFQH6DD83XpPy9Cg==
X-CSE-MsgGUID: rtFlAD2KQja/OALgyvmkig==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="30617085"
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="30617085"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2024 21:10:53 -0700
X-CSE-ConnectionGUID: 8GqM0eTrSWifIgKI2S3A2A==
X-CSE-MsgGUID: CeTTvUL6S5usy8VH0R5/pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="58432396"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 28 Jul 2024 21:10:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
Date: Mon, 29 Jul 2024 09:38:28 +0530
Message-ID: <20240729040829.3753012-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Fix HDCP2_STREAM_STATUS macro, it called pipe instead of port never
threw a compile error as no one used it.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
index a568a457e532..f590d7f48ba7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
@@ -251,7 +251,7 @@
 #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
 					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP2_STREAM_STATUS(trans) : \
-					 PIPE_HDCP2_STREAM_STATUS(pipe))
+					 PIPE_HDCP2_STREAM_STATUS(port))
 
 #define _PORTA_HDCP2_AUTH_STREAM		0x66F00
 #define _PORTB_HDCP2_AUTH_STREAM		0x66F04
-- 
2.43.2

