Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 664CF64E53D
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5CB10E5AB;
	Fri, 16 Dec 2022 00:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80F1D10E5AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151103; x=1702687103;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r4TIe8qGFRK32xyJiPEJfGt5rX9WSvaMi69vSphASL4=;
 b=CyyO67dNamWXEwO62YjAQCnxhVK9iKLZmUxlppGjiqcfH97GjdxxXkxL
 18QRFymad4LWYu5yeRrzDApGclPyG7X7Sx7iBFCtHRtc5R/z1khrJqwmt
 VZUpZlIjpyAr+uhd9MmNOQaIIhJZLMa6RjJHCgXRqQBz4MBkdGXtWCvKh
 e+simeogt7QU888/e/quUp8NswTyMHrLtKYOWq27UY/ljU9j3G1UkXZ8/
 MEx8HhoVUjcdy5eY6+Uij5KN8ADFZjPGa9Ikhofwsu+TS0Lycx5jWYn7f
 OuIM4+SYWKyrVgIenH1y9Uslmbh0Z0GWMKbUUcWvQyi1OqKtDq9Bp7ULn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103813"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103813"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100195"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100195"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:00 +0200
Message-Id: <20221216003810.13338-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/dsb: Align DSB register writes
 to 8 bytes
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

Every DSB instruction has to be 8byte aligned. Make sure
that is the case for the non-indexed register writes as well.
The way this could end up unaligned is we emitted an odd
number of indexed register writes beforehand.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 90a22af30aab..6abfd0fc541a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -172,6 +172,9 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 		return;
 	}
 
+	/* Every instruction should be 8 byte aligned. */
+	dsb->free_pos = ALIGN(dsb->free_pos, 2);
+
 	dsb->ins_start_offset = dsb->free_pos;
 	buf[dsb->free_pos++] = val;
 	buf[dsb->free_pos++] = (DSB_OPCODE_MMIO_WRITE  << DSB_OPCODE_SHIFT) |
-- 
2.37.4

