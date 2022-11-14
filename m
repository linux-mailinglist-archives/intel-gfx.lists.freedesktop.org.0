Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C52628424
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3318995F;
	Mon, 14 Nov 2022 15:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28E1C10E2F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440314; x=1699976314;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=c5KhZ5uiso7HS/2dtH+eFpVCzTqeaoY4C/k0cofJ28A=;
 b=TLevmj4LXdqy7gFutfoFKtHmkxPD4tB683RCvdEFBuYvlqB5Rkq9ECoN
 MlV/R0hUB/At1YfbUdJU81tFUL0i8p46/Hk5qmZ3+MfCzi6JpymDNEGHA
 tYkJGEH6+NNTCKNLWBT5PgwnVM5UsbIcCNbbdj7na7BmNhNvnkOQlfRsQ
 6kokOFC2zWAOjgFpa6zZh/pTgUAhVVxxKkb2Ax9WSoVkl4PfyUe+f0Zk4
 54Mjf1BO3+ZSYnj/o/rOfFlBg/jhIxQcYCRQaVbt7ikJjeJd+tI+/LBkx
 vKxfSlvPwQABnHNhuuK/4qNkgrjOALiH8lZf9xzJIyeDCCbIWeQ2HI8kS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398290911"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398290911"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:38:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968851"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968851"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:38:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:38:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:32 +0200
Message-Id: <20221114153732.11773-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 20/20] drm/i915: Do state check for color
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_verify.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 842d70f0dfd2..9e4767e1b900 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -228,6 +228,8 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 			       struct intel_crtc_state *new_crtc_state)
 {
 	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    (!intel_crtc_needs_color_update(new_crtc_state) ||
+	     new_crtc_state->inherited) &&
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
-- 
2.37.4

