Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B665C19268
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:47:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F282E10E74A;
	Wed, 29 Oct 2025 08:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kwBm8k3T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A1E10E74A;
 Wed, 29 Oct 2025 08:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727620; x=1793263620;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jiHu7/T92YsLgSrMR5YkyOj7G4tv1gq7NTzC3SeQUfI=;
 b=kwBm8k3TTOoXHjN7smCk/aTWI50ugv7RJEwOu7FunnJ3FgRbVVnUN3v+
 HJgItZe/hL2TNwJIxjYNjKFN3jPAvRo5gLgdFacwgi9YhtOeJnov9iNJ/
 SfTVHLEJogNSt7jdKAendjCP/uGonyU6tX3wkq2T+KhD8nLR5MqjLarRh
 7FGmn39N6KHTrjKi9pc25IiIzE+QQU8WE/D25Iwr1gcymGu2zX4NyLWAk
 b6qD30IPEEM08I8xl5XvqOw5uEshnsM7x7RFydPaTDHusgGcbpg6kQpI4
 714qImcQDQ96S/rjdgnlHR0Q2RZzK9Zfa07sSTSfGjorqnmpCaIjc5pB9 g==;
X-CSE-ConnectionGUID: puC7oy9eSLqzCfvlabdnTQ==
X-CSE-MsgGUID: Ly8OGt00SGS19PUoGTV7+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81470737"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="81470737"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:00 -0700
X-CSE-ConnectionGUID: PzHHLhNpQSuYsikmvC3PVw==
X-CSE-MsgGUID: CFjRw/YWRkemJL+hrq/2XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="216254531"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:46:58 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 2/9] drm/i915/scaler: Adjust pipe scaler scale factors for
 4:2:0 ouput
Date: Wed, 29 Oct 2025 10:46:40 +0200
Message-ID: <20251029084647.4165-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
References: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

4:2:0 output effectively involves an extra downscale factor of
2x2 due to the chroma downsampling. Adjust the stored scaler
scale factors accodingly.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 640c65818f8a..e8a8facdc300 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -499,6 +499,15 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 
 			return -EINVAL;
 		}
+
+		/*
+		 * For the purposes of prefill 4:2:0 chroma
+		 * subsampling is considered a 2x2 downscale.
+		 */
+		if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+			hscale <<= 1;
+			vscale <<= 1;
+		}
 	}
 
 	scaler_state->scalers[*scaler_id].hscale = hscale;
-- 
2.49.1

