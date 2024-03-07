Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6728752F8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 16:18:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F91F10F4A0;
	Thu,  7 Mar 2024 15:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JsRXdSFT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA34010F4A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 15:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709824699; x=1741360699;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lIRMB9PVFpmHss512WluD8SlrvnvVQXegmkuV1OplW8=;
 b=JsRXdSFTOJ3SnDp0SOt/tJHDWwNY+8XuiXJRN8UN7A9r5lc1UsgEcdCu
 xTYVnpBfH63N0vZLTbEAw4X/IW8lhNFYN8R4JiN1JnG4baHZml+QOeo6u
 TGI+PpykOUy7ck63Q0ue3r9wS2XFYEfAS/FM2IqD4HzqIXZdr/6qcYW6b
 6kVMKO29HsvupHpBxoYZbZ1c6el9JMA1VD6K6zTXL0b1IoH4EflcNokbE
 /ZNxIZjUirGyvCF7Wnz+5eNsTVsgxmlKk6Bu9VMYDdGEdfNZzNeVC6/MO
 Ynl+Tq0Sg2px+mquAabO8aWF2ppuc7AID6zC5+k31owRQbpC+fpI9WrVk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="26969176"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="26969176"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 07:18:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827774791"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="827774791"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2024 07:18:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Mar 2024 17:18:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915: Don't cast away const
Date: Thu,  7 Mar 2024 17:18:08 +0200
Message-ID: <20240307151810.24208-3-ville.syrjala@linux.intel.com>
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

The connector state passed to .atomic_get_property() is const.
We should preserve that when downcasting to our version.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 2bb270f82932..7a77ae3dc394 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -62,7 +62,7 @@ int intel_digital_connector_atomic_get_property(struct drm_connector *connector,
 {
 	struct drm_device *dev = connector->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_digital_connector_state *intel_conn_state =
+	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(state);
 
 	if (property == dev_priv->display.properties.force_audio)
-- 
2.43.0

