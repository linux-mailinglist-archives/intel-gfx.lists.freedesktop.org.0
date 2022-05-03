Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EC6518C40
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFED10EA41;
	Tue,  3 May 2022 18:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A816B10EA41
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602229; x=1683138229;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gEBSp8S2OKT7tizwvwOev6CEFuhOdSrq/fKrPcWCHrI=;
 b=arMpK/0LPlNqDvkYsR+QFBIG1LayAzvrySNM0t9Ec1EdBXulScz2kbCe
 AH4OQlOHshSxqNB+GiH7yig36L9aCBTgaS7gT2r3cAz+IV/k2tRk33jz7
 yzsjzYWO1/qbWj47QxoYnAVTBxoiAYIt7xgZ1OpDDVgfCswiKRXxi9re9
 Vxp230YTq3gUAj+3jcszb/e56dYwG/ajd97Fk7uI0VA1+onYGItsNPwNs
 syir2hynPtdNwYp/QRTXH0AYODkM095RJJEMWCNvYm87TGVEa+HH+Y4CF
 omVDZkn1CcnpBbV5W1XDjblfL6fGJ7ANWBqvUC3GnNVU7laYgpQmD3Z0x g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="255016357"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="255016357"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="562326958"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 03 May 2022 11:23:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:35 +0300
Message-Id: <20220503182242.18797-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/26] drm/i915: Skip
 intel_modeset_pipe_config_late() if the pipe is not enabled
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

No sense in calling intel_modeset_pipe_config_late() for a disabled
pipe.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 11e974d66c29..a81d866bdb19 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7669,9 +7669,11 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		ret = intel_modeset_pipe_config_late(state, crtc);
-		if (ret)
-			goto fail;
+		if (new_crtc_state->hw.enable) {
+			ret = intel_modeset_pipe_config_late(state, crtc);
+			if (ret)
+				goto fail;
+		}
 
 		intel_crtc_check_fastset(old_crtc_state, new_crtc_state);
 	}
-- 
2.35.1

