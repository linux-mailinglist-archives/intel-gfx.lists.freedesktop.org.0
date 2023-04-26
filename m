Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2527D6EF8C1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028A310E8B2;
	Wed, 26 Apr 2023 16:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B534E10E8A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682527993; x=1714063993;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1LEciA3363lB2R5vhVfLK0dF+8TFqCW86pMOvyprQyc=;
 b=NNDNW58bu6mgCywbp53+PkZtcEHoHXat0XJ4F7F7FHpBUnSEmLShLORQ
 IsooudkPy0PcEJ6ujNhsXtYnr3YftZUyHRY9UZ5goYY018HklVm8ePmeN
 XBr0uBluyKgSwKSMwDA/L080TZk7IteGsL6iB2rQSFPgLy6BJpS5d8dnY
 Ezz43OR01fDXxvVTT7ndDtY5fWkz9+wHCqQ3SSpT0MgUOKgXmKgBRNMBj
 xEFcf5C19die87rV+gm/+dOpqayYAxMnKsI1b96XanymnavjyahEtwSWJ
 w79lbDrHUGYqPCSAJTyuNX5mq4/Tt0049pQhWneT7fCB+D5itBZ7NU5o3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493475"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493475"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402738"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402738"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:12 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:52:57 +0300
Message-Id: <20230426165305.2049341-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915: Update connector atomic state
 before crtc sanitize-disabling
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

During HW state readout/sanitization an up-to-date connector atomic
state will be required by a follow-up patch, which can disable CRTCs
with an encoder (and calling the correct encoder hooks happens via the
connector atomic state encoder pointer). So update the connector state
already before the CRTC sanitize/disable step. For now this doesn't make
a difference, since intel_modeset_update_connector_atomic_state() will
update/enable the atomic state only for connectors that have an enabled
encoder/CRTC. Such CRTCs/encoders will not be affected by
intel_sanitize_crtc().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 57d087de654f8..fe83579529b3a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -706,6 +706,8 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 	for_each_intel_encoder(&i915->drm, encoder)
 		intel_sanitize_encoder(encoder);
 
+	intel_modeset_update_connector_atomic_state(i915);
+
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
@@ -714,8 +716,6 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 		intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
 	}
 
-	intel_modeset_update_connector_atomic_state(i915);
-
 	intel_dpll_sanitize_state(i915);
 
 	intel_wm_get_hw_state(i915);
-- 
2.37.2

