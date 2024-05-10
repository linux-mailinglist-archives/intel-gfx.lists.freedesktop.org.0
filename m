Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 333138C27A0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8BC10EDBF;
	Fri, 10 May 2024 15:24:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T0ydhHOX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31EE410EDBD
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354648; x=1746890648;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UWiTi3cK0HPEcZZMizhbqx24vfD3G6ebSrt4WWzt108=;
 b=T0ydhHOXBn4v2Q8F/dLbhnVh/kyprMOXdKdymVdSHDTtMGk/QKxL0Yj2
 cRZwz6BWY0/seAZCYjz6TxKn1+Jh6niRuNZ7j/NsYnoj8g1RhAZCun0xV
 bW64aoRJhKlG6aOl0Yd5knPMumxRKhOF6tpwoYbsn+/14ZW1RE+0Du0y1
 rv6rPv1iv3k1/byFPQfbeUFqDzpbVo+KUwbGelx/k0nEk7Iijz2W1YvUM
 nzIEZ1LuHt0XconrJLbpqDdz3VirwBD8ths5qlb5NOtehtnhngxsKoG/i
 6LEaOm1kTVU++jQl46+u5Z1m2d2k5IQm1gEXuz2RXyhhVL2v2FPzTy927 A==;
X-CSE-ConnectionGUID: OYeX28EMTu6no2MGrHFwwg==
X-CSE-MsgGUID: P09N3H6ARJWPqhT+fiB9lw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468871"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468871"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:24:08 -0700
X-CSE-ConnectionGUID: /sTzBxEpRuqKsqZ74C417g==
X-CSE-MsgGUID: FaR7DeNxT4eNZ3kyWPNAkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29595012"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:24:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:24:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/16] drm/i915: Use REG_BIT for PLANE_WM bits
Date: Fri, 10 May 2024 18:23:24 +0300
Message-ID: <20240510152329.24098-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
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

A couple of PLANE_WM bits were still using the hand
rolled (1<<N) form. Replace with REG_BIT().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane_regs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 0ad14727e334..8ef9bd50d021 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -300,8 +300,8 @@
 	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + (index) * 4)
 
 #define _PLANE_WM_1_A_0				0x70240
-#define   PLANE_WM_EN				(1 << 31)
-#define   PLANE_WM_IGNORE_LINES			(1 << 30)
+#define   PLANE_WM_EN				REG_BIT(31)
+#define   PLANE_WM_IGNORE_LINES			REG_BIT(30)
 #define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
 #define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
 #define _PLANE_WM_1_B_0				0x71240
-- 
2.43.2

