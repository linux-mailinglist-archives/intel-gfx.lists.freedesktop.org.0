Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 871474455A5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:46:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08BD89CE1;
	Thu,  4 Nov 2021 14:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835A789CE1
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:46:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="317919059"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="317919059"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="489982365"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 04 Nov 2021 07:46:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:46:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:17 +0200
Message-Id: <20211104144520.22605-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/17] drm/i915: Relocate FBC_LLC_READ_CTRL
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

In the case of FBC_LLC_READ_CTRL the "FBC" stands for
frame buffer _caching_, not frame buffer compression.
Move the register definition out from the middle of the
frame buffer compression register definitions. Let's
just stick it somewhere with similar looking register
offsets.

And while at it switch it over to REG_BIT().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3463853e4a6d..07d6cf76c389 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -371,6 +371,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define VLV_G3DCTL		_MMIO(0x9024)
 #define VLV_GSCKGCTL		_MMIO(0x9028)
 
+#define FBC_LLC_READ_CTRL	_MMIO(0x9044)
+#define   FBC_LLC_FULLY_OPEN	REG_BIT(30)
+
 #define GEN6_MBCTL		_MMIO(0x0907c)
 #define   GEN6_MBCTL_ENABLE_BOOT_FETCH	(1 << 4)
 #define   GEN6_MBCTL_CTX_FETCH_NEEDED	(1 << 3)
@@ -3350,9 +3353,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define FBC_LL_SIZE		(1536)
 
-#define FBC_LLC_READ_CTRL	_MMIO(0x9044)
-#define   FBC_LLC_FULLY_OPEN	(1 << 30)
-
 /* Framebuffer compression for GM45+ */
 #define DPFC_CB_BASE		_MMIO(0x3200)
 #define ILK_DPFC_CB_BASE	_MMIO(0x43200)
-- 
2.32.0

