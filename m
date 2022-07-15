Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D18576F1C
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F58D10FCE7;
	Sat, 16 Jul 2022 14:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB13896EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916456; x=1689452456;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UHLq7B9Cbpb+PNWubhLyXTpjSC2Tt0S7IzoBGKIcQ0w=;
 b=ihI+TcwijmqHXry5jud1UPHeb+qelKQjkUlf1Fd8r2vZ/ZwwEmkianNV
 biHURf4JZE+lgw/g8XYWg4RwYvWDTaOjifD7M4EbodA7/NV3foO7eKlbh
 GJgPjIjBm181kFeVXHEcfpgAVBvMB9l63PsJqf8SenG7WSTHhQhCrhi5H
 /NwE7xmuwUBO0T+I/QGKe3/3kiJt55W4W261YZQvM/XeL056dVgUW6UVG
 CfjtL2ZHKXXYnEYXh89LrhydPTLYDGt+kEDEGlpvKao2Q+KVMvcdo0JKF
 pqhsYTqXfhzzDRxDxulPAKFYHBoqvv7EoI4VGK4Ce64opXiG8ya3yIvHT Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="349855541"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="349855541"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:20:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="600620147"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga007.fm.intel.com with SMTP; 15 Jul 2022 13:20:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:20:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:35 +0300
Message-Id: <20220715202044.11153-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Properly define the DP redriver
 VBT bits
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

Split the DP redriver bytes into bitfields.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index e997b8bcc6b8..a88c5ef51cd8 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -393,8 +393,14 @@ struct child_device_config {
 		u8  device_id[10]; /* ascii string */
 		struct {
 			u8 i2c_speed;
-			u8 dp_onboard_redriver;			/* 158+ */
-			u8 dp_ondock_redriver;			/* 158+ */
+			u8 dp_onboard_redriver_preemph:3;	/* 158+ */
+			u8 dp_onboard_redriver_vswing:3;	/* 158+ */
+			u8 dp_onboard_redriver_present:1;	/* 158+ */
+			u8 reserved0:1;
+			u8 dp_ondock_redriver_preemph:3;	/* 158+ */
+			u8 dp_ondock_redriver_vswing:3;		/* 158+ */
+			u8 dp_ondock_redriver_present:1;	/* 158+ */
+			u8 reserved1:1;
 			u8 hdmi_level_shifter_value:5;		/* 158+ */
 			u8 hdmi_max_data_rate:3;		/* 204+ */
 			u16 dtd_buf_ptr;			/* 161+ */
@@ -402,11 +408,11 @@ struct child_device_config {
 			u8 compression_enable:1;		/* 198+ */
 			u8 compression_method_cps:1;		/* 198+ */
 			u8 ganged_edp:1;			/* 202+ */
-			u8 reserved0:4;
+			u8 reserved2:4;
 			u8 compression_structure_index:4;	/* 198+ */
-			u8 reserved1:4;
+			u8 reserved3:4;
 			u8 slave_port;				/* 202+ */
-			u8 reserved2;
+			u8 reserved4;
 		} __packed;
 	} __packed;
 
-- 
2.35.1

