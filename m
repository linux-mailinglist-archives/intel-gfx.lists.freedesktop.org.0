Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2226895AD54
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 08:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B270710E72F;
	Thu, 22 Aug 2024 06:19:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PZXJtcDE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0176A10E72F;
 Thu, 22 Aug 2024 06:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724307583; x=1755843583;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rYrzrc60ImHJhcZlCgQIVRmTeObP1D8MTTzIf7j0FZU=;
 b=PZXJtcDEljowY10JMjlg3QdnpOzMvSZxWiTq0YyKHgN9Y6s4yGEVnbjl
 JqsUY2XkN++hxBRdbp0N81W3qUz14ovoLCm4kpEVGIffr57vyrOMFk5u2
 ICewUn06ovAEPY5szaGuAxZPrvuOTkGMQoBUvq+qk8WTymC7rVnT2e9zb
 5ekO+OG3tLgjHSVEa6qr5oMpPhgxyXJh7cDEPA0vwNYnPDUsLkoN7Ym8j
 vsoArVudMaiF14OMhc5qnX9RYcHf8oKRl3vA/N7sObv8mk+6Og8FChY9l
 tW8KG63Qxzf/XDPjGZnkiQNVi2eo+1DA094Vnu4ZYO2+gocrpEknxx16V A==;
X-CSE-ConnectionGUID: V790oDPcTMGvId6LrG2pjw==
X-CSE-MsgGUID: 0Waf9QGkQHyRDgsZ99Zi7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22871433"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="22871433"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 23:19:42 -0700
X-CSE-ConnectionGUID: LUdOA60AQT6ZrLVZmsVDxg==
X-CSE-MsgGUID: rAukABtKSuSmSrThtjL0fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="61192693"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa010.jf.intel.com with ESMTP; 21 Aug 2024 23:19:40 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, chaitanya.kumar.borah@intel.com, jani.nikula@intel.com
Subject: [PATCH] drm/i915: Do not explicilty enable FEC in DP_TP_CTL for UHBR
 rates
Date: Thu, 22 Aug 2024 11:44:48 +0530
Message-Id: <20240822061448.4085693-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

In case of UHBR rates, we do not need to explicitly enable FEC by writing
to DP_TP_CTL register.
For MST use-cases, intel_dp_mst_find_vcpi_slots_for_bpp() takes care of
setting fec_enable to false. However, it gets overwritten in
intel_dp_dsc_compute_config(). This change keeps fec_enable false across
MST and SST use-cases for UHBR rates.

While at it, add a comment explaining why we don't enable FEC in eDP v1.5.

v2: Correct logic to cater to SST use-cases (Jani)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 49a37b996530..de30eaacd9b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2298,9 +2298,15 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		&pipe_config->hw.adjusted_mode;
 	int ret;
 
+	/*
+	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
+	 * Since, FEC is a bandwidth overhead, continue to not enable it for
+	 * eDP. Until, there is a good reason to do so.
+	 */
 	pipe_config->fec_enable = pipe_config->fec_enable ||
 		(!intel_dp_is_edp(intel_dp) &&
-		 intel_dp_supports_fec(intel_dp, connector, pipe_config));
+		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
+		 !intel_dp_is_uhbr(pipe_config));
 
 	if (!intel_dp_supports_dsc(connector, pipe_config))
 		return -EINVAL;
-- 
2.25.1

