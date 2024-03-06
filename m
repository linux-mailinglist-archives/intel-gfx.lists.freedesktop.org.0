Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1188730D8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 09:35:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DCF4112FEA;
	Wed,  6 Mar 2024 08:35:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S+tKfwsZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D60112FEA
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 08:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709714109; x=1741250109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r+7p0ADbEZ9NN5zHCBuEgDY40v739QalCbReUyg16lM=;
 b=S+tKfwsZAnPLaBalzFXXHm9EaSTS0li+RtmnFvFJjGpit7PsItDkg9+j
 10zaj00EAwcJE5KohZ2OExWqKKnzH1idTX9OASebq0g3IuO5OE1vzQ4Mi
 jdRgRzG4siMJhOJJ9Iff7lo1HH9wuK0yhqiIFjfL55LlurIsTqQ5PjUCn
 H01MNFrVEwWbo+9zudvDxMx3ql0Gm7dIgGjcDggWIzqzBIQnH9WzNTQDs
 9+6mqNfb3XpSBAVcVBIKm98g6GVTX9f5uw6iKUCywSYLIwovzSNiohSlI
 ZHyXC6nAIpPR+J2hwAFbTvv1Lww6aZul8aiGDiRmXBZXODvtHBG/b+WX5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4177700"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="4177700"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:35:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="14344161"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.223.229])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:35:08 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 5/5] drm/i915/display: Increase number of fast wake
 precharge pulses
Date: Wed,  6 Mar 2024 10:34:27 +0200
Message-Id: <20240306083427.2040475-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240306083427.2040475-1-jouni.hogander@intel.com>
References: <20240306083427.2040475-1-jouni.hogander@intel.com>
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

