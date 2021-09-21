Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0A24129F1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:23:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2FD6E8C6;
	Tue, 21 Sep 2021 00:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CEE66E8C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 00:23:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="203410799"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="203410799"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="549183749"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 21 Sep 2021 03:23:10 +0300
Message-Id: <20210921002313.1132357-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/icl/tc: Remove the ICL special
 casing during TC-cold blocking
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

While a TypeC port mode is locked a DISPLAY_CORE power domain reference
is held, which implies a runtime PM ref. By removing the ICL !legacy
port special casing, a TC_COLD_OFF power domain reference will be taken
for such ports, which also translates to a runtime PM ref on that
platform. A follow-up change will stop holding the DISPLAY_CORE power
domain while the port is locked.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b2a3d297bfc19..8d799cf7ccefd 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -71,9 +71,6 @@ tc_cold_block_in_mode(struct intel_digital_port *dig_port, enum tc_port_mode mod
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (DISPLAY_VER(i915) == 11 && !dig_port->tc_legacy_port)
-		return 0;
-
 	*domain = tc_cold_get_power_domain(dig_port, mode);
 
 	return intel_display_power_get(i915, *domain);
@@ -108,9 +105,6 @@ assert_tc_cold_blocked(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	bool enabled;
 
-	if (DISPLAY_VER(i915) == 11 && !dig_port->tc_legacy_port)
-		return;
-
 	enabled = intel_display_power_is_enabled(i915,
 						 tc_cold_get_power_domain(dig_port,
 									  dig_port->tc_mode));
-- 
2.27.0

