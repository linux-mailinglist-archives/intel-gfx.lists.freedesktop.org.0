Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F30CADFF4
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 951A110E4DA;
	Mon,  8 Dec 2025 18:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUF6+h8J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687FF10E4DC;
 Mon,  8 Dec 2025 18:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218483; x=1796754483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qwEo7Ew+2eYXGU1jv2S66ypCxKYjYN4ntlSJPrVQd/U=;
 b=kUF6+h8JtCOGzCebwyszoFly3JSLiqiWW+fYAqInNYNWOpUxWlPDMZGd
 DuexK67Rxv2jtwy+QrISbSppVRkjmsFbYQsgRk94Ac7yaXPt3p47WGgCI
 JpJVby6hWXrWnLWllV69EMaS+3vk2r1fa1AEwc/cD6+cD5R37S/ue1Jwj
 1Q+98F2t1F33d8zyjzY7x0w+GQx9tVxM9FW3GM5QDCcfZaqfE4Cn3Thqr
 ptLwdvovY/c6xtIBdnXfAGTGJ1TWeczkdI/Hbk850d6rP7KeUxHm58hDy
 sDxrII8VZaG2ChRM1POxg+sH+xpLRY/99rdUWl2XrcCAzpiLnzf43kDIC Q==;
X-CSE-ConnectionGUID: 2rb3RuHsRp6Pxy1YKfPPeQ==
X-CSE-MsgGUID: bTyjwcTAQsawgl42SUUuqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="67099970"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="67099970"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:59 -0800
X-CSE-ConnectionGUID: fOLzVDJQQhm6jdhqIAsWWQ==
X-CSE-MsgGUID: 6lXGBnMuQ/qc7jrJFAlj0A==
X-ExtLoop1: 1
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:57 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 19/19] drm/i915: Document the GMCH_CTRL register a bit
Date: Mon,  8 Dec 2025 20:26:37 +0200
Message-ID: <20251208182637.334-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The actual GMCH_CRTL lives in the host bridge aka. device 0),
but device 2 has a read-only mirror on i85x/i865+. Docuemnent
that fact.

Also remove the ancient tales about where the defines are used.
Those haven't been true in a long time.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 include/drm/intel/i915_drm.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/drm/intel/i915_drm.h b/include/drm/intel/i915_drm.h
index c633ce62f2bf..8eee23f94e26 100644
--- a/include/drm/intel/i915_drm.h
+++ b/include/drm/intel/i915_drm.h
@@ -39,11 +39,11 @@ bool i915_gpu_turbo_disable(void);
 extern struct resource intel_graphics_stolen_res;
 
 /*
- * The Bridge device's PCI config space has information about the
- * fb aperture size and the amount of pre-reserved memory.
- * This is all handled in the intel-gtt.ko module. i915.ko only
- * cares about the vga bit for the vga arbiter.
+ * The Bridge device's (device 0) PCI config space has information
+ * about the fb aperture size and the amount of pre-reserved memory.
  */
+
+/* device 2 has a read-only mirror */
 #define SNB_GMCH_CTRL		0x50
 #define   SNB_GMCH_GGMS_SHIFT	8 /* GTT Graphics Memory Size */
 #define   SNB_GMCH_GGMS_MASK	0x3
@@ -54,6 +54,7 @@ extern struct resource intel_graphics_stolen_res;
 #define   BDW_GMCH_GMS_SHIFT	8
 #define   BDW_GMCH_GMS_MASK	0xff
 
+/* device 2 has a read-only mirror from i85x/i865 onwards */
 #define I830_GMCH_CTRL			0x52
 #define   I830_GMCH_GMS_MASK		(0x7 << 4)
 #define   I830_GMCH_GMS_LOCAL		(0x1 << 4)
-- 
2.51.2

