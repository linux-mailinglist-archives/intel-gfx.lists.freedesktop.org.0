Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4A4AAB9A8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 09:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFA610E583;
	Tue,  6 May 2025 07:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IjdfcUAr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DF110E562;
 Tue,  6 May 2025 07:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746514903; x=1778050903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UoGAmkugIMbA5ucGAuAma5PdGKy0zQ9Pxh5ZG6AaIiM=;
 b=IjdfcUAr5DG9Fj4T6RqpcN2asDlprvOnKyG8T9AmCJdpNTHtIghpR3VC
 9Nvzz7nXixpc80jOxbHq6rQ3JSf+jlUFsB1sDgCi2T6XfjfOGBagZAG6M
 /Efnsgkvu4OnydYTJrTHFWQc7eAJwz9jav7Th8d4qTqZ86TlRSUQ19qmS
 GtkWVWikHt2S6zjwTQdTelSnahZQIYcpJ9cYFO9TmXMsvsnz2bWD2f2iK
 ffHqO3rtPI5bykQc5/EybrcLgXmr0MrHFrLLl+2IIXDeJKRYXKAbRtTTs
 7LX/v4WiNnlHlyPwDrYWKvKfxG+IaLEy2VNHe66n8UpE2fHFvhgJn9MMZ g==;
X-CSE-ConnectionGUID: w2o49rSOTESza3U7Z7+FeA==
X-CSE-MsgGUID: XbkLyRrQQhm7ceJukw5TDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48067975"
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="48067975"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:11 -0700
X-CSE-ConnectionGUID: L+FaWV66QdmQZ40VbboWIQ==
X-CSE-MsgGUID: JPR9WVyJRBKeXxEQs5oZsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="140273077"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.171])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/4] drm/i915/alpm: Clear ALPM registers when disabling ALPM
Date: Tue,  6 May 2025 10:00:26 +0300
Message-ID: <20250506070029.1326368-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250506070029.1326368-1-jouni.hogander@intel.com>
References: <20250506070029.1326368-1-jouni.hogander@intel.com>
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

Currently ALPM disable is using rmw. There is no reason to use that. Just
clear registers.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 1bf08b80c23f..d48d1e6cc356 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -561,13 +561,8 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 
 	mutex_lock(&intel_dp->alpm_parameters.lock);
 
-	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
-		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
-		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
-
-	intel_de_rmw(display,
-		     PORT_ALPM_CTL(cpu_transcoder),
-		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
+	intel_de_write(display, PORT_ALPM_CTL(dp_to_dig_port(intel_dp)->base.port), 0);
 
 	drm_dbg_kms(display->drm, "Disabling ALPM\n");
 	mutex_unlock(&intel_dp->alpm_parameters.lock);
-- 
2.43.0

