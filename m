Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E923899075
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85220113550;
	Thu,  4 Apr 2024 21:34:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jv8plDp/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD8E01125D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266491; x=1743802491;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HJU8gWnRII2EDiw8iZR7c8MVgTDIV1+cJ23VjukChQ8=;
 b=jv8plDp/s0HZeSNl7JE4f78pXxaubBEhquViVeo+SsHjFsvo/9Z5ynzX
 CDMvvTi6ORWfD/VbF9x+umAFnjWhKSfdTkUEZ/cy1umtX7Hoi+/DWxRz0
 hDBPhJSZb5JzwVu6+yuV0ndC51II/bZArMg3WaAkb4EL208pjG5kKzMV2
 MtKFPzJe5j/mgtLb3MACHYd2kMYzRzF9ABpQHCQrF0sEhwNxzU3+qyekb
 uqxRwazjYXbp5sYrWRv9Max2H8L5QX0O/ap8PSVUDh7WQ+BgSR0ecV49g
 XtpNdubM4Ra+CkwNBPa6qFztZS+0S3Xt3Rc3wTvLNmgKErPv7DDSkQxaf A==;
X-CSE-ConnectionGUID: 5t6pyMWCSuWnJuMozVP09g==
X-CSE-MsgGUID: gwsXwy16TY2wgQaTadUXnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710792"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710792"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:34:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790603"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790603"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:34:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:34:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Date: Fri,  5 Apr 2024 00:34:26 +0300
Message-ID: <20240404213441.17637-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Bigjoiner seem to be causing all kinds of grief to the PSR
code currently. I don't believe there is any hardware issue
but the code simply not handling this correctly. For now
just disable PSR when bigjoiner is needed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index eef62983e9db..a3ff916b53f9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1584,6 +1584,17 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
+	/*
+	 * FIXME figure out what is wrong with PSR+bigjoiner and
+	 * fix it. Presumably something related to the fact that
+	 * PSR is a transcoder level feature.
+	 */
+	if (crtc_state->bigjoiner_pipes) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR disabled due to bigjoiner\n");
+		return;
+	}
+
 	if (CAN_PANEL_REPLAY(intel_dp))
 		crtc_state->has_panel_replay = true;
 	else
-- 
2.43.2

