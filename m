Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A336E64D04F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 20:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A1C710E03F;
	Wed, 14 Dec 2022 19:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD33110E03F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 19:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671047391; x=1702583391;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hHbfw+cndudDd4Yv78jJu+qGknLIziRmq6opvM4kqoA=;
 b=BkTuF7FbyCwrk9unUhtvlvwySwRxjYdvR7frCKcfYYeTA3mPNAMqEe0f
 GEgzteqEbHKbcKbnXNQ/biRsru65TXcitpObMfhKv9BdgQCf9hQ+hdIFj
 Mn6GZidZvV5mljjjwSI6sVTy9OEN+dYun9REAacYVfVuCpWK8Y2rJFHSi
 mJn5BbXCtbQBQ+QJ7OdQV1pEH54cSSu73BfAnU6Gu8JT4be7E6aniYrqO
 bWNFGy8iTDtxmFlDx1H9JgrH9cZdtyTMHv86pSTj4Sav2NOgv55o59uIe
 vIXsGkj4TMyeyEADhA/x0RBrY9thyaCpsvzNP4E08xKviZHioM1MfWEl1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="382799762"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="382799762"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 11:49:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="649147710"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="649147710"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 11:49:51 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Dec 2022 11:49:44 -0800
Message-Id: <20221214194944.3670344-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove __maybe_unused from used
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The attribute __maybe_unused should remain only until the respective
info is not in the pciidlist. The info can't be added together
with its definition because that would cause the driver to automatically
probe for the device, while it's still not ready for that. However once
pciidlist contains it, the attribute can be removed.

Fixes: 7835303982d1 ("drm/i915/mtl: Add MeteorLake PCI IDs")
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 3f803c1280c0..fe28104d2ae4 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1130,7 +1130,6 @@ static const struct intel_gt_definition xelpmp_extra_gt[] = {
 	{}
 };
 
-__maybe_unused
 static const struct intel_device_info mtl_info = {
 	XE_HP_FEATURES,
 	XE_LPDP_FEATURES,
-- 
2.38.1

