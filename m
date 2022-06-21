Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FC4553277
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0111124ED;
	Tue, 21 Jun 2022 12:49:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94741124ED
 for <Intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655815775; x=1687351775;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dnTU38CbeYlqhR9lI0TanU2wEb48oTssfKAVeQzn5/k=;
 b=g07H74MvMd+zgAziY0kRr5M91N8fmLZpsWCNMUOThG3KvEpOVQF/o398
 eRqwkM8i7v55ENJqNNxAejLgIm8Eg9r62EAAue+ly/WqOtPSaNV8YCSO1
 ZIebErO/oFldlvbC50jwxWSkPtTxHryY2+z3Zm9ykyJTZeUVs7CsVP27p
 fsnrakxgjbEA840svZ7yfcLK1BTUBfagKMmopSIDsJTlMJ+K3gdKMuSM5
 Pdt2CMjxUR1scG0Y47SbMi1imk5IhHpyUabOAE+zi5JipsSoSh1z1m1k2
 Wc+EDnpRnW9w6o3delc3HYvEGoFZegD3gmyQS03PEBG4cx8fX/y+jNMoB Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="281169506"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="281169506"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:49:35 -0700
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="643610056"
Received: from lapolka-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.209.139.96])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:49:34 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jun 2022 13:49:26 +0100
Message-Id: <20220621124926.615884-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915/gem: add missing else
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

From: katrinzhou <katrinzhou@tencent.com>

Add missing else in set_proto_ctx_param() to fix coverity issue.

Addresses-Coverity: ("Unused value")
Fixes: d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle create parameters (v5)")
Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: katrinzhou <katrinzhou@tencent.com>
[tursulin: fixup alignment]
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index e116f82fc37c..dabdfe09f5e5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -933,8 +933,9 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
 	case I915_CONTEXT_PARAM_PERSISTENCE:
 		if (args->size)
 			ret = -EINVAL;
-		ret = proto_context_set_persistence(fpriv->dev_priv, pc,
-						    args->value);
+		else
+			ret = proto_context_set_persistence(fpriv->dev_priv, pc,
+							    args->value);
 		break;
 
 	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
-- 
2.34.1

