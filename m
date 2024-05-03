Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A878BAC6C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55AD71128D2;
	Fri,  3 May 2024 12:25:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUzmo9nf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57BDB1128D2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739143; x=1746275143;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yYfP+pCXtuQ3mys0cbETYLh+U/ETxTAn3jWEqKynwIk=;
 b=UUzmo9nfEobAM2RfPGE+zTkGhuH/FRPqRr1Tic32p4oeZPMsLVvFGoOL
 SOCfL4qPyo8nakmbaYTfQJh6aT9AfbyDr47ctorSgIjmNoXSFi4p8Zawg
 KaRT4naU+6sqMlQNFC9p+Sz0TGbb/2EkmL0UDC/dFSfj4RIV0YVOnrj8U
 tfXKGjrJ0Snn/duKtnz1ZzH20qPztqVbvK8whn/dUEdGBSZAV9kik+KIn
 2dEHchM7grWlrGXwBmufkkmIJUD2E55g/kGfwrZI38CGQrGpGIPO4pXXY
 884AGmL6p2vtQfqom+nQiVcWZg8Q1y0DLyqQL+b0QTwlzJUjuYlnS2Oc3 Q==;
X-CSE-ConnectionGUID: p2/gvCddR3CMTs+B6zgC9Q==
X-CSE-MsgGUID: upLXhjO7TSCrsV0iIh8bzg==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372769"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372769"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:43 -0700
X-CSE-ConnectionGUID: Pujh1/MBSvma2ejPsc61oA==
X-CSE-MsgGUID: nSan1J6qTNWuRTZmODMBIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463755"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 18/35] drm/i915/bios: Define VBT block 18 (Driver Rotation)
 contents
Date: Fri,  3 May 2024 15:24:32 +0300
Message-ID: <20240503122449.27266-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
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

Define the contents of block 18 (Driver Rotation).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index c97bca5d12d1..2792da3c916e 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -845,6 +845,18 @@ struct bdb_sv_test_functions {
 	u8 sv_bits[8];
 } __packed;
 
+/*
+ * Block 18 - Driver Rotation
+ */
+
+struct bdb_driver_rotation {
+	u8 rotation_enable;
+	u8 rotation_flags_1;
+	u16 rotation_flags_2;
+	u32 rotation_flags_3;
+	u32 rotation_flags_4;
+} __packed;
+
 /*
  * Block 22 - SDVO LVDS General Options
  */
-- 
2.43.2

