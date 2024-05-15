Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA578C6605
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C95F10E74E;
	Wed, 15 May 2024 11:57:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oEwGFRz9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDDBA10E74E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774250; x=1747310250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XVebK75tAts2xtlFARnqe3/D7DEGQrzanSushJS/1lw=;
 b=oEwGFRz9GeKpKIOdOEOO1RyMmUfleBGzVL0v5/FZt3jJ80XkYYtUxd0Z
 mHD3yVTpHfkEddypWhBMYS6FI/dZryYi5pD0QrovRHcEf2AJ+ZKXPqnTp
 AcrWDGzA+cZq/UGEsR+wE0ppBCxMkzS1A6/99zs289b5vj8fZAFO2pj9x
 e57kKTZa89Hv2p6tgrYKyRTWcjbplG7E2XuZhEMo2y2iTMMl9h/fv3ceQ
 pDy3zoBLP0h3Zvvf2ffVQAAhWCiU0NZd82W6XxvA391UI/V6j3E8G9Y6o
 xDkLPnNZBpmpXwPie+tslAzyZPDfP4Vo6ZEZOTKpHSwGpCnr+EapPqUHK A==;
X-CSE-ConnectionGUID: gh+7zulURAyM8AbSr+YzfA==
X-CSE-MsgGUID: DkrQzdIxSOOOr3A2htNCqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11948033"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11948033"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:30 -0700
X-CSE-ConnectionGUID: 7HAOoVIbTHGGQ246MZYVHw==
X-CSE-MsgGUID: RaVJlVFsSle49vEgD6r/NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="54237635"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 7/8] drm/i915: pass dev_priv explicitly to CUR_CHICKEN
Date: Wed, 15 May 2024 14:56:47 +0300
Message-Id: <0bd1fa8ab346ba2bb40f435136b975b472ad2bc8.1715774156.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715774156.git.jani.nikula@intel.com>
References: <cover.1715774156.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the CUR_CHICKEN register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index 40b01205e247..3e948526e9ab 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -72,7 +72,7 @@
 #define CURPOS_ERLY_TPT(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
 #define CURSIZE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
 #define CUR_FBC_CTL(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
-#define CUR_CHICKEN(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
+#define CUR_CHICKEN(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
 #define CURSURFLIVE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
 
 /* skl+ */
-- 
2.39.2

