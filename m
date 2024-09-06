Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A11396F4CE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F0510EA47;
	Fri,  6 Sep 2024 12:56:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a2BSobBZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B343C10EA43
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627401; x=1757163401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ePoI1D/nAt92ULwEQLWJVExYdeQKq0F2gC62DM06EOA=;
 b=a2BSobBZ15w5+dXAlqkGXWnj73dfmuATRupZIHdiVgUL++8jSQP4fP0W
 L3LZQZoa1+HdL4h0sYtP8aMRUDmbcXRJOfs2qMtJgAAG1uIfKNZokMFvY
 7XdYlXSG6FvlBAx3w16UvMdmK6TgplpSdP7nMZRPNwl9GVWPjFRAgm7e3
 2Madp0hl0zUW4qmo1ZAR5fYwNv3XMOiZ/3kGoO+vLEpGPHcWWymwfOC/E
 V+yosbseinuISrSQBlBIM2xi8jLV/64FMlI4CQ4iM9TF9DPF3UNo6dsJo
 iLlPDbbLxklucJNarFWTDk8cguAYla05VGfGypkF477XrBfbBuANRfiAG g==;
X-CSE-ConnectionGUID: cwRgdRM9Tm+sDWWBlyeR0Q==
X-CSE-MsgGUID: XmGGgCqxTVKuXyrmAQbl4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257409"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257409"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:41 -0700
X-CSE-ConnectionGUID: nZe6/bYIQTamNL9OKjctcQ==
X-CSE-MsgGUID: PgvzEIrfS96eaKmk+pUpDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691076"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:39 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 07/14] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Date: Fri,  6 Sep 2024 18:28:00 +0530
Message-ID: <20240906125807.3960642-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Adding sanity checks for primary and secondary bigjoiner/uncompressed
bitmasks, should make it easier to spot possible issues.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 ++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cdc7531311fc..6f098383479f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3638,11 +3638,17 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
 	}
 }
 
+static u8 expected_secondary_pipes(u8 primary_pipes)
+{
+	return primary_pipes << 1;
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
 
 	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
@@ -3650,6 +3656,24 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
 				&secondary_bigjoiner_pipes);
 
+	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
+				    secondary_uncompressed_joiner_pipes;
+	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+
+	drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
+		 "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x) can't intersect\n",
+		 uncompressed_joiner_pipes, bigjoiner_pipes);
+	drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=
+		 expected_secondary_pipes(primary_bigjoiner_pipes),
+		 "Wrong secondary bigjoiner pipes(expected %x, current %x)\n",
+		 expected_secondary_pipes(primary_bigjoiner_pipes),
+		 secondary_bigjoiner_pipes);
+	drm_WARN(&dev_priv->drm, secondary_uncompressed_joiner_pipes !=
+		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 "Wrong secondary uncompressed joiner pipes(expected %x, current %x)\n",
+		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 secondary_uncompressed_joiner_pipes);
+
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
-- 
2.45.2

