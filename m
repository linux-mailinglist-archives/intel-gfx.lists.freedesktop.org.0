Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E2A8FB73B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A87410E50B;
	Tue,  4 Jun 2024 15:30:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bZkLqbdT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2FB610E50B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515009; x=1749051009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jna1dmYq5nYpMaZNt8cu6LGNQPiH5l2gljA5jv8xtyU=;
 b=bZkLqbdT46b3BBwtkt1UZ8bqwXqi8gOviVnHz7q1qCSYx9ZLSqayub/j
 eNFBTCcKglN8/+moanG8zVQJK/Ck/MANGrEcm3nfiLEAVqaPBBSH5Ybj2
 Jy6gIIBVP5Lqi4UUIHG+7FtOZb4sBv2v341PC7+BgaVeIQFuAZMG7frUV
 QGhr7i6e8YgkARQ3/uISL5LXxrOSF2nL0iSJYyE5IpY9kZnZcldht6/vq
 0fdkW6yAXwv+SL/r24mL7JOs8Wz2f+D3J/p8g6vpbqxW5AKMejcvwX6J+
 5Y0yTI6JO2APZaJ00badX5tPo6VXcLzcreiWRwo5+jWl4La6WNJBtpTwh A==;
X-CSE-ConnectionGUID: MHmP+2DRSg+BhgE0F1tQXg==
X-CSE-MsgGUID: s2ssL90bSdiib7CTObak3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31605376"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="31605376"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:08 -0700
X-CSE-ConnectionGUID: OJtGAdY6RoiBfWHi3nOx0w==
X-CSE-MsgGUID: 5+R/N4FHSeiW4zi8vjl/bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37144887"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 45/65] drm/i915: pass dev_priv explicitly to _DSPBSIZE
Date: Tue,  4 Jun 2024 18:26:03 +0300
Message-Id: <fae5b3a14efab76ea4a549794512774659c36fc8.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _DSPBSIZE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 38c8b98d95c3..36ed23b93475 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2312,7 +2312,7 @@
 #define _DSPBADDR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
 #define _DSPBSTRIDE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
 #define _DSPBPOS(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
-#define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
+#define _DSPBSIZE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
 #define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
 #define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
 #define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
-- 
2.39.2

