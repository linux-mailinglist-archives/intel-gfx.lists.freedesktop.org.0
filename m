Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52649613882
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 14:57:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71DB810E2B6;
	Mon, 31 Oct 2022 13:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9904B10E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 13:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667224629; x=1698760629;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oKQz/fD2ZrZhA3M7EY5l6bqsGMljBUNY/VJcFlSaHvM=;
 b=c1GVCt8ULPK2W9WQ4yFnMdaVW8To2J8DbDTwDcdqG0YBpyMMYyNgyKGI
 3nYRKQkoJscedrY4z9UBkh65gNxco3PQwqVOMv9nosrFs5aW3Hm7N0hw0
 BEA39Vo/YhQo1nRa/klIHQYoSLlCIhGbDNIwRElt8B61qsEzdD5PawrrH
 5h0jGjZbb8z8oKCGoZYYThj+HcsVkf/E1Yf2cCZwDfm3gGOTWzBRqgFhY
 O7OcGGF4DXyGnfYtg/cqaHvWGOAmwh4cZbMny8G2/O6KMPryDtCKZUV0y
 Bwx4ZixxU3y/mKCK/p0v5lP8uHrncLktwBq/lG6EcvNFFxT1Hl0PgM0Yz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="307624805"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="307624805"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 06:57:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="633532156"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="633532156"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 31 Oct 2022 06:57:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Oct 2022 15:57:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 15:56:58 +0200
Message-Id: <20221031135703.14670-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
References: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Fix cs timestamp frequency for
 ctg/elk/ilk
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

On ilk the UDW of TIMESTAMP increments every 1000 ns,
LDW is mbz. In order to represent that we'd need 52 bits,
but we only have 32 bits. Even worse most things want to
only deal with 32 bits of timestamp. So let's just set
up the timestamp frequency as if we only had the UDW.

On ctg/elk 63:20 of TIMESTAMP increments every 1/4 ns, 19:0
are mbz. To make life simpler let's ignore the LDW and set up
timestamp frequency based on the UDW only (increments every
1024 ns).

v2: Rebase

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 28 +++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 3f656d3dba9a..ebb7a5b3e87c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -107,7 +107,7 @@ static u32 gen9_read_clock_frequency(struct intel_uncore *uncore)
 	return freq;
 }
 
-static u32 gen5_read_clock_frequency(struct intel_uncore *uncore)
+static u32 gen6_read_clock_frequency(struct intel_uncore *uncore)
 {
 	/*
 	 * PRMs say:
@@ -119,6 +119,26 @@ static u32 gen5_read_clock_frequency(struct intel_uncore *uncore)
 	return 12500000;
 }
 
+static u32 gen5_read_clock_frequency(struct intel_uncore *uncore)
+{
+	/*
+	 * 63:32 increments every 1000 ns
+	 * 31:0 mbz
+	 */
+	return 1000000000 / 1000;
+}
+
+static u32 g4x_read_clock_frequency(struct intel_uncore *uncore)
+{
+	/*
+	 * 63:20 increments every 1/4 ns
+	 * 19:0 mbz
+	 *
+	 * -> 63:32 increments every 1024 ns
+	 */
+	return 1000000000 / 1024;
+}
+
 static u32 gen2_read_clock_frequency(struct intel_uncore *uncore)
 {
 	/*
@@ -137,8 +157,12 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
 		return gen11_read_clock_frequency(uncore);
 	else if (GRAPHICS_VER(uncore->i915) >= 9)
 		return gen9_read_clock_frequency(uncore);
-	else if (GRAPHICS_VER(uncore->i915) >= 5)
+	else if (GRAPHICS_VER(uncore->i915) >= 6)
+		return gen6_read_clock_frequency(uncore);
+	else if (GRAPHICS_VER(uncore->i915) == 5)
 		return gen5_read_clock_frequency(uncore);
+	else if (IS_G4X(uncore->i915))
+		return g4x_read_clock_frequency(uncore);
 	else
 		return gen2_read_clock_frequency(uncore);
 }
-- 
2.37.4

