Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8E0AD5777
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BE0D10E673;
	Wed, 11 Jun 2025 13:44:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CUs0T6xj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D6E10E670;
 Wed, 11 Jun 2025 13:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749649484; x=1781185484;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EIElUrKFkDwdELXFYGaGoOXmRj25eCe35unOEGEe7No=;
 b=CUs0T6xjY53H7JhiyR88qOIaqkMKfodlMdrtbdy1HH0bV6Om1EaIC1e3
 jshA3x72JT2f5cdHfpy0dHzcMEHp4g5o+CDlxgMVaopw3HdHR7jJ2MCTr
 io6ASsmxHQmgq0FUpxYYqsqoECckQocdei6TXWSM3NQa8qK247lfRqskc
 a9F6i/cGPerPGakg16TYe5xFvPN9wSW5OjaUHG+uuPsIOizkG/psrv7Hu
 G91sjpk5AYa6fsQtlIZViqR+KFpP0IEgmbmScLF+YCcufUwZjqVGQJ5ZV
 XLdGmU+g9R/NHApngh29wVLB/48rXjLTToIadQaPlMXywFvUHuGeAk43t w==;
X-CSE-ConnectionGUID: 4a/mqfaQQFa8jgQ5anbu6g==
X-CSE-MsgGUID: 0wGEy7xSSfmkXiOyzrnXAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51505817"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51505817"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:44:44 -0700
X-CSE-ConnectionGUID: rFV9QsA0SR6nULuOAsahGQ==
X-CSE-MsgGUID: wZYZHK2qTfKi0joEfgBbAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152360329"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 06:44:41 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Atwood <matthew.s.atwood@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v4 5/9] drm/i915: Set max cdclk for display 30.02
Date: Wed, 11 Jun 2025 19:14:27 +0530
Message-Id: <20250611134431.2761487-6-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
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

