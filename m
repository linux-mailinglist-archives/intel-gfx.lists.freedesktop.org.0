Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B857B4A546
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 10:30:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B031810E650;
	Tue,  9 Sep 2025 08:30:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zts83q0N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A5FB10E650
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 08:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757406655; x=1788942655;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4S00ubEXUjsUmzwcw7f82hYclyGfgQgXebv78HF4tME=;
 b=Zts83q0NqYNC4iVW5TwbjRHhkzw3fEn3MHrq0MQg35b4k3WQw/vongkX
 gqsi1DrY0yJd4ioVx4eAYwF2JyOPq9QeON8HMTjnXmVyc8LEUB4vs3D2t
 d5dbB6o7JaDz9vaPOk5pFnz8j2Itzqpz18iDmtMT8eoouKW9Z2FPdykJ/
 c4r31P9QlbRNnoLd7AuJpzcnrs9sp2f5i6r4WQzdriLJt6vaJ0h89BHBG
 +5ilkwPufP3wYbtaU4L/g4EcT5xZ0aDr/Xc3QCx76tYmdqOOB9Sku9usD
 sUSmMmWbZ3Pezlvlt2yMqiqOVqvikUafka6ISYrVO6Auzmdvs6YAvFTB9 A==;
X-CSE-ConnectionGUID: 7UVCDYxRQ5KaIQxgVQ2UQg==
X-CSE-MsgGUID: 7rTNI/7NQcSQZc2Q6T1YSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="77139074"
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="77139074"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 01:30:55 -0700
X-CSE-ConnectionGUID: ANgPh4HjTF+89DMQfDFwVg==
X-CSE-MsgGUID: ZVcszkVPREWc4+/k8EcZUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="172189726"
Received: from vpanait-mobl.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.127])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 01:30:54 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/dmc: explicitly sanitize num_entries from
 package_header
Date: Tue,  9 Sep 2025 11:30:11 +0300
Message-ID: <20250909083042.1292672-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
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

num_entries comes from package_header, which is read from an external
firmware blob and thus untrusted.  In parse_dmc_fw_package() we assign
package_header->num_entries to a local variable, but the range check
still uses the struct field directly.

Switch the check to use the local copy instead.  This makes the
sanitization explicit and avoids a redundant dereference.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 77a0199f9ea5..517bebb0b4aa 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1141,7 +1141,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 	}
 
 	num_entries = package_header->num_entries;
-	if (WARN_ON(package_header->num_entries > max_entries))
+	if (WARN_ON(num_entries > max_entries))
 		num_entries = max_entries;
 
 	fw_info = (const struct intel_fw_info *)
-- 
2.50.1

