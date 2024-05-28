Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A70638D1937
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C360611218D;
	Tue, 28 May 2024 11:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wf9y554x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BCE311218E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716894957; x=1748430957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JXxQ2XI7WrosssasVjjpP8AimGYxHJbMHOQ9gdA0o1o=;
 b=Wf9y554xG39nGUG3+I6LfPWTh6KAm1wTGbWztoSO+RrO7CzLo5HhJ/k3
 G+hU6SJGPpSEbs7JAenKsVhGHkvC+oqE0WqJjWWlIEKNARzujzJMWbvWX
 TeYMjpv10B05ipWlChsIMFp9b9Bcbi8vTs+fY/AMjbtLoVzR7VmxTMSMU
 6DTLmG8sLPRcuuzc8aWey2/Oric241b0ZEZvxle4yJ2Yb5BCeEDoZtufq
 0czwygiTyEXKR2bPgya32ntxRi6w5Va/+65NNogGXwvv0KceOSLLlT+a4
 q5HfKFZJpnDJLJd7DESswUFpIm1gtOXzsnJ5QWdYvjSdULxmjeXaYKGIr Q==;
X-CSE-ConnectionGUID: 8YgtpYDnQlevDNk/F0Z57g==
X-CSE-MsgGUID: A/bOkw7UQZiHCqgDEjPvsg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353898"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13353898"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:15:57 -0700
X-CSE-ConnectionGUID: /4FH6AZnQUO6KqytGNyWBA==
X-CSE-MsgGUID: krS8OZIWS/Oe3VVgIp6zig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39877379"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:15:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915: remove unused DP AUX CH register macros
Date: Tue, 28 May 2024 14:15:39 +0300
Message-Id: <c97134b22d802ae82b19c299b79807ee60d9fae5.1716894909.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716894909.git.jani.nikula@intel.com>
References: <cover.1716894909.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

The intermediate macros are no longer needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index be57812a6b07..989cc5691490 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3603,28 +3603,14 @@
 #define PCH_DP_B		_MMIO(_PCH_DP_B)
 #define _PCH_DPB_AUX_CH_CTL	0xe4110
 #define _PCH_DPB_AUX_CH_DATA1	0xe4114
-#define _PCH_DPB_AUX_CH_DATA2	0xe4118
-#define _PCH_DPB_AUX_CH_DATA3	0xe411c
-#define _PCH_DPB_AUX_CH_DATA4	0xe4120
-#define _PCH_DPB_AUX_CH_DATA5	0xe4124
 
 #define _PCH_DP_C		0xe4200
 #define PCH_DP_C		_MMIO(_PCH_DP_C)
 #define _PCH_DPC_AUX_CH_CTL	0xe4210
 #define _PCH_DPC_AUX_CH_DATA1	0xe4214
-#define _PCH_DPC_AUX_CH_DATA2	0xe4218
-#define _PCH_DPC_AUX_CH_DATA3	0xe421c
-#define _PCH_DPC_AUX_CH_DATA4	0xe4220
-#define _PCH_DPC_AUX_CH_DATA5	0xe4224
 
 #define _PCH_DP_D		0xe4300
 #define PCH_DP_D		_MMIO(_PCH_DP_D)
-#define _PCH_DPD_AUX_CH_CTL	0xe4310
-#define _PCH_DPD_AUX_CH_DATA1	0xe4314
-#define _PCH_DPD_AUX_CH_DATA2	0xe4318
-#define _PCH_DPD_AUX_CH_DATA3	0xe431c
-#define _PCH_DPD_AUX_CH_DATA4	0xe4320
-#define _PCH_DPD_AUX_CH_DATA5	0xe4324
 
 #define PCH_DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_CTL, _PCH_DPC_AUX_CH_CTL)
 #define PCH_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_DATA1, _PCH_DPC_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
-- 
2.39.2

