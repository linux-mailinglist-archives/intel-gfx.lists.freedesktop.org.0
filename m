Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E9B724CD8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BF8610E39F;
	Tue,  6 Jun 2023 19:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A6210E3A1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078943; x=1717614943;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SK/rASdMsOk4l4CeDzyjLIg9PTGDCZhwN8wirDxAkzQ=;
 b=jI+CdWG5WU/uU0iOQf/puWwdThMtM1/4nLEnFD9s4xtNCBG8risJxEOf
 1JVjx8pcKkEFSkqnW8WuoOfHzCk/mqW7/9EF/tkqtO+wryP9O7xMLGuAU
 teSxW3a5IGP+7Xs+h8XdummIxItvy/eepKhdnpDgkoQbrrLh6DRp0vlc4
 1o2dAZHuQ18tLYJn1J77cfaE8cmyLjpjq2Rnm7jaxE4Y+TfYdXUj+RVnt
 JeSWNCOkL2PwXrfm8wjPezKzZuLmPnYYNRrhckxoywX1Q97kZXPky9H16
 Oh47ynhg9Y3dz9CqAbyesYAYbYccfc/UvYb7pZe3leVsNBoe3LXVwffkV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146332"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146332"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187106"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187106"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:56 +0300
Message-Id: <20230606191504.18099-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/19] drm/i915/dsb: Don't use DSB to load
 the LUTs during full modeset
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

Using the DSB for LUT loading during full modesets would require
some actual though. Let's just use mmio for the time being.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 2d5640aab4d8..2db9d1d6dadd 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1805,6 +1805,10 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 	/* FIXME DSB has issues loading LUTs, disable it for now */
 	return;
 
+	if (!crtc_state->hw.active ||
+	    intel_crtc_needs_modeset(crtc_state))
+		return;
+
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-- 
2.39.3

