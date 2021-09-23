Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF22416648
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 22:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2236EDA3;
	Thu, 23 Sep 2021 20:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7AA96EDA3
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 20:01:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="223961656"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="223961656"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 13:01:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="485111525"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 23 Sep 2021 13:01:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Sep 2021 23:01:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 23:01:06 +0300
Message-Id: <20210923200109.4459-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
References: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Reject modes that don't match
 fixed_mode vrefresh
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

When using a fixed mode we won't change the refresh rate ever.
So filter out all modes that don't match the fixed_mode's refresh
rate.

I'm going to declare the "rounded to nearest Hz refresh
rates must match" approach good enough for now.

Note that we could start supporting multiple refresh rates
with panels that can do it, but that would mean replacing
the single fixed mode concept with a list of fixed modes.
Then we could look for the closest match to the user's
requested refresh rate and use that. But all of that would
be a fair bit of work so we'll leave it for later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 8a364bb1ce41..b2ad0f065218 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -497,6 +497,9 @@ intel_panel_mode_valid(struct intel_connector *connector,
 	if (mode->vdisplay != fixed_mode->vdisplay)
 		return MODE_PANEL;
 
+	if (drm_mode_vrefresh(mode) != drm_mode_vrefresh(fixed_mode))
+		return MODE_PANEL;
+
 	return MODE_OK;
 }
 
-- 
2.32.0

