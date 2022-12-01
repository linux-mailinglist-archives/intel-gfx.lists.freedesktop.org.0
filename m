Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0CD63E6E1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 02:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B8B10E51F;
	Thu,  1 Dec 2022 01:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7295E10E524
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 01:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669856737; x=1701392737;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PgbIvlXQpt+CQeBdZCgvXcNa7x98eVwu9O/ZRxI7EP4=;
 b=ESyrM9E+wdX+NmE1JNr5/dx6IJY1WJL5ZqSdp6eGYKYGZFiDO99Sx8vo
 QbW/j6AW/MyBbobt7z0emULlwWV/OPD2QF+ifqRRyECbCWYwHquMwSj1i
 6t1sEiIygbkOJQFxOKJYeYm+68Uy+d3umMsQMvQ3SoOeZYGo1JhtzcRln
 H4ROHaIUXFQlgPXQyU1YGvlSiVNeC5xp2/EzjerPL22wTn0o20S9ts6d1
 kPFi5bwMTQALw0leg+UrmkdU/42RODASwmkarHqUYulhR/ZyJqswyQys1
 obqKzopyvGDFRXG+9hVk0kTyyNev2vHSadWtYqScGo/F1bQIS81e4s/th w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="377718679"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="377718679"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 17:05:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="973322676"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="973322676"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 17:05:36 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 17:05:33 -0800
Message-Id: <20221201010535.1097741-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
References: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/mtl: Add Wa_14015846243 to fix
 OA vs CS timestamp mismatch
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

Similar to ACM, OA timestamp that is part of the OA report is shifted
when compared to the CS timestamp. Add MTL to the WA.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 7790a88f10d8..8ed9af571de9 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3136,8 +3136,11 @@ get_sseu_config(struct intel_sseu *out_sseu,
  */
 u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
 {
-	/* Wa_18013179988:dg2 */
-	if (IS_DG2(i915)) {
+	/*
+	 * Wa_18013179988:dg2
+	 * Wa_14015846243:mtl
+	 */
+	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
 		intel_wakeref_t wakeref;
 		u32 reg, shift;
 
-- 
2.36.1

