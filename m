Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE07DAB9B1F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7704D10EA5B;
	Fri, 16 May 2025 11:34:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VYOs12zp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B9510EA5B;
 Fri, 16 May 2025 11:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747395258; x=1778931258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iOzsr0uH607Klr5Y1Nv0NV+YgYjAn5hd+ze7SOtoSfw=;
 b=VYOs12zp5WiqBYzAQl8hjyaDADktwbZk9Q17T7rCGa35fH2xS3naTxVO
 4A5o+0tvPO6tDmtH9I/q8EZHOUEnLD8tEZPMvPfbvKknuYlhTHubIT7od
 6Ph6c3lxb5YR72452trJBFOlbo1kz7PuD5ZzwL0psq7ht11iDtCtSNPjR
 vXeY1XQTH5Xhka8SSRU1wdc72suG5xmG+if9ke7MGipTN+e0ofCV07QbD
 Ei03K0DVGbJfVDkJWo3vrFhnIryN3yz5RFmj8Qc5KAkcQyh54WH1UKK0f
 puh8DRXGz1TK0H97faqLqix7di4dcntAiYhyb+6z8c4ATSYjxAOgFczOn g==;
X-CSE-ConnectionGUID: 5FH+6L7tR/SgnuQlx8ySng==
X-CSE-MsgGUID: nKWyDBTISHuqXBZdh0RQrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49349804"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49349804"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:34:18 -0700
X-CSE-ConnectionGUID: Xqfem+ISQjOrjIynr1cwxQ==
X-CSE-MsgGUID: 1JYKFEjXQkauXfFJ9xvyEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143779507"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 16 May 2025 04:34:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 May 2025 14:34:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/12] drm/i915/dsb: Use intel_dsb_ins_align() in
 intel_dsb_align_tail()
Date: Fri, 16 May 2025 14:33:58 +0300
Message-ID: <20250516113408.11689-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
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
index d6641cfe8061..b5c8972dfad2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -504,6 +504,8 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
 {
 	u32 aligned_tail, tail;
 
+	intel_dsb_ins_align(dsb);
+
 	tail = dsb->free_pos * 4;
 	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
 
-- 
2.49.0

