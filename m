Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKk3NDnuBmrOowIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 11:58:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A358754CE13
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 11:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 184FC10F4F9;
	Fri, 15 May 2026 09:58:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XqCWn1mx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4200110F4EC;
 Fri, 15 May 2026 09:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778839093; x=1810375093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PB3o/v38CvIpbvzELNMw4y3mg5yk2SkByRpEI+qzrEw=;
 b=XqCWn1mxcmfYogRyvDS6huVaa50n9cJlV9qPIDbshcqEzrWK6qA3W0QD
 OmBDh7v9LtdYOZiAf/TI0k1FcInMfis5ASY6BNOSyARz7JFXdnPZWaoIQ
 8gVojPXI6c2Y0uIeziOGBzch2iN0jgPIuG5zYL4A3cd2DaV5/lf9hZ8dH
 uwxFgtF7YX9kPIfJtbFK1d6vB7fyb/+A2FOaVKNe1DR3A8Krxn37ovKQo
 kZF6pfesr8ySFau6BfsRDWGkR9C75R3yYe1BFOHnwdMsa6BafS02E5SDp
 USbcMFk0ixJQMQ1ncRL9ZFhFVWQQkn4UN5/+KKvtIuKoAuzz2LVjWHo8N Q==;
X-CSE-ConnectionGUID: 67mlbujQSJWSRXz88OcXeQ==
X-CSE-MsgGUID: nSzSD+waSVuBC8HfKUlZhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="82360380"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="82360380"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 02:58:13 -0700
X-CSE-ConnectionGUID: zZMD+8h8Q1uKFGD0dFOMCA==
X-CSE-MsgGUID: nuOdHML3SP6qd3tTlZ6pvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="235601807"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.20])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 02:58:11 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 2/4] drm/i915/psr: Read Intel DPCD workaround register
Date: Fri, 15 May 2026 12:57:54 +0300
Message-ID: <20260515095756.2799483-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515095756.2799483-1-jouni.hogander@intel.com>
References: <20260515095756.2799483-1-jouni.hogander@intel.com>
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
X-Rspamd-Queue-Id: A358754CE13
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Read Intel DPCD workaround register and store it into
intel_connector->dp.psr_caps. psr_caps was chosen as currently it contains
only PSR workaround for PSR2 SDP on prior scanline implementation.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 9 ++++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 26e59110e743..5ca66f745e5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -584,6 +584,7 @@ struct intel_connector {
 
 		struct {
 			u8 dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
+			u8 intel_wa_dpcd;
 
 			bool support;
 			bool su_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9958230a3dd9..749057e96647 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -44,6 +44,7 @@
 #include "intel_display_wa.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_dpcd.h"
 #include "intel_dp_aux.h"
 #include "intel_dp_tunnel.h"
 #include "intel_dsb.h"
@@ -720,8 +721,14 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 			    connector->dp.psr_caps.su_support ? "" : "not ");
 	}
 
-	if (connector->dp.psr_caps.su_support)
+	if (connector->dp.psr_caps.su_support) {
+		ret = drm_dp_dpcd_read_byte(&intel_dp->aux,
+					    INTEL_DPCD_INTEL_WA_REGISTER_CAPS,
+					    &connector->dp.psr_caps.intel_wa_dpcd);
+		if (ret < 0)
+			return;
 		_psr_compute_su_granularity(intel_dp, connector);
+	}
 }
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
-- 
2.43.0

