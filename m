Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7618752FB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 16:18:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A99F10F4A4;
	Thu,  7 Mar 2024 15:18:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XUSajIDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FC310F4A4
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 15:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709824705; x=1741360705;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sDihTn/gzleCKfi6ZtM6TgWxt/47BCmOOQ75xfkbWl8=;
 b=XUSajIDClVCVQXd2vzQpAUNVNEdECxeWGMqVi8+4WoAny4KHs21VuDDg
 2vCYO+kInT6rxOg66vN9Qf1PMvdq+yptbnkTwiRA6owFIpPmOuSyxB4Ma
 pY+iVK7n6pDjYSZaglOftNeCHu8Z7ELJev6Y73G7DBX+dCMNHc1uw96LL
 HQ430Hyb6Mw1pZjcED0LfZjK/zqnk64JaYLQbyGn1qagmuT7+2D9kc1a/
 ZS1z4DOfbW+xj2Aggz/Pzw05xuGXeQHu3T7Y+W/G/vcWH93n68uvnnIC9
 s6J0sebESo0agCqokYPvXCgPRcyFNh0Qg10nr98KLzODja0iCiwDR57TW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="26969182"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="26969182"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 07:18:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827774793"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="827774793"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2024 07:18:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Mar 2024 17:18:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915: Drop pointless (void*) cast
Date: Thu,  7 Mar 2024 17:18:10 +0200
Message-ID: <20240307151810.24208-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
References: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Remove the pointless (void*) cast, the incoming pointer is already
the correct type.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2b00ca44c14c..50f0557d9ca2 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2378,7 +2378,7 @@ intel_sdvo_connector_atomic_get_property(struct drm_connector *connector,
 					 u64 *val)
 {
 	struct intel_sdvo_connector *intel_sdvo_connector = to_intel_sdvo_connector(connector);
-	const struct intel_sdvo_connector_state *sdvo_state = to_intel_sdvo_connector_state((void *)state);
+	const struct intel_sdvo_connector_state *sdvo_state = to_intel_sdvo_connector_state(state);
 
 	if (property == intel_sdvo_connector->tv_format) {
 		int i;
-- 
2.43.0

