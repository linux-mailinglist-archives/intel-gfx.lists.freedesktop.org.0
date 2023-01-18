Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F69C67234F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371BA10E7A3;
	Wed, 18 Jan 2023 16:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA98910E79D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059470; x=1705595470;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mCloOfAk551eyUnBErz21JEdoHxxODi9deYKO70X1vo=;
 b=LkhB5UPLyrI9IO9xlRkHLGLLSAOXcduS5yC9DT2wjK3yoYp+NolxCUn3
 QF1+UakNbsDMKhn8eLLhf2FSn4Vq2rUPmHcAHEoFVexm4o6BM7xnP3CDa
 4Y/DOuCiFEkUYU7BxywtD5HbM0Iguw3Rw6DkiZk+0nZUJwk6p7jwLZj2w
 9vuvE6tuZTfc0g+7P4VGjFIsn/Bo0C4wb/OVFyBGxJHIk/jSwp3RMdzeD
 9HxjnbJYU8Bc8H2RWEvW/pvGYSRPxM9uoQrRX4mI8yBww5aXenZ7EH+JU
 eoo5/tExuJ89XbhgZjTIHO279sDyDsWRiQI5x+lstFSR//0LMwkiUDCQJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289902"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289902"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:31:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060487"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060487"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:31:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:31:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:36 +0200
Message-Id: <20230118163040.29808-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/i915/dsb: Don't use DSB to load the
 LUTs during full modeset
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
index f4a527a3c265..cab8dfd03853 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1383,6 +1383,10 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 	/* FIXME DSB has issues loading LUTs, disable it for now */
 	return;
 
+	if (!crtc_state->hw.active ||
+	    intel_crtc_needs_modeset(crtc_state))
+		return;
+
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-- 
2.38.2

