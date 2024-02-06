Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D63C484B2EA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 11:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C019910EB3C;
	Tue,  6 Feb 2024 10:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HAaCV9Am";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94D710EB3C
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 10:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707217097; x=1738753097;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ujDa+0HMxVNnRWUxUUYo0bawvJF3ErQF29FweiPYBY8=;
 b=HAaCV9Amix+WoY5Kq/mzAenNfLlfX+yxEufppcJtH4h9ahasiJWXGumm
 Wo9qlzWWZTmuAc1xnZWUqmadvO26qdTbYjd/TMGIdDNSIKEsGxrrqeB5I
 XCmJ5oNb1WV1cleCsnYlO3gpPkP1rcDhp7eeIy+1VeZkjRprFxIcCWrHx
 giWaO4QnCykfDz+8786rT5niRsj7ZwTiiJa1QFOpN521+Rw96mcNItKaR
 aAlbd0EeHxE3z3rC5OBXGa0tqsvSNq4f5wc+TWCuDgTEML7HbilRxsOgw
 fDqNI//uXqKsWfoTWBLMXqxeJDzgnavol0KZriBjSjbICsm37N+Y/MZoK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="26164509"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="26164509"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 02:58:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1019168"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 06 Feb 2024 02:58:15 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: [RFC 0/4] DP link training failure fallback
Date: Tue,  6 Feb 2024 16:17:55 +0530
Message-Id: <20240206104759.2079133-1-arun.r.murthy@intel.com>
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

The series depicts a working skeleton of the fallback sequence in case
on DP link training failure.
The fallback is currently implemented for DP2.0 only, on similar basis
DP1.4 fallback will come up in the same patch series.
A hotplug event was trigerred in the existing fallback sequence. This
has been removed. On fallback only the link rate and the lane count is
changed for which user need not be notified.
As part of the fallback, the link rate and lane count has to be changed
and these parameters are in intel_crtc_state struct which is passed as
const. The same variables link_rate and lane_count is available in
intel_dp structure. It would be more meaningful to use these for the dp
link training and fallback as well.
As part of cleanup the lane_count in intel_crtc_state structure has to
be removed and the port_clock will have to be used only in crtc
configuration. These changes will be included in this patch series.

Arun R Murthy (4):
  drm/i915/display/dp: Add DP fallback on LT
  drm/i915/display/dp: Dont send hotplug event on LT failure
  drm/i915/dp: use link rate and lane count in intel_dp struct
  drm/i915/display/dp: On LT failure retry LT

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  16 +--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  31 ++++--
 .../drm/i915/display/intel_ddi_buf_trans.c    |   7 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 100 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +-
 .../drm/i915/display/intel_dp_link_training.c |  86 +++++++--------
 .../drm/i915/display/intel_dp_link_training.h |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  29 ++---
 8 files changed, 184 insertions(+), 89 deletions(-)

-- 
2.25.1

