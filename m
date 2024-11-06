Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 045599BF8D2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C651810E78A;
	Wed,  6 Nov 2024 22:04:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aszplr7v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A20410E0BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930654; x=1762466654;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OlIr2RXTKFpaRSZxd5VgnTz81RZJcoTizhm+Cf+Iok8=;
 b=aszplr7vhG4xkj7/ErdbxxHCpNkiPkksl/le58fAf+/zh02XMl26DKeG
 hwvHHBbXZ5dAdxcVRFxEcFncjT/TQRpUWzBf7VuMAeLDxs0/G+OqIB6b7
 L3WepP1B7ClHxECxZ3hDkd8+Orcik5YGVq/b/l4Y/sUXdxpQYfjxpRUCt
 A/WX/VK1/zSOZd34s5OvMpZ+R35Veo7G9/rSDQJZvfPTKNl+Q5yxuwvjy
 a7gEEdcmbqStCqx1aBNG1/eyiPKcesOMGnyecV89yrhVTi/VxTDKSiSqL
 2IzZanTuLgRZQ912XP6AyOyPwWICy3mf1gV9U61FmZZ5yOLdWPw2C0JdT w==;
X-CSE-ConnectionGUID: HZ2eX6UpTE+J9ts+j+jBeg==
X-CSE-MsgGUID: HrkA1LwMQDiZodpS/RUU6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42157311"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="42157311"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:04:08 -0800
X-CSE-ConnectionGUID: 0/EEX9yeR36eUWl2MUJeOw==
X-CSE-MsgGUID: 80FPSiakTvqs90WMqi38gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84879535"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 13:59:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2024 23:58:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/8] drm/i915/pps: Some PPS cleanups
Date: Wed,  6 Nov 2024 23:58:51 +0200
Message-ID: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

I just wanted to defuse the mess around struct
edp_power_seq, but ended up super confused by the PPS
delay initialization code and so ended up untangling
some of that mess as well.

Ville Syrjälä (8):
  drm/i915/pps: Store the power cycle delay without the +1
  drm/i915/pps: Decouple pps delays from VBT struct definition
  drm/i915/pps: Rename intel_pps_delay members
  drm/i915/lvds: Use struct intel_pps_delays for LVDS power sequencing
  drm/i915/pps: Spell out the eDP spec power sequencing delays a bit
    more clearly
  drm/i915/pps: Extract msecs_to_pps_units()
  drm/i915/pps: Extract pps_units_to_msecs()
  drm/i915/pps: Eliminate pointless get_delay() macro

 drivers/gpu/drm/i915/display/intel_bios.c     |  15 +-
 drivers/gpu/drm/i915/display/intel_bios.h     |   8 -
 .../drm/i915/display/intel_display_types.h    |  15 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   1 -
 drivers/gpu/drm/i915/display/intel_lvds.c     |  49 +++---
 drivers/gpu/drm/i915/display/intel_pps.c      | 149 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |   8 +
 7 files changed, 136 insertions(+), 109 deletions(-)

-- 
2.45.2

