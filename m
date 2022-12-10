Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A74648C9C
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Dec 2022 04:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4808010E094;
	Sat, 10 Dec 2022 03:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0466210E08A
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Dec 2022 03:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670641282; x=1702177282;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+yAuMLoj75qiuZMhj7Q6QxeQgAEwM45eXYYDHzpUgjg=;
 b=VbZ1Wvay3tzrxCkvQwBIRfinjGZVUzbU0dnO+zJaee+dN+UhfDt33pt3
 8plIg9qvkZOS21gdIfekgFppnkrm2iX1RFYAmZ5KHWBQZvk/FeTIhCMrm
 sL5Mf07pFlOC4UAu4Jd1IiI8HDZu60GMzqYdRnfJnvp7xhK9YQcixslti
 XBtK738IWwLEQPRNTmPHUmoAY7Hz/wS/eIWs1v6gVh00wj/Fkj/5Gy0KW
 fZWNdD1hxGJR99RxcvqQrsjSxpuY/vFXtMR3j+MDs0yFsFoctYl6Ewle3
 /O//wWMXxUIckuQGpuFO9L0eJzHTBaPbyMui+c3FEE4OwXb229Iaiv+/D A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="379800534"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="379800534"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="597914724"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="597914724"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Dec 2022 19:01:14 -0800
Message-Id: <20221210030116.1777214-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
References: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/mtl: Add Wa_14015846243 to fix
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
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index a8b34460d36f..1a8618a787d6 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3140,8 +3140,11 @@ get_sseu_config(struct intel_sseu *out_sseu,
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
2.38.1

