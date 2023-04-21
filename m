Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F0F6EA9E1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953E310EE0D;
	Fri, 21 Apr 2023 12:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A2410EE0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078609; x=1713614609;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fkA5d4P2oIxwL51VZeLvFhrX7ma6gMiFnkDLQSrzU40=;
 b=HOk0bwnyuI2rRMJ/RjDN7rCyXUQLn2SkASQt0/fC/0x7JyIN1HpaBcmC
 yv+/4aXoCcao+Cedx8jr/AaKsW9GDs04PhzjV9QXN5rgcxsAwZ2HuwWKs
 9BNIGLZvuBDF8+AE/nDMKkxl2i2n9XxkmSQ2qnFV+71jkiA5l3gshSL9D
 wxFENVd21L+xe0iEawfpcUGmsruIQgBleBh0ljp/x76rpk2voV+3V0JLe
 yeRyZE+v4lZQuhDRENz9wkIeT1PuXjzhGLYX92D/Af/BqG8rl0hHzB6k6
 aL/z5UPjy14GCBOX4n/Z19THC5g1T2efS/mRd5yA18FRbWqrBmrtQ43GM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900099"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900099"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725439"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725439"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:03:00 +0300
Message-Id: <20230421120307.24793-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/psr: HSW/BDW have no PSR2
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

Deal with HSW/BDW in transcoder_has_psr2().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2ff6f75c2bee..f5089565e800 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -796,8 +796,10 @@ transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder cpu_trans
 		return cpu_transcoder == TRANSCODER_A || cpu_transcoder == TRANSCODER_B;
 	else if (DISPLAY_VER(dev_priv) >= 12)
 		return cpu_transcoder == TRANSCODER_A;
-	else
+	else if (DISPLAY_VER(dev_priv) >= 9)
 		return cpu_transcoder == TRANSCODER_EDP;
+	else
+		return false;
 }
 
 static u32 intel_get_frame_time_us(const struct intel_crtc_state *cstate)
-- 
2.39.2

