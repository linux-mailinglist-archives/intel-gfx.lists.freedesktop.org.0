Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F06A899073
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1577910E78B;
	Thu,  4 Apr 2024 21:34:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3PprjU7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C7E310E78B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266486; x=1743802486;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XZaUJC4ajF8+NiXFbjKqaD9Pe4Xlt+VXu1NjFb6dJ0Q=;
 b=H3PprjU7hI4Nz558LL8hJZUntmqjaTdCOF5WP+MmPZxx4DrfhlplWkr8
 BeE1odh2m68G43TT39g0BqZWB7GtdJkIQrOFhQhIBx/vYzywBHIjqDF1t
 Tp6Mcd2FCk0JU4pKw0s55YrJE0OCrlsSekn4ly1KAnbnObVa7Zwn5VJzA
 /d+8ugzU59j0+zraX3FMVHTl1zSR1rRIpWiFpXj5BpSmo43G7x6io04nL
 miSErJWfjtScHAHR4JM2aosMDsoRtW+NPOj80nGzG2A1yx4waczqL4RRQ
 VMy3Tg+/C1rquREpyaKGLVdVXKuGoX3iNUuh/cvVwVIaIKluucncpf8y8 Q==;
X-CSE-ConnectionGUID: hjmDHjc/QV2SzpBR9fW65Q==
X-CSE-MsgGUID: YNUFhGcERDejFA9RbNYqVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710787"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710787"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790601"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790601"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:34:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:34:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 00/17] drm/i915: Bigjoiner modeset sequence redesign and
 MST support
Date: Fri,  5 Apr 2024 00:34:24 +0300
Message-ID: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

New revision of the bigjoiner modeset sequence redesign.

Changes in v2:
- Reject PSR+bigjoiner combo
- Commit pipes in reverse order to avoid issues with
  slave pipe commits being completed prematurely.
  Should fix the gamma/DSB problems of v1.
- Address review comments
- Part of v1 was merged already separately

Pushed the whole thing here:
https://github.com/vsyrjala/linux.git bigjoiner_mst_etc_2

Stanislav Lisovskiy (1):
  drm/i915: Handle joined pipes inside hsw_crtc_enable()

Vidya Srinivas (1):
  drm/i915: Allow bigjoiner for MST

Ville Syrjälä (15):
  drm/i915: Update pipes in reverse order for bigjoiner
  drm/i915/psr: Disable PSR when bigjoiner is used
  drm/i915: Disable port sync when bigjoiner is used
  drm/i915: Disable live M/N updates when using bigjoiner
  drm/i915/vrr: Disable VRR when using bigjoiner
  drm/i915: Fix intel_modeset_pipe_config_late() for bigjoiner
  drm/i915: s/intel_dp_can_bigjoiner()/intel_dp_has_bigjoiner()/
  drm/i915: Extract intel_dp_joiner_needs_dsc()
  drm/i915/mst: Check intel_dp_joiner_needs_dsc()
  drm/i915: Pass connector to intel_dp_need_bigjoiner()
  drm/i915: Introduce intel_crtc_joined_pipe_mask()
  drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
  drm/i915: Utilize intel_crtc_joined_pipe_mask() more
  drm/i915: Handle joined pipes inside hsw_crtc_disable()
  drm/i915/mst: Add bigjoiner handling to MST modeset sequence

 drivers/gpu/drm/i915/display/intel_ddi.c     |  83 +++--
 drivers/gpu/drm/i915/display/intel_display.c | 319 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.h |  15 +
 drivers/gpu/drm/i915/display/intel_dp.c      |  46 +--
 drivers/gpu/drm/i915/display/intel_dp.h      |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  80 +++--
 drivers/gpu/drm/i915/display/intel_psr.c     |  11 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |   7 +
 8 files changed, 353 insertions(+), 212 deletions(-)

-- 
2.43.2

