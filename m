Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 718F86C6AAC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E048810EAAE;
	Thu, 23 Mar 2023 14:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC4110EAAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581242; x=1711117242;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PPsfBuRKLooOADKCjWyjar8lEoyCRY5u8dC3xfV+5cg=;
 b=OQt5gdY/gJd0TLBecq+35tEbHBL/R7kq1ulFgL2dRDc93ZX0y0Udq30a
 Fv99Hgmiq2po6VJ00Qny3JF2sbdf1pYkqiFB4ew0oo4p7UrC1yZ3borm/
 zFMHQtk/EOzzimp4/DEDJu8djiekyGVxvLoR1lw4Crl0LnF0yaBRCUgBC
 yKRoMUl1RZ7N3ZyWzymzn8mgoI7P4XWJ4L1/MXQXqS+0ykelJZlTVGUEm
 /+I4dZS0eCqOWJ7Hz4lQ8L2jIn22IyQzTNrnXUzzYv5Y0uyBJJyuxWMfD
 4GkxPJfFOBJxVjMFLrCICLj2UUBERf5JF3O7AA3MknWjUgMl2an/C/E2F w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892251"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892251"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722619"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722619"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:08 +0200
Message-Id: <20230323142035.1432621-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/29] drm/i915/tc: Use the adlp prefix for ADLP
 TC PHY functions
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

Use the usual adlp prefix for all ADLP specific TC PHY functions. Other
ADL platforms don't support TC.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b6e425c44fcb9..099b1ec842ba2 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -457,7 +457,7 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
  * ADLP TC PHY handlers
  * --------------------
  */
-static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
+static u32 adlp_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
@@ -492,7 +492,7 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
  * DP-alt, legacy or nothing). For TBT-alt sinks the PHY is owned by the TBT
  * subsystem and so switching the ownership to display is not required.
  */
-static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
+static bool adlp_tc_phy_status_complete(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
@@ -509,8 +509,8 @@ static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 	return val & TCSS_DDI_STATUS_READY;
 }
 
-static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
-				      bool take)
+static bool adlp_tc_phy_take_ownership(struct intel_digital_port *dig_port,
+				       bool take)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum port port = dig_port->base.port;
@@ -521,7 +521,7 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	return true;
 }
 
-static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
+static bool adlp_tc_phy_is_owned(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum port port = dig_port->base.port;
@@ -540,7 +540,7 @@ static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adl_tc_port_live_status_mask(dig_port);
+		return adlp_tc_port_live_status_mask(dig_port);
 
 	return icl_tc_port_live_status_mask(dig_port);
 }
@@ -550,7 +550,7 @@ static bool tc_phy_status_complete(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adl_tc_phy_status_complete(dig_port);
+		return adlp_tc_phy_status_complete(dig_port);
 
 	return icl_tc_phy_status_complete(dig_port);
 }
@@ -560,7 +560,7 @@ static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adl_tc_phy_is_owned(dig_port);
+		return adlp_tc_phy_is_owned(dig_port);
 
 	return icl_tc_phy_is_owned(dig_port);
 }
@@ -570,7 +570,7 @@ static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adl_tc_phy_take_ownership(dig_port, take);
+		return adlp_tc_phy_take_ownership(dig_port, take);
 
 	return icl_tc_phy_take_ownership(dig_port, take);
 }
-- 
2.37.1

