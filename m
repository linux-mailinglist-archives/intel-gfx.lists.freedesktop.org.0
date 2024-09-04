Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F6596B818
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 12:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36E210E4F9;
	Wed,  4 Sep 2024 10:18:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JP0t7HNT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4724510E1DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 10:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725445131; x=1756981131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TXiSQWGJPkCj6NOguhDDkKeC2E7yqoNkdLoGHUSdugU=;
 b=JP0t7HNT5rKswPAP1PrgrCL463Zq2vUU9hvPosSLWDSe+aYVfOaAryOa
 vKmPG2oYR78TaKE4ot/uR9IT7ca1IUCn1qknHZf+WnkHQ28pWbBbQy8/t
 kOC/kInJBnkiTY+mn8Cnd/3gEb+C+l+psdNaOgrqmckhipF+IJgxoj9gQ
 Ls8CsMAlaXJNDtYfkqVLtVcSZNAWb/k0H2I3p/OzYqzphcOzTn/kVmnHV
 3o1N+iAi0Io9XEWRbgEbT3FUfTXW8D26EZz/wg0C9OurN0ulhXGnblWQI
 R2roDREoIUmyzFm/s2HyHUZSngB9j/Wj914nALbOzkIvQzxtWXL5zElio g==;
X-CSE-ConnectionGUID: xi3m5PvFSCWr+G+dkN48BA==
X-CSE-MsgGUID: i8KVNpRJRkq6sOuCxJHuew==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27982982"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27982982"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:18:51 -0700
X-CSE-ConnectionGUID: RvdOXNFBR1mgy6BwuqlLfw==
X-CSE-MsgGUID: vZd1Nr7NSaWX0c/RPNY4SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="69857806"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.245.79])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:18:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Handle MST connector in
 intel_attached_dp
Date: Wed,  4 Sep 2024 13:18:32 +0300
Message-Id: <20240904101834.2415385-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240904101834.2415385-1-jouni.hogander@intel.com>
References: <20240904101834.2415385-1-jouni.hogander@intel.com>
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

Connector->encoder might be null for MST connector. Take this into account
in intel_attached_dp.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 868ff8976ed93..6327caa1054f2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2046,7 +2046,10 @@ static inline struct intel_dp *enc_to_intel_dp(struct intel_encoder *encoder)
 
 static inline struct intel_dp *intel_attached_dp(struct intel_connector *connector)
 {
-	return enc_to_intel_dp(intel_attached_encoder(connector));
+	if (connector->mst_port)
+		return connector->mst_port;
+	else
+		return enc_to_intel_dp(intel_attached_encoder(connector));
 }
 
 static inline bool intel_encoder_is_dp(struct intel_encoder *encoder)
-- 
2.34.1

