Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D65C8BAC70
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAA311128C7;
	Fri,  3 May 2024 12:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hw+b1g+c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C3B1128D8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739154; x=1746275154;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qP61Siw0yTe+w2z7NP6tQBiaZXrAvS/Xpc9/7dIn5Zw=;
 b=hw+b1g+cdJ7GOLnX+5zU+1NrAWLxEa6fhzIfLCuiAajAlD4q4fwcArNS
 ynNUwYM4KPXsrwgH4Vn+vBcZ8/n29BDEvT2I8u4E4i0uZc08HgBTPi7oi
 lA3J/vGg6uyjQ00gbwIAz8UzIGk7s3nNqMhmYeSrzKpSRK+VxO+3QFY4k
 T8F05z5fck/iIcxSVIGQmuX6DqVejgj6rLYn/iVpBHwh7vBUlBwQXD4jG
 QmUQWUcd/wf9QzKL+kux4bvwY38IUgPHvpld0pthi3BCpBatncLPXk2mQ
 HdXdgc08TtGGSylA6sGH4M7mB68L3XohFBjYP6YZb08Nfy1GdOFlzqnj0 g==;
X-CSE-ConnectionGUID: Sp5DS+KLSGCk2hXf8nWOQA==
X-CSE-MsgGUID: 4GpDQucoTWqbSaM/Lu6NpQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372778"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372778"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:54 -0700
X-CSE-ConnectionGUID: iQXGiwhUTuqoafbwmqF91g==
X-CSE-MsgGUID: bzOahYNoRMWl09VqIC/kZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463801"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 22/35] drm/i915/bios: Define VBT block 21 (EFP List) contents
Date: Fri,  3 May 2024 15:24:36 +0300
Message-ID: <20240503122449.27266-23-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 21 (EFP List). Specs are nowhere
to be found, but real world data suggests that each entry is just
the first four bytes of the EDID PnP ID structure.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index a61ae39196b1..6216c1689901 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -921,6 +921,21 @@ struct bdb_oem_custom {
 	struct oem_mode modes[];
 } __packed;
 
+/*
+ * Block 21 - EFP List
+ */
+
+struct efp_entry {
+	u16 mfg_name;
+	u16 product_code;
+} __packed;
+
+struct bdb_efp_list {
+	u8 num_entries;
+	u8 entry_size;
+	struct efp_entry efp[];
+} __packed;
+
 /*
  * Block 22 - SDVO LVDS General Options
  */
-- 
2.43.2

