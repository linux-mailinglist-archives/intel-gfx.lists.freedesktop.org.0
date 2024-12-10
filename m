Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4589EBBA1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:11:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB5D10E98B;
	Tue, 10 Dec 2024 21:11:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nyD621mJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E29F110E98A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865060; x=1765401060;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pYKv7xZ6Zn7EBaQgM+ZPBkYQJ9M/0BlZz1eDh32rthg=;
 b=nyD621mJCl77zZp2IFZv74o0Dd3jwYANSxKsqsMCRBCVM+/QN3SrY+XZ
 4zx+UBKbHAGmdbryPSKrPiNkh8ak/haB+TAvUEvDm/vraM32UPOENMo64
 rBpjg5kGJGnCyZu1QA//LrtdYeZtWBTPYNIyxh9C8z7sVWmdRZq/ySBND
 T52QiMRhtYcGOWjL+MSnQ23g56Rv9w5rc3HIex0FKPI/1w6yk0UfyhddX
 T1g8Fi8isTGrl5h0f4Z7l0zwicl5c0BQbu1CiLqS0/1exhOp+wiIiDohq
 W82XGEtutZyQrHwCDfO+7iHD4Al1lay2AMtmlRAWfog+2uhvDdKKxtHMn Q==;
X-CSE-ConnectionGUID: oPA4b2GHQU6jlXdbWf2bpQ==
X-CSE-MsgGUID: roYzxQX/SiqLcp9ET4uO5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620239"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620239"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:11:00 -0800
X-CSE-ConnectionGUID: G5dDXYNqQY+4y+ezKODgIQ==
X-CSE-MsgGUID: XdcnwGleQFSocUXyMstJ8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735166"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 18/18] drm/i915/dsb: Allow DSB to perform commits when VRR is
 enabled
Date: Tue, 10 Dec 2024 23:10:07 +0200
Message-ID: <20241210211007.5976-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

Now that we know how to issue the push with the DSB we can
allow the DSB to drive the commits even when VRR is active.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4b3199dcbe7a..171f65e5be9d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7692,7 +7692,6 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	/* FIXME deal with everything */
 	new_crtc_state->use_dsb =
 		new_crtc_state->update_planes &&
-		!new_crtc_state->vrr.enable &&
 		!new_crtc_state->do_async_flip &&
 		!new_crtc_state->has_psr &&
 		!new_crtc_state->scaler_state.scaler_users &&
-- 
2.45.2

