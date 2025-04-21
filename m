Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE9BA953B9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C34B10E47A;
	Mon, 21 Apr 2025 15:51:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZm4iomu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7869410E27A;
 Mon, 21 Apr 2025 15:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250671; x=1776786671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iJCmxbJbbBZ31qSkXmhQBMNWc3fBqpgeTHe/x4fsW9U=;
 b=iZm4iomuh2m/tOJR2Hi11AytZU5Q+6wbEzUmrKBHsSJiacGULgvGf3Sk
 CEKgx+3HEUrca6OnWM2VyGS2C26xg68Cb2PmwTF85Liecm3tlXT//s9ki
 pe3/rNV0aHfb8pgbCdsmDKBZ/sxHhnkK5t+4PKsatogZ+M2qzU4uLnMBj
 +UGnyOoNeKbjVU7rqnEq5FA0ntHsRT5A3s01pJN1PBwDBmhOJCcYPjiMc
 7W3PIs4w4+g8wznDBRKul5I9rtJ8qbA+6zP1O77IUu/ggaOL9evOVQre/
 ySHmGfcYfF4nb/bHJSYsTtwQD28kE/KUJhDwMNysT077168NOjiOttaqQ Q==;
X-CSE-ConnectionGUID: aOA0SEG9RWabBzNHWhyCiw==
X-CSE-MsgGUID: qlE2833CRemFTL7ckK9FFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434065"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434065"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:11 -0700
X-CSE-ConnectionGUID: /097yWDRTke5MiX7JqVcyA==
X-CSE-MsgGUID: 6+vgtVLHTFuSorCJ34Sixg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725573"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:10 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 03/13] drm/i915/display: Add source param for dc balance
Date: Mon, 21 Apr 2025 21:18:50 +0530
Message-ID: <20250421154900.2095202-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add source param for dc balance enablement further.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 87c666792c0d..653483fa99ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -144,6 +144,7 @@ struct intel_display_platforms {
 #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
 #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
 #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
+#define HAS_DC_BALANCE(__display)		(DISPLAY_VER(__display) >= 30)
 #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
 #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
 #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
-- 
2.48.1

