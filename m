Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1BE938B2A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DBA910E405;
	Mon, 22 Jul 2024 08:26:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBjFryBv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5375B10E405
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 08:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721636762; x=1753172762;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f7M14O5mhZ7wpIG+lQiaB5gFWY+N5WqF9rev9C/3Pg4=;
 b=KBjFryBvHS3Yw94pTpcmwT0Esf2LLoXOEPuO/CwXbZIW2iHG8sJu23YW
 v9Wt9s0MUE97VJol+5lnqQOrRn6NBfQhCyjCwjFovNHwMqL3ZnGwDas8H
 OXRBL9pe41lGdZPwqfEzPyEx8DkcopWFLd3YqkH6EkQqGRkyh5e2kUQeJ
 fJeLu/FFQM9w4j5G9qhO5zEZJlelA3ZjuF/LIL0IADCZv8VerA6F4GOfm
 1MKCohKeF+uFQAgB2KK3odtY5pfxLstVy7qjs9wOiCCAlYE7TedtqoB6d
 dBxTBkDNK+/1vgSM/NokzQR7Ahuqs3IsWswm93ne1OJXTgYfo8nBMyi1/ Q==;
X-CSE-ConnectionGUID: sG7a1lFCRXKgFhA3YXVynQ==
X-CSE-MsgGUID: S5+84WmQQaSHkmViHJsP8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29806921"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="29806921"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:02 -0700
X-CSE-ConnectionGUID: bp4qtTruTyCaBj6Ia9PaiA==
X-CSE-MsgGUID: tJqGBaKyQy2WkuXRitCyjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51752869"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 00/10] Use VRR timing generator for fixed refresh rate modes
Date: Mon, 22 Jul 2024 13:56:55 +0530
Message-ID: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Even though the VRR timing generator (TG) is primarily used for
variable refresh rates, it can be used for fixed refresh rates as
well. For a fixed refresh rate the Flip Line and Vmax must be equal
(TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
dependencies between the VRR timings and the legacy timing generator
registers.

This series is an attempt to use VRR TG for fixed refresh rate.
For platforms XELPD+, always go with VRR timing generator for both fixed and
variable refresh rate cases.

Rev2:
-Added support from MTL+ and for HDMI too.
-Changed VRR VSYNC programming which is required for HDMI.
-Modified vrr compute config for bigjoiner case. (Still to be tested).

Rev3:
-Start support from XELPD+ as MTL needs a WA to have PSR +VRR (fixed
refresh rate)
-Add changes to enable PSR with VRR with fixed refresh rate.

Rev4:
-Addressed review comments from Mitul and rebased.

Ankit Nautiyal (10):
  drm/i915/dp: fix the Adaptive sync Operation mode for SDP
  drm/i915/display: Add member fixed_rr to denote Fixed refresh rate
    with VRRTG
  drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh rate
  drm/i915/vrr: Compute vrr vsync if platforms support it
  drm/i915/hdmi: Use VRR Timing generator for HDMI
  drm/i915/display: Disable PSR before disabling VRR
  drm/i915/psr: Allow PSR for fixed refrsh rate with VRR TG
  drm/i915/vrr: Avoid sending PUSH when VRR TG is used with Fixed
    refresh rate
  drm/i915/vrr: Handle joiner with vrr
  drm/i915/vrr: Always use VRR timing generator for XELPD+

 drivers/gpu/drm/i915/display/intel_display.c  |  8 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 93 ++++++++++++-------
 6 files changed, 74 insertions(+), 41 deletions(-)

-- 
2.45.2

