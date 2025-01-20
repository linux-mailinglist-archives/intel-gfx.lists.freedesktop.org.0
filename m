Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAF4A167B3
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 08:53:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2BC010E359;
	Mon, 20 Jan 2025 07:53:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HUSCFvvS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B0310E354
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 07:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737359636; x=1768895636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Txbztbma7JwBwqIx66zSrXolwpm4/Y5+nhy5WsF9ddI=;
 b=HUSCFvvSKQwx/nhvJ5jKn7nS7t7T5ukRgGSBKLP45n1VX9YCM31Ya4x5
 AYUkgMoGN2dgKG8sg4ApoTQoftubxvG7QyGKunsaaFk7Koo/QFchDk/Dl
 2KUuxEBsv16kYsZxd6a9k/Hv7s5nKnSWVbxhScZWWfwajuzV9NvDrL2ds
 owUHsZFG6U+K5AKp5QPgkcZoImrKuZUHuT1jtQ+igS5UTMUGLeYr+v5Le
 hVis14+YPVEVaUhYThVWAGn4b1Xj//eKdIP1VyP3QoI/cTmHQ1tbf1los
 G9PLHW36/4UxZ/sZ0enXM5jKaxivm6RHc9n1dETJ4Uxt1CJZYXRTjcPDB g==;
X-CSE-ConnectionGUID: 1gj6kM/7QHS8EjBXhbWySA==
X-CSE-MsgGUID: mr1NJkUWQuuS6o5nRY+OVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="25325819"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="25325819"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 23:53:56 -0800
X-CSE-ConnectionGUID: gfCBQja4Ssy+2z0sqTudeQ==
X-CSE-MsgGUID: dRXSDvX+T9u4Te97KwS2fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="137317994"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa001.fm.intel.com with ESMTP; 19 Jan 2025 23:53:54 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: krzysztof.niemiec@intel.com
Cc: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org, nitin.r.gote@intel.com
Subject: [PATCH v4 6/8] drm/i915/soc: fix typos in i915/soc files
Date: Mon, 20 Jan 2025 13:45:15 +0530
Message-Id: <20250120081517.3237326-7-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250120081517.3237326-1-nitin.r.gote@intel.com>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915/soc reported by codespell tool.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 842db43e46c0..9f7c9dbc178e 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -243,7 +243,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * underneath. This is a requirement from virtualization team.
 	 *
 	 * In some virtualized environments (e.g. XEN), there is irrelevant
-	 * ISA bridge in the system. To work reliably, we should scan trhough
+	 * ISA bridge in the system. To work reliably, we should scan through
 	 * all the ISA bridge devices and check for the first match, instead
 	 * of only checking the first one.
 	 */
-- 
2.25.1

