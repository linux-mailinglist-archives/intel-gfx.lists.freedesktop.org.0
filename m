Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0544F696552
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 14:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F93810E141;
	Tue, 14 Feb 2023 13:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B477110E8EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676382487; x=1707918487;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=P2Mfuhy0v5/3cn2rUPsuyuM52KAsbPbKOs1fynrgQ6o=;
 b=kRgODIaCqHcp1LhdQ4i5BVswAfCUphE4qBaqYVl6QiIJv1nTjPEXzC6I
 tuTeqhCSNreeYKUXMca4iwps751L01NbLhLV7YE0ki3Xu4HzfWJ7bqSIB
 1nJlb/ibNT0nszupTikjuf8XWJtaqK21fnAgnS9QyjseedPn4bi/gNLsX
 Vtol4zl/7tS5G2FmtbPV+/ljaFzWmStdMz+ep5dijZxFYHRb3DsJn6hse
 0FF6MBGOgyUzt8s9PXKyzSr1kkyh9wYIgLT8quklf+d9sMuGfWymXg+Fw
 QZHvFcfLscL9mrlmZeIN89WeNscRhxo3J6L05s2sFxHSYQicVqdrPVTv2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311519688"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="311519688"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 05:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="699540851"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="699540851"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 14 Feb 2023 05:47:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 15:47:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 15:47:39 +0200
Message-Id: <20230214134739.25077-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
References: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Clean up g4x+ sprite TILEOFF
 programming
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

We defined the bitmasks for DVSTILEOFF but never used them.
Remedy that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index e6b4d24b9cd0..a16e56a60c30 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1217,7 +1217,8 @@ g4x_sprite_update_arm(struct intel_plane *plane,
 	}
 
 	intel_de_write_fw(dev_priv, DVSLINOFF(pipe), linear_offset);
-	intel_de_write_fw(dev_priv, DVSTILEOFF(pipe), (y << 16) | x);
+	intel_de_write_fw(dev_priv, DVSTILEOFF(pipe),
+			  DVS_OFFSET_Y(y) | DVS_OFFSET_X(x));
 
 	/*
 	 * The control register self-arms if the plane was previously
-- 
2.39.1

