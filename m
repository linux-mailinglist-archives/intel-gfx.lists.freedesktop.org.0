Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622148FB72A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE22B10E4FC;
	Tue,  4 Jun 2024 15:29:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eQw0A413";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E01910E4FF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514969; x=1749050969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o5p1SlUGt2Kpj/of/vrU7AR1n619697awxaQrIav+Og=;
 b=eQw0A413QsMaFORiVk3ALoo3BnvGp3Vp7I7GxLFYlE6kl+EXDjB33ou/
 +iLHhu3fSg94NFMiAx3NyeqNbKicr1M/v/H7lU35Dp9/DROUPYeut/Vfq
 7R+Zfzp+e+SC2cKHS7nEpulIhdP1g7JKnvdNTMO3iBpYVKe39BoLkIo5j
 dQdaRlM8hp6rLYVDYYByuie/lI0u9bjrgIhRPHLJSsM42xKj2YId2Hz59
 KIkXcHlCqyAorG3ZsQuWmEzr46icWX0v7DdsgEnEiNlGcN+iwtEyfM3qD
 TcsL8lKsS0U6fnsIUjqTgEgPkdTqu91RDQkOuiFGW4HPcvJpItd478aad w==;
X-CSE-ConnectionGUID: CcBMthLdQNmGrURHhXIQPg==
X-CSE-MsgGUID: /WZYeUqoTvKgp1ErcWiFYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949639"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949639"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:29 -0700
X-CSE-ConnectionGUID: DqQqKZv8Rm64icBgT3G2fg==
X-CSE-MsgGUID: AXLy2HNARA2fuTLF1o06NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60465850"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 38/65] drm/i915: pass dev_priv explicitly to _PIPEBSTAT
Date: Tue,  4 Jun 2024 18:25:56 +0300
Message-Id: <ede50c639f247f2b1bf9673b5bf2997d1999d8e3.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _PIPEBSTAT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8dd4b5a72b22..0bbe2f8aff4b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2298,7 +2298,7 @@
 /* Pipe B */
 #define _PIPEBDSL(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)
 #define _TRANSBCONF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
-#define _PIPEBSTAT		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
+#define _PIPEBSTAT(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
 #define _PIPEBFRAMEHIGH		0x71040
 #define _PIPEBFRAMEPIXEL	0x71044
 #define _PIPEB_FRMCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71040)
-- 
2.39.2

