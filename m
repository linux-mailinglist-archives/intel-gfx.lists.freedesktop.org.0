Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A6A729385
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 10:44:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C2E110E228;
	Fri,  9 Jun 2023 08:44:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20BD9892F6
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 08:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686300246; x=1717836246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nqJPTRznm6sflusXEJSjLf+fciWQ+0KYP3JkS0mFOgs=;
 b=KvdqSu7xCzw66Vjqa3UpXQNCBVgf5xv6ONaEYFtSscpi4TQ8NxxCaKxM
 JuopRJr6Lfwl4zFeWhi0POO56SPwHUhL2WIQId1iPS+bQ6gDE+osrqhp9
 FIQHrUe9Xg+zBvJ3RsCoD6SOFYGGKLi4oHevI37xBi5Noysty0G+brM/C
 A5+4zRTYzRI1o/Ris0Thm7J+HzuZnKZJH6Xh3Quzj+f6e7du/ibNPZd7M
 eopyKx7SXV49QjlNap3jegOedIEWTaP4DH2gt5ZDMOaMC8/OnfFmyvxps
 +DoNrbAdRVeC/F2TdAuJrF0wKyHIXxYuHriq4R3Y4YpOZq8D2YY+4/Dpq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="357553420"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="357553420"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 01:44:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="884501526"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="884501526"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga005.jf.intel.com with ESMTP; 09 Jun 2023 01:44:04 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 14:15:01 +0530
Message-Id: <20230609084504.1929424-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230609084504.1929424-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230609084504.1929424-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/4] drm/i915/hdmi: Add audio config related
 params in crtc_state
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

Add source audio-related config params in crtc_state.
These params can be supported frequency, supported channel,
and audio support, which can be further computed based on
source capabilities.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 731f2ec04d5c..873a60f3f870 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1129,9 +1129,15 @@ struct intel_crtc_state {
 	/* Whether we should send NULL infoframes. Required for audio. */
 	bool has_hdmi_sink;
 
-	/* Audio enabled on this pipe. Only valid if either has_hdmi_sink or
-	 * has_dp_encoder is set. */
-	bool has_audio;
+	struct {
+		bool has_audio;
+
+		/* Audio rate in Hz */
+		unsigned int max_frequency;
+
+		/* Number of audio channels */
+		unsigned int max_channel;
+	} audio_config;
 
 	/*
 	 * Enable dithering, used when the selected pipe bpp doesn't match the
-- 
2.25.1

