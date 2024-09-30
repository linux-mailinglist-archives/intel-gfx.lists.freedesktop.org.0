Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5434798A9DC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0171F10E563;
	Mon, 30 Sep 2024 16:34:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aXvSQs67";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5712310E560;
 Mon, 30 Sep 2024 16:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714054; x=1759250054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rUQVqVvTExMb1/whoLhjFBo21UZDEUsyMqdB7KVtst8=;
 b=aXvSQs67g+XJi1HWf8W6QtwFZ9Rbf8+zraHfmtm3fsIDHA4l/p+ChL58
 mAxHzG30f3E8kw4ZaQ42FaPl2eHMvDmrS2hw4gAXJ5z1gwqUpzzdLVOEx
 WJ2xsYLt3h6MXLMisud05o6UC8yZImRzMgPS31bIbwNyqKnsllZxGxWYe
 bQVzt5UFuSWAtCactz0C78+d4mkrm7v9zQfUcqfx5l9UW70GIsdkd4Y34
 bj7WmO4ofYQtVvFE4ktCGRErb3d0piODpV0AdkE0jJ1TGZi8fKRoWkXsH
 5omaAlcepihKEjDSFqdB1nTL6m3I4MXwonfOyoJCxtIyvPDUsi573UkSP g==;
X-CSE-ConnectionGUID: cpoJTXk/Rm2Ceb/xr5V8/A==
X-CSE-MsgGUID: la33ntdSTqadJATjw160Zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700557"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700557"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:14 -0700
X-CSE-ConnectionGUID: +7lYBMMsSba1h9tzntue3Q==
X-CSE-MsgGUID: 2c0MWf8vTkyj5TtiaoO42w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839267"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 12/13] drm/i915/display: Consider ultrajoiner for computing
 maxdotclock
Date: Mon, 30 Sep 2024 22:05:48 +0530
Message-ID: <20240930163549.416410-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
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

Use the check for ultrajoiner while computing maxdotclock.

v2: Add Check for HAS_UNCOMPRESSED_JOINER. (Ville)
v3: Remove extraneous newline. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 40ad3fdaab10..74311bb9d290 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8186,8 +8186,9 @@ static int max_dotclock(struct drm_i915_private *i915)
 {
 	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
 
-	/* icl+ might use joiner */
-	if (HAS_BIGJOINER(i915))
+	if (HAS_ULTRAJOINER(i915))
+		max_dotclock *= 4;
+	else if (HAS_UNCOMPRESSED_JOINER(i915) || HAS_BIGJOINER(i915))
 		max_dotclock *= 2;
 
 	return max_dotclock;
-- 
2.45.2

