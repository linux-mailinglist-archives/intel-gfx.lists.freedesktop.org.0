Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D81BAACC8BE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 16:08:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704DA10E66A;
	Tue,  3 Jun 2025 14:08:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KNNLcyxS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9D710E62A;
 Tue,  3 Jun 2025 14:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748959723; x=1780495723;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w4+dS3XZDCdnzxJKrNn6341Z7l0sdKoGVRrSNgAybjE=;
 b=KNNLcyxSQNwvNaFoWkqo//uKSSRchVHUsq7R0HHSf7ojfenQvCHVrw6/
 664wTE+qMMgSrtvPbWKFVW7C/0ySkSCiA9D5JktgydZDTUKM5SA3ETJaL
 y4f7WV5I8gL9/x3QWSLbq7Zqvy33sy8PreM0Ocv/Wx4bWWMknM/IKue+T
 LSVGf0OaygQEYKMYHNgpXCHtKY2TORmYqM67+8WFO9e9CCpy6fAU1EUF+
 NBkyy7cvJdwuvtytXOMY0qcZv9bDUIaO+SkWliafrLlf3bhK+7WASeGDh
 emuco5KCIJWDkJVbtkMRR5V3GtAF/fIuYLW+nHonZnRTfbf5fxeFtJepz A==;
X-CSE-ConnectionGUID: 4B1iDOWjTi6y5p4F53MjQw==
X-CSE-MsgGUID: 4W7IxYyKRUK+js/x0fdXOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61265802"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61265802"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 07:08:43 -0700
X-CSE-ConnectionGUID: Pb5vln/dQ/OGDb5t45sXKw==
X-CSE-MsgGUID: ZtO4IHENQJaNHlKHcZJJTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150155580"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.220])
 by orviesa005.jf.intel.com with SMTP; 03 Jun 2025 07:08:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Jun 2025 17:08:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 01/12] drm/i915/dsb: Use intel_dsb_ins_align() in
 intel_dsb_align_tail()
Date: Tue,  3 Jun 2025 17:08:25 +0300
Message-ID: <20250603140836.21432-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

If the free_post is not QW aligned we don't have to memset the
extra DW needed to make it so, as the only way that can happen
is via intel_dsb_reg_write_indexed() which already makes sure
the next DW is zeroed.

Not a big deal, but this is more consistent how all the other
stuff operates that puts instructions into the DSB buffer, and
we'll get a few more of those soon.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index a4a996018a82..15c2bb63e874 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -527,6 +527,8 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
 {
 	u32 aligned_tail, tail;
 
+	intel_dsb_ins_align(dsb);
+
 	tail = dsb->free_pos * 4;
 	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
 
-- 
2.49.0

