Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A83898806E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B977510EC5A;
	Fri, 27 Sep 2024 08:36:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bIl+hBT8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8160610EC5A;
 Fri, 27 Sep 2024 08:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426207; x=1758962207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lD94vFBucNAxOcuJZewAgTrUmmWq8a+wh1ap/h6dQnI=;
 b=bIl+hBT8TLUL6iuqTVeYIRn7tp3R0MXtgSJeVtDqNkjgCSlqWPYmO0bA
 A6Q6KoFzBQwFwmrwUp6s2Nws/3a/1l5TKmOeC48wgf0IZg6XrFM5oLahH
 s+zj/2vKErAYw55D53vIJ/tdHerT7/9gwt+gVmHTCWgtYM9NkKtdpCeM3
 Std27xfmXrfu4rgzYpPIP/ne5V5HjDcLdGK1D9WDGDMX/W1r48Ca7gOSF
 zK73iUelUBDY+lHzHZd3Q/r0oeWnjrQQQW6dstVhEN5pTub2wS5GGA9Q1
 87iyqwMvwQw/GDOTpG4F/iMNJKBq/eBWm6tg1tthGCAlOvKm5YPGDBrqT Q==;
X-CSE-ConnectionGUID: bdsdSKFvR0K8KpOfkMhJNQ==
X-CSE-MsgGUID: 77BNx6yWSDyswRRGJGvnaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51977621"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51977621"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:47 -0700
X-CSE-ConnectionGUID: mR4RrXtKSAC0bWJohDnK7g==
X-CSE-MsgGUID: RwsGjzh3QTuD6vzoU8r/ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77409386"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 06/17] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Date: Fri, 27 Sep 2024 14:08:20 +0530
Message-ID: <20240927083831.3913645-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Add sanity checks for primary and secondary bigjoiner/uncompressed
bitmasks, should make it easier to spot possible issues.

v2:
-Streamline the expected masks and add few more drm_WARNs. (Ville)
-Use %#x format specifier for printing joiner masks. (Ville)
-Use struct intel_display instead of struct drm_i915_private. (Ankit)

v3:
-Rename helper to get expected uncompressed joiner pipes. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 51 +++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8d37973864ee..2d6260c3bca5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3643,26 +3643,73 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
 	}
 }
 
+static u8 expected_secondary_pipes(u8 primary_pipes, int num_pipes)
+{
+	u8 secondary_pipes = 0;
+
+	for (int i = 1; i < num_pipes; i++)
+		secondary_pipes |= primary_pipes << i;
+
+	return secondary_pipes;
+}
+
+static u8 expected_uncompressed_joiner_secondary_pipes(u8 uncompjoiner_primary_pipes)
+{
+	return expected_secondary_pipes(uncompjoiner_primary_pipes, 2);
+}
+
+static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
+{
+	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
 
 	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
 
+	drm_WARN_ON(display->drm,
+		    (primary_uncompressed_joiner_pipes & secondary_uncompressed_joiner_pipes) != 0);
+
 	enabled_bigjoiner_pipes(display, &primary_bigjoiner_pipes,
 				&secondary_bigjoiner_pipes);
 
+	drm_WARN_ON(display->drm,
+		    (primary_bigjoiner_pipes & secondary_bigjoiner_pipes) != 0);
+
+	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
+				    secondary_uncompressed_joiner_pipes;
+	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+
+	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
+		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
+		 uncompressed_joiner_pipes, bigjoiner_pipes);
+
+	drm_WARN(display->drm, secondary_bigjoiner_pipes !=
+		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
+		 "Wrong secondary bigjoiner pipes(expected %#x, current %#x)\n",
+		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
+		 secondary_bigjoiner_pipes);
+
+	drm_WARN(display->drm, secondary_uncompressed_joiner_pipes !=
+		 expected_uncompressed_joiner_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 "Wrong secondary uncompressed joiner pipes(expected %#x, current %#x)\n",
+		 expected_uncompressed_joiner_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 secondary_uncompressed_joiner_pipes);
+
 	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
 
 	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
 
 	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
-		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
+	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
+		 "Joiner misconfigured (primary pipes %#x, secondary pipes %#x)\n",
 		 *primary_pipes, *secondary_pipes);
 }
 
-- 
2.45.2

