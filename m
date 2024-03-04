Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C623870992
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 19:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDBD611246B;
	Mon,  4 Mar 2024 18:31:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YpPCeEzX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3168112469;
 Mon,  4 Mar 2024 18:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709577067; x=1741113067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O2ho/4N4dJ5nvVWkmRVB2DGxZF1T/H4l+82uNizNYVk=;
 b=YpPCeEzXcYgrmg/9ZQneU1RbSeyAeDcnBjluyQQsJgC/Zi1hfCr6+Cg4
 Fo6UixuUxWvWur/aXi/+F1BFYbS/K4+gUEOcjUTqMjUsSgTRRASWG1tWB
 ghYUMN7SVKnqKABgoVquW4/LZdTrCAxA/YlAzx9wdCob8srnZOO/54ZSu
 ZWko3hdqXkK+vz2pWbgBywplU8drnp6lm7bzvIxcbIZntK9gqovHa83iL
 OqtO2FIcAaVAp9AxXeaSvVZYOXL7Ksxqg5yeBJE+DrXIXo8ne7uXsfHb4
 8Tfzs9FRDeyiEnJQlSKrgEgDYVYEFeNcZjR4ZIdw83dmSCsvU36lwMhcV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="3943507"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="3943507"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13756435"
Received: from ticela-or-128.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.50])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, vinod.govindapillai@intel.com,
 stanislav.lisovskiy@intel.com, Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 1/8] drm/i915/cdclk: Rename lnl_cdclk_table to
 xe2lpd_cdclk_table
Date: Mon,  4 Mar 2024 15:30:20 -0300
Message-ID: <20240304183028.195057-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240304183028.195057-1-gustavo.sousa@intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
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

The CDCLK table is tied to Xe2LPD display and not to the platform. Let's
rename lnl_cdclk_table to xe2lpd_cdclk_table in order to reflect that.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 22473c55b899..407bd541eb46 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1417,7 +1417,7 @@ static const struct intel_cdclk_vals mtl_cdclk_table[] = {
 	{}
 };
 
-static const struct intel_cdclk_vals lnl_cdclk_table[] = {
+static const struct intel_cdclk_vals xe2lpd_cdclk_table[] = {
 	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
 	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
 	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
@@ -3710,7 +3710,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
-		dev_priv->display.cdclk.table = lnl_cdclk_table;
+		dev_priv->display.cdclk.table = xe2lpd_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 14) {
 		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
 		dev_priv->display.cdclk.table = mtl_cdclk_table;
-- 
2.44.0

