Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BA7A64505
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 811EA10E3B6;
	Mon, 17 Mar 2025 08:19:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kfBTBXR3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 123D010E3AB;
 Mon, 17 Mar 2025 08:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742199561; x=1773735561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bNHVE18D5chIfCvULR9bDHozvrpoINNAL921VILsd50=;
 b=kfBTBXR30bOIOtUQv9jDKWskz5YdJO4bFSmZFvE0zfo3pDY/JvFljPVJ
 yAt+/VsO+ah0yVtZQ3mqwcF4WOVtaCgXdVCEZ+7yjR2vzgpDkE9GQVYxW
 0PQhZrVl+BptWad5vZFqNHNGf2JNve685LSXf4+jZE1gkFmAWkkqUvO5E
 kVi0X3ztpUPmkIH98IjnuBo+ZsGdmzsFiZIHinjYUV7a25Umbjo1cE1Zb
 l5CZE15Ck+yNGEBsdbwux577Qn1oyUSuMUsRp7Zsq1Spu+WjZG60WjVeT
 6nPUgjLS/2zFtqIUGA7fC0YjnkW/5L/RZm9NpbSyYOUfQTxuPD6rohmNw g==;
X-CSE-ConnectionGUID: PK/diOyJQy6Kr5KLZXivCQ==
X-CSE-MsgGUID: E/9exITnTKiEi/mgSvuTcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54653496"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54653496"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:21 -0700
X-CSE-ConnectionGUID: vdA8eVqMTWWxhb8hMdBFAQ==
X-CSE-MsgGUID: 5uYYEO4aSzeicxC9oPvNKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121677144"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 03/11] drm/i915/dmc: Add PIPEDMC_EVT_CTL register definition
Date: Mon, 17 Mar 2025 10:18:57 +0200
Message-ID: <20250317081905.3683654-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250317081905.3683654-1-jouni.hogander@intel.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
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

