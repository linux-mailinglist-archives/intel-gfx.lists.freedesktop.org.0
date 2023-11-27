Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7837FA374
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 15:50:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AAC310E08E;
	Mon, 27 Nov 2023 14:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE9A10E08E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 14:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701096645; x=1732632645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+6KU29ao9d8sPS5m6W+zr121DfCgP1e97+RUQGoy4DQ=;
 b=kcfvFCE/M3GPzWAVAQ0GIUp7GoRa4BXstIUr/YMF6SMimRy92xFI19Nj
 NpZ2TxScWaQU9XdlAYtG5pCCNrzjWgeQIndLJsBQsPW5+3cx4HA28FwpW
 4a2ifu3kE3D+4itKKsk+c1Q0jP2eFvxossrmG21HRE2Z2esNt0Vz6xBAp
 Na6LcLmfDtTWRXf03MaeM0N7jT2rdZbKU23aFIEtPfS1D+P3RJiIMyaN9
 x1+JGWIevd0cWPSI6S5pjf4iHdfWCQDK38F4+hI+6qxzZUcg8DoKm58fO
 WsnqoWK6o3vdh5gs9DZPaG625sSesQPz/6H2jJRfm9wF7gu7kHcioortN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="5968533"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; 
   d="scan'208";a="5968533"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 06:50:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761614819"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="761614819"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 27 Nov 2023 06:50:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Nov 2023 16:50:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Nov 2023 16:50:27 +0200
Message-ID: <20231127145028.4899-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
References: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/mst: Reject modes that require the
 bigjoiner
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

We have no bigjoiner support in the MST code, so .mode_valid()
pretending otherwise is just going to result black screens for
users. Reject any mode that needs the joiner.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: d51f25eb479a ("drm/i915: Add DSC support to MST path")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0680a42f7d2a..b665fe6ef871 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1332,6 +1332,10 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
+
+		/* TODO: add support for bigjoiner */
+		*status = MODE_CLOCK_HIGH;
+		return 0;
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 10 &&
-- 
2.41.0

