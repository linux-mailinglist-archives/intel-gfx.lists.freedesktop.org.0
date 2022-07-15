Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABF7576F2E
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B026E1120C0;
	Sat, 16 Jul 2022 14:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB84F10E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916467; x=1689452467;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5pc+TiUxY7OghXokOzP+NiMI15i0AeGNMYYarm3GgoM=;
 b=Nu6U4OpCfXP3fSfAgHcQb84dI+5e3ryITsD51JFlJSCi28JOsydx8lMj
 caqnexDrjSwmQNav33NIY992FxWxvqOGjKAiM6l1/l2RpvKeyemNDFSC5
 /k5BQ0B2l3xBExpexVDdWoh5IN13Z5ks5I5e6bfZfrjmegwroUDjpFESi
 cPWirGqFQ7hwahBYp980sKfklz6eUqjqrnBRKy1VpkmKN3WrFf7xF1EMv
 /ICRvIqrVCz4BYARsBuQtyxiKTzI1WsPiDuMkukgzWAEZJpiJK3z/CBMg
 bqkoSeurkOpNX33ZeUU1kfYFq3ZXHshk9UKDd4PSNDfHIqAQmcSpySOze w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="268914160"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="268914160"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:21:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="571661182"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga006.jf.intel.com with SMTP; 15 Jul 2022 13:21:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:21:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:39 +0300
Message-Id: <20220715202044.11153-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/12] drm/i915: Document the sets of bits in
 the driver features block
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

Add a few comment documenting the sets of bits in the driver
features block. Might make it a bit easier to check against
the spec.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 8bdb533b5304..c04937aa75b2 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -542,6 +542,7 @@ struct bdb_psr {
 #define BDB_DRIVER_FEATURE_INT_SDVO_LVDS	3
 
 struct bdb_driver_features {
+	/* Driver bits */
 	u8 boot_dev_algorithm:1;
 	u8 block_display_switch:1;
 	u8 allow_display_switch:1;
@@ -556,6 +557,7 @@ struct bdb_driver_features {
 	u8 boot_mode_bpp;
 	u8 boot_mode_refresh;
 
+	/* Extended Driver Bits 1 */
 	u16 enable_lfp_primary:1;
 	u16 selective_mode_pruning:1;
 	u16 dual_frequency:1;
@@ -571,6 +573,7 @@ struct bdb_driver_features {
 	u16 tv_hotplug:1;
 	u16 hdmi_config:2;
 
+	/* Driver Flags 1 */
 	u8 static_display:1;					/* 163+ */
 	u8 reserved2:7;
 
@@ -578,8 +581,12 @@ struct bdb_driver_features {
 	u16 legacy_crt_max_y;
 	u8 legacy_crt_max_refresh;
 
+	/* Extended Driver Bits 2 */
 	u8 hdmi_termination;
+
 	u8 custom_vbt_version;					/* 165+ */
+
+	/* Driver Feature Flags */
 	u16 rmpm_enabled:1;					/* 165+ */
 	u16 s2ddt_enabled:1;					/* 165+ */
 	u16 dpst_enabled:1;					/* 165-227 */
-- 
2.35.1

