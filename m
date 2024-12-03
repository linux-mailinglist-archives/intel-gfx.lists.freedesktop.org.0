Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 752BC9E27C4
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 17:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E80410EAAA;
	Tue,  3 Dec 2024 16:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4W4rmc9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6365910EAAB
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 16:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733244062; x=1764780062;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c4KdqiVTHUAjIw/g04+iti6eqJSyXJ5jWr+jU6cro/I=;
 b=Q4W4rmc9kvS2XzURvyjmj66OeSndqvn2LT8UaLfsm6EOUGjJ3slMlMLm
 spcIH0x0wX/OeEqisgXw+w1ixDtcgoGqML8ykYYW5/jORq4++QhXqZcNL
 Brd5qC7f68eoXc9AcX3a0W4awXBbRjR2uyogWA1jiTUjbHgVcY7+WSHDa
 A/TjWBPCQ3NwzG21ZeOPJJKIEnx3f3+R7M+EKvZetHYgKYmmlhg0XlHvA
 R7M9fnj6DsqfPTiKFPjhvNma9obbmGf2qrBLnPPpxb9n2xOkSSNSxtMuH
 L3g1wRjhtFcWpeKIywn4RCmqctdu8fuFcuvAqECVXVeoo27JdYKDxlYBa g==;
X-CSE-ConnectionGUID: w53Xw3NNRbaJYspMtEsSiQ==
X-CSE-MsgGUID: 3kzvQjUdTCqfl9Y6VWC5Iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33347501"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33347501"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:02 -0800
X-CSE-ConnectionGUID: boR5OmHaQSqhE8dypG4VDw==
X-CSE-MsgGUID: PFXsacjYRxm5uOw+HF36Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93580366"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/6] drm/i915/lspcon: interface cleanups
Date: Tue,  3 Dec 2024 18:40:50 +0200
Message-Id: <cover.1733243959.git.jani.nikula@intel.com>
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

Some quick cleanups. Always use digital port for the interfaces, don't
touch dig_port->lspcon outside of intel_lspcon.c, rename interfaces.

Jani Nikula (6):
  drm/i915/hdmi: move declarations for hsw_read/write_infoframe() to the
    right place
  drm/i915/lspcon: add intel_lspcon_active() and use it
  drm/i915/lspcon: change signature of lspcon_detect_hdr_capability()
  drm/i915/lspcon: change signature of lspcon_wait_pcon_mode()
  drm/i915/lspcon: remove dp_to_lspcon(), hide enc_to_intel_lspcon()
  drm/i915/lspcon: rename interfaces to intel_lspcon_* to unify

 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++---
 .../drm/i915/display/intel_display_types.h    | 12 ---------
 drivers/gpu/drm/i915/display/intel_dp.c       | 18 ++++++-------
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  9 +++++++
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 27 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_lspcon.h   | 25 +++++++----------
 6 files changed, 51 insertions(+), 46 deletions(-)

-- 
2.39.5

