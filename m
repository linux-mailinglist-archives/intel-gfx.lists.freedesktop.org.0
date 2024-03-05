Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5696871E85
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 13:05:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390A2112A71;
	Tue,  5 Mar 2024 12:05:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVnTCfWZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5534A112A71
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 12:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709640325; x=1741176325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r+7p0ADbEZ9NN5zHCBuEgDY40v739QalCbReUyg16lM=;
 b=mVnTCfWZrU3fZ5TonL7YWrn3OOa7K7xH8NBDPmPbfIIGqTHDiUC1yOXe
 xoKkYxAo6tFHFmMXFhlzEJjLTGZocFQQi00bkPmyW6OzM1i8o61h6Hr9L
 uD2nYJAuZ/KJeIFBwUAUKGor+W0F5U3QkD/ptEX7nzzIY4GUg+dQjovOt
 hnzAoof3M6gJs9SJrd/SMM4TKRV0wp7AoiRq5TGj1V1AffPm795ZHLu9V
 slZoVCGX8R70HUXeaHwtiMCPvFzCc0YrnKxReYvo/3H1efuWmct3wqbvc
 SKEd2UxzPjRRYqqav87LlvjBRyMBZwdMrxGw3Serj3fc91ECQLRqtRAD6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7132106"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7132106"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 04:05:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9417810"
Received: from snasibli-mobl2.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.33.194])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 04:05:23 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 5/5] drm/i915/display: Increase number of fast wake
 precharge pulses
Date: Tue,  5 Mar 2024 14:04:58 +0200
Message-Id: <20240305120458.1275218-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240305120458.1275218-1-jouni.hogander@intel.com>
References: <20240305120458.1275218-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Increasing number of fast wake sync pulses seem to fix problems with
certain PSR panels. This should be ok for other panels as well as the eDP
specification allows 10...16 precharge pulses and we are still within that
range.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9739
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 7e69be100d90..5dff1bc85d61 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -145,7 +145,7 @@ static int intel_dp_aux_sync_len(void)
 
 int intel_dp_aux_fw_sync_len(void)
 {
-	int precharge = 10; /* 10-16 */
+	int precharge = 12; /* 10-16 */
 	int preamble = 8;
 
 	return precharge + preamble;
-- 
2.34.1

