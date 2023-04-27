Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB906F064B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 15:03:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF3E10EB69;
	Thu, 27 Apr 2023 13:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7458110EB63
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 13:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682600578; x=1714136578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=op2RZgwUfUSBtZ/30CthICdDZ+qEGJM9AgNcrersAD4=;
 b=ixruGCxkWXLkp3w9K6CFb7pon724LGhAgbZI3/zUc/oL5ZpWb4Y1m0zG
 coYc50XRKtvS/SdVCu1PnEgBwea7HeEUp9Xr/BmDgsRKTLT9LWyr9YwZZ
 SJ+lnNOfYaGA7ysAERXOu8JGDJSNgUl1+ZVro+Q8l9DDNdX+Q30PXtSB6
 abHr5CkmJ3HB60EXo8mtzhty4ZrIQNxVh6FxyfQ0/0n99Q6yqDz7t+vBu
 uvOZXBG7Lqzxnb3+DwaYSaQDwBNB9Tapdw/mxaWLkKr7jS8cEdi8PNZ2s
 jQakRpwtEKqyUpLfwsZ2Z3aZNFQxvYoRNc+OjbrB1Mnx3FIr7f8xoX4uV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="412762065"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="412762065"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:01:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="805950122"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="805950122"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:00:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 18:26:02 +0530
Message-Id: <20230427125605.487769-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
References: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/dp: Configure PCON for conversion
 of output_format to YCbCr444
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

Handle the case with DP to HDMI PCON, where sink_format is set to YCbCr444.
In that case PCON is required to be configured to convert from given
output_format to YCbCR444.

v2: Drop drm_WARN for invalid case, let MISSING_CASE catch it. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c3dd165c7a44..5468a362ef9f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2910,6 +2910,17 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			MISSING_CASE(crtc_state->output_format);
 			break;
 		}
+	} else if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
+		switch (crtc_state->output_format) {
+		case INTEL_OUTPUT_FORMAT_YCBCR444:
+			break;
+		case INTEL_OUTPUT_FORMAT_RGB:
+			rgb_to_ycbcr = true;
+			break;
+		default:
+			MISSING_CASE(crtc_state->output_format);
+			break;
+		}
 	}
 
 	tmp = ycbcr444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
-- 
2.25.1

