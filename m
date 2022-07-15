Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA15576F11
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8650810FD27;
	Sat, 16 Jul 2022 14:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC71010E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916470; x=1689452470;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DVI1cyqqvLN01cDQ3aRAsTPZ19R3my/Ti4+Hg/cRbMw=;
 b=QhXcYB0jbUEZUVCcSBfG788kfH/6C5jF3DLU5FMz+G+Qx7xFLEPbw0GD
 Z2sNe6XubX2CkBGPnSbTcDYNGWihyvJOttSegY50NCbDASIW8m3yXdLax
 lnuCePU4IyB9PtKFyyVuWWO1sjvX2YjxnsZNfj8znQNxkuk0RvPhsSzxl
 hwG3C7rPo8xcxipQtWI9ogwkFAmCsSC+yPzyiyPeLR7WEGF32tOjUSG9u
 BnZe6mQuF53UKs7dAgn4I+CyCDwrmmAgVDajsgbTxuOIB6xrhgtF0B2iv
 w7MedicsV2GrboIXoI9ExGPIHJzpnohvCMEyCnV/NhovN/cth+vx9Wd+x Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="311560792"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="311560792"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:21:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="629234125"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga001.jf.intel.com with SMTP; 15 Jul 2022 13:21:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:21:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:40 +0300
Message-Id: <20220715202044.11153-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/12] drm/i915: Define more VBT driver features
 block bits
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

Define some additoonal bits in the driver features VBT block.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index c04937aa75b2..2feba1e69a6d 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -575,14 +575,19 @@ struct bdb_driver_features {
 
 	/* Driver Flags 1 */
 	u8 static_display:1;					/* 163+ */
-	u8 reserved2:7;
+	u8 embedded_platform:1;					/* 163+ */
+	u8 display_subsystem_enable:1;				/* 163+ */
+	u8 reserved0:5;
 
 	u16 legacy_crt_max_x;
 	u16 legacy_crt_max_y;
 	u8 legacy_crt_max_refresh;
 
 	/* Extended Driver Bits 2 */
-	u8 hdmi_termination;
+	u8 hdmi_termination:1;
+	u8 cea861d_hdmi_support:1;
+	u8 self_refresh_enable:1;
+	u8 reserved1:5;
 
 	u8 custom_vbt_version;					/* 165+ */
 
@@ -598,9 +603,10 @@ struct bdb_driver_features {
 	u16 tbt_enabled:1;					/* 165+ */
 	u16 psr_enabled:1;					/* 165-227 */
 	u16 ips_enabled:1;					/* 165+ */
-	u16 reserved3:1;
+	u16 dpfs_enabled:1;					/* 165+ */
 	u16 dmrrs_enabled:1;					/* 174-227 */
-	u16 reserved4:2;
+	u16 adt_enabled:1;					/* ???-228 */
+	u16 hpd_wake:1;						/* 201-240 */
 	u16 pc_feature_valid:1;
 } __packed;
 
-- 
2.35.1

