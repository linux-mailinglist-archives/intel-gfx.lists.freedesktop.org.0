Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1717F5007
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 19:58:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9595110E0DA;
	Wed, 22 Nov 2023 18:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC0510E0BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 18:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700679451; x=1732215451;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=A5u0FlJ5k3bk/VaUH8QjQGOG0c27WxHIlga3vT/hDqA=;
 b=SAjyB73EH5m3GyF5D+Gynvwx8Un3XgxXQejeuA0EtITELcx307yGXlo+
 tWHW3rTHYrL8ZkaVPNsL+Dh6JV4JKL+9qk1VvsqW0eYkblX5KOtIKGURg
 uq/eoo/qinxCbbtS3iM4hWEVGUc50953MVR0ii77W4B5qf9iAs5u0XouJ
 /YdNJuH3rIUGCIGVX7WqmaDGZYPXcOABL7+mIhSdBX22IBn2bTbgAw20T
 ZOa0p3Q+AX/0bOV78Rt/5hly6mc8a2+5tT7W9iFXzHU7QcX8ZrzI9O0vY
 DFEEeF0W1yKB00pj09A6yq0OHWRYspPEgOi8StG7tbNjJN11UniqRTxup g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423252651"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="423252651"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 10:41:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="760381175"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="760381175"
Received: from unknown (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 22 Nov 2023 01:40:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Nov 2023 11:37:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Nov 2023 11:31:36 +0200
Message-ID: <20231122093137.1509-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231122093137.1509-1-ville.syrjala@linux.intel.com>
References: <20231122093137.1509-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Stop printing pipe name as hex
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

Print the pipe name in ascii rather than hex.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 7958d0bd851e..ef57dad1a9cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4537,7 +4537,7 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
 				"pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
 				pipe_name(crtc->pipe), pll->active_mask);
 		I915_STATE_WARN(i915, pll->state.pipe_mask & pipe_mask,
-				"pll enabled crtcs mismatch (found %x in enabled mask (0x%x))\n",
+				"pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n",
 				pipe_name(crtc->pipe), pll->state.pipe_mask);
 	}
 }
-- 
2.41.0

