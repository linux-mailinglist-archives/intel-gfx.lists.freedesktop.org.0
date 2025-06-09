Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EB1AD2095
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B3110E3B4;
	Mon,  9 Jun 2025 14:10:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5jEhw5i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7BD10E3B3;
 Mon,  9 Jun 2025 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478254; x=1781014254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+X0aZpeoWJ4wv0HaXS5ycY3e2lxRuLk9bUXLteiNcv8=;
 b=M5jEhw5iYAHvngrolGI4nhgHW/rhtaN2lZsjkRQSEqKmgNuSAHSKMJQj
 Y11xY/e3UG59ZWqtuPnN56XzdS5+Z86UlXHuHuSXg5XWcMhASlWB4WH8S
 dNrHEjdVZidTGwirPQ12UCXIWS/yJkdYziXlmT4s72IFsiPCWNFx54UtP
 2Foa8vTCpISUA9r/TEUq2k8eDYnY0g09s4Hc/Hm42R5yGUuR3MWAzWDrh
 Asvh2DgelrYInunrkM3q8CyzS+6coQzqnWxvGPmJtMLVvd6t2TJt5KbE+
 ADIKWoQsGrcO9HSUFfQyzN8Cnei8l+C2/x6q1tujgelG9pgCvZKlnLSvS g==;
X-CSE-ConnectionGUID: IO1DL5VVRx6EiQDRF0v2Ow==
X-CSE-MsgGUID: RLcjs27mQQGzizYKez+Ybw==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360710"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360710"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:10:54 -0700
X-CSE-ConnectionGUID: E4B38ClnS1yt5saMu47WuQ==
X-CSE-MsgGUID: fSME+eMFT+ey3fwAHlsQSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765441"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:10:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:10:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 01/21] drm/i915/dsb: Use intel_dsb_ins_align() in
 intel_dsb_align_tail()
Date: Mon,  9 Jun 2025 17:10:26 +0300
Message-ID: <20250609141046.6244-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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
index 1a03c0ef2054..abda04d969c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -528,6 +528,8 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
 {
 	u32 aligned_tail, tail;
 
+	intel_dsb_ins_align(dsb);
+
 	tail = dsb->free_pos * 4;
 	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
 
-- 
2.49.0

