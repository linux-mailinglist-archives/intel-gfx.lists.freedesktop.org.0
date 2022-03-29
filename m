Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4404EB393
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 20:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C6E110EE4E;
	Tue, 29 Mar 2022 18:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1E6510E8A6;
 Tue, 29 Mar 2022 18:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648579393; x=1680115393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U5xS+XlqX8sY8sxm2AG/pE2+YgdTmUM6gq2p8jTqfKw=;
 b=VsbYm+tMOT5gxTn3QcyNNvpmvNTTKQ5EIZKgEUBYNWPE5I8TvZEi5wB7
 0Mz2+IqHs9126/w2seh6I5eBKtRLlBmsAq+l2nFRcjTVj3Ye735vgVVr/
 6+O9Ga9f0t5AepaiN/jEFlAr5V83JvkncxCMVudEeXX5Xjj9MaiVSLYUD
 NCR0S0tj3SglMu+jmrOAZ7xVWWEuEr37J9m69byFhqOD+mmzF9q23bhnp
 Uedh50XKRXT5s9Y83+q1T0IDTunQ1jidFEv4Nb44E7S0cnEHe65dHIBtS
 VptZwiJf6IzqbzVevcJH3RUyjRXkDYXMbBQ5aJ0dnQjTKmxNGghgETlrg A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="320034326"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="320034326"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 11:43:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="719650555"
Received: from dmendyk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.121])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 11:43:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 29 Mar 2022 21:42:17 +0300
Message-Id: <04d5ad0bbb43267f32312bccbab8a1f4c80565a1.1648578814.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1648578814.git.jani.nikula@intel.com>
References: <cover.1648578814.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/12] drm/edid: split out invalid block
 filtering to a separate function
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's such a special case there's no point in keeping it inline in the
happy day scenario, confusing matters.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 52 ++++++++++++++++++++------------------
 1 file changed, 28 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index a1be5c3a80e5..dee95332d7e1 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1821,6 +1821,33 @@ bool drm_edid_is_valid(struct edid *edid)
 }
 EXPORT_SYMBOL(drm_edid_is_valid);
 
+static struct edid *edid_filter_invalid_blocks(const struct edid *edid,
+					       int valid_extensions)
+{
+	struct edid *new, *base;
+	int i;
+
+	new = kmalloc_array(valid_extensions + 1, EDID_LENGTH, GFP_KERNEL);
+	if (!new)
+		goto out;
+
+	base = new;
+	for (i = 0; i <= edid->extensions; i++) {
+		const void *block = edid + i;
+
+		if (edid_block_valid(block, i == 0))
+			memcpy(base++, block, EDID_LENGTH);
+	}
+
+	new->checksum += new->extensions - valid_extensions;
+	new->extensions = valid_extensions;
+
+out:
+	kfree(edid);
+
+	return new;
+}
+
 #define DDC_SEGMENT_ADDR 0x30
 /**
  * drm_do_probe_ddc_edid() - get EDID information via I2C
@@ -2070,32 +2097,9 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 	}
 
 	if (valid_extensions != edid->extensions) {
-		struct edid *base;
-		int i;
-
 		connector_bad_edid(connector, (u8 *)edid, edid->extensions + 1);
 
-		edid->checksum += edid->extensions - valid_extensions;
-		edid->extensions = valid_extensions;
-
-		new = kmalloc_array(valid_extensions + 1, EDID_LENGTH,
-				    GFP_KERNEL);
-		if (!new)
-			goto out;
-
-		base = new;
-		for (i = 0; i <= edid->extensions; i++) {
-			void *block = edid + i;
-
-			if (!edid_block_valid(block, i == 0))
-				continue;
-
-			memcpy(base, block, EDID_LENGTH);
-			base++;
-		}
-
-		kfree(edid);
-		edid = new;
+		edid = edid_filter_invalid_blocks(edid, valid_extensions);
 	}
 
 	return edid;
-- 
2.30.2

