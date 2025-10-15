Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0A0BDC4E5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AEA510E6FA;
	Wed, 15 Oct 2025 03:17:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOYtNeFb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CA0910E6FA;
 Wed, 15 Oct 2025 03:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498263; x=1792034263;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=WTDIqU/QGehrDg8xEJsu3zThsgDU63sReqI3cVot/co=;
 b=AOYtNeFbnag1kaMH0Q3TU6ilbaVRWJ5GY5OdQwk7dHtYTp8lcZcDaJwF
 yHsfTxCCiVcd9smNLzTU3n8gBCITS1ivFqFCa54UAHp2gMKx1fWjot7A4
 9fucJU3EAQrnqCz77ZYeJY6vIcL7u92unz03xLLR8equU9b6HmkyA0PEo
 dO5d7TXbrS9QR1BNGJlm5nYmeL7QyB6WGfCGkRar7iq8OWD/ne99W8RKn
 rT7rPetafj7U2zIr2y7aM1spYE5Yf48ujYLJp665HbCxLRDnIwjhGmOO6
 J8jtPAZGfiesNsGzic+aOAYRcu8P69h6eaKPNTlwG0B3YpZ8frDGfowWt A==;
X-CSE-ConnectionGUID: o/iNlW6pR5KscOGdPZ60bg==
X-CSE-MsgGUID: 1erUDF6cTNaM5Y9YnJgyIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577228"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577228"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:43 -0700
X-CSE-ConnectionGUID: zEQjmMx1Sd60Vxhy8Je5GA==
X-CSE-MsgGUID: h/FERhBjRTa1t3jTuAEMRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302833"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:39 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:15 -0300
Subject: [PATCH 15/32] drm/i915/xe3p_lpd: Always apply level-0 watermark
 adjustment
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-15-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

When reading memory latencies for watermark calculations, previous
display releases instructed to apply an adjustment of adding a certain
value (e.g. 6us) to all levels when the level 0's memory latency read
from hardware was zero.

For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
add that value to the other levels.  Update adjust_wm_latency()
accordingly.

Bspec: 68986, 69126
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 41f64e347436..88342d07727f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3249,6 +3249,13 @@ adjust_wm_latency(struct intel_display *display)
 
 	make_wm_latency_monotonic(display);
 
+	/*
+	 * Xe3p asks to ignore wm[0] read from the register and always
+	 * use the adjustment done with read_latency.
+	 */
+	if (DISPLAY_VER(display) >= 35)
+		wm[0] = 0;
+
 	/*
 	 * WaWmMemoryReadLatency
 	 *

-- 
2.51.0

