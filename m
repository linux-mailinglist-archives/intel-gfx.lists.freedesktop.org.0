Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 753164C13B3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:13:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C0310F389;
	Wed, 23 Feb 2022 13:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D81E10F384
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622008; x=1677158008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vY5A5vQf911RzKCbTsBnUCEIwlmXE+jfHFbdXLhbkck=;
 b=SRfXTVlTEW/uJxSp8GjxcqCdKPzi1xY3MmBC50bd9ngmhZU7baxmEJhI
 J1TqM45EdXPnOlxPLbis4Ch78cZL0mHkWUwCPYCU6NfxLdvOzqqPapSuV
 vt7L5S6E+XKycggxuja5VNPE0qAGNAc2LW8qQNgdUort0KnVmiyAzpExz
 7eNYfwJdIaWo6lRww5xYDfSTwTfO/hE0RWTAN6pohhNLlxuaRgsnzGhmi
 49Iefxumz2U7PIZbmlSZgfKixka/1NYtvvUHEmwZV/Ip8qO9eA1oAieCJ
 sm7Zk07mQvcg0iFvZA9+4Kh9palZEj00LxVPDeWyDaruSzjfnIWzfCiTX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="250784826"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="250784826"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:13:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="508431959"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 23 Feb 2022 05:13:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:05 +0200
Message-Id: <20220223131315.18016-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/13] drm/i915: Remove nop bigjoiner state
 copy
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

We just copied over the whole master crtc state, including
cpu_transcoder+has_audio. No need to copy those again.

Also get rid of the unhelpful comment.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f3f5f11a5abf..8c61a8190c64 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5593,12 +5593,9 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 
 	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
 
-	/* Some fixups */
 	slave_crtc_state->uapi.mode_changed = master_crtc_state->uapi.mode_changed;
 	slave_crtc_state->uapi.connectors_changed = master_crtc_state->uapi.connectors_changed;
 	slave_crtc_state->uapi.active_changed = master_crtc_state->uapi.active_changed;
-	slave_crtc_state->cpu_transcoder = master_crtc_state->cpu_transcoder;
-	slave_crtc_state->has_audio = master_crtc_state->has_audio;
 
 	return 0;
 }
-- 
2.34.1

