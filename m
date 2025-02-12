Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C41A32DB6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 18:43:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45FCB10E948;
	Wed, 12 Feb 2025 17:43:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fkMc9OnQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E0910E947;
 Wed, 12 Feb 2025 17:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739382228; x=1770918228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NrrsJBGGj+6RiKlZLWEgbb895tj94AD1tSlsq7h/1LM=;
 b=fkMc9OnQNdRY5rVhKj3bfb6Fl9+y17AlKaIIWEWtDSJXxFD7OzB/T4d+
 kPKjE2PWnKX2tyPKjh+M9+kVxSY0IBmrKPoHDFLqBMaVw02MCOusauTTN
 uNj5HB0GxaJvDy44EwYg29QZBQjy6pHPbAowitmWhZMtDKrxC6hTBfAi8
 1UtkoBthvh/pDleKY34/oyKBAZ5kf8sX5dCjBUBcPFDdEznV+CaBU9ZN0
 Iru6JrQfPh5oWM6yNLPrJJQDIID6xddX6Mo6o4+Wgcxn/dl8T9laGFxY2
 XbFPKbdyg7BkdhAWweMLGTG/cKiPQ3qRmbjEXGboX9k7rqwwWp01EaSWa A==;
X-CSE-ConnectionGUID: ywP/0fPlTHikO8KNzh4qqQ==
X-CSE-MsgGUID: IVdexD+TS9CkKCHDH5iScQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40180089"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="40180089"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 09:43:48 -0800
X-CSE-ConnectionGUID: wAE64eh4Q1+pmahu2C57YA==
X-CSE-MsgGUID: bljx5X13RQmtjA4PuRHyLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150069142"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.97])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 09:43:47 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 2/2] drm/i915/display: Make POWER_DOMAIN_*() always result
 in enum intel_display_power_domain
Date: Wed, 12 Feb 2025 14:43:17 -0300
Message-ID: <20250212174333.371681-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250212174333.371681-1-gustavo.sousa@intel.com>
References: <20250212174333.371681-1-gustavo.sousa@intel.com>
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

In the hope of contributing to type safety in our code, let's ensure
that the type returned by the POWER_DOMAIN_*() macros is always of type
enum intel_display_power_domain.

v2:
  - Remove accidental +1 in definition of POWER_DOMAIN_PIPE(). (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 3caa3f517a32..e354051e8982 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -117,12 +117,13 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
 };
 
-#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
+#define POWER_DOMAIN_PIPE(pipe) \
+	((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_PIPE_A))
 #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
-		((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
+	((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A))
 #define POWER_DOMAIN_TRANSCODER(tran) \
 	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
-	 (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
+	 (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN_TRANSCODER_A))
 
 struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
-- 
2.48.1

