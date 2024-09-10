Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29C09738AA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4743C10E7E0;
	Tue, 10 Sep 2024 13:29:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhowgX9a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862E310E7D0;
 Tue, 10 Sep 2024 13:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974993; x=1757510993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yew3bD2+dsiTVXMRrERqnYescYA+QfqsoYpSi2GbBdc=;
 b=lhowgX9aRiPd5scvErDlnebKNFyVwpJ/puVKJixoTWlN9GhoEMxoRclE
 mgN18vZiuwiqq0oJ4H0OzZWWWtPhwqKTNNvQbo6+Qge5ap1wcCpLkNWcT
 zhg97HL0sCFoSY1ou2sxMi5xp0GtTMfksNDuB5me2eMNqp7ROQ9UPVm1Q
 yVC9TKlVN6jdhaMwMv5HRLtBi/lI7O1VW0j/HGYsHcdNoLKknSIVVs10v
 d9Pg2ZAwT4J3GtGgRDQLiKGAwxIHyt5dLFGApmac899KH45T1Dnu7q3s/
 qHFEecREGsFcN8vS7fIltWxrcDIP5LF2ZOx6YvzoO9REFVqTSiK1Miupj w==;
X-CSE-ConnectionGUID: kshtenBKSzy09RT2x4gXRg==
X-CSE-MsgGUID: 9oNP7f3cTsGjcTOwoG9rWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="28500465"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="28500465"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:52 -0700
X-CSE-ConnectionGUID: mEBUie0WRkqlZnYG8LAiuQ==
X-CSE-MsgGUID: IpjsN4FVS02J9oXrkDHbuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="71623410"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 10/11] drm/i915/reg: remove unused DSI register macros
Date: Tue, 10 Sep 2024 16:28:54 +0300
Message-Id: <2a8633038c0bd6ca06236558a609e021b30514f4.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
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

Not needed. Remove.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 70864cf96102..6dbaaca1ab4c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1138,20 +1138,6 @@
 #define _TRANS_MULT_B		0x6102c
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
-/* DSI 0 timing regs */
-#define _TRANS_HTOTAL_DSI0	0x6b000
-#define _TRANS_HSYNC_DSI0	0x6b008
-#define _TRANS_VTOTAL_DSI0	0x6b00c
-#define _TRANS_VSYNC_DSI0	0x6b014
-#define _TRANS_VSYNCSHIFT_DSI0	0x6b028
-
-/* DSI 1 timing regs */
-#define _TRANS_HTOTAL_DSI1	0x6b800
-#define _TRANS_HSYNC_DSI1	0x6b808
-#define _TRANS_VTOTAL_DSI1	0x6b80c
-#define _TRANS_VSYNC_DSI1	0x6b814
-#define _TRANS_VSYNCSHIFT_DSI1	0x6b828
-
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
@@ -2118,11 +2104,6 @@
 #define SWF3(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
 #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
 
-/* ICL DSI 0 and 1 */
-#define _PIPEDSI0CONF		0x7b008
-#define _PIPEDSI1CONF		0x7b808
-
-
 /* VBIOS regs */
 #define VGACNTRL		_MMIO(0x71400)
 # define VGA_DISP_DISABLE			(1 << 31)
-- 
2.39.2

