Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25308879910
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:37:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C327410F3D3;
	Tue, 12 Mar 2024 16:37:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fB5PR4At";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EAE110EF9D;
 Tue, 12 Mar 2024 16:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710261420; x=1741797420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+fa7yngDUQG4npH9tnW8nZJ4gtCoLEOYPSwPdYaE/m0=;
 b=fB5PR4AtHnU2ayPPn85Gkf6oZky4JyxG4RDT54ZzpyLEKm5b4vKHrgmK
 nIxjfGFgCTPkGqUfaqobeLfRp4A4Ct6HE9OV8T8a+VYg/TIL7wizEgvvP
 9aFCiE9wNNzPeFeJMi+x56koll4MwJQpZACqtr9x4KzW4pMV/fudjx9EC
 6MJ265hUfyzTdr962oT1nosDPZr9sP6icafXgWEJ8yzsac96yVtSBIOxm
 H4YULk5Z4GEYB7N0h2UDtkV6AxrkYmNjneV+9djGpo+ZHK0rXvpJCb2Ii
 AYQlcHSBYsHHLBttd0AFjVHT2V8EMx01PlRSZfig369GuhjwgSk1jIP64 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="27458062"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="27458062"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16245805"
Received: from ticela-or-524.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.238])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:36:59 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 gustavo.sousa@intel.com
Subject: [PATCH v2 1/8] drm/i915/cdclk: Rename lnl_cdclk_table to
 xe2lpd_cdclk_table
Date: Tue, 12 Mar 2024 13:36:32 -0300
Message-ID: <20240312163639.172321-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240312163639.172321-1-gustavo.sousa@intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
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

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 5b2688d8c644..be268c6abe21 100644
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
@@ -3703,7 +3703,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
-		dev_priv->display.cdclk.table = lnl_cdclk_table;
+		dev_priv->display.cdclk.table = xe2lpd_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 14) {
 		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
 		dev_priv->display.cdclk.table = mtl_cdclk_table;
-- 
2.44.0

