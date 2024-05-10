Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F08018C2798
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4750D10EDB9;
	Fri, 10 May 2024 15:23:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ps/IJAGv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7049010EDB8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354636; x=1746890636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uq84jbQu1unEZg36n/MJhYbK8PSAKbEfQbZKvGLTIjU=;
 b=Ps/IJAGvaUsF3i6vXTcIQpPY4wiY7AhniqZRBV9TEDafQ7k7wXK6AJNm
 58Y9mqH1hWbHnbrkhiY0jJBYoJlLawc7GRlx0md1fi7odZYROGLMhLpza
 LLVOjlO9pvtKxaoyP0lNgF4pcx7Qg0Ac3nrDq6U+y+bq85s3HxUytq7HM
 rT89yntNzC9pubq6yaqGBU6QcWF2Qa5OD3LFYSFG2vYyp/pHK8XWdy4RL
 LQop6rtoXJCsfUXzAzNJgr5d7/PiphugVsOdVHHrHEaLSAbEXnxMGbpBX
 xSdjqu5DNl8xFAYAnkPYVGw1NGn2Kfg4UKJOzuLxD01vGPGDqQS2QOqAm w==;
X-CSE-ConnectionGUID: I74oLnXyT5i+1XoOnpfLZA==
X-CSE-MsgGUID: 9sNk8V8ES82tJDmw+gMpCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468865"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468865"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:23:56 -0700
X-CSE-ConnectionGUID: TXGOBVi3S22LlmTQnFLvYQ==
X-CSE-MsgGUID: IVhrVdViStW526OvRw6hwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29594960"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:23:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:23:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: [PATCH 07/16] drm/i915/gvt: Use the full PLANE_KEY*() defines
Date: Fri, 10 May 2024 18:23:20 +0300
Message-ID: <20240510152329.24098-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
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

Stop hand rolling PLANE_KEY*() register defines and just
use the real thing.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
CC: Zhi Wang <zhi.wang.linux@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index ad3bf60855bc..b53c98cd6d7f 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -1075,15 +1075,15 @@ static int iterate_skl_plus_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(_MMIO(0x70034));
 	MMIO_D(_MMIO(0x71034));
 	MMIO_D(_MMIO(0x72034));
-	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_A)));
-	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_B)));
-	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_C)));
-	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_A)));
-	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_B)));
-	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_C)));
-	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_A)));
-	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_B)));
-	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_C)));
+	MMIO_D(PLANE_KEYVAL(PIPE_A, 0));
+	MMIO_D(PLANE_KEYVAL(PIPE_B, 0));
+	MMIO_D(PLANE_KEYVAL(PIPE_C, 0));
+	MMIO_D(PLANE_KEYMAX(PIPE_A, 0));
+	MMIO_D(PLANE_KEYMAX(PIPE_B, 0));
+	MMIO_D(PLANE_KEYMAX(PIPE_C, 0));
+	MMIO_D(PLANE_KEYMSK(PIPE_A, 0));
+	MMIO_D(PLANE_KEYMSK(PIPE_B, 0));
+	MMIO_D(PLANE_KEYMSK(PIPE_C, 0));
 	MMIO_D(_MMIO(0x44500));
 #define CSFE_CHICKEN1_REG(base) _MMIO((base) + 0xD4)
 	MMIO_RING_D(CSFE_CHICKEN1_REG);
-- 
2.43.2

