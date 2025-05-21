Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E39ABFCC4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48AB10E78C;
	Wed, 21 May 2025 18:17:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cj0+sm9f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F2F10E76C;
 Wed, 21 May 2025 18:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851415; x=1779387415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iOzsr0uH607Klr5Y1Nv0NV+YgYjAn5hd+ze7SOtoSfw=;
 b=Cj0+sm9fsjQqDlrg4RLeJF7GH76jL/lg/iAiW0ujB+Nt4CFaQTCxSfQX
 1ojGKGBe7NKJhoo/J/RDOABwAsWlMygLccWEPL5Uc/8c+uJM5j9O2z0a9
 r+EAkVEbJtNDO1A3T40PH7q/f4flP1CUBArYolZa3ILeJovxbyGoaMsTc
 geKibcQnkPdj2oKTvUXhQwTT3U237nMxX/r+aN5saC0ZB/KwHObO0IVAC
 bvgASm2daKEsJFVm/OZyNxQLrtMZHTq87gJaJiCqHohaTRPrv5AAiIvb5
 MzoetDcaSZAFTqYR3xPImfB+IQ61gefrZFRIY1WM8mI8pVORBO7XXL6kv Q==;
X-CSE-ConnectionGUID: FGnAVPddTNeOypyOqUd56A==
X-CSE-MsgGUID: aq4G8eTISG2KaWhstrhcFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244711"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244711"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:16:55 -0700
X-CSE-ConnectionGUID: 82H/Z2q5TNidXN4UQ/65ZA==
X-CSE-MsgGUID: nAKb4QgoSu60mSVC6IJvFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322277"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:16:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:16:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 02/13] drm/i915/dsb: Use intel_dsb_ins_align() in
 intel_dsb_align_tail()
Date: Wed, 21 May 2025 21:16:34 +0300
Message-ID: <20250521181645.32737-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
References: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
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

