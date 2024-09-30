Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 510E498A9D9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD3A10E55E;
	Mon, 30 Sep 2024 16:34:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UJpeplpn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D795A10E557;
 Mon, 30 Sep 2024 16:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714049; x=1759250049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AZpHndGzg32BuKtyBNPNW2BzAqGFg79BL4oiKMoVenM=;
 b=UJpeplpnyqUilELlCuOHCmWWgvZNdyUkXBHDAkKBz9YJGGKcXI+wvYEf
 EFzEZrmiZ9+ybyJosyuW5SgiXIig9r0utlsE1iJXcBNBA7iNcA+nzBQw4
 VhVn7E91VU3pEPJBxZmn/I7PHMxCVPBxz0p7b9obG0iriS8tJ/MXcxH/e
 nfP2LjYaImluLhGexpJuC4UNVA6x0/UQ0Vw1wJDdko8wmdQ+s9cQIk7l1
 Ry/N9GPT8DRJjmLMSh274B1FJvWlqkFBqJeXIMrNsCES8StLfY8wvqBjk
 ipuRTbXXuDGXWMdus2h5il0lmfcwCHxzwldqy5rT4KOwjWNi6rZnf2g1w Q==;
X-CSE-ConnectionGUID: e7mAW+OGRX61Hi3eCx5Jaw==
X-CSE-MsgGUID: aWiggqzOSJaI6TkIMZPD8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700542"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700542"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:08 -0700
X-CSE-ConnectionGUID: k0Xql/jIQBmBTPAYuvtMGQ==
X-CSE-MsgGUID: u4fVLZ8iSKy9fAGWQ3iY8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839234"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 09/13] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
Date: Mon, 30 Sep 2024 22:05:45 +0530
Message-ID: <20240930163549.416410-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
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

Add compressed bpp limitations for ultrajoiner.

v2: Fix the case for 1 pipe. (Ankit)
v3: Refactor existing helper separately and add only ultrajoiner
limitation. (Ville)
v4: Separate out function for ultrajoiner_ram_bits.
v5: Make the helper function more concise. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a85527a55dc0..d8a4a6fa1514 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -896,25 +896,31 @@ static u32 small_joiner_ram_max_bpp(struct intel_display *display,
 	return max_bpp;
 }
 
+static int ultrajoiner_ram_bits(void)
+{
+	return 4 * 72 * 512;
+}
+
+static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
+{
+	return ultrajoiner_ram_bits() / mode_hdisplay;
+}
+
 static
 u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       u32 mode_clock, u32 mode_hdisplay,
 				       int num_joined_pipes)
 {
 	struct intel_display *display = to_intel_display(&i915->drm);
-	u32 max_bpp_small_joiner_ram;
+	u32 max_bpp = small_joiner_ram_max_bpp(display, mode_hdisplay, num_joined_pipes);
 
-	max_bpp_small_joiner_ram = small_joiner_ram_max_bpp(display, mode_hdisplay,
-							    num_joined_pipes);
-
-	if (num_joined_pipes == 2) {
-		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock,
-							     num_joined_pipes);
-
-		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
-	}
+	if (num_joined_pipes > 1)
+		max_bpp = min(max_bpp, bigjoiner_bw_max_bpp(display, mode_clock,
+							    num_joined_pipes));
+	if (num_joined_pipes == 4)
+		max_bpp = min(max_bpp, ultrajoiner_ram_max_bpp(mode_hdisplay));
 
-	return max_bpp_small_joiner_ram;
+	return max_bpp;
 }
 
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
-- 
2.45.2

