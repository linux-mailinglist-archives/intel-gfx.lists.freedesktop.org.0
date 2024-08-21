Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CB89597AA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 12:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0795D10E8C7;
	Wed, 21 Aug 2024 10:33:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aqWIEEQu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895EA10E8C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 10:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724236416; x=1755772416;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7ciAYSddnCNSjevnfOkzJdwE3t+Q5YAVjEXfTzZktDw=;
 b=aqWIEEQuq9ZJ+63F8mNw0Mj7MmeVdwdz93OIyHQlF72DWv+3PbEDFdF2
 1oYYRUzY3qHSkzC1ohRUemOc0jboGKEe6a1DEkog8IJOxKo7O6NguuK1r
 U/qg/VlZS64Yno+cBsScVLz4oWmcQU4yAj3UhntrY2XWPoMf8n047UpgU
 pRI223cGSzPZGtUqbvbsGwx4s9Uv55+EBnMh/sGViFDynquBiZUjtMlRa
 uqj/gcQbYBLTz+xRuXmxDy0TVgYFFuWEonNOfqH4k51qhpmuOwKIHinBg
 sYUvf9dKWMDKPeBl/OnpWO99OLGeusA66gpbNJg3uK7zT1M7rQpt4+DJR g==;
X-CSE-ConnectionGUID: Ezki+DYuQjqM5Jiq89skJA==
X-CSE-MsgGUID: 6NpLBjCySsWrNoZZOdf7Ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="33155446"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="33155446"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 03:33:36 -0700
X-CSE-ConnectionGUID: LEY8gP7xTsq55EhEctth/A==
X-CSE-MsgGUID: 2MShUokoSxaY0K/0rJUe9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65740599"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa004.fm.intel.com with ESMTP; 21 Aug 2024 03:33:34 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2 0/5] Display Global histogram
Date: Wed, 21 Aug 2024 15:53:44 +0530
Message-Id: <20240821102349.3961986-1-arun.r.murthy@intel.com>
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
 .../drm/i915/display/intel_display_types.h    |  19 +
 .../gpu/drm/i915/display/intel_histogram.c    | 361 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_histogram.h    | 107 ++++++
 drivers/gpu/drm/i915/i915_reg.h               |   5 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 11 files changed, 721 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.h

-- 
2.25.1

