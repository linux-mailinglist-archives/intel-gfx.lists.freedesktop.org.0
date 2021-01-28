Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2ECC307EA2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 20:24:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34AA6E9CF;
	Thu, 28 Jan 2021 19:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D266E9D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 19:24:38 +0000 (UTC)
IronPort-SDR: GuyCoxwQe9uDQ0HW1mz7NztbnTA1KUs+4/dxvm5E2nBAxEBIFjXxtFUIy7c2EnOH3QKfuBcc28
 eI1caLPEeC1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="244384034"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="244384034"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
IronPort-SDR: p7hNvpQf1CsjgVsaU+1xYKY4cZS9bMg1rASSULZ2+WVRDHT7DwzRu8tszm+gII6mqZWE3K+I8g
 i7PCdzdohH3A==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411110155"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 11:24:01 -0800
Message-Id: <20210128192413.1715802-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128192413.1715802-1-matthew.d.roper@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/18] drm/i915/display13: Only enable legacy
 gamma for now
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The multi-segment gamma used on past platforms is gone and replaced by a
logarithmic LUT.  Until logarithmic LUT is enabled, let's just turn off
uapi color management (aside from legacy gamma) since it doesn't really
make sense to expose the full degamma and CTM when we only have limited
legacy gamma support to go with them.  Note that the hardware
programming of the degamma and CTM is unchanged except that the degamma
table now has 128 entries instead of just 33.

The output CSC used implicitly for RGB->YUV conversions is also
unchanged and will continue to function as expected.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e5e10484bf8d..fb28f3b24dd8 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -945,7 +945,18 @@ static const struct intel_device_info adl_s_info = {
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),			\
 	.ddb_size = 4096,						\
 	.mbus_size = 2048,						\
-	.num_supported_dbuf_slices = 4,
+	.num_supported_dbuf_slices = 4,					\
+	/*								\
+	 * FIXME: Just enable legacy gamma (and no degamma/csc) until	\
+	 * logarithmic LUT is implemented.				\
+	 *								\
+	 * LEGACY_LUT_LENGTH = 256 entries				\
+	 *								\
+	 * Note that once logarithmic LUT is enabled and we re-enable	\
+	 * real color management, degamma_lut_size here should be set	\
+	 * to 128.							\
+	 */								\
+	.color = { .degamma_lut_size = 0, .gamma_lut_size = 256 }
 
 #undef GEN
 #undef PLATFORM
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
