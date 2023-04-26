Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B736EF5CF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AD710E1DF;
	Wed, 26 Apr 2023 13:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D767C10E0EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682517028; x=1714053028;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CFGFEu3Qk+20foU10dWHI/2qne8xRpDA7YefsE6URFg=;
 b=iM468ss/Yj0OH2In+vgb58Ni94m0iCbZItLmOufh/p8WXhv4HDV+FhXL
 zVkbvZSCRPGj7YQwIto46+dyyRLo1TzYnJ4cZ0+2F33lmTF2abvXOOUJ5
 jseUl6tkjuJaGJHkGqEuPB+Ws6t2ywAy6yD9E1H1+7oYOoxfuro8lA01e
 eBl6TrlWuVx0my+O0HBDOUTYBAesPwOTdbWRe4UCX4mwFVA7z4bF4xq0/
 HlYS6CUSLTxzcw/aXAxWlGyw6Msd3HCAO6AjeUxvmlL2coX93runArLjW
 spo+/++eRrGZH9+UIinoiacD3+QzrRmK7/q56AU1YkyR1O3ggrXIlmFzR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="327436765"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327436765"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:50:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805514248"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="805514248"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2023 06:50:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Apr 2023 16:50:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:50:14 +0300
Message-Id: <20230426135019.7603-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/7] drm/i915: Remove dead scaler register
 defines
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have some duplicated scaler register defines that are
never used. Remove them.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f7294a9b5cfa..d3f5771bd82b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4046,18 +4046,6 @@
 #define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
 #define PF_HSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_HSCALE, _PFB_HSCALE)
 
-#define _PSA_CTL		0x68180
-#define _PSB_CTL		0x68980
-#define PS_ENABLE		(1 << 31)
-#define _PSA_WIN_SZ		0x68174
-#define _PSB_WIN_SZ		0x68974
-#define _PSA_WIN_POS		0x68170
-#define _PSB_WIN_POS		0x68970
-
-#define PS_CTL(pipe)		_MMIO_PIPE(pipe, _PSA_CTL, _PSB_CTL)
-#define PS_WIN_SZ(pipe)		_MMIO_PIPE(pipe, _PSA_WIN_SZ, _PSB_WIN_SZ)
-#define PS_WIN_POS(pipe)	_MMIO_PIPE(pipe, _PSA_WIN_POS, _PSB_WIN_POS)
-
 /*
  * Skylake scalers
  */
-- 
2.39.2

