Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D48A8B7E8E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3F6112D8A;
	Tue, 30 Apr 2024 17:31:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SWYnO55y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17685112D76;
 Tue, 30 Apr 2024 17:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498221; x=1746034221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qLc9Xh91rJyGijDI5udatv2e/1dDjE0wjPbeSXea2NM=;
 b=SWYnO55yZktq1UW+ZPd9+iM7VBNnbMUM4gYcdeB8TCiquUhlHYot+v3b
 beZUfdtQOM84LJpC75NH9v6dQRqBfwKOe9q6QL5uZt1c6K6lNjNNWlrsC
 3dydmvA9XLA71IMTMBh7CsMmroxZjkGBjd2CIaQLySW0ADft0icyWRzzd
 IxzNeeDNWgHBVdvzZNaDoUMVroJJRAEuQiZVKigvjGrXHDWqPgWURYF3l
 7EhANdRxbSyk2OsSqF5jfjMgiBunqiNSS7F8z3lG7whIvqzzu9dWc4X8o
 Focdd/Pl6TG2If15ChdQzQi69EhyW6HBlDzBSkCu8CabXsAmbNAxBOI1b w==;
X-CSE-ConnectionGUID: 8TgRc9cZSKqXgy6lef2nlA==
X-CSE-MsgGUID: o2rseOQvQiCHFBzFsFDhfg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741997"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741997"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
X-CSE-ConnectionGUID: Em/J19goQfe+q1T/u0LKrQ==
X-CSE-MsgGUID: wpOZQ974ScuRl2pzVjSL2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617846"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 12/19] drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
Date: Tue, 30 Apr 2024 10:28:43 -0700
Message-Id: <20240430172850.1881525-13-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

From: José Roberto de Souza <jose.souza@intel.com>

No display IP beyond Xe_LPD+ has "BW credits" bits in MBUS_DBOX_CTL
register. Restrict the programming only to Xe_LPD+.

BSpec: 49213
CC: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 7c6187b4479f..be9a4712c54e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3604,7 +3604,7 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
 		u32 pipe_val = val;
 
-		if (DISPLAY_VER(i915) >= 14) {
+		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
 			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
 							      new_dbuf_state->active_pipes))
 				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
-- 
2.34.1

