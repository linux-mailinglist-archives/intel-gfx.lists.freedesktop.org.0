Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FA0AD896B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 12:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537BF10E984;
	Fri, 13 Jun 2025 10:23:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IcCm7W1i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 103C510E987;
 Fri, 13 Jun 2025 10:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749810206; x=1781346206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EIElUrKFkDwdELXFYGaGoOXmRj25eCe35unOEGEe7No=;
 b=IcCm7W1iS/y30gSzISDhiKw16O31Xjtv0JgoihEriMXgIPYGHLk19wxW
 6DFi1AWPrfCHs9hLyzuibbUkV2PIZuAgOxepQ/brS3d6j4Nke/F95OHdI
 rBtHWjLvQ33/jTH5+S/KFZ2l+nN+W12yN5rXO6ZHvmquXJGTxCZRofVg9
 udBA6XEeWsXF3XTy4ie6GbpvxL3kgOeSqEZykSEiioqRhywDkgvxLIXz8
 Ob/SBXcmeX/GQqxNC37hyEqZIL2br4sDVnRbwQ14JAB71Wo1G8RYFe86o
 Q77hIlgFurHTS5aDo7NApuF/C3nyzY7fCIF8gwCUcrE/xOd5LrePJCEpq g==;
X-CSE-ConnectionGUID: HplXAgieQ1W5PeGmivtrnQ==
X-CSE-MsgGUID: ilfNkixmQhG2qWDRMF8o9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62673642"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="62673642"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:23:25 -0700
X-CSE-ConnectionGUID: X+XibjlDTjG3UEAWeCfcIQ==
X-CSE-MsgGUID: DrXj8aetQvCArYJlYYZ0+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="152758953"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 13 Jun 2025 03:23:24 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Atwood <matthew.s.atwood@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v6 5/9] drm/i915: Set max cdclk for display 30.02
Date: Fri, 13 Jun 2025 15:52:52 +0530
Message-Id: <20250613102256.3508267-6-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
References: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
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

From: Matt Atwood <matthew.s.atwood@intel.com>

Display version 30.02 has a lower max cdclk rate than 30.00.

Bspec: 68861
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 38b3094b37d7..1cbb1d526fe8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3386,7 +3386,9 @@ static int intel_compute_max_dotclk(struct intel_display *display)
  */
 void intel_update_max_cdclk(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) >= 30) {
+	if (DISPLAY_VERx100(display) >= 3002) {
+		display->cdclk.max_cdclk_freq = 480000;
+	} else if (DISPLAY_VER(display) >= 30) {
 		display->cdclk.max_cdclk_freq = 691200;
 	} else if (display->platform.jasperlake || display->platform.elkhartlake) {
 		if (display->cdclk.hw.ref == 24000)
-- 
2.34.1

