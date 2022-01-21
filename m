Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC70495F6C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:07:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C823310EA68;
	Fri, 21 Jan 2022 13:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D685910EA70
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770436; x=1674306436;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RX8thGyhQS62pLB8YldjuRbxkqMfXAb5ReHbRtYObkc=;
 b=VW/Cbx8nXGU9TRIFLZke0lh3lsqI/MiMuCtVX8ppBxTxhM8+LtFranPq
 7nA7rPKWMLAGRYUqBtYrsT9qBn/xbaHlvOmP4Z7xcuyuinPJpSv2UUBad
 0Fo7V8zk/iMBD4oZqe2TJxutOn1IvIph+D9dbAfrU2nmxBmoAjxYjv8An
 xINB2c+/Zg2PF73DpLHZW8t+nbRKcSsvndaM5MQHDJTO2Wq4IVVbt4lRG
 Za/e3Qi9oFJh2wxK5s58qr4wiuL1d2ppPis0ufUtVn6CclMQgVdNt52qU
 UfFvPqFtPJ4h1enyb1FhZuG3FawqtV2ssYyGXKMlQ3sEuVpDwnl83o+sM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245868303"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245868303"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="493840649"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 21 Jan 2022 05:07:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 15:07:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:07:09 +0200
Message-Id: <20220121130710.10382-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
References: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Simplify
 intel_dsc_source_support()
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

We can simplify the icl check in intel_dsc_source_support()
by noting that the only case when DSC is not supported is when
using transcoder A.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 9b05f93ed8bc..3faea903b9ae 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -341,19 +341,14 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	enum pipe pipe = crtc->pipe;
 
 	if (!INTEL_INFO(i915)->display.has_dsc)
 		return false;
 
-	/* On TGL, DSC is supported on all Pipes */
 	if (DISPLAY_VER(i915) >= 12)
 		return true;
 
-	if (DISPLAY_VER(i915) >= 11 &&
-	    (pipe != PIPE_A || cpu_transcoder == TRANSCODER_EDP ||
-	     cpu_transcoder == TRANSCODER_DSI_0 ||
-	     cpu_transcoder == TRANSCODER_DSI_1))
+	if (DISPLAY_VER(i915) >= 11 && cpu_transcoder != TRANSCODER_A)
 		return true;
 
 	return false;
-- 
2.32.0

