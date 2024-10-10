Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE20997B98
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA28F10E847;
	Thu, 10 Oct 2024 04:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nk5MAi/j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04DB610E847
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 04:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533011; x=1760069011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xds8PkdwI0VJA0d45naKfpotIs7pkwLlbjuf+M1iooQ=;
 b=Nk5MAi/jSeMKOB4ceFFBqqv2M4VYseT+l3uaGi5vBfEVBpv1sssZP6H+
 Ge2gES5wyw61sklusknOTMGJ23zUwsS96F7CzxSTPJ+TlRVn6z6CYJX91
 +ZjtfZr8+XrZU5PrjSVqPLdCXcD/yHXR7a87soev0U2bt7SmZZzSv6dIP
 riw4iOAkIkgJpQf7VdO11Teg+yZIOe9A3aMHXjGUpUrmHHhfzbREsg1nJ
 vz159vcMuNeK2asX4KNX1Yq+NROgalBVU3LOkTGMi2U2l8w/eIFGDOU24
 qIzzwmAJP//gs4gLuvBlMwCpklOu55sjHMYm5Q8DYBEtZY86oFmVmufL1 g==;
X-CSE-ConnectionGUID: UAb8z83pQ/+uDbxCvHsZFw==
X-CSE-MsgGUID: C5XIq3dARHKLqKEm9Z6hnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38454086"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="38454086"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:03:30 -0700
X-CSE-ConnectionGUID: jT7/cAVrSeqo6CE4kvnnIQ==
X-CSE-MsgGUID: adwqzsr/QK2b4wTFBGtNJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="107301287"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 09 Oct 2024 21:03:29 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com, animesh.manna@intel.com
Subject: [PATCH v14 1/3] drm/i915/vrr: Add helper to check if vrr possible
Date: Thu, 10 Oct 2024 09:35:01 +0530
Message-ID: <20241010040503.1795399-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
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

Add helper to check if vrr is possible based on flipline
is computed.

--v1:
return just flipline instead using ternary operator [Jonathan, Ville].

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h | 1 +
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9a51f5bac307..f65ebe210047 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -56,6 +56,11 @@ bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh)
 		vrefresh <= info->monitor_range.max_vfreq;
 }
 
+bool intel_vrr_possible(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.flipline;
+}
+
 void
 intel_vrr_check_modeset(struct intel_atomic_state *state)
 {
@@ -281,7 +286,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
 			     0, PIPE_VBLANK_WITH_DELAY);
 
-	if (!crtc_state->vrr.flipline) {
+	if (!intel_vrr_possible(crtc_state)) {
 		intel_de_write(display,
 			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 89937858200d..af921dda4619 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -15,6 +15,7 @@ struct intel_crtc_state;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
+bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-- 
2.46.0

