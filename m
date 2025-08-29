Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BB9B3B89B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 12:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB48110EB92;
	Fri, 29 Aug 2025 10:20:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TwCTKwU9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99CF10EB7F;
 Fri, 29 Aug 2025 10:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756462820; x=1787998820;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Er15bxGL87yQ024HnTQzzvtxsTDdgAeCU/EVez4wd+s=;
 b=TwCTKwU90knIc5t845TJ4u4urPqXYZjUfCxlz7EHqBDxpugQ35mByZd2
 Ao7NQTJARBEMTfmVoutcs+feuICsjcP1vTL4hZjQp6VLvo6YpSIfU2gNT
 tp/uvMwNMnqLGYp//vvNM3hQV1KtAMlenLWla3XclIcGzbSjJv2YtxglI
 cCjXFyvRHKOiqHIAvb4f1UkLCJ0dH+XgYuY0G0viwspPTCo8/PU/5RsOr
 b9Fd5bAEG+r1cJsHYxxtMBNDwqZF0WuInMotPcbFPsOEeI+SJrJFKj9d9
 ix+YYAkyK85OI5JEBZeNN19nAe91FCX9+h1N1OyLYoAMT6rok1XQZhOZP A==;
X-CSE-ConnectionGUID: DXrx816yQlihGbs05zEC0Q==
X-CSE-MsgGUID: smSfBIYFT6mktwTdpmYuGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="70184951"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="70184951"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 03:20:20 -0700
X-CSE-ConnectionGUID: dUgWY8SiQQuJALedVWW+NQ==
X-CSE-MsgGUID: 9aU4xT41Toy8Jyx9/oguIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="169601872"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 29 Aug 2025 03:20:19 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/display: Fix possible overflow on tc power domain
 selection
Date: Fri, 29 Aug 2025 13:12:26 +0300
Message-Id: <20250829101226.4085757-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

There is a possibility that intel_encoder_to_tc() functions
returns negative i.e. TC_PORT_NONE (-1) value which may cause
tc_port_power_domain() function to overflow. To fix this,
let's add additional check that returns invalid power domain
i.e. POWER_DOMAIN_INVALID in case tc port equals TC_PORT_NONE.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 583fed5a386d..23745fc99d35 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -249,6 +249,9 @@ tc_port_power_domain(struct intel_tc_port *tc)
 {
 	enum tc_port tc_port = intel_encoder_to_tc(&tc->dig_port->base);
 
+	if (tc_port == TC_PORT_NONE)
+		return POWER_DOMAIN_INVALID;
+
 	return POWER_DOMAIN_PORT_DDI_LANES_TC1 + tc_port - TC_PORT_1;
 }
 
-- 
2.34.1

