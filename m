Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 704918BAC64
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39E31128CC;
	Fri,  3 May 2024 12:25:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BF3UrdE8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A6C1128CC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739126; x=1746275126;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0w701zoOKJ7pI2EQXPcgRKh8ylpeIgyOviPJDBb/+tg=;
 b=BF3UrdE8kyhbaf7BRv+H90L7ZMNAYbWVjvpIQkyxBd7Mj8PaeTPMpMVc
 Iwju5sgY5a+MZjaCZkk5aRQVjWgmqJ42Qt0bQntskcNAP8rb0vHTeDOBO
 p5wUiFasW29cRyIzzQ2tQ2570EsrKdhzwKsQMbnbMLGBIHdjHuex0g3GQ
 ogplKrvgxw8SoYDYDUkjkcqybPP8RGGxacasOWmsDXpWqPyt7Ug+Tt7N9
 +4JwXOkjViQSxLcAYx02V3KM5QxWdJQAToKrL/LgiW9lczQgYL+uX98wy
 v0NYtMW1b27NprXifsN3mtzmGMUV3+k/X/Zl7dt6Qm4FUCBtqbeVIuy5Y g==;
X-CSE-ConnectionGUID: GPZ8d6/GSzqbomaDk6K5nA==
X-CSE-MsgGUID: lgF7KYVVSqaucBGER4o66Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372752"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372752"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:26 -0700
X-CSE-ConnectionGUID: L1ocinzyR/2QxEJcKsiBkg==
X-CSE-MsgGUID: wtJThWavT7u0BTXZQCKkvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463722"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/35] drm/i915/bios: Define VBT blocks 6, 7,
 8 (register tables) contents
Date: Fri,  3 May 2024 15:24:26 +0300
Message-ID: <20240503122449.27266-13-ville.syrjala@linux.intel.com>
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

Define the contents for VBT blocks:
- Block 6 (Extended MMIO Register Table)
- Block 7 (IO Software Flag Table)
- Block 8 (MMIO SWF Register Table)

All of these use the same basic layout, with two known variants:
- data_access_size==0xce -> offset,value tuples are u8,u8
- data_access_size==0x02 -> offset,value tuples are u32,u32

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index f3478a20ff16..4f0b8be3034c 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -634,6 +634,22 @@ struct bdb_generic_mode_table_mgm {
 	struct generic_mode_timings timings[3];
 } __packed;
 
+/*
+ * Block 6 - Extended MMIO Register Table, VBIOS only
+ * Block 7 - IO Software Flag Table, VBIOS only
+ * Block 8 - MMIO SWF Register Table, VBIOS only
+ */
+struct bdb_reg_table {
+	u16 table_id;
+	u8 data_access_size;
+	/*
+	 * offset,value tuples:
+	 * data_access_size==0xce -> u8,u8
+	 * data_access_size==0x02 -> u32,u32
+	 */
+	/* u16 table_end_marker; */
+} __packed;
+
 /*
  * Block 9 - SRD Feature Block
  */
-- 
2.43.2

