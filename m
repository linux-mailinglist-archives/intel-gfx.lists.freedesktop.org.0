Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3418928AF1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F0E10EBDD;
	Fri,  5 Jul 2024 14:53:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WnStsb0o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D6810EBD8;
 Fri,  5 Jul 2024 14:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191198; x=1751727198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K7mKv+urb8/XHJTPXMN5TxlGX8xNB4uyeMF3inNFoYk=;
 b=WnStsb0ocxW1klEQeUNHlRBXkNkZZScuF42cYuwq/6FF7SpGENcdEcuF
 BkLjliI20ymVZODWFcLMH1tZdtiyQ102bpnYtDZnnHnqnd5dFtEl+xptH
 erM8pZMoa/67RNT5a2sLU3KWTiFiSSMDq1ue6h9WztML+nMWdr/a4T2Cs
 mLlTQJfk3eBIr2xcvdglgojF+dhGocS9S1CMGz/lfNQSS8u4ElsmrUTUR
 WWTHZ48ZXNQBl7LaGZPCpVP/xTM1xYhxttZcoGFaaIGDGXZm4JBCR8H6L
 01Afv9CnB0q8pPcyb0eNr96UpMhSPOtbWQ6whD8aZctHKGCYuOJ0X+ZtQ w==;
X-CSE-ConnectionGUID: UD/MsYqcT9ej/t+LKQ1ydg==
X-CSE-MsgGUID: 3yaql7ZJQ22C6G/Zn0O4gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204750"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204750"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:18 -0700
X-CSE-ConnectionGUID: TH49d4bIT2OTn/tWJ+eXpQ==
X-CSE-MsgGUID: 5pA5pWj3TJuoANheEX6Zrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864403"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/20] drm/i915/fbc: Adjust g4x+ platform checks
Date: Fri,  5 Jul 2024 17:52:41 +0300
Message-ID: <20240705145254.3355-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Do the "is this ilk+ or g4x" checks in the customary order instead
of the reverse order. Easier for the poor brain to parse this
when it's always done the same way.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 40a3b4937dc5..5ba3d8797243 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1087,7 +1087,7 @@ static void intel_fbc_max_surface_size(struct intel_display *display,
 	} else if (DISPLAY_VER(display) >= 7) {
 		*w = 4096;
 		*h = 4096;
-	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
+	} else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915)) {
 		*w = 4096;
 		*h = 2048;
 	} else {
@@ -1128,7 +1128,7 @@ static void intel_fbc_max_plane_size(struct intel_display *display,
 	} else if (DISPLAY_VER(display) >= 8 || IS_HASWELL(i915)) {
 		*w = 4096;
 		*h = 4096;
-	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
+	} else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915)) {
 		*w = 4096;
 		*h = 2048;
 	} else {
-- 
2.44.2

