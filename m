Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B174CC9CAAF
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 19:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9BAA10E68A;
	Tue,  2 Dec 2025 18:39:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c2htYjrn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C47F10E68A;
 Tue,  2 Dec 2025 18:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764700797; x=1796236797;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9Ul08rqPczUY9Bogxe3yXyfTFe2bGnh040pIQDGuCns=;
 b=c2htYjrnSmqyk8tUfJCBWvhK70zimWy1C7fuNqw25/pLsF6XauhloXDO
 FUyvXR/V1IyQGnoW1scTAT+GnDWYOsNGjPG8CBVRAyCyUUqFZ8fUEZcpv
 w+ObfqYj7n9bR4LllcRktUikEtVgQyWPo7uc5tenPQQdDqMuUB2M/a1y7
 D/6h8/hATParJLweyxZrKlENsUERu5jEWo4iyTJYZto/aiLN0j1F/8rO4
 SSo16Cu/t5pIk2KpQgWvUy+T4+HhMYNudmUBqUNR+hsr4omwz1eySOK05
 NrhP+OvWr2XsnX6JJliH5mFn25fbrzLY3R9bZGfO4MTx5+S/+gckKEBs9 g==;
X-CSE-ConnectionGUID: YKu4zJkiRnmCtTnKJP8JXw==
X-CSE-MsgGUID: FDcyRnf2Sf+UNWLZze589A==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66755788"
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="66755788"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 10:39:56 -0800
X-CSE-ConnectionGUID: Qv4WnIqCQ0SprvTAgvTF9Q==
X-CSE-MsgGUID: S9Y9TNM9RMyT8W8XETV0CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="231791879"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 10:39:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Mohammed Thasleem <mohammed.thasleem@intel.com>,
 Imre Deak <imre.deak@intel.com>, stable@vger.kernel.org
Subject: [PATCH] drm/i915/dmc: fix an unlikely NULL pointer deference at probe
Date: Tue,  2 Dec 2025 20:39:50 +0200
Message-ID: <20251202183950.2450315-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
initialized, and dmc is thus NULL.

That would be the case when the call path is
intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
intel_power_domains_init_hw() is called *before* intel_dmc_init().

However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
conditionally, depending on the current and target DC states. At probe,
the target is disabled, but if DC6 is enabled, the function is called,
and an oops follows. Apparently it's quite unlikely that DC6 is enabled
at probe, as we haven't seen this failure mode before.

Add NULL checks and switch the dmc->display references to just display.

Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: <stable@vger.kernel.org> # v6.16+
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Rare case, but this may also throw off the rc6 counting in debugfs when
it does happen.
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2fb6fec6dc99..169bbbc91f6d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1570,10 +1570,10 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
 	struct intel_dmc *dmc = display_to_dmc(display);
 	u32 dc5_cur_count;
 
-	if (DISPLAY_VER(dmc->display) < 14)
+	if (!dmc || DISPLAY_VER(display) < 14)
 		return;
 
-	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
+	dc5_cur_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
 
 	if (!start_tracking)
 		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
@@ -1587,7 +1587,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
 	struct intel_dmc *dmc = display_to_dmc(display);
 	bool dc6_enabled;
 
-	if (DISPLAY_VER(display) < 14)
+	if (!dmc || DISPLAY_VER(display) < 14)
 		return false;
 
 	mutex_lock(&power_domains->lock);
-- 
2.47.3

