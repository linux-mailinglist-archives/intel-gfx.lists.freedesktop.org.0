Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7134E8C780D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A743D10ED37;
	Thu, 16 May 2024 13:57:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LBz6g0jt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E525B10ED3D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867822; x=1747403822;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FZWxfW1sT9Nq8FdS4IsTRfs+yFQPaZDgDuksVcwbMcM=;
 b=LBz6g0jtMaxn3cyV7Eap+l7zhgeIBa0LOPhJxhSHAuEVPTHwZP6wOzel
 CePORocsH4maXhufaW/V4komxK9LfCDKtssQJ22VbCqVGmrv5/ZGh/1Gw
 JiAyZJVcZdPNljeLJg+u7rTm6sUHy2Nk5RTmqTqVVfrK/Zy7fO0GhifgR
 W0aZU5H8oQXO7jf3DNYuooiMHSt4u6on/oY4JJCDc9t13cUq5GkKHoSCH
 GeECv/xzle/JhFkO3fA6kAeNW3aOiHFHcIXmDzLE6xs0A/ElJBKPl48+6
 rOJi/lw/+CvICW5DKOrdCnwQnQWycQs78mKfu3qjIyC9ec02v2FwTZEUw Q==;
X-CSE-ConnectionGUID: mU3wsa+ySQuJLmV8PMvs/Q==
X-CSE-MsgGUID: cDpfvfefRhWyDuLK52jEqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357221"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357221"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:57:01 -0700
X-CSE-ConnectionGUID: 8m9DPkAVSCOF46GCW0eOnw==
X-CSE-MsgGUID: xWcBuo9aSW2bpA8p3+IsLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435235"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:57:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/13] drm/i915: Document which platforms use which sprite
 registers
Date: Thu, 16 May 2024 16:56:22 +0300
Message-ID: <20240516135622.3498-14-ville.syrjala@linux.intel.com>
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

Note which sprite registers are valid for which platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_sprite_regs.h  | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite_regs.h b/drivers/gpu/drm/i915/display/intel_sprite_regs.h
index c27adbaf0f00..73021e3ced6d 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite_regs.h
@@ -6,6 +6,7 @@
 
 #include "intel_display_reg_defs.h"
 
+/* g4x/ilk/snb video sprite */
 #define _DVSACNTR		0x72180
 #define _DVSBCNTR		0x73180
 #define DVSCNTR(pipe) _MMIO_PIPE(pipe, _DVSACNTR, _DVSBCNTR)
@@ -111,6 +112,7 @@
 #define _DVSBGAMCMAX_ILK	0x73340 /* ilk/snb */
 #define DVSGAMCMAX_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMCMAX_ILK, _DVSBGAMCMAX_ILK) + (i) * 4) /* 3 x u1.10 */
 
+/* ivb/hsw/bdw sprite */
 #define _SPRA_CTL		0x70280
 #define _SPRB_CTL		0x71280
 #define SPRCTL(pipe) _MMIO_PIPE(pipe, _SPRA_CTL, _SPRB_CTL)
@@ -140,8 +142,8 @@
 #define   SPRITE_TILED				REG_BIT(10)
 #define   SPRITE_DEST_KEY			REG_BIT(2)
 
-#define _SPRA_LINOFF		0x70284
-#define _SPRB_LINOFF		0x71284
+#define _SPRA_LINOFF		0x70284 /* ivb */
+#define _SPRB_LINOFF		0x71284 /* ivb */
 #define SPRLINOFF(pipe) _MMIO_PIPE(pipe, _SPRA_LINOFF, _SPRB_LINOFF)
 
 #define _SPRA_STRIDE		0x70288
@@ -181,24 +183,24 @@
 #define _SPRB_KEYMAX		0x712a0
 #define SPRKEYMAX(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMAX, _SPRB_KEYMAX)
 
-#define _SPRA_TILEOFF		0x702a4
-#define _SPRB_TILEOFF		0x712a4
+#define _SPRA_TILEOFF		0x702a4 /* ivb */
+#define _SPRB_TILEOFF		0x712a4 /* ivb */
 #define SPRTILEOFF(pipe) _MMIO_PIPE(pipe, _SPRA_TILEOFF, _SPRB_TILEOFF)
 #define   SPRITE_OFFSET_Y_MASK	REG_GENMASK(31, 16)
 #define   SPRITE_OFFSET_Y(y)	REG_FIELD_PREP(SPRITE_OFFSET_Y_MASK, (y))
 #define   SPRITE_OFFSET_X_MASK	REG_GENMASK(15, 0)
 #define   SPRITE_OFFSET_X(x)	REG_FIELD_PREP(SPRITE_OFFSET_X_MASK, (x))
 
-#define _SPRA_OFFSET		0x702a4
-#define _SPRB_OFFSET		0x712a4
+#define _SPRA_OFFSET		0x702a4 /* hsw/bdw */
+#define _SPRB_OFFSET		0x712a4 /* hsw/bdw */
 #define SPROFFSET(pipe) _MMIO_PIPE(pipe, _SPRA_OFFSET, _SPRB_OFFSET)
 
 #define _SPRA_SURFLIVE		0x702ac
 #define _SPRB_SURFLIVE		0x712ac
 #define SPRSURFLIVE(pipe) _MMIO_PIPE(pipe, _SPRA_SURFLIVE, _SPRB_SURFLIVE)
 
-#define _SPRA_SCALE		0x70304
-#define _SPRB_SCALE		0x71304
+#define _SPRA_SCALE		0x70304 /* ivb */
+#define _SPRB_SCALE		0x71304 /* ivb */
 #define SPRSCALE(pipe) _MMIO_PIPE(pipe, _SPRA_SCALE, _SPRB_SCALE)
 #define   SPRITE_SCALE_ENABLE			REG_BIT(31)
 #define   SPRITE_FILTER_MASK			REG_GENMASK(30, 29)
@@ -224,6 +226,7 @@
 #define _SPRB_GAMC17		0x7144c
 #define SPRGAMC17(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC17, _SPRB_GAMC17) + (i) * 4) /* 3 x u2.10 */
 
+/* vlv/chv sprite */
 #define _VLV_SPR(pipe, plane_id, reg_a, reg_b) \
 	_PIPE((pipe) * 2 + (plane_id) - PLANE_SPRITE0, (reg_a), (reg_b))
 #define _MMIO_VLV_SPR(pipe, plane_id, reg_a, reg_b) \
-- 
2.44.1

