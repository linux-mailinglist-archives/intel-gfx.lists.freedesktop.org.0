Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E7F4A8BC1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E5A410EA45;
	Thu,  3 Feb 2022 18:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E53F10EA45
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913520; x=1675449520;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=33znb4uFDOUjRj/1Z/gPU9dFIqtanRtxP+V//FdwYy8=;
 b=ndwL+WtIPVWCkul7oyHGKRuw3YxpM5Onv1fOJrg2+z1n0Ph257xZdn1O
 9U9fOI2QXVF6IfnV9RbUqX+QRjuoZdBo1BRQJEMFbB2S7kbl02sOrk8kw
 jLiTWf8hvdlgcZo8khFRVfuzEkBFKLEzwdJgUh2z5AMoPkiWkEG+Mh4iu
 890J3fQXxD4avjpG0jMBhXVaMYjIYAMOlMU/LAQb1E39S1GyIaAkyZa/1
 X6C1qn9HS5RmwLFrmQgdBhkJ5ataywgADwZ5LEOxh5PUbBe0hzLc2YSBy
 z8B6MC2UHmxwjBGYix+VISXHEZTBL22fgc1FKGWtqHLdR1wBUEnWHRpga w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="247056004"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="247056004"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="524036630"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 03 Feb 2022 10:38:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:14 +0200
Message-Id: <20220203183823.22890-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/10] drm/i915: Flag crtc scaling_filter
 changes as modeset
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

The core doesn't flag scaling_filter prop changes as needing
a modeset. That doesn't work for us since we only reprogram the
pipe scaler during full modesets and fastsets. So we need to
flag the prop change as a modeset ourselves. Assuming nothing else
has changed the operation will get promoted (demoted?) to a fastset
later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index df347329d90e..85dce8a093d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7846,6 +7846,10 @@ static int intel_atomic_check(struct drm_device *dev,
 					    new_crtc_state, i) {
 		if (new_crtc_state->inherited != old_crtc_state->inherited)
 			new_crtc_state->uapi.mode_changed = true;
+
+		if (new_crtc_state->uapi.scaling_filter !=
+		    old_crtc_state->uapi.scaling_filter)
+			new_crtc_state->uapi.mode_changed = true;
 	}
 
 	intel_vrr_check_modeset(state);
-- 
2.34.1

