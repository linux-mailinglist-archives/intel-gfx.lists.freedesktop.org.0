Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A1A89102C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7380510E715;
	Fri, 29 Mar 2024 01:13:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iz6lPR1f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9183310E715
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674781; x=1743210781;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DveoASuNsLHluQFPlCxwrC5QKlA8EFAnoThUJXHSEvs=;
 b=iz6lPR1fuWH92wp8OIu3rji8X6vi686NM3XTTEdp8mDel+L1sRvQ59hW
 Ohhv4w7hMfM/FnfGNW+YDEUwlu9RRhUWnx10hXThgI+GgOpxDiqz/dzQs
 5SIceiBcs4k/4rNyAb9Vq3bzwlgG1nnUNgj2H/36G9jYZpDPZyb+Hve09
 jCR/EF511jizU+LRpTQAuba34JLfJusJRzzWqAOXbIjk64CKpYibhIR3z
 +aoi7PQGk+CrYg0Cffzzp7oi8kHDOlKXHrPZzEK/1xoQmjSZltW0OYouK
 mJm+bJM3bnnSG4nPeXrRb+V0mGSF6JogeWiPZEJSl9G/9wk8cckk2W8l1 Q==;
X-CSE-ConnectionGUID: /55JBy63QEGsEPjJnrasXg==
X-CSE-MsgGUID: 1hvJs192RcWUAtWwwePEfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756267"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756267"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786765"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786765"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:12:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:12:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/22] drm/i915: Disable port sync when bigjoiner is used
Date: Fri, 29 Mar 2024 03:12:33 +0200
Message-ID: <20240329011254.24160-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a3d3d4942eb1..fa6fe9ec8027 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4244,6 +4244,7 @@ static bool crtcs_port_sync_compatible(const struct intel_crtc_state *crtc_state
 				       const struct intel_crtc_state *crtc_state2)
 {
 	return crtc_state1->hw.active && crtc_state2->hw.active &&
+		!crtc_state1->bigjoiner_pipes && !crtc_state2->bigjoiner_pipes &&
 		crtc_state1->output_types == crtc_state2->output_types &&
 		crtc_state1->output_format == crtc_state2->output_format &&
 		crtc_state1->lane_count == crtc_state2->lane_count &&
-- 
2.43.2

