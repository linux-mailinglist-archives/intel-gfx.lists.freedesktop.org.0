Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE0A7BDEBA
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 15:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BCFC10E0FD;
	Mon,  9 Oct 2023 13:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B288810E113
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 13:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696857736; x=1728393736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ly+KII+m6mQo2Skgb7irTFeRNoqNeoQeDFxR8UadKMU=;
 b=CrCOWX0T/k2gvRmdouNeBtjXQkNZvxzx7/BGNQ+t7vOTM17RNXi7xwzz
 axUYL0kZFldDuS4vIP61Hyi+V0Pm4044cirhMCKJPZKzFq9iJk775dSXR
 lHRZUmBTco4eFtp4mf22Zqe3nVOBhLIMXWX7jayvo9/CSiD7AkeRHr6+4
 PUlJ5hb7HPl2hii2kB9YBcDu5RAeynrOqvoyWA5VcOI5yyci/X4NoIJRM
 AYo8sXpWImO9nv8m2KHrAGArCsZyJR7XPovEn/Y+8kgzLhnqAe8Kec8DW
 teq0q4XZB9vIdS1SrHt/+B+m6v9ezN13iw5x4JnlQWVnFYIDBTm/EvW3c g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="384014488"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="384014488"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 06:22:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="788162079"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788162079"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 09 Oct 2023 06:22:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Oct 2023 16:22:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 16:22:04 +0300
Message-ID: <20231009132204.15098-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
References: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Do state check for color
 management changes
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

In order to validate LUT programming more thoroughly let's
do a state check for all color management updates as well.

Not sure we really want this outside CI. It is rather heavy
and color management updates could become rather common
with all the HDR/etc. stuff happening. Maybe we should have
an extra knob for this that we could enable in CI?

v2: Skip for initial_commit to avoid FDI dotclock
    sanity checks/etc. tripping up

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_verify.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 303eb68fec11..9b99de3f6640 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -233,6 +233,8 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    (!intel_crtc_needs_color_update(new_crtc_state) ||
+	     new_crtc_state->inherited) &&
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
-- 
2.41.0

