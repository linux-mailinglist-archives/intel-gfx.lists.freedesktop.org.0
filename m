Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDB04C742C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 18:43:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3164010E853;
	Mon, 28 Feb 2022 17:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8FB10E4F3;
 Mon, 28 Feb 2022 17:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646070184; x=1677606184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KRamTtQhPU13Ubh/Vuuh3ZqWdZURUtxBTuC0SLUkMJU=;
 b=J8ahe5ZLzMa5XQ2hhVFjJtS6Lt8ezOFiJpksMeA8BoJEPB07CHzGi+K3
 COaF4KVbWGXH1p+cp3i0DvxyIVOxUctpSbqLjPgCXzplnuAulw3hVWdn5
 z8mKesVnndnNKSY5Zs645hSoEgKLkuDbhLz3EaCvNSxQy+qSQFuGzkN2m
 5bCzcIeVqr52ZO9kF8Ap9c3AzggrcCWdNyYEdQ51/89URP/SrDMqDnw2u
 OFcalglVy86xMB28A4IUO2HZITYWJgXqCVi0mnk8FSwSIBeX45PIVhbgf
 Y/+/41kDQXlOba+sEhdUd8EAUUDqGoymUDYkHT3VZfBmZoixk369ycdu/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="240351465"
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="240351465"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 09:43:03 -0800
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="575392817"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 09:43:03 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Feb 2022 09:42:34 -0800
Message-Id: <20220228174245.1569581-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220228174245.1569581-1-matthew.d.roper@intel.com>
References: <20220228174245.1569581-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/13] drm/i915/xehp: CCS shares the render
 reset domain
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The reset domain is shared between render and all compute engines,
so resetting one will affect the others.

Note:  Before performing a reset on an RCS or CCS engine, the GuC will
attempt to preempt-to-idle the other non-hung RCS/CCS engines to avoid
impacting other clients (since some shared modules will be reset).  If
other engines are executing non-preemptable workloads, the impact is
unavoidable and some work may be lost.

Bspec: 52549
Original-author: Michel Thierry
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 3190b7b462a9..3150c0847f65 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -341,6 +341,10 @@ static u32 get_reset_domain(u8 ver, enum intel_engine_id id)
 			[VECS1] = GEN11_GRDOM_VECS2,
 			[VECS2] = GEN11_GRDOM_VECS3,
 			[VECS3] = GEN11_GRDOM_VECS4,
+			[CCS0]  = GEN11_GRDOM_RENDER,
+			[CCS1]  = GEN11_GRDOM_RENDER,
+			[CCS2]  = GEN11_GRDOM_RENDER,
+			[CCS3]  = GEN11_GRDOM_RENDER,
 		};
 		GEM_BUG_ON(id >= ARRAY_SIZE(engine_reset_domains) ||
 			   !engine_reset_domains[id]);
-- 
2.34.1

