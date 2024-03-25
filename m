Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DB0889C8B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 12:23:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F84110E1AC;
	Mon, 25 Mar 2024 11:23:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jXYnFk33";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A040110E1AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 11:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711365813; x=1742901813;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T75DkLQ+8CCGv0JbFznVAWG/lqTcc/2IncP4HgGfWRY=;
 b=jXYnFk335DMpSnrBH0pbjzN9371rLKnbpOY1rBAGbdT5J/PPLZi/thg0
 ljfDTXeRTjbIbCGpaVhxIzPmvLLgPCZ9F90y1NcuRdNFr871Y3jgQEIBW
 WC/w0Dltx3wVr2nBFlQibL/Mu69+kCw/5WCiZWolQZYhSI51crHQuu8uI
 JJVPF0GdU01SOlxCIcIe9CGSkNegGx2e7zEQozOGMjomyzdg1apJC/73S
 KRUm5O1FGynyODuB38HtFlM/oOS5Jd7m8KruTrw3gdLw2/NMl0OL6GD9h
 g8P2OMQH0aBDjQHvO/b4zZomIonNt4b/v+JHN5ZN+sKRhBCeQ0wxgiVbv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6219227"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6219227"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 04:23:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="15500458"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa010.fm.intel.com with ESMTP; 25 Mar 2024 04:23:30 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] Enable fastset for mbus_join state change
Date: Mon, 25 Mar 2024 13:23:25 +0200
Message-Id: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

Currently fastset is not supported, if mbus join state changes,
so whenever we have to switch mbus state, we have to force a full
modeset. This patch series makes fastset possible from MBUS state
point of view.

Stanislav Lisovskiy (4):
  drm/i915: Update mbus in intel_dbuf_mbus_update and do it properly
  drm/i915: Use old mbus_join value when increasing CDCLK
  drm/i915: Loop over all active pipes in intel_mbus_dbox_update
  drm/i915: Implement vblank synchronized MBUS join changes

 drivers/gpu/drm/i915/display/intel_cdclk.c   |  12 +-
 drivers/gpu/drm/i915/display/intel_display.c |   6 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 166 ++++++++++++++-----
 drivers/gpu/drm/i915/display/skl_watermark.h |   2 +
 4 files changed, 141 insertions(+), 45 deletions(-)

-- 
2.37.3

