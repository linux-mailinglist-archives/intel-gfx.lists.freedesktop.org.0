Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 048BF5FB8D9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2528310E991;
	Tue, 11 Oct 2022 17:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5986910E982
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507721; x=1697043721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KSyYbIYofQpJfNRE9bsIJkaqJ7b/g/tlBkI1CygDI74=;
 b=JFNHuQA81TOmbx7dbxdXD5mSPkaMZ5fnW7DGgHT0w/oujItaL3x2mkqp
 1aA2ZAikQuQ5NNZBWGcYacHhsIfJUdDyHnGDET7MrbuwTDcWmp55hmmjY
 Lg+aOSxhuhSk8SEqJeDUR06wD0jln0yjFU0dJILRb+TefT+cR7zEVZt8T
 aC1LK4WXnLLjzOvkmiggqXWMW85RRNwy2SzKNYSM2d1FUmy6IyUXFghDC
 TvZ84a7qm6r1kCbAUxG92ztf9GKbz/qAOtkV0stFy2NtQWvdfreR/tHW7
 4nUEWC5RtLzAF0y1/i/EiAPqyjKr/sYLuxvnY6BD5YKCrDUx2kZa/buG7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="291885272"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="291885272"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:00:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475319"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475319"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 19:59:51 +0300
Message-Id: <20221011170011.17198-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/22] drm/i915/audio: Nuke leftover
 ROUNDING_FACTOR
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

Remove some leftovers I missed in commit
2dd43144e824 ("drm/i915: Streamline the artihmetic")

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index b6220f767417..b6165bb57503 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -626,8 +626,6 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
 	intel_de_write(i915, AUD_CONFIG_BE, val);
 }
 
-#undef ROUNDING_FACTOR
-
 static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
-- 
2.35.1

