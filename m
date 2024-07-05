Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2EB92865B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 12:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 163DF10E9F5;
	Fri,  5 Jul 2024 10:05:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NA64g/3l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 790E310E9F5
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 10:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720173952; x=1751709952;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+B8SbZJw4JzDftFaShfH8gdLaUZlyXWmDpdHYIxYxGA=;
 b=NA64g/3lPHWYVBZ8+ZbtY5tLwSSBOtGL36/ntJ8bdEkLBY2t1G6uLJqu
 UIND0dVSd+r4HLfl8Fs1AV/GUPLemNN1B/CKZo0QxHEQg+JCdyS6qyrUT
 OnUg1Az75HRN0qduDywlGz2TqYHgszjU8GWWsI7IlBa0XR9Xm05wcqKB4
 NspSwmwgtteTlmVb4ZRP1KRxksbkY9Nox6pt3PdbXG4dDBFi/75UTFbUr
 RLo4Wn8G95luMHVfZyMSn/W+FLi6dqXCurhtB+yRJnEo1JBmf9R1GYive
 zOj20z6v4fEwu9cCL86zscnOJrLzIi2pWAhy8iEI8PodtiTD7ide6oeVi A==;
X-CSE-ConnectionGUID: Ys6DCQ9IT1aq5BFVFXCLag==
X-CSE-MsgGUID: Tv19DgBVQkyOPpNcQ0MNfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="21275195"
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="21275195"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 03:05:52 -0700
X-CSE-ConnectionGUID: Q7fIpxG8RPeaoMZ26Kpx3w==
X-CSE-MsgGUID: 5e9Dfeo4Srm892z2ZDuSpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="46839159"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa009.fm.intel.com with ESMTP; 05 Jul 2024 03:05:51 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 0/5] Display Global Histogram
Date: Fri,  5 Jul 2024 15:25:46 +0530
Message-Id: <20240705095551.1244154-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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

Display histogram is a hardware functionality where a statistics for 'x'
number of frames is generated to form a histogram data. This is notified
to the user via histogram event. Compositor will then upon sensing the
histogram event will read the histogram data from KMD via crtc property.
A library can be developed to take this generated histogram as an
input and apply some algorithm to generate an Image EnhancemenT(IET).
This is further fed back to the KMD via crtc property. KMD will use this
IET as a multiplicand factor to multiply with the incoming pixels at the
end of the pipe which is then pushed onto the display.

One such library Global Histogram Enhancement(GHE) will take the histogram
as input and applied the algorithm to enhance the density and then
return the enhanced factor. This library can be located @
https://github.com/intel/ghe

The corresponding mutter changes to enable/disable histogram, read the
histogram data, communicate with the library and write the enhanced data
back to the KMD is also pushed for review at https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3873
The IGT changes for validating the histogram event and reading the
histogram is also pushed for review at https://patchwork.freedesktop.org/series/135789/

Test-with: 20240705091333.328322-1-mohammed.thasleem@intel.com

Arun R Murthy (5):
  drm/i915/display: Add support for histogram
  drm/i915/display: histogram interrupt handling
  Add crtc properties for global histogram
  drm/i915/histogram: histogram delay counter doesnt reset
  drm/i915/display/histogram: Histogram changes for Display LNL+

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +
 drivers/gpu/drm/i915/display/intel_crtc.c     | 202 +++++++++-
 drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
 drivers/gpu/drm/i915/display/intel_display.c  |  13 +
 .../gpu/drm/i915/display/intel_display_irq.c  |   6 +-
 .../drm/i915/display/intel_display_types.h    |  20 +
 .../gpu/drm/i915/display/intel_histogram.c    | 380 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_histogram.h    | 120 ++++++
 drivers/gpu/drm/i915/i915_reg.h               |   5 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 11 files changed, 754 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.h

-- 
2.25.1

