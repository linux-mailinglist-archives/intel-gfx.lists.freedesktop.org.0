Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B9E64E540
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EABDC10E5B1;
	Fri, 16 Dec 2022 00:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEF6710E5AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151106; x=1702687106;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7zuV63m57Jbfht9eOdygjJlJ+twhUmP/S8t2rFTu3x0=;
 b=NDxT5U+T11NW9VvmuY8XhQPvftHYS5KW8dg/tlWmAXUJzHyWIflJOYWY
 xnnRigGB9rLmDXtR5gAYrRLTLLD8Mxg1AN4ku7vco9h24nBr6LK+FYb9k
 r07ofhYxuHNisfY7SavybRM7U7AX5nrnwJvpMHE/qEhlmT5eYXKulo0DR
 wqVrMHTH8ZOzSYfRZHeSmkS69T0O3GwSMEHK4IIMADODlNCtuVXTiLO7y
 VMigALKOTJTNtg4FZjEpTFq4jOoMrhGG7kql3kthsNHifA6pEHnNWsQfE
 KXSJtXRFo0sx09mFqqjECpdEV0zoN2+QrYlME61x206KnNSufzY/SeD3L w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103824"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103824"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100203"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100203"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:01 +0200
Message-Id: <20221216003810.13338-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Fix DSB command buffer size
 checks
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

free_pos is in dwords, DSB_BUF_SIZE in bytes. Directly
comparing the two is nonsense. Fix it up, and make sure
we also account for the 8byte alignment requirement for
each instruction, and also assume that each instruction
normally eats two dwords.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 6abfd0fc541a..fbcbf9efd039 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -97,7 +97,7 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
 	u32 *buf = dsb->cmd_buf;
 	u32 reg_val;
 
-	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
+	if (drm_WARN_ON(&dev_priv->drm, ALIGN(dsb->free_pos, 2) > DSB_BUF_SIZE / 4 - 2)) {
 		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
 		return;
 	}
@@ -167,7 +167,7 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 *buf = dsb->cmd_buf;
 
-	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
+	if (drm_WARN_ON(&dev_priv->drm, ALIGN(dsb->free_pos, 2) > DSB_BUF_SIZE / 4 - 2)) {
 		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
 		return;
 	}
-- 
2.37.4

