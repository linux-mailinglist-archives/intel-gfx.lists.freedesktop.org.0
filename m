Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD683A14124
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 18:48:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5BA10E265;
	Thu, 16 Jan 2025 17:48:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dxszFMYp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B56E10E9E1;
 Thu, 16 Jan 2025 17:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737049685; x=1768585685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PqC29pBQT5aqXTGnzboVJsSPeJ916nRSF/kBRCMGZPc=;
 b=dxszFMYpyroJk58YinlRiJ59+gOKZ6qOO9Lq62IR4HxWdvzHyOGQ+3mq
 jMGEcWJy8tkf9ZHwFpNc1L8TG/Be7335D7Bhe/xstetWioTx78a3cnIrS
 qi+RoqzSI2z0H00pRvwNFMTu0632yUq+6kWhbfoulzKZJX13qYxhhYsWQ
 OQ6vH23ujgkJpABpI9VLQSZVFvtcpC+llrbn1Rv4B8vHyWI+vbOnpMpUv
 mx4EzLWJQZbyD1pSOFk6XpLwz02yYE+6sS7/twPovOjE+a0M1L5eXdVU5
 IPSC1pk4eQH4+H++kIUcZGXfCwDnzf9Cl9pJbFhraoSz+Vfcht5GDNIJ9 g==;
X-CSE-ConnectionGUID: l1ndfz8HRX+246wxH0ZKqg==
X-CSE-MsgGUID: gbJ6bxRjS16iFYXQguaJtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48847549"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="48847549"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:48:05 -0800
X-CSE-ConnectionGUID: lSZyd+RMTaOw5pS/FXaD/A==
X-CSE-MsgGUID: 0YXRrbnISqe2WuiqRMFQ1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105712602"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 09:48:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 19:48:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/8] drm/i915: Add missing else to the if ladder in missing
 else
Date: Thu, 16 Jan 2025 19:47:51 +0200
Message-ID: <20250116174758.18298-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
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

The if ladder in gen8_de_pipe_fault_mask() was missing one
else, add it. Doesn't actually matter since each if branch
just returns directly. But the code is less confusing when
you always do things the same way.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 069043f9d894..f06273d9bc8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -856,7 +856,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 			GEN9_PIPE_PLANE3_FAULT |
 			GEN9_PIPE_PLANE2_FAULT |
 			GEN9_PIPE_PLANE1_FAULT;
-	if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
+	else if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
 		return GEN12_PIPEDMC_FAULT |
 			GEN9_PIPE_CURSOR_FAULT |
 			GEN11_PIPE_PLANE5_FAULT |
-- 
2.45.2

