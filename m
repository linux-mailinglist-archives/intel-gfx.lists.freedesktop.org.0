Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C431552319
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5081F10EDB7;
	Mon, 20 Jun 2022 17:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE5310EDC0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747573; x=1687283573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mh/jcbHKu6eFn8nwg3vMijPasSCtg8lKUNSBaTuymp4=;
 b=CIk8B5CZGWE4OpMpWhRUajyXvGWsD/OSYCnWgP/X8IMFWNBtczU9V9fE
 llKQ7YxxhOQj8VbxXLY6cdeZpFyWQavGh/EKFpCmPnzjZ2+xieJ82vvWp
 a0svfhNZZZi0zJxg7glOWVxrw2uAnY5GgUbQeDuF08XeeYY2k50BYPd5X
 wDc+etkHELwCcCsLP67uC7X3cj5pt1KXFXDQQtNO5xTLYDo6hGm3yn7x+
 8yQUflLvnUxG6KsTBRT1nMMmejEiXqHJe/hBkPHq1UAC0F4gcqGJsLsL2
 UCXJJWSK3utF00iy/E0bkpO5xVAowuUwiZENUU7FRpLLshOK1unOVIBPG w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="277496950"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="277496950"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="584977007"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga007.jf.intel.com with SMTP; 20 Jun 2022 10:52:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:52:06 +0300
Message-Id: <20220620175210.28788-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/17] drm/i915: Skip
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

No sense in calling intel_modeset_pipe_config_late() for a disabled
pipe.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8affeac4d963..afef6a826ef2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6772,9 +6772,11 @@ static int intel_atomic_check(struct drm_device *dev,
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

