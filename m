Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F5B899076
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D12731125D4;
	Thu,  4 Apr 2024 21:34:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XquGR/wX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C15F1125D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266494; x=1743802494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GKgiKVXCj7iVpkrr1i/ojOxjLq+5yj2zHNyZjJKEkTE=;
 b=XquGR/wX5ELcf+AuWNQHlJakdpx9n+3GG8CsbX6AwNQEnV1c5Bc6kQXV
 CcERfAa/JqZNE2nZ75W8tjCp2i+/G5J5s+wNPMujNx4h/xzJ0g47gM2uf
 Zzkbz8DAYgZjdxRj+YMF7W5VAtxLgxJCa7k206ytwP7JuOmHLM3or7BY8
 svcYKZfBx1U05BIfMyydCpTzqxO0IXrE5NAq3ArulfZGJZztQq6ouz2ly
 yYL4bOZUJPMy27HBEGUp48e9TlbfrJ7LjrH/6eWOkHaa6l4MRe9gAjHQZ
 m5pz7iTxxPc9btgUyST9k5IqH+gpX3Pv1cY7+humTon7x10gdrem6IMhe g==;
X-CSE-ConnectionGUID: nnCj5+2TRFCPwbYIlAnGHQ==
X-CSE-MsgGUID: /hgRnF8hTheyHUDwjaTMXg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710793"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710793"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:34:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790606"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790606"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:34:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:34:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH v2 03/17] drm/i915: Disable port sync when bigjoiner is used
Date: Fri,  5 Apr 2024 00:34:27 +0300
Message-ID: <20240404213441.17637-4-ville.syrjala@linux.intel.com>
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

The current modeset sequence can't handle port sync and bigjoiner
at the same time. Refuse port sync when bigjoiner is needed,
at least until we fix the modeset sequence.

v2: Add a FIXME (Vandite)

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0654e989f45f..909c0102c865 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4244,7 +4244,12 @@ static bool m_n_equal(const struct intel_link_m_n *m_n_1,
 static bool crtcs_port_sync_compatible(const struct intel_crtc_state *crtc_state1,
 				       const struct intel_crtc_state *crtc_state2)
 {
+	/*
+	 * FIXME the modeset sequence is currently wrong and
+	 * can't deal with bigjoiner + port sync at the same time.
+	 */
 	return crtc_state1->hw.active && crtc_state2->hw.active &&
+		!crtc_state1->bigjoiner_pipes && !crtc_state2->bigjoiner_pipes &&
 		crtc_state1->output_types == crtc_state2->output_types &&
 		crtc_state1->output_format == crtc_state2->output_format &&
 		crtc_state1->lane_count == crtc_state2->lane_count &&
-- 
2.43.2

