Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A1E63E6CA
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 01:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5BA10E51E;
	Thu,  1 Dec 2022 00:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551F710E51F
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 00:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669856365; x=1701392365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PgbIvlXQpt+CQeBdZCgvXcNa7x98eVwu9O/ZRxI7EP4=;
 b=VcG5tN2X/y/Hud9a4SRUwTCNJiApWIj+k7Q1dhotdO/+GrMtD1XLLgUR
 EmiOzqzOwTgRicwGi+fgyPHR59zRkDVxbN3IGmQVSjpBMaH9/BR3zuIUF
 J6sv7K12Bi0V3HIEDRzMSdX6A1dwks7jFhDm9cw8SfTyjqG1gHOLSO28z
 8xzCA9jkG2mzVpNURFWhkoffnI59zX8eQemiAv2Xj+HHudhCdyQmyp6Wr
 u4Rq9dwWq7CtOzGk403T0KTf0v7lj6GiVBgnd6G0SCw3KvglsP+vaM3Ls
 YSMZL8+dJ9/DueNXZZawnpjod4cQhREQx9s/ChCXcsc0ys6GnQ4nA22a7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313180795"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313180795"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:59:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="769035754"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="769035754"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:59:13 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 16:59:06 -0800
Message-Id: <20221201005908.1097616-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221201005908.1097616-1-umesh.nerlige.ramappa@intel.com>
References: <20221201005908.1097616-1-umesh.nerlige.ramappa@intel.com>
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

