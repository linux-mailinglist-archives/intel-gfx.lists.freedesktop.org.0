Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB2D87962D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 15:29:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F0C10F145;
	Tue, 12 Mar 2024 14:29:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TEQtjyBg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D9C910F145
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 14:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710253748; x=1741789748;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WhrORSKkxXiavcGFjM7UxKCop0rbHD5q8FmUzTU73CM=;
 b=TEQtjyBgZG/gg44WJVQnFmnbrj47gm0vnpvRcHob3N1JxFTu03bHMXsh
 vGAEIEkhhhF/V745iJBEwcGAM1aOHyORg5vcZFEAWxSK3RJoU1JhnvdMn
 MaFo5L8eWsh6OPj7H4FZRkCXa5wvmjX2Y8GyE7hTBbL0nQe6fA4FLWhEF
 SxJUtCIcQBElAV4w5x8fRjgsrHyQCSL7z1GIS45N9E9nUrLreXm9TPu/E
 goRbMGF7QudFB14+2mfEwHyhbrnnvipQfXvwPmBUlX6ArZ1ZsWJ11s/Dg
 uoC9qKi7WrkJ3gpl014/4nFfRNTkENTHq6gRWomKi4vO1x0tqYjPWPehv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5089768"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="5089768"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16124839"
Received: from rfreedx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.35.216])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [RFC 0/7] drm/i915: pass encoder around more for port/phy checks
Date: Tue, 12 Mar 2024 16:28:55 +0200
Message-Id: <cover.1710253533.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Based on my ideas at [1], pass the encoder around more instead of i915,
port pair. Look up phy and TC port based on encoder.

This could be later extended to e.g. cache the info to encoder and/or
look up data from encoder->devdata.

I know relying solely on encoder has its drawbacks, namely not being
able to do stuff unless you have that encoder for that specific
port/phy. And have a reference to it.

Thoughts?

BR,
Jani.


[1] https://lore.kernel.org/r/87y1dnswgo.fsf@intel.com

Jani Nikula (7):
  drm/hdmi: convert *_port_to_ddc_pin() to *_encoder_to_ddc_pin()
  drm/i915/ddi: pass encoder to intel_wait_ddi_buf_active()
  drm/i915/snps: pass encoder to intel_snps_phy_update_psr_power_state()
  drm/i915/display: add intel_encoder_is_*() and _to_*() functions
  drm/i915/display: use intel_encoder_is/to_* functions
  drm/i915/cx0: remove intel_is_c10phy()
  drm/i915/cx0: pass encoder instead of i915 and port around

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 299 +++++++++---------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 127 ++++----
 .../drm/i915/display/intel_ddi_buf_trans.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  40 +++
 drivers/gpu/drm/i915/display/intel_display.h  |   7 +
 .../i915/display/intel_display_power_well.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  15 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  22 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  80 ++---
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  14 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  16 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  33 +-
 15 files changed, 339 insertions(+), 344 deletions(-)

-- 
2.39.2

