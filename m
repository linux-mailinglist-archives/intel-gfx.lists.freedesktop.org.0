Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4DD484717
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 18:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B876510E256;
	Tue,  4 Jan 2022 17:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5220310E256
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 17:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641318029; x=1672854029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YJtpVc034jejYwtMP6xTzrF7L5NqXgCng0Cpbb/lF5w=;
 b=j1bThU6oNWHzZkmlsSruYXu2orecOgJpsBc8leMAYbvJBL8ertLCYFcz
 GRyS6DFgObYp9EiLuQfQ5Xa4VUEdKKyY6fdgIOEBslKjelrjBbmBJWjR9
 nGfpatqyCk8pzUl9gr9L0otaaikSF2OCkhJGYrpjYjQizLYKcVkJFtNRt
 JDg13bFwKZGyYbT7XemPmPFAdhsEqS+Aenp34pZUk4eYJL91oNNcjHloS
 hf8Z1Z9ds9S5G8E2M9gtm3NoFYoJhUNhwSALPfn+Tf1N20CLoZcVr5qF1
 FjhOMpDt2FYD0MCeaVhAHl7p7370z8o7nc4iWMa0KiEcbR3dU4tFPuzJP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="303018740"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="303018740"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="611162958"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 19:39:50 +0200
Message-Id: <c922107d926d58eec0a96dc7d61c3edd732ebaf3.1641317930.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641317930.git.jani.nikula@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/mst: ack sink irq ESI for link
 status changes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only specific event status indicators caused the link status to be
acked. Be sure to ack the link status change event.

Arguably we should track which bits to actually clear in ESI instead of
the wholesale approach.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a3368c30bc3b..82388112e062 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3698,6 +3698,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		    esi[3] & LINK_STATUS_CHANGED) {
 			if (!intel_dp_mst_link_status(intel_dp))
 				link_ok = false;
+			handled = true;
 		}
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
-- 
2.30.2

