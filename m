Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA928C8176
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 09:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EEE710EE07;
	Fri, 17 May 2024 07:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dnmAqkMO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2391D10EE07
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 07:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931034; x=1747467034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kl4IUb8YvG6iCMpq6/uWVKn2CC2mSxcXUTuuIS0a+JQ=;
 b=dnmAqkMOzE0HQYpgJRdQKW6O+QscjOnVVHqzpUdJat6AWYl3eCyqqfgY
 Y66mY5xpcMBI3kFBkKaADY3ypNv/hqk0k1MNjtrlRjAI8L23ywuuwDZ3U
 O0CCGlly7cyworSrUoaO9/1+k0YdubJ5LNaVEUY50MeNYW4CTBDlX+urj
 lZGEMpAF9KclU2QZbr69F0+ILUqbIiJYx/49VyWJlQqODIs8hPl9AVdwO
 a8tLW8d3xKe9Y2kdgQJMWT1WkHbNA7FxDM/qrQtr89RvTQBxNNDu21iZ+
 pYyto7bQy2qya0dSLlACw9FTW0KFkQknXcst+1ELckvhsEBWQOfbdCGw8 A==;
X-CSE-ConnectionGUID: 5jACaoRCToue5eheGWsw8Q==
X-CSE-MsgGUID: UXfUGn3OSnO1YRi+u6LWIA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="15917887"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="15917887"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:30:22 -0700
X-CSE-ConnectionGUID: ilMZG2JMTsSih+68GilXTw==
X-CSE-MsgGUID: DiX+rhG1QVmnrmq5rhosIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31803593"
Received: from mspitkan-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.189])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:30:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/3] drm/i915/psr: PSR2_CTL[Block Count Number] not needed
 for LunarLake
Date: Fri, 17 May 2024 10:30:05 +0300
Message-Id: <20240517073005.2414293-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240517073005.2414293-1-jouni.hogander@intel.com>
References: <20240517073005.2414293-1-jouni.hogander@intel.com>
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

PSR2_CTL[Block Count Number] is not used by LunarLake do not configure it.

Bspec: 69885

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d2f6488b8fc7..d18baeb971bb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -927,7 +927,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 
 	val |= intel_psr2_get_tp_time(intel_dp);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12 && DISPLAY_VER(dev_priv) < 20) {
 		if (psr2_block_count(intel_dp) > 2)
 			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_3;
 		else
-- 
2.34.1

