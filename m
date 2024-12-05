Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 166B29E58C9
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 15:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F4710EEA5;
	Thu,  5 Dec 2024 14:45:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LCVzaReU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5435810EEA5
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 14:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733409958; x=1764945958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aOKe7bXuMm8Q40nBvreVtcNPs51v/ZUtUzRxvHat8NM=;
 b=LCVzaReUD4qHOFGhYr+BvoH2qxWK4bKlKBR4vJP1AiaY0lA9JdORqm0e
 J8uAT/+1QALaCMYp7xMDTdBMlLuotTeLEB20/veu47wnD4YcZk96SY0Ng
 ghu0hbWy/saUcII/F7FSidEysMXpme/YjnYmR2ilQOm9nmtUKP2/WP/sm
 gkA+VWavu6Rzlvhl68D8HLAYQn2WSzXLlkp+5+5f5ryUkUwIlLxeqndo0
 k6SkJBIiOZ/eHWKxRH5Fr5pzDRsOy+ca/0OjWqYucYGiDcAnjz7dHD5yq
 mpuS0l9NX/gvBip1SsmTRyAPatQ9wo6VyHxkfpVgflVf+gVi7Ec5gQEN1 w==;
X-CSE-ConnectionGUID: xjaJdtW9QGmIlTK2NkzHNw==
X-CSE-MsgGUID: vbPyn8W4TBG8SfHDq422sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33640812"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="33640812"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:58 -0800
X-CSE-ConnectionGUID: wSEQhVzIQMO7O0WOmcKsmg==
X-CSE-MsgGUID: Onl38grzS7emVYwQXT/++g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="94589177"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915/vbt: define a few more DSI dphy config bits
Date: Thu,  5 Dec 2024 16:45:38 +0200
Message-Id: <758f56bbf5677770a128d3390fbd9cfd526d7e7a.1733409899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733409899.git.jani.nikula@intel.com>
References: <cover.1733409899.git.jani.nikula@intel.com>
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

We're missing Blanking Packets During BLLP and LP Clock During LPM. Add
them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index f9841f0498c6..a8ef7f9a5503 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -157,7 +157,9 @@ struct mipi_config {
 	u16 dphy_param_valid:1;
 	u16 eot_pkt_disabled:1;
 	u16 enable_clk_stop:1;
-	u16 rsvd7:13;
+	u16 blanking_packets_during_bllp:1;			/* 219+ */
+	u16 lp_clock_during_lpm:1;				/* 219+ */
+	u16 rsvd7:11;
 
 	u32 hs_tx_timeout;
 	u32 lp_rx_timeout;
-- 
2.39.5

