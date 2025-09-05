Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB57B454EA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 12:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC1110EB7C;
	Fri,  5 Sep 2025 10:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AiWYY7EU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DDB10EB7B;
 Fri,  5 Sep 2025 10:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757068917; x=1788604917;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IoiYsvwp+n5saJuhGWWB0NI1sBGBy5zXDS1pu1r878c=;
 b=AiWYY7EUrinkd3cYzEf754uGHL+Ni1T9x0dgcK5PwhTiW65IehhNY5Fo
 2eKZrbQFd4MMF9rXGz1SoMs/Twml7EhFFeYzfxsUMgF4RKOHKhx5jm4Ib
 AJdzgqFbWmecSnIEWMUFpNm4hP90G6VI058kD5Qa3Kz3gE1ZVX9ToKfbr
 1f4qR2vg4srdfM1j7A24QRUMkxsJHDJfgwOkuBIXiO/iZSo5JtstSiltN
 uoiFGHVyi1aXarw7c7iAM60pljr2bpJOR2WkgciHW101iO42L+4Bs9lTi
 u+ijUz4LhPpc3XSuwxcrXkgM2faONh1sQ39zoUv08TgSkVzZRRY12SftU w==;
X-CSE-ConnectionGUID: NgL5+SPzTFq82B4d/mzB9g==
X-CSE-MsgGUID: 46YHHbZ1Sau1/V8npDPNWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="58629837"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="58629837"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 03:41:57 -0700
X-CSE-ConnectionGUID: Zd/HiO9QSAmynFucjeVVoA==
X-CSE-MsgGUID: FeOS1KwORcqphGJDkaAltw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="171339491"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 03:41:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, stable@vger.kernel.org
Subject: [PATCH] drm/i915/power: fix size for for_each_set_bit() in abox
 iteration
Date: Fri,  5 Sep 2025 13:41:49 +0300
Message-ID: <20250905104149.1144751-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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

for_each_set_bit() expects size to be in bits, not bytes. The abox mask
iteration uses bytes, but it works by coincidence, because the local
variable holding the mask is unsigned long, and the mask only ever has
bit 2 as the highest bit. Using a smaller type could lead to subtle and
very hard to track bugs.

Fixes: 62afef2811e4 ("drm/i915/rkl: RKL uses ABOX0 for pixel transfers")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: <stable@vger.kernel.org> # v5.9+
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7340d5a71673..6f56ce939f00 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1174,7 +1174,7 @@ static void icl_mbus_init(struct intel_display *display)
 	if (DISPLAY_VER(display) == 12)
 		abox_regs |= BIT(0);
 
-	for_each_set_bit(i, &abox_regs, sizeof(abox_regs))
+	for_each_set_bit(i, &abox_regs, BITS_PER_TYPE(abox_regs))
 		intel_de_rmw(display, MBUS_ABOX_CTL(i), mask, val);
 }
 
@@ -1639,11 +1639,11 @@ static void tgl_bw_buddy_init(struct intel_display *display)
 	if (table[config].page_mask == 0) {
 		drm_dbg_kms(display->drm,
 			    "Unknown memory configuration; disabling address buddy logic.\n");
-		for_each_set_bit(i, &abox_mask, sizeof(abox_mask))
+		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask))
 			intel_de_write(display, BW_BUDDY_CTL(i),
 				       BW_BUDDY_DISABLE);
 	} else {
-		for_each_set_bit(i, &abox_mask, sizeof(abox_mask)) {
+		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask)) {
 			intel_de_write(display, BW_BUDDY_PAGE_MASK(i),
 				       table[config].page_mask);
 
-- 
2.47.2

