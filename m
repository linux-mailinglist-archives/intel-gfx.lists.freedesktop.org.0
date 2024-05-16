Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1401C8C7808
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:56:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8615B10ED38;
	Thu, 16 May 2024 13:56:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SHXjDpv/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A09BF10ED33
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867807; x=1747403807;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Cza/50qwo1FdfsIqkuXd7WNlIfzMpQSLqC8uOXJ3jm4=;
 b=SHXjDpv/RkY8qk0M1elJOdtfC3H8x8rECpL6vz0EGuZnKJSVlUYss4U7
 vWG4hRyv4t+/De1uDt7eltsUvlYqDInvlwHngID6DfWLGTiQZ0WtBRWhf
 TTY95tUTnmNc0QuJOAAMldFeXyZEGxef7pT4OaevJ2Un6A6rb62GLW4mi
 c7w9FVkZE4ZTTcKsu7K49BliZnmWnnIyS69ELRYimhTZ3g99s1y3Ikfcv
 z+IiLb0X+Pk0kYkQ3vZAxkJ2ArXhyRGasChyqiG9AG5uVUEsaIpnyvDvf
 +b1lG3uuvNs2YXEll1dVqx+XWJtRG/yxa8O24e5fSh4vUfaynBdrXXrJ6 Q==;
X-CSE-ConnectionGUID: qL7KmpabRByKf4fLfLgAlA==
X-CSE-MsgGUID: nnnPOHdCSC+Z7PdTkyFsng==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357199"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357199"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:47 -0700
X-CSE-ConnectionGUID: KpIZrhJxR5CwYZfgfIAgDw==
X-CSE-MsgGUID: DFqQs5aKRim9rbJ715S3Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435166"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/13] drm/i915: Move PIPEGCMAX to intel_color_regs.h
Date: Thu, 16 May 2024 16:56:17 +0300
Message-ID: <20240516135622.3498-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
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

PIPEGCMAX was left behind when all other gamma registers moved
into intel_color_regs.h.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color_regs.h | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h                 | 4 ----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index bb99ea533842..61c18b4a7fa5 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -36,6 +36,11 @@
 						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
 						  (i) * 4)
 
+/* i965/g4x/vlv/chv */
+#define  _PIPEAGCMAX           0x70010
+#define  _PIPEBGCMAX           0x71010
+#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
+
 /* ilk+ palette */
 #define _LGC_PALETTE_A           0x4a000
 #define _LGC_PALETTE_B           0x4a800
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 52b029cd3981..f5e8833cc37e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1882,10 +1882,6 @@
 #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
 #define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
 
-#define  _PIPEAGCMAX           0x70010
-#define  _PIPEBGCMAX           0x71010
-#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
-
 #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
 #define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
 #define   PIPE_ARB_USE_PROG_SLOTS	REG_BIT(13)
-- 
2.44.1

