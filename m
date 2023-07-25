Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D1F7603D1
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 02:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA02010E142;
	Tue, 25 Jul 2023 00:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D10610E03D;
 Tue, 25 Jul 2023 00:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690244437; x=1721780437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w+WFAosz/F5oHKYVRknXPkFsqFV6VSwHipi5CPPiLI8=;
 b=RrGOgiXtQ8NYM/ZTbVhhxPZ5vz527uLsxN9guHQlHr37Ys0KJWERJz3E
 vOx1f9yRYAwAOTwVVScnAJqobPxWz37CQLyCZNOs7tVuNTKfvabZRznlg
 kvX3lI61DDGBETEMLOqGySq//DrLtBwpBlt5pjbFgr0K4H3pC+xwqlLcE
 /pVKQupqgHIdOV1cvr4GzVVIJ0D856z624MYTI7LkK5VzinA1N95uwgUf
 sexwZgYRhbIV8MIjlRfsjRbBtAfBWr+WQNzLe04bSLjSx/j1kvkdwPHkB
 omBq4Um/Nw7HqotiEHQmy5lVwBmVSRE0vmcbRIvjU41Od3ec26+gPLiCP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="365043831"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="365043831"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:20:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="791159996"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="791159996"
Received: from gionescu-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.34.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:20:33 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>
Date: Tue, 25 Jul 2023 02:19:46 +0200
Message-Id: <20230725001950.1014671-4-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230725001950.1014671-1-andi.shyti@linux.intel.com>
References: <20230725001950.1014671-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 3/7] drm/i915/gt: Ensure memory quiesced
 before invalidation
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 linux-stable <stable@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jonathan Cavitt <jonathan.cavitt@intel.com>

All memory traffic must be quiesced before requesting
an aux invalidation on platforms that use Aux CCS.

Fixes: 972282c4cf24 ("drm/i915/gen12: Add aux table invalidate for all engines")
Requires: a2a4aa0eef3b ("drm/i915: Add the gen12_needs_ccs_aux_inv helper")
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.8+
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 46744f9660771..58b448708e750 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -214,7 +214,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 {
 	struct intel_engine_cs *engine = rq->engine;
 
-	if (mode & EMIT_FLUSH) {
+	/*
+	 * On Aux CCS platforms the invalidation of the Aux
+	 * table requires quiescing memory traffic beforehand
+	 */
+	if (mode & EMIT_FLUSH || gen12_needs_ccs_aux_inv(engine)) {
 		u32 flags = 0;
 		int err;
 		u32 *cs;
-- 
2.40.1

