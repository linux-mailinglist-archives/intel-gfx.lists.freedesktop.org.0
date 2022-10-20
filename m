Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23860605FB5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 14:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F8110ED6B;
	Thu, 20 Oct 2022 12:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8456E10EB97
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 12:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666267509; x=1697803509;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Jba08WnNUo9Q3P9EHFPZM2cCvC62fMjOBgUTdf2iEp0=;
 b=Sr/dhRL0aEJrWQB62+bNeYxQsb6M1aGllBI6x9u3bMNMtmylW6b14WOx
 91HxUsdd+MrRVV2h/f2cqLs3vvs9aatpu3uT16xDhdqtFT6Zzo6kmR0B1
 eFBjusgG7wYVTpINcvjtN2vdTsLBocZyVvlIVXERzAmuDcOWSi5rYP+Zk
 xRn4uiXBIxGpwR+8g8yjYNhPjBtKrvaMhYv9aakkK/AbQClyyn70ur3xb
 mmVLBOtDhdhrHFt3ewx7db9/naV6b8DqefgG4lufNREq+b4F6T+jhoIY+
 dYICbIg0oa1aqjJubpSDrSB46SoZFN1Kj8Fi3HjnVbc4YJ3UYdXTF6Yhl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="370900752"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="370900752"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 05:05:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="663004782"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="663004782"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 20 Oct 2022 05:05:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 15:05:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 15:04:56 +0300
Message-Id: <20221020120457.19528-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
References: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Don't flag both full modeset and
 fastset at the same time
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

Be consistent in whether we flag a full modeset or a
fastset for the pipe. intel_modeset_all_pipes() would
seem to be the only codepath not getting this right.
And let's add a WARN to make sure we did get it right.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b6004b3e6684..7b48ad20c548 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5974,6 +5974,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 			    crtc->base.base.id, crtc->base.name, reason);
 
 		crtc_state->uapi.mode_changed = true;
+		crtc_state->update_pipe = false;
 
 		ret = drm_atomic_add_affected_connectors(&state->base,
 							 &crtc->base);
@@ -6925,6 +6926,11 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (ret)
 			goto fail;
 
+		/* Either full modeset or fastset (or neither), never both */
+		drm_WARN_ON(&dev_priv->drm,
+			    intel_crtc_needs_modeset(new_crtc_state) &&
+			    intel_crtc_needs_fastset(new_crtc_state));
+
 		if (!intel_crtc_needs_modeset(new_crtc_state) &&
 		    !intel_crtc_needs_fastset(new_crtc_state))
 			continue;
-- 
2.35.1

