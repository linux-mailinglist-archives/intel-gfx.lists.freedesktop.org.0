Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE6594061D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 05:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CB010E02C;
	Tue, 30 Jul 2024 03:57:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CWHwYXA0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E4D10E02C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 03:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722311856; x=1753847856;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lm3SSr0BNuCyWj3pPpMwI+8mWD4UNn3lzMuc7sXKZ+0=;
 b=CWHwYXA0HISkeyk/YE2cVsvbWrDMRA6SaC2jEhJjJhufxQMuyVQKgqM8
 FGjeu9vKjo9l+2YODdEOR0yxTbY0hx+oev/hwweXrFP3bPKATXT/PVM4/
 U5Eawcbxgcwbb5hcBE26oelRWhJX6NhdaFnixXiecxcXjIs8F09R7DPAI
 o8kXMq6Fw7pGk5rqbeIg98HnVbb44+sJ2DE8TMBbF4bdDMU+EztRIih5Q
 JASDi1Mf/jox50iB2LIb7snnPKKLh9WA83MD0E5su1GGRgOhCcsgBymyG
 qEaaLB402MbDSAxKVpU6waQcvfZJBJcTPHsaUnRV6rVLCn1vzLMf9pO0L A==;
X-CSE-ConnectionGUID: PNHvoahbR1GvRoIs+HnUfw==
X-CSE-MsgGUID: k9CpMXi3QCSqqMyWCaH6zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19703311"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="19703311"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 20:57:32 -0700
X-CSE-ConnectionGUID: D+A6VjPAR/uHpFfZYlBUXQ==
X-CSE-MsgGUID: +CM7sSXGQ6GpwsoXGXRD6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="54111728"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 29 Jul 2024 20:57:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
Date: Tue, 30 Jul 2024 09:25:05 +0530
Message-ID: <20240730035505.3759899-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240729040829.3753012-1-suraj.kandpal@intel.com>
References: <20240729040829.3753012-1-suraj.kandpal@intel.com>
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

--v2
-Add Fixes [Jani]

Fixes: d631b984cc90 ("drm/i915/hdcp: Add HDCP 2.2 stream register")
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

