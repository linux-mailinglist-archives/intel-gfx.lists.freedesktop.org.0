Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A398958C5
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8694C10FE16;
	Tue,  2 Apr 2024 15:50:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OWEn5xGF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E6810FE16
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073052; x=1743609052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p+Hvd4VCwdsSgLaKXUnWyMiQi+B0SPLngyBfc1rPKTA=;
 b=OWEn5xGFChNsokVNwxK0tPDC7CDMu4NQayBLihyRuDMrD3Gs1yWmhuGH
 IAZhvyrkFx7zvNV2y0yera+ztOzavB6NOmKgEcvvA5EF98G8/3HOCIuFQ
 9c2dJuOMygOCOJRNa4FqHQPxyF2065eFwNBRkTVhILbRFpG6URRsbQjh3
 AcG9UR6pQWTr48gJvEIrg/7jnut6Vdeo/zDWLE0MeB8JYrZUaxKysIjly
 A1sdz0s3k5AxBN3kmOGgUAwqR7CpiZJ9E4R8poLpnaREWIga4NdV9MOWK
 QjaECBFNYEqsy8gR5W/h6chGsoDvayshcU3XOxXtob4Xui0VayF5Mfoca Q==;
X-CSE-ConnectionGUID: G1J3MKYqTZO89njGmdnvNw==
X-CSE-MsgGUID: /flWahF+RoqPGI+Tle3x2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980868"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980868"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789486"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789486"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 10/14] drm/i915: Use old mbus_join value when increasing
 CDCLK
Date: Tue,  2 Apr 2024 18:50:12 +0300
Message-ID: <20240402155016.13733-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

In order to make sure we are not breaking the proper sequence
let's do updates step by step and don't change MBUS join value
during MDCLK/CDCLK programming stage.
MBUS join programming would be taken care by pre/post ddb hooks.

v2: - Reworded comment about using old mbus_join value in
      intel_set_cdclk(Ville Syrjälä)

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
[v3: vsyrjala: rebase on top of cdclk changes, reword a bit more]
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ed8d9ee094b8..e0c69d85e733 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2617,6 +2617,12 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 						 old_cdclk_state->actual.voltage_level);
 	}
 
+	/*
+	 * mbus joining will be changed later by
+	 * intel_dbuf_mbus_{pre,post}_ddb_update()
+	 */
+	cdclk_config.joined_mbus = old_cdclk_state->actual.joined_mbus;
+
 	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
 	intel_set_cdclk(i915, &cdclk_config, pipe,
-- 
2.43.2

