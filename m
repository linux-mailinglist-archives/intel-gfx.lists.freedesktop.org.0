Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 410BA6CD50B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 10:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9715C10E506;
	Wed, 29 Mar 2023 08:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C90210E506
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 08:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680079633; x=1711615633;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kXnknZrQvpjYN8f7aQS/WbXC835RZQ1HtDazV9Vz9wE=;
 b=JTWA881ezmeIg0SBBnZAt7zAFCxKQPhTujQgToe7ycXvHElKx9EsByoL
 fJOJN+xSXNGhlYMXjV5e7SObCA0BdqhZaZPmUujH3mBaCGIMIhz7Y4Aoc
 yGm7aw17+EzrxH7eFNaAerMhL8sC99s1yqJa0HEmNahUUHfKLs8XArb+l
 84JLCdNwrFZokzR2FNNG/4GqVB5+/CGSN2B5aLAlAPWTe1isFI8blkpjQ
 vUUMkcftARH7t7HKFLB3uzLEt699wj2S2Z0dcpSfI6j5fVUhKhQq/Rgf0
 rpvpY3SgXyBw+hsUPNOWMWedyVj3VDmYinjDiMHoYSNx9JoNAnnYIpGYy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="427093299"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="427093299"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 01:46:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="773487357"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="773487357"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 01:46:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 14:14:48 +0530
Message-Id: <20230329084449.717954-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Update Bigjoiner interface
 bits for computing compressed bpp
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

In Bigjoiner check for DSC, bigjoiner interface bits for DP for
DISPLAY > 12 is 36 (Bspec: 49259).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index da1c00ee92fb..3fe651a8f5d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -756,8 +756,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	bits_per_pixel = min(bits_per_pixel, max_bpp_small_joiner_ram);
 
 	if (bigjoiner) {
+		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 12 ? 24 : 36;
 		u32 max_bpp_bigjoiner =
-			i915->display.cdclk.max_cdclk_freq * 48 /
+			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
 			intel_dp_mode_to_fec_clock(mode_clock);
 
 		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
-- 
2.25.1

