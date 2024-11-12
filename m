Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A835B9C55D4
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 12:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4920F10E5BC;
	Tue, 12 Nov 2024 11:10:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ve+3UVEf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B42A10E5BC;
 Tue, 12 Nov 2024 11:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731409852; x=1762945852;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KoadyaLom6fPwSpkX3P22W2B9NQl8yJ/rdLak7v+EPA=;
 b=Ve+3UVEf1ThXoHbpik4lgz76LW9KL24CEuBAs/HiwAsSYab7yfE6o/Hd
 ymrr/j4AzXZQKEXJjNHcdLkJR2GZT/BH69zuKdzitGkLwXz8Rl6MyQ9qQ
 9JdAC//EJoJVNLMP23pEXHPR9Vs8VLv3ASId8uFCTY7Ji7/kDjI173eLy
 zI+vFBRIAUagUNpktLKCevuQZax7sM3maQ/ZeYl+fLFqIThfT2Py34Szx
 Cd8+dUlD8vZZlh5XBEaspufc7rjaG5BMLRz5YYlcsECForHlSkjr22qhT
 K/naAaFepnQ/lJtUf9qOBAvVAjo9hy8hPpS+YqLZTONSzJjz0a9k0tWsh g==;
X-CSE-ConnectionGUID: oAvD4xziRoO/ZqYt6WyYcA==
X-CSE-MsgGUID: fAxMFAEvSzypFVF2zjlCDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31094612"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31094612"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:10:52 -0800
X-CSE-ConnectionGUID: JC34rkbKRviY6PsCryPWHg==
X-CSE-MsgGUID: Yy6lv0t1QxWlIfql5XEygQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="92362311"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:10:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI v2 0/8] drm/i915/mst: cleanups, renames, clarifications
Date: Tue, 12 Nov 2024 13:10:36 +0200
Message-Id: <cover.1731409802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Rebase of [1].

[1] https://lore.kernel.org/r/cover.1731011435.git.jani.nikula@intel.com

Jani Nikula (8):
  drm/i915/mst: pass primary encoder to primary encoder hooks
  drm/i915/mst: rename intel_encoder to encoder
  drm/i915/mst: introduce to_primary_encoder() and to_primary_dp()
  drm/i915/mst: use primary_encoder in fake mst encoder creation
  drm/i915/display: make CHICKEN_TRANS() display version aware
  drm/i915/mst: convert to struct intel_display
  drm/i915/mst: change naming from fake encoders to MST stream encoders
  drm/i915/dp: add comments about hooks called from MST stream encoders

 drivers/gpu/drm/i915/display/intel_ddi.c     |  72 +--
 drivers/gpu/drm/i915/display/intel_ddi.h     |   2 -
 drivers/gpu/drm/i915/display/intel_display.c |  15 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 493 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_vrr.c     |   2 +-
 drivers/gpu/drm/i915/i915_reg.h              |   5 +-
 8 files changed, 307 insertions(+), 288 deletions(-)

-- 
2.39.5

