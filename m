Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1EC886A4D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:30:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDAE10E9B2;
	Fri, 22 Mar 2024 10:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NdBUKbjf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D65EF10F48C
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711103429; x=1742639429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pbM9ZyrfHZXoj015A0ZnuR9aVXsIfplKqvK2bpDAKWA=;
 b=NdBUKbjfzH4cJW+nPJBsWsEWjbicU7TEexXNZK9H5lpyI0B6NI/W2CyZ
 aRjTFR9uGx2KvYrfTD2hlcQB+gOJhId1aouc70yqNsMC5JJbK1ZQR7ruP
 9Z6e0jNUhMz53YFQ0wRPm6lUGjEn/cFcwp+HK+EhbFmNmal0d5iohptvQ
 l22eUUENYqHqksihu89buHqYKW9CxHqOE/o/RlIS0NXNIt2rrylWeQ4Xp
 d/q8AE3ZV5RBtcUxNf6ME3M7uSTBQmjhnjLM17DVIgUFSYjfQkIVcDlVJ
 nJM+YQJ0F+E03+neG0azeJH59I2KQ5Gp0LPmombnY5RdNHXzS2UJI7BG0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="17292856"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="17292856"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:30:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="19559335"
Received: from opopa-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.37.152])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:30:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 5/5] drm/i915/psr: Do not write ALPM configuration for PSR1
 or DP2.0 Panel Replay
Date: Fri, 22 Mar 2024 12:30:00 +0200
Message-Id: <20240322103000.103332-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240322103000.103332-1-jouni.hogander@intel.com>
References: <20240322103000.103332-1-jouni.hogander@intel.com>
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

No need to write ALPM configuration for DP2.0 Panel Replay or PSR1.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 62d16455243f..a3a4620250d4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1723,7 +1723,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 	struct intel_psr *psr = &intel_dp->psr;
 	u32 alpm_ctl;
 
-	if (DISPLAY_VER(dev_priv) < 20)
+	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.psr2_enabled &&
+					   !intel_dp_is_edp(intel_dp)))
 		return;
 
 	/*
-- 
2.34.1

