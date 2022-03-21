Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 101C64E2911
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 15:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C66D10E46E;
	Mon, 21 Mar 2022 14:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60AA110E481
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 14:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647871207; x=1679407207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rZWCe9bjC4jva3Tp0cLNN5S1vOTW3teynBSVq3TIuL0=;
 b=hHvmwZyCEOxZzcMg2NLgZ5awQnoyl1NCRyauONPraaCVc5OJO3aQoCD7
 wZwaPJiB3vlqFld1dBHJ7Q8ic72q620vfmjDo4tA1s38IXVi03aIVUJAL
 7CcqWTo4miIOQOAUBUroWndK2kdfFwIcEB/bkyrmn+OlB2sFdqqJgTsyK
 K2HyhR2OA6osD4F+7IXpBCDzT9vmw7LzMEnZuujQHYLbbMur0ltkeLUCs
 lR5MJ72PbKeon9ItcC0M6KP9Cz1jBYz9DeFKF6GILwFmmSwV01CBN7FYg
 nrFM9EjgKbvdrhKwK0WVEVH16VimeoKvvYHtoSWN3EHqqi92qzosB0phl w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="282383801"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="282383801"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 07:00:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="559883531"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 07:00:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 15:59:55 +0200
Message-Id: <20220321135955.922791-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: fix i915_reg_t initialization
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The initialization is there only to silence the compiler, but use the
correct initializer for i915_reg_t.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 6d7ec3bf1f32..5423bfd301ad 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -767,7 +767,7 @@ static int mi_set_context(struct i915_request *rq,
 	if (GRAPHICS_VER(i915) == 7) {
 		if (num_engines) {
 			struct intel_engine_cs *signaller;
-			i915_reg_t last_reg = {}; /* keep gcc quiet */
+			i915_reg_t last_reg = INVALID_MMIO_REG; /* keep gcc quiet */
 
 			*cs++ = MI_LOAD_REGISTER_IMM(num_engines);
 			for_each_engine(signaller, engine->gt, id) {
-- 
2.30.2

