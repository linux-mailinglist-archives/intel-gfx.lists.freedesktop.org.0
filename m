Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8C25FCE5D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 00:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70C910E1B8;
	Wed, 12 Oct 2022 22:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDBB010E2C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 22:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665613669; x=1697149669;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=743sZAZQZQbZXTTAJxmyn+W5tYtk0IRINwxx+uP/3V4=;
 b=gY95F+Ro2j6eDNFqShPeKQ8SHgDl6Oe/rhAkUMfBXFabHVA1rlIa2fGN
 AQuAblfKV2GH0r8La7kUDKhGS04vEMMdz7hsFvmLtDF0OXIjr2AIegr4g
 ss2hl2EhPhum/nqk4cVFGqQeiud9uXPCTQWgFB36iabv5hUTjPPFJdYq6
 clTNVPm31tv7RBMu7EhO7qouH1PpIDs7qY42PCpCV2Ou6rS4z5DoRmdKa
 m8Q34iPaa13Ivrrua9RC45WHKFcqoIykfuigUuMLcJH3V9SsPLen6UPb7
 LWVTHyGH5Li9KlzhjLjCT9wPc47BgCa/OZ6Azdd6ZNP6ib+OjVwTC6avE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="303661492"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="303661492"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="660097686"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="660097686"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Wed, 12 Oct 2022 22:27:39 +0000
Message-Id: <20221012222739.27296-17-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 16/16] drm/i915/perf: Enable OA for DG2
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

OA was disabled for DG2 as support was missing. Enable it back now.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index abfed2a98a8b..3251c2a31b4c 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4801,12 +4801,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 {
 	struct i915_perf *perf = &i915->perf;
 
-	/* XXX const struct i915_perf_ops! */
-
-	/* i915_perf is not enabled for DG2 yet */
-	if (IS_DG2(i915))
-		return;
-
 	perf->oa_formats = oa_formats;
 	if (IS_HASWELL(i915)) {
 		perf->ops.is_valid_b_counter_reg = gen7_is_valid_b_counter_addr;
-- 
2.25.1

