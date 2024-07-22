Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37F4938B38
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8075710E413;
	Mon, 22 Jul 2024 08:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EE00nqtx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A027410E40A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 08:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721636776; x=1753172776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BIqnBqC6sW295DggbwjkX9RUJKx0A6yFAo/utKx2Vws=;
 b=EE00nqtxu5vERuo0Vha4e10wyN5UZsBYZJeDvzwDCb4gk69nyfdNFghb
 Qa4ogs/hIuL7lG4D0bIpF40nmNrXZFMzUUrFi7gxv+iJZ0oYW9iIhDDe+
 eSKhOmxClM7VelE00PAm0hg6/uJkPh5SIWE8eOxAXM7hAFYf9ndRLuspd
 1EtrDtzKjdyl/JSfsOcgcFax7j0O7s0tbmwoLWXyfspFL1JvWpThmyalG
 6eaYzbHqcUE0WpgnTVI5VTISOLuDG1RMtdC2OMaxMGMjjF925YJDzJ88H
 8gA9tCXh8tJWpzchbOLfmc0N1WnJSdVTUbwwfy0obnQcvRhsMy0QlNWUi w==;
X-CSE-ConnectionGUID: m7MO+lPeRoacbYE5kKxTzA==
X-CSE-MsgGUID: oX2Q7dCPSxWzA4CKPy4NIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29806950"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="29806950"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:15 -0700
X-CSE-ConnectionGUID: uhUOCiliTuqtQa7XanUBaA==
X-CSE-MsgGUID: MmzN3NIFQhCFlD8P8+BPgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51752924"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 07/10] drm/i915/psr: Allow PSR for fixed refrsh rate with VRR
 TG
Date: Mon, 22 Jul 2024 13:57:02 +0530
Message-ID: <20240722082705.3635041-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
References: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
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

At the moment PSR/PSR2 are not supported with variable refresh rate.
However it can be supported with fixed refresh rate while running with
VRR timing generator.
Enable PSR for fixed refresh rate when using the VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9cb1cdaaeefa..5a228d8e93b5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1523,7 +1523,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	 * Current PSR panels don't work reliably with VRR enabled
 	 * So if VRR is enabled, do not enable PSR.
 	 */
-	if (crtc_state->vrr.enable)
+	if (crtc_state->vrr.enable && !crtc_state->vrr.fixed_rr)
 		return false;
 
 	if (!CAN_PSR(intel_dp))
-- 
2.45.2

