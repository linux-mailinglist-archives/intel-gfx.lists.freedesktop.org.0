Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CDB6F14D8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 12:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30BC410ECE0;
	Fri, 28 Apr 2023 10:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8636210E3B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682675997; x=1714211997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k0EvSAnO0m+KHnU98NxmIe4KHYkoh/iAtCl8hR3B6xg=;
 b=MPk3JgBu6Pzch9zBFa5LQYAxZdT45pg6tboS+nod62kD6bjWLYZw3s5/
 7IffsPv7OKrM71DvsV/J3YvqiE7gnjf7OhoDYP+uaShsNusch03EpCWQc
 axF6wq1hMV9B8EVn0iNBkNAerDQiNDpmyuAZSUdJpe2MhJXUlCLGSofUO
 ESEcU4w8JfPKEHCKVx9G2JsKeB5AplnSE4N0EeV5DiVSq73G5HpReQeic
 IlL1a0yRBipEbVZBxF/ZC6QoOUwum2pgZhkSB96V58kbGSn7UT+HHroQk
 3fB/zXsu/KaWiPe26ifogwlUsqlsBSPh5YioFWAGwtzsBM18ghvtzSXNA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375698276"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="375698276"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:59:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="725295779"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="725295779"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2023 02:59:55 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 12:54:33 +0300
Message-Id: <20230428095433.4109054-14-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
References: <20230428095433.4109054-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/13] drm/i915/mtl: Enable TC ports
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

Finally, we can enable TC ports for Meteorlake.

Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0b9ae5759ffa..3d3483e6f836 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7336,9 +7336,12 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_METEORLAKE(dev_priv)) {
-		/* TODO: initialize TC ports as well */
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
+		intel_ddi_init(dev_priv, PORT_TC1);
+		intel_ddi_init(dev_priv, PORT_TC2);
+		intel_ddi_init(dev_priv, PORT_TC3);
+		intel_ddi_init(dev_priv, PORT_TC4);
 	} else if (IS_DG2(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
-- 
2.34.1

