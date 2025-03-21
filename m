Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 707FEA6BF53
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 17:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6CB110E809;
	Fri, 21 Mar 2025 16:11:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QIXxPi3H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F7710E80E;
 Fri, 21 Mar 2025 16:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742573517; x=1774109517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ht4CLSAbgoJrm7ZD2fggSnjEYAGQJFTcieQsjs4U1rs=;
 b=QIXxPi3H/ADcENHyDTq7BI0lTnC0q0O1DLrFoWty5UMmAj13EyAVQhGI
 OyG31oHoeK4Gc9ohirC4y0dk7i3YmGh12ZprHnr/JSBpmcO2As1elGxo6
 4NSEf1gobwTaENFpgVTIe9gkdwoS+7F+Yqy2gUedcz+vX3WqG9ojKgPgw
 tsMDhCubJQZ8K0LqCrj1w1Qqv/8Kr2ez4fL3A2+mMsNWfDzTR/V9lV1pp
 o901zRPvLs1RiMJHL9Jmph79cwVrs3HqUsil1EPAEf/Ocyj4cCXCl3zyp
 T0czs4s6tAliFrIdIC17oBeDoZBAs16TYgJ4UZPOb+bpD4TRuRB98LNdY g==;
X-CSE-ConnectionGUID: F1behVUaT3O5TGllofVRVg==
X-CSE-MsgGUID: amj5MgjtTJCo8RqnsIdClQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="66308479"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="66308479"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 09:11:56 -0700
X-CSE-ConnectionGUID: 9d4/uSdBQKWNnpWOWDsJ1w==
X-CSE-MsgGUID: 0sWmz0iUTfuCmfBfTma6iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128554988"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa004.fm.intel.com with ESMTP; 21 Mar 2025 09:11:55 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 09/12] drm/i915/display: Set a scaler mode
Date: Fri, 21 Mar 2025 21:36:25 +0530
Message-Id: <20250321160628.2663912-10-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250321160628.2663912-1-nemesa.garg@intel.com>
References: <20250321160628.2663912-1-nemesa.garg@intel.com>
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

Set the mode of scaler to HQ for casf.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index d816dae9cec4..93a847c05535 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -392,6 +392,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		     "Cannot find scaler for %s:%d\n", name, idx))
 		return -EINVAL;
 
+	if (casf_scaler)
+		mode = SKL_PS_SCALER_MODE_HQ;
+
 	/* set scaler mode */
 	if (plane_state && plane_state->hw.fb &&
 	    plane_state->hw.fb->format->is_yuv &&
-- 
2.25.1

