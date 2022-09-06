Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEAD5ADE27
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 05:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD9C10E270;
	Tue,  6 Sep 2022 03:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E4010E270
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 03:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662436088; x=1693972088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f/vCaPrFigm6W2litXPWRtg+PI2QBaYjsT0S2JYHivQ=;
 b=jztcltRof+KV6BD9PG4dSrImqUWenfTrRroUVKhraUoeG57U/bq+S3rE
 vqwNe4JEZlMBI2d/xmY/NwSqd1VD1ME5KRR6Y5WAy6nz4D4EH2ALtVyrE
 FCJYGAe/ClSiTmG9zvtfUxbCJyiU161EObaoGoNjUzGmeuagV//uWfZw3
 WtebpvKomeTYVugbNJlOlpkLp2McYx2o3CbAyAT4iyuPObfYT0qt0AjvY
 GTM8NZgbHlUfJi7uDrAe59XkiZ9jJWePj2338NDVQeX8RL9cVPOcPllZ5
 m3N6Wn5EgS969nqkvuo3O5gPPBF9yCFxUOPmBYiet9DN9tilmLT5SmC00 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="294079232"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="294079232"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 20:48:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="609822698"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga007.jf.intel.com with ESMTP; 05 Sep 2022 20:48:06 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 09:18:03 +0530
Message-Id: <20220906034803.4094252-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426120407.1334318-1-arun.r.murthy@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear buffers
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

Starting from Gen12 Async Flip is supported on linear buffers.
This patch enables support for async on linear buffer.

UseCase: In Hybrid graphics, for hardware unsupported pixel formats it
will be converted to linear memory and then composed.

v2: Added use case
v3: Added FIXME for ICL indicating the restrictions

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index be7cff722196..1880cfe70a7d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6610,6 +6610,20 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		 * this selectively if required.
 		 */
 		switch (new_plane_state->hw.fb->modifier) {
+		case DRM_FORMAT_MOD_LINEAR:
+			/*
+			 * FIXME: Async on Linear buffer is supported on ICL as
+			 * but with additional alignment and fbc restrictions
+			 * need to be taken care of. These aren't applicable for
+			 * gen12+.
+			 */
+			if (DISPLAY_VER(i915) < 12) {
+				drm_dbg_kms(&i915->drm,
+					"[PLANE:%d:%s] Modifier does not support async flips\n",
+					plane->base.base.id, plane->base.name);
+				return -EINVAL;
+			}
+
 		case I915_FORMAT_MOD_X_TILED:
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
-- 
2.25.1

