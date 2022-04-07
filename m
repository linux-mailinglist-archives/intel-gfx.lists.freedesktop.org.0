Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2152B4F7B5B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 11:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE81510E88D;
	Thu,  7 Apr 2022 09:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A200E10E80C;
 Thu,  7 Apr 2022 09:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649322944; x=1680858944;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4DJKvko+TuJAyys4asTSPHd/BN0Z8Xr8iiiI4lM1ZCs=;
 b=Gr/OC09LCmrENbBP0ULf6F19ySvZ2XNk4JK3UJusxYd1JTOudjs15qzE
 OnJxbo1tU1972ce7E3jRtEroA6eRgYwM8xaAEavvXujjVDfzxeLJGqgRx
 xr+xAPshRMjh1h8dU/egXtTadh4OTWz5HkiywgsRU8Iy4h8yBUsTb9PzU
 vMoagRFuD09d6O775Q3CDfTXjwZycxaOGIJUMvv3HEy/nq1eR+Av3ktUT
 cNChbEuWXAVcpLEgCcJJXiYsFX2pHOH5XLAS/O5hK2teQH09CaK8dq68Q
 v0yLJQxbDMI/Dgvx95jYJunY4SYmWqS3drIgOs6Hsr5ZRZZkxs86YdCUH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="248795260"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="248795260"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 02:15:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="658991687"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 02:15:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  7 Apr 2022 12:14:37 +0300
Message-Id: <36945cc82b727933ca865c176c435b9419ccf33d.1649322799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649322799.git.jani.nikula@intel.com>
References: <cover.1649322799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/12] drm/edid: add single point of return to
 drm_do_get_edid()
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

This will be useful in the future. Use fail label for fail exit.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 767639364bd9..90615e30eaf5 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2106,7 +2106,7 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 
 	edid = drm_get_override_edid(connector);
 	if (edid)
-		return edid;
+		goto ok;
 
 	edid = kmalloc(EDID_LENGTH, GFP_KERNEL);
 	if (!edid)
@@ -2117,7 +2117,7 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 	edid_block_status_print(status, edid, 0);
 
 	if (status == EDID_BLOCK_READ_FAIL)
-		goto out;
+		goto fail;
 
 	/* FIXME: Clarify what a corrupt EDID actually means. */
 	if (status == EDID_BLOCK_OK || status == EDID_BLOCK_VERSION)
@@ -2130,15 +2130,15 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 			connector->null_edid_counter++;
 
 		connector_bad_edid(connector, edid, 1);
-		goto out;
+		goto fail;
 	}
 
 	if (edid->extensions == 0)
-		return edid;
+		goto ok;
 
 	new = krealloc(edid, (edid->extensions + 1) * EDID_LENGTH, GFP_KERNEL);
 	if (!new)
-		goto out;
+		goto fail;
 	edid = new;
 
 	for (j = 1; j <= edid->extensions; j++) {
@@ -2150,7 +2150,7 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 
 		if (!edid_block_status_valid(status, edid_block_tag(block))) {
 			if (status == EDID_BLOCK_READ_FAIL)
-				goto out;
+				goto fail;
 			invalid_blocks++;
 		}
 	}
@@ -2161,9 +2161,10 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 		edid = edid_filter_invalid_blocks(edid, invalid_blocks);
 	}
 
+ok:
 	return edid;
 
-out:
+fail:
 	kfree(edid);
 	return NULL;
 }
-- 
2.30.2

