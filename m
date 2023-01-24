Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB07B679C56
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C88310E69A;
	Tue, 24 Jan 2023 14:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AEE810E69A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571611; x=1706107611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IsVleihWJWY4/HG9GRgzWeffJFobVeGHmmij0RI1l8o=;
 b=HfMlDuMtq257Wgvi6Chvo3p/QnWFjfIVRq3WACpd4U4Dlep2cuyeSr4l
 efegI/hK6KH83xOK0JbUbJNOujZxa/60Ktm2oKdXWh4kNCEgBFHLW+Ym3
 dFzBA0yuJShEY7JGxuYiilUmZpnNSChRStWqeORwnO1kMK4xL5ms2Jn8W
 DsIBD0it20kkLT8mnIA48Awe2Xlww2ew2sZ+bF0qy5bsWAHU3ar9YEwyY
 hTDr27fkhb48lBnJ/2Uc08LCa0gv+Qguk3KkfgNPBiEgluLSQOGzI27hl
 In5vcf+FTbIwymkdRLPQ3HclIp4+AZSooDCxdqcMeeo0cLkPgJxioVwkQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538857"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538857"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:46:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602294"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602294"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:46:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:46:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:20 +0200
Message-Id: <20230124144628.4649-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/13] drm/i915/audio: Don't enable audio
 with bogus ELD
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we just print a debug message if the ELD is bogus.
Maybe we should just not enable audio at all in that case?

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 326e93768687..5123bab17063 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -757,10 +757,12 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!connector->eld[0])
+	if (!connector->eld[0]) {
 		drm_dbg_kms(&i915->drm,
 			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
 			    connector->base.id, connector->name);
+		return false;
+	}
 
 	BUILD_BUG_ON(sizeof(crtc_state->eld) != sizeof(connector->eld));
 	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));
-- 
2.39.1

