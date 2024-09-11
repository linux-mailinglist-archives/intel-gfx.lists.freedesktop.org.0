Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D45975352
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6755E10EA1E;
	Wed, 11 Sep 2024 13:12:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N/TWx9tL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E050F10EA12
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060349; x=1757596349;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eoCo4VM0un3DMefp3OAHsJopthT8QCw73l4m/FVJMzk=;
 b=N/TWx9tLLEKfw5daQhq6900LNeImKn5d3qVpM/vdgwwaTSt2OlrmOKZw
 P4Q8Wtub3tVPjHebClxUVoJUMzF+wL8LAEXOoL9j/9wdL12RjIBiTmyw6
 vnDO0K4ugTELItJl0eyQt7/auIGHLEsReXp0bK1WgZMVwddCzZWj5c6bm
 BZrZ/milRsi1/D8qNChCbXAeuTCc+uOqZmPh7nI0GbdjjLZr5UpXY2IMl
 sGoaC6X0qNk5iU6hsKiKbMCO+stLFIjqhdhurMH8AbHItZJOdB1ogde7f
 BYVK2PPp9WLkr5y6MXOAUSKpHFpfGxp/VgdcNYDkPTeT3KWRPN2Xhh67p A==;
X-CSE-ConnectionGUID: IYqQFaWVRfqwrx38pnVCkg==
X-CSE-MsgGUID: bc5BeW1US0uUpNlTDaf/mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244399"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244399"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:29 -0700
X-CSE-ConnectionGUID: UBatQK2MST26dmsXti8/pA==
X-CSE-MsgGUID: GdxtWwcpThSQ4KGiVoz5vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67381024"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 12/19] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Date: Wed, 11 Sep 2024 18:43:42 +0530
Message-ID: <20240911131349.933814-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

v2:
-Streamline the expected masks and add few more drm_WARNs. (Ville)
-Use %#x format specifier for printing joiner masks. (Ville)
-Use struct intel_display instead of struct drm_i915_private. (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)
---
 drivers/gpu/drm/i915/display/intel_display.c | 49 +++++++++++++++++++-
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e93af02aa859..b66685a9843f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3642,12 +3642,33 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
 	}
 }
 
+static u8 expected_secondary_pipes(u8 primary_pipes, int num_pipes)
+{
+	u8 secondary_pipes = 0;
+
+	for (int i = 1; i < num_pipes; i++)
+		secondary_pipes |= primary_pipes << i;
+
+	return secondary_pipes;
+}
+
+static u8 expected_uncompjoiner_secondary_pipes(u8 uncompjoiner_primary_pipes)
+{
+	return expected_secondary_pipes(uncompjoiner_primary_pipes, 2);
+}
+
+static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
+{
+	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
 
 	if (!intel_display_can_use_joiner(display))
 		return;
@@ -3655,16 +3676,40 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
 
+	drm_WARN_ON(display->drm,
+		    (primary_uncompressed_joiner_pipes & secondary_uncompressed_joiner_pipes) != 0);
+
 	enabled_bigjoiner_pipes(display, &primary_bigjoiner_pipes,
 				&secondary_bigjoiner_pipes);
 
+	drm_WARN_ON(display->drm,
+		    (primary_bigjoiner_pipes & secondary_bigjoiner_pipes) != 0);
+
+	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
+				    secondary_uncompressed_joiner_pipes;
+	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+
+	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
+		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
+		 uncompressed_joiner_pipes, bigjoiner_pipes);
+	drm_WARN(display->drm, secondary_bigjoiner_pipes !=
+		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
+		 "Wrong secondary bigjoiner pipes(expected %#x, current %#x)\n",
+		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
+		 secondary_bigjoiner_pipes);
+	drm_WARN(display->drm, secondary_uncompressed_joiner_pipes !=
+		 expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 "Wrong secondary uncompressed joiner pipes(expected %#x, current %#x)\n",
+		 expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 secondary_uncompressed_joiner_pipes);
+
 	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
 
 	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
 
 	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
-		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
+	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
+		 "Joiner misconfigured (primary pipes 0x%#x, secondary pipes 0x%#x)\n",
 		 *primary_pipes, *secondary_pipes);
 }
 
-- 
2.45.2

