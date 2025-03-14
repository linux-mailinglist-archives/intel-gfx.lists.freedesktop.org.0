Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B90A60FBC
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 12:18:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498A510E9CD;
	Fri, 14 Mar 2025 11:18:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ii9O/97S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC3C10E9CA;
 Fri, 14 Mar 2025 11:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741951136; x=1773487136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bNHVE18D5chIfCvULR9bDHozvrpoINNAL921VILsd50=;
 b=Ii9O/97Sa9PfQDhR1skIlYdfKx243BBBcrSllic18CKh0Wi57ZjG2+KP
 xNY2Tqs6NL9XNd98nbSgzR2Dk8b8AIn344b3Kdmaab/zC8d5DWLOPigYV
 OsTGF6x6lhR5lf46GhMcYhzrW5nvchLuTusK6aYyp7WrEs71kshX+OJV8
 NDIB5kYHN15/u38nXuozd/8QkK1Mm0jRaJo24Ux8904Ud/0oMEUAQBhv6
 g8Uqup023MV8A2xg965XR4Yh66gzYJO+UX1p/EmlR+ZMwKlI3RfrYILUz
 AOVznAUWHdBmgNM3R9XSxa+ZamIdoInQhJrhTffmGgOfkKjFe9qwTfLwg A==;
X-CSE-ConnectionGUID: bbc1g75vQKKnAaUz7VtwXg==
X-CSE-MsgGUID: dtET4zbUTnKERFb0pyWoSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="68467017"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="68467017"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:18:55 -0700
X-CSE-ConnectionGUID: ZY1L576XSliDJykU92pWXg==
X-CSE-MsgGUID: RX8fmjPnQH+7WGsEvU378g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126289639"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.27])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:18:53 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 02/11] drm/i915/dmc: Add PIPEDMC_EVT_CTL register definition
Date: Fri, 14 Mar 2025 13:18:30 +0200
Message-ID: <20250314111839.1051945-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250314111839.1051945-1-jouni.hogander@intel.com>
References: <20250314111839.1051945-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

To implement workaround for underrun on idle PSR HW issue (Wa_16025596647)
we need PIPEDMC_EVT_CTL_4 register. Add PIPEDMC_EVT_CTL_4 register
definitions.

Bspec: 67576

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 1bf446f96a10c..2f1e3cb1a2477 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -21,6 +21,12 @@
 #define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
 #define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
 
+#define _MTL_PIPEDMC_EVT_CTL_4_A	0x5f044
+#define _MTL_PIPEDMC_EVT_CTL_4_B	0x5f444
+#define MTL_PIPEDMC_EVT_CTL_4(pipe)	_MMIO_PIPE(pipe,		\
+						   _MTL_PIPEDMC_EVT_CTL_4_A, \
+						   _MTL_PIPEDMC_EVT_CTL_4_B)
+
 #define _ADLP_PIPEDMC_REG_MMIO_BASE_A	0x5f000
 #define _TGL_PIPEDMC_REG_MMIO_BASE_A	0x92000
 
-- 
2.43.0

