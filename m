Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0724B96EB59
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 09:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6683610E805;
	Fri,  6 Sep 2024 07:00:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hgUuvC93";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC44010E803
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 07:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725606049; x=1757142049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HC2uD07/vVb7ktFeSppFK0JB8YonrNF/Cz3BbXhUxpg=;
 b=hgUuvC93GQh2T9aU3aKPBh+YvFXzcj8JrzeTsbxQWQ9NtMHy2poH+IND
 FhdjNKw8q4WLGSpvZOZ9VQ6au7D7ps9q0Ks4EUSn0yWTENfaHYh6KbddI
 uZaJRS4YCN8J+xzRDQDhLxFnRqbhyjRAJoQTg1nKsv+qUl/eCr7oecM63
 HNrUUxFS7oF77XRAtcgoWJYBtWKedkTg0Ehw4jxK24ykm3wWgOBb3sr6l
 GmhcDdGaVxBWl57pw8a9WnlAytDv0KgTRAbVmZYV/rU+O5DlWcfiIwtfY
 cNudjzf/zCXF/bohEn5wsbFdXSMdfRV/rpkpawcTWHkkzYw1CAiiUgBe5 w==;
X-CSE-ConnectionGUID: 7AmgzyLeSSmeaWJbB7KfQQ==
X-CSE-MsgGUID: 6KR5E2pySMKW87oY/twT7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="28103038"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="28103038"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:49 -0700
X-CSE-ConnectionGUID: l6XUU/9DTA6juBo7tWuOvw==
X-CSE-MsgGUID: ll+d0/BuROGbNm6sHWEwMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="70292505"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.244.116])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/4] drm/i915/display: Handle MST connector in
 intel_attached_dp
Date: Fri,  6 Sep 2024 10:00:30 +0300
Message-Id: <20240906070033.289015-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240906070033.289015-1-jouni.hogander@intel.com>
References: <20240906070033.289015-1-jouni.hogander@intel.com>
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
index 733de5edcfdb3..000ab373c8879 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1913,7 +1913,10 @@ static inline struct intel_dp *enc_to_intel_dp(struct intel_encoder *encoder)
 
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

