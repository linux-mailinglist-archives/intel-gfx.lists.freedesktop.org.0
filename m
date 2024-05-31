Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEBB8D6101
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF84D10E4E9;
	Fri, 31 May 2024 11:54:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ij4Oys9p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA9710E3A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156436; x=1748692436;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Z3ENfXUkugZOUEvRu7rnDB4RmNny6NjT4V7G5bk40Bw=;
 b=ij4Oys9pdkB8R9nvGbOXbxn4baWwQevY7930Wtla987inr0V43y3vttR
 Nsk3vGjU/gb8/33lLgCYHMyDFoF6+yt6+unY2y9pSq56It6EePd92vQip
 s4q+XFkwFiD6LAi6rnsdpubd61SZ18HLIxpZtZgHjlnn+lIaiKnQx0xOc
 AwGXivbnZ+emLMbcQfpmzTXAf1P2yT5cbl7eIoFF2/6aoQ/8NOYaWckIb
 V0aoEPjzuk7KgX3Hpf1NaovOc7En+76I/msNtt9zadEYLamac6/rUjT03
 3QD7GIHRIZHD+DyUJi7/tFAMO4pdBtP1LZg3wCZdqfLbXJ5mG/mw22UDL Q==;
X-CSE-ConnectionGUID: MAXBkJK9SDKusEGCs82xXA==
X-CSE-MsgGUID: Jj8TkWPEQN6Kdw39+8zMHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13864662"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13864662"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:53:56 -0700
X-CSE-ConnectionGUID: +7x0HSgnSSG5eRD/QrKRww==
X-CSE-MsgGUID: TrBgeOXTRW+vvfanSlzqpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36135000"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:53:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:53:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915: Add a separate defintiion for PIPE_CRC_RES_HSW
Date: Fri, 31 May 2024 14:53:39 +0300
Message-ID: <20240531115342.2763-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
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

On hsw+ we only have one CRC result registers, instead of the
five we have on ivb, and some of the others have been repurposed
to serve other CRC related purposed.

Since the hsw+ vs. pre-hsw register operate quite diffently
let's add a separate definition for the hsw+ variant to make the
situation a bit more clear. Also since we only use this from a
hsw+ codepath there is no real benefit to be had with reusing
the ivb register definition.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 7db87dfcb12a..d2d70b81aef9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -357,7 +357,7 @@ static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_HSW(pipe)),
 				     0, 0, 0, 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
index a1217a4d6f2e..d06ff3516dbc 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
@@ -92,4 +92,9 @@
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
 #define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)
 
+/* hsw+ */
+#define _PIPE_CRC_RES_A_HSW		0x60064
+#define _PIPE_CRC_RES_B_HSW		0x61064
+#define PIPE_CRC_RES_HSW(pipe)			_MMIO_PIPE(pipe, _PIPE_CRC_RES_A_HSW, _PIPE_CRC_RES_B_HSW)
+
 #endif /* __INTEL_PIPE_CRC_REGS_H__ */
-- 
2.44.1

