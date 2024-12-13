Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AA59F09D2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:40:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 770E910EFAA;
	Fri, 13 Dec 2024 10:40:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HFAjYONf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D34810E1F9;
 Fri, 13 Dec 2024 10:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086448; x=1765622448;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yBQk93aPeGbmeifQ+4Jm7w84JDdRB0O+1fz6Mz5xMV8=;
 b=HFAjYONf+9q7/8GDaE0SMJQP4lE8t4xjHkbeoGxsfB3dw1aJJ4ptl/K2
 NaovCe30zQhf81WX2lPrxUPLghNlOEyFExQWLDTt30p4RAW2MBE54IBMg
 6SbAncutn218vYGriaEdQzk9dF+pEsUU6DLUc9unGejvIFaSdLvk8eNpu
 yMfAg+Cob99HvfuofMDPrJiH69KZUdij0+JRYfJMhANEbQaQpqpq8Sb58
 cWYzQqSMWzDgFm76Jb7DnS7yltDgHY3wrqfsNcD9nW5g5mufwIVZ+QvXj
 q0dG04QcQSed3ZYBWoN6a03Ta5vsdN6clOjOFpl2FmQ4kXpYTYtLMZFW7 Q==;
X-CSE-ConnectionGUID: M3uPQMUJSRKUUuosBJXSJg==
X-CSE-MsgGUID: 8eGXcZQ3TeKJpiKBKK3viQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671033"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34671033"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:48 -0800
X-CSE-ConnectionGUID: XPKTcQQmT3mKrOX4t9Uxnw==
X-CSE-MsgGUID: xZqhQU4PRsm/+SLtDgESAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97287449"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 07/13] drm/i915/ddi: enable 128b/132b TRANS_DDI_FUNC_CTL mode
 for UHBR SST
Date: Fri, 13 Dec 2024 12:39:51 +0200
Message-Id: <4247777e10bdc12a859c37ff1d1cc88915e01129.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
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

128b/132b SST needs 128b/132b mode enabled in the TRANS_DDI_FUNC_CTL
register.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f9c50996446..ec5f0534f4df 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -577,7 +577,10 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 			temp |= TRANS_DDI_MST_TRANSPORT_SELECT(master);
 		}
 	} else {
-		temp |= TRANS_DDI_MODE_SELECT_DP_SST;
+		if (intel_dp_is_uhbr(crtc_state))
+			temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
+		else
+			temp |= TRANS_DDI_MODE_SELECT_DP_SST;
 		temp |= DDI_PORT_WIDTH(crtc_state->lane_count);
 	}
 
-- 
2.39.5

