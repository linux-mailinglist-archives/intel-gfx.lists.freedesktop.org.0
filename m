Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A67A627D9F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEB410E095;
	Mon, 14 Nov 2022 12:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC8D10E0A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668428593; x=1699964593;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hWoNOo9UEXyJJNedXDUmJ4gGeeT3ze2FDPf6vCtasZA=;
 b=k35jxCIm0iLLa3V9js1LpmHbGhxyysAbuDqwer1j5ndV9C4DjPzielGc
 Y8s4QexdWeI92scN3uCXrYfGD3zrdg0EJS+Q+6Ys8DzivXpo/6BXfO4fM
 zrVJ3GJkRpRIkHjX6D7djxfz3G00IkiA1pyr4RoOhRFOG9Sw3yrC85uAC
 gXWT7CkRpnruHN17DHIy5qdpGoIqKTlRW1kXZfXfFYsBlbJS2Q9SJvsE7
 6gqi7uLQyMUfEk0NeBr/Qfhy7hq3LvU/uSATVKV3ZieNFa8JD4Ol6CbHf
 5bwbqT+FxcN1ZXdOaVovskjEgTcnpJUbd0ycZM97TrnxLCGguxfWVVilE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310664104"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310664104"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:22:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671539816"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671539816"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:22:54 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:22:42 +0200
Message-Id: <20221114122251.21327-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/9] drm/i915: drm/i915/tgl+: Enable DC power
 states on all eDP ports
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v4 of [1] addressing the review comments from Ville:

- Use preallocated memory for the intel_display_power_get/put_in_set()
  debug wakerefs array.
- Drop the
  "drm/i915: Don't enable the AUX_IO power for combo-PHY external DP port main links"
  patch, to keep the existing behavior for now on the external DP ports.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

[1] https://lore.kernel.org/intel-gfx/20221107170917.3566758-5-imre.deak@intel.com/T/#t

Imre Deak (9):
  drm/i915: Fix warn in intel_display_power_*_domain() functions
  drm/i915: Preallocate the debug power domain wakerefs array
  drm/i915: Move the POWER_DOMAIN_AUX_IO_A definition to its logical
    place
  drm/i915: Use the AUX_IO power domain only for eDP/PSR port
  drm/i915/tgl+: Enable display DC power states on all eDP ports
  drm/i915: Add missing AUX_IO_A power domain->well mappings
  drm/i915: Add missing DC_OFF power domain->well mappings
  drm/i915: Factor out function to get/put AUX_IO power for main link
  drm/i915/mtl+: Don't enable the AUX_IO power for non-eDP port main
    links

 drivers/gpu/drm/i915/display/intel_ddi.c      | 92 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_display.c  | 11 +--
 .../drm/i915/display/intel_display_power.c    | 42 +++++++--
 .../drm/i915/display/intel_display_power.h    | 12 ++-
 .../i915/display/intel_display_power_map.c    | 69 ++++++++++++--
 .../drm/i915/display/intel_display_types.h    |  1 +
 6 files changed, 171 insertions(+), 56 deletions(-)

-- 
2.37.1

