Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3038AA00A11
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A9010E8C4;
	Fri,  3 Jan 2025 13:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y84218CX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9728410E8C2;
 Fri,  3 Jan 2025 13:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912390; x=1767448390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gYPWNFVoPuCxkRK3tdawvFbHfCeIscOcWEMtXyoluDM=;
 b=Y84218CXq231ITi1USqQRvgra0HQJRpnROZXUnMQ9sse6nZ95qeHedJg
 wQC3A0i9T9Ntwh6focZ7ccmOGI6IhTPCWt4NAqu9aGUBPpfNZu1LL6jDB
 lydXCc5TWNk3c//2PNp3vPWBUViu7py/18ppiel311HLByU+MBru71se7
 ID2GqDXteh33Lm/cT63+KroDN7sDLu+6Cq1x7pOAHdvuYH3TSR2bbFZ7Q
 Db1le26kC/q04EygLS0DRu6fUyC3BxVk3/BGLwUiQXLFuTB/gOmD8630w
 OLIvFVNQQjihdFg9fhvjU41pnVSd+Z/4CksYvCE6XjWwiKW92CYeWANgz g==;
X-CSE-ConnectionGUID: H+53xMBjSeORubmySer8zQ==
X-CSE-MsgGUID: lT2lyLUVQQuy1mzWkFn1dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="47573813"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="47573813"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:10 -0800
X-CSE-ConnectionGUID: Yb9T4gBYS/GyZuyr+RWvmA==
X-CSE-MsgGUID: /FV3FgQTSzWxR8ews5OaYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132716709"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 05/16] drm/i915/mst: remove crtc_state->pbn
Date: Fri,  3 Jan 2025 15:52:28 +0200
Message-Id: <726aaadbd425057dfd854e42417bcf8d69b769d3.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The crtc_state->pbn member is only used as a temporary variable within
mst_stream_find_vcpi_slots_for_bpp(). Remove it as unnecessary.

Suggested-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 --
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 3 +--
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f230163226d1..8271e50e3644 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1160,8 +1160,6 @@ struct intel_crtc_state {
 
 	bool double_wide;
 
-	int pbn;
-
 	struct intel_crtc_scaler_state scaler_state;
 
 	/* w/a for waiting 2 vblanks during crtc enable */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a9df57364424..5f1582ad9d41 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -321,14 +321,13 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		 * first branch device's link also applies here.
 		 */
 		pbn.full = remote_tu * mst_state->pbn_div.full;
-		crtc_state->pbn = dfixed_trunc(pbn);
 
 		drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
 		crtc_state->dp_m_n.tu = remote_tu;
 
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
-						      crtc_state->pbn);
+						      dfixed_trunc(pbn));
 		if (slots == -EDEADLK)
 			return slots;
 
-- 
2.39.5

