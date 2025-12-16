Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D2DCC52F1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 22:12:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17E910E96F;
	Tue, 16 Dec 2025 21:12:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KtgQ13Q1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CE010E33A;
 Tue, 16 Dec 2025 21:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765919541; x=1797455541;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=UkN/qxPcoCwnwhnQWZnorFtx4rNYoPlq06F5jgKPteE=;
 b=KtgQ13Q10x9L4omN3jTQIhYO1EJHFuGegkza8nY150QYhLsq/5D5MjPY
 XIdo8VnWfFOgbQMgcAu9GYnercPuAiX5f+ykXJmwf8DR6RIKFQEx12HOE
 fMgbGvs/u3hdfvWYQemc4BqX4S5n1cnq96jbCX+1YJ6x1hC7glUN81j51
 Zn/oVWbuJLGL/f9EUhppsUINr+V2m1ZIbcA+tctFLzUAuY9tvXR0nzGlk
 gAqaRNwOwWYy7rkq4zXrkoslph7kik3z0eBC4UkaVANmy0V9stwejE2La
 Ew7STZhX/42gHI4Vz4Rj7XT6dl09/RmU2PX2sH6vXBAtxLqv7W0OTQSM2 A==;
X-CSE-ConnectionGUID: VCZZzWUDQyiIvH2ELWSmHQ==
X-CSE-MsgGUID: WWKBq0iiShqwDrb6+TWC8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="67732979"
X-IronPort-AV: E=Sophos;i="6.21,154,1763452800"; d="scan'208";a="67732979"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 13:12:21 -0800
X-CSE-ConnectionGUID: au8Jg1xUTmGHo15xFs5Evg==
X-CSE-MsgGUID: k95DNl7GQZ6aeGzwBGuNoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,154,1763452800"; d="scan'208";a="198017054"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.223.67])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 13:12:19 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 16 Dec 2025 18:12:00 -0300
Subject: [PATCH 1/2] drm/i915/cx0: Use a more accurate message for
 powerdown change failure
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-1-08677b03e2f1@intel.com>
References: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-0-08677b03e2f1@intel.com>
In-Reply-To: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-0-08677b03e2f1@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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

We do not use the function intel_cx0_powerdown_change_sequence()
exclusively to take the PHY out of reset, hence the warning message on
failure is misleading.  Furthermore, in an upcoming change, we will also
use that function to implement a new C10 PHY workaround.

Use a more accurate message by saying that we failed to change the
powerdown state.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f6d69627154e..264f8a5072e5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3059,7 +3059,7 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 				       intel_cx0_get_powerdown_update(lane_mask),
 				       XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS))
 		drm_warn(display->drm,
-			 "PHY %c failed to bring out of lane reset\n",
+			 "PHY %c failed to change powerdown state\n",
 			 phy_name(phy));
 }
 

-- 
2.52.0

