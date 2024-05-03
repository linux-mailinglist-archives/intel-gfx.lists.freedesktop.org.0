Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD128BAC62
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1831128C5;
	Fri,  3 May 2024 12:25:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOgsEfHK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A07D1128C5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739120; x=1746275120;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F5D0ZV8+YunYQH5OEUA9rwivEbyL2cX3U51aurzz20U=;
 b=QOgsEfHKZDj9blqyZnh3FdcoWOl/0Nxouuxf8NHNVzX1KA2fiS/Y5dok
 x4tWiwDASa9F6ZjKkFNsER/8rJPzds7ThENusU1tVfrcWZYrd+OoApxAJ
 /n1iSUsJ/pXcHshlD7Qj818DUYAkMl4azEtwidm/IpsTBz5P89QsoXEVZ
 MBmGEg/atpQXmagaWxoXGk7TUGE2aPOucXhWb1WC0piv66tTAyh6IbT0Y
 Turr3WKNVhJERvhw6IiAiQMLqFgATAhDtAnygRYk+mu0tVNtK/sNt8ZIw
 RnSEAiVzu1DFYzIx4y0mxIJ0X8RNSAS4/Hfgk5tyNF17lMod7AcUadtCr Q==;
X-CSE-ConnectionGUID: 9b0rMmY2Q0mJdN5V228oJg==
X-CSE-MsgGUID: dklcA4jOQSmscCYZEEMTRg==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372749"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372749"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:20 -0700
X-CSE-ConnectionGUID: qqhWXlLpQjekf9N6RpwOmw==
X-CSE-MsgGUID: 0mN7DtzCQtW9dY7Mxc9anw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463701"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/35] drm/i915/bios: Define VBT block 4 (Mode Support List)
 contents
Date: Fri,  3 May 2024 15:24:24 +0300
Message-ID: <20240503122449.27266-11-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 4 (Mode Support List).

Slightly crazy layout with a variable length list at the start,
followed by the length of said list.

No real idea what these "Intel mode numbers" really are. What
I see in real world VBTs seems to be always the same list of
26 numbers, ranging between 0x30 and 0x84.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 7df0a6044425..c9ecf3b48999 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -571,6 +571,15 @@ struct bdb_display_toggle {
 	u16 list[];						/* ALM only */
 } __packed;
 
+/*
+ * Block 4 - Mode Support List
+ */
+
+struct bdb_mode_support_list {
+	u8 intel_mode_number[0];
+	u16 mode_list_length;
+} __packed;
+
 /*
  * Block 9 - SRD Feature Block
  */
-- 
2.43.2

