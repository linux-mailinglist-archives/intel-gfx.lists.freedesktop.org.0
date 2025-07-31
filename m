Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835D8B16F2A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 12:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE1E10E75B;
	Thu, 31 Jul 2025 10:05:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PLNrgpjG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A8A10E75C;
 Thu, 31 Jul 2025 10:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753956325; x=1785492325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FejywPbKe4363ozEEE7Yyale9qiA/KAw2guB62T9ZLQ=;
 b=PLNrgpjGG/8dg6Ne9J0aj/N+r+FV/8MFT5/GcxD2gnZ7mlyPo5JYpY2P
 3wyw6dI5AJj0CEqcO8qAi3DF7iOaCTE3CBNDUN7GUjARkjzSuFxK/KjzY
 4NEUx75HOkCIZ16tka2pmHMcrnT/W82me6WPi++L0iFoXd5gRkm6bh5k/
 /2MRnYuYVxb3Mrh3gXQ7xWqeXLdJVMyj6EOHtaP2jBJL9sLBdffbcRYdT
 X596BlbLxhhY+NwPodgSWRLMGeD+8EUWQFLWk28geuIkaDksUtq22hVmw
 HXed5rQrqA+uxOyfGBpZNDLvuLA2PEn8YXdz1d96YTAmPP3mPgzJcRMUl w==;
X-CSE-ConnectionGUID: g7K1XocUSvGopxRUPOXAjw==
X-CSE-MsgGUID: YQtRzBOGSxWDO/Y3mApQCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="59922965"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="59922965"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:25 -0700
X-CSE-ConnectionGUID: 7yqikUnzT3aRFVIdMaTdGg==
X-CSE-MsgGUID: 0mTmlWa6RH+DQSs94RYjYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167456243"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/7] drm/i915/hdmi: use intel_de_wait_for_set() instead of
 wait_for()
Date: Thu, 31 Jul 2025 13:05:08 +0300
Message-Id: <c5d3044114b4464799a2fded18cda7946d95c4f6.1753956266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer the register read specific wait function over i915 wait_for().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 03045d188817..cbee628eb26b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1582,9 +1582,9 @@ bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *dig_port,
 	intel_de_write(display, HDCP_RPRIME(display, cpu_transcoder, port), ri.reg);
 
 	/* Wait for Ri prime match */
-	if (wait_for((intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)) &
-		      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
-		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
+	ret = intel_de_wait_for_set(display, HDCP_STATUS(display, cpu_transcoder, port),
+				    HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC, 1);
+	if (ret) {
 		drm_dbg_kms(display->drm, "Ri' mismatch detected (%x)\n",
 			    intel_de_read(display, HDCP_STATUS(display, cpu_transcoder,
 							       port)));
-- 
2.39.5

