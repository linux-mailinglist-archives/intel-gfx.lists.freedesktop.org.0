Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E969F874F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 22:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D567810EDE6;
	Thu, 19 Dec 2024 21:49:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d5+Vxf0f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9450710EDC4;
 Thu, 19 Dec 2024 21:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734644976; x=1766180976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=doBFyzUkjio72P5VzM+oZyIJzOUxB2DMHfpFKKtOD/I=;
 b=d5+Vxf0ffLjVZA5gGrxmrKzC5afdlQEidCnKYrLsENGRg8LsSpKnlhr1
 AiMsmz6VH7JZaZ6Nuez2TQHIXGMJAhvgqQTbz0bxE9tlI7Q/RmDTLkTyG
 eN5NGMdLjgkpagDPc4rvmbXoGJ4CuJ+paww4mOsBv89XjlahDfWBsOsUN
 FpovWD7dHtletow/vzwmtAtuSnR3F2Ud2l9RQEkqgNTsW1PqONg5petPM
 lDCMpcuxM5RhMAXlWia8lH09fbMjzZkE0bD46IHROgk110cM5zQuWHczx
 Z/l4+OlMJhDKj1vTOrINzx6vS+UsSrpopJ2W4az9HCh72A98ugIKrD0Wj Q==;
X-CSE-ConnectionGUID: 6PWPetZlRRqzNsjQn7XBmw==
X-CSE-MsgGUID: 1D78aEGDQpyenAkhpVS5yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="52710909"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="52710909"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 13:49:36 -0800
X-CSE-ConnectionGUID: J5CBYBaqSGGIP5rDrhV7Dw==
X-CSE-MsgGUID: 6BQzlqJ0RLmPGjBLTrricw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98150130"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.53])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 13:49:36 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Do not assume zero offset when
 duplicating global state
Date: Thu, 19 Dec 2024 18:48:36 -0300
Message-ID: <20241219214909.104869-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241219214909.104869-1-gustavo.sousa@intel.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
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

The current intel_*_duplicate_state() functions assume the offset for
the base member of their state structures is zero when calling
kmemdup(). While that is true today, such assumption should not be made
and proper offset must be applied when calling kmemdup(), otherwise we
will be duplicating the wrong memory area if, for some reason, the
offset is changed in the future.

As such, update each of those functions to use its respective
to_*_state() as the parameter to kmemdup().

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 4 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 4 ++--
 drivers/gpu/drm/i915/display/skl_watermark.c  | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 08e8a67ca74c..30236010e0ed 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1425,9 +1425,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 static struct intel_global_state *
 intel_bw_duplicate_state(struct intel_global_obj *obj)
 {
-	struct intel_bw_state *state;
+	struct intel_bw_state *state = to_intel_bw_state(obj->state);
 
-	state = kmemdup(obj->state, sizeof(*state), GFP_KERNEL);
+	state = kmemdup(state, sizeof(*state), GFP_KERNEL);
 	if (!state)
 		return NULL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3506e576bf6b..fc084e2a4c6a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3130,9 +3130,9 @@ static int fixed_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 static struct intel_global_state *intel_cdclk_duplicate_state(struct intel_global_obj *obj)
 {
-	struct intel_cdclk_state *cdclk_state;
+	struct intel_cdclk_state *cdclk_state = to_intel_cdclk_state(obj->state);
 
-	cdclk_state = kmemdup(obj->state, sizeof(*cdclk_state), GFP_KERNEL);
+	cdclk_state = kmemdup(cdclk_state, sizeof(*cdclk_state), GFP_KERNEL);
 	if (!cdclk_state)
 		return NULL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index cdd314956a31..1f71efb7d04d 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -18,9 +18,9 @@
 static struct intel_global_state *
 intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
 {
-	struct intel_pmdemand_state *pmdemand_state;
+	struct intel_pmdemand_state *pmdemand_state = to_intel_pmdemand_state(obj->state);
 
-	pmdemand_state = kmemdup(obj->state, sizeof(*pmdemand_state), GFP_KERNEL);
+	pmdemand_state = kmemdup(pmdemand_state, sizeof(*pmdemand_state), GFP_KERNEL);
 	if (!pmdemand_state)
 		return NULL;
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 29e8ea91c858..b3d38e09df5a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3291,9 +3291,9 @@ static void skl_setup_wm_latency(struct drm_i915_private *i915)
 
 static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
 {
-	struct intel_dbuf_state *dbuf_state;
+	struct intel_dbuf_state *dbuf_state = to_intel_dbuf_state(obj->state);
 
-	dbuf_state = kmemdup(obj->state, sizeof(*dbuf_state), GFP_KERNEL);
+	dbuf_state = kmemdup(dbuf_state, sizeof(*dbuf_state), GFP_KERNEL);
 	if (!dbuf_state)
 		return NULL;
 
-- 
2.47.1

