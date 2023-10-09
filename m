Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B8E7BE3B6
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 16:58:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F9CF10E10A;
	Mon,  9 Oct 2023 14:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514EA10E10A
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 14:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696863512; x=1728399512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pql36EtYSn41QdpV//SlthKcS2P41DJU/2wZ5SN1Sug=;
 b=FRaWm7gYpkffvDZyV4RZh6xLYCsUd24JAXCdQCvk0Ed4JMIQ3GiR6s8Z
 3EKbWk/jIz86qIs7nxSE18m3csWLqcFGqHxExGFrAXMqGmK8Etf7AS+rk
 JjF/Jig2r6SCUJAIjl0KAJ2GsEqYEadPZL9wRkRXzHzsba5Mj9yBQpyrb
 etscmN7vUjLC7Y5eehOeDIMkf4uWIW34fgSNdWiXew6nvutJs6Yk5fuAR
 ornoqqVqkWqhAnxgqB3do33QneXKconHUad0jH+3/Xj+cUaABEMntNX5b
 NEri+R+vP9lA64r2gSrVlJZV7xOj/bw3UsITNIiWj1mQGxMrhbEat8J7A g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="448349488"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="448349488"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 07:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="896794335"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="896794335"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 09 Oct 2023 07:56:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Oct 2023 17:58:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 17:58:28 +0300
Message-ID: <20231009145828.12960-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix VLV color state readout
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

VLV was missed when the color.get_config() hook was added.
Remedy that.

Not really sure what the final plan here was since a bunch of
color related readout was left in intel_display.c anyway,
but that's for anothr day to figure out...

Cc: Jani Nikula <jani.nikula@intel.com>
Fixes: 9af09dfcdfa1 ("drm/i915/color: move pre-SKL gamma and CSC enable read to intel_color")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 4f92fc31059f..2a2a163ea652 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3702,6 +3702,7 @@ static const struct intel_color_funcs vlv_color_funcs = {
 	.read_luts = i965_read_luts,
 	.lut_equal = i965_lut_equal,
 	.read_csc = vlv_read_csc,
+	.get_config = i9xx_get_config,
 };
 
 static const struct intel_color_funcs i965_color_funcs = {
-- 
2.41.0

