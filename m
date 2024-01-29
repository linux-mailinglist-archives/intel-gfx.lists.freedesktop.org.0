Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E9E84115E
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 18:56:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A9C112A5A;
	Mon, 29 Jan 2024 17:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF45112A51
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 17:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706550930; x=1738086930;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cmdcoTITRNy+4bfNLxiW/NQyxy2yt9xB1ydv/fZg3Qo=;
 b=isRU7LI8mNysquZ9AuKt2G2ed31cWdS4cc7VrGq29pS/fYqvNs+JBb1f
 F8LVcN+9CZwIrf11X4MoP7YhQftj+EAUCT/z3nAK/Lb7mANNGJm9ScyYn
 mb96EILe6l5BS2f18nsKQ9klePbt/SSFqbmdOgorhT6zi//zr3uosJVFF
 x0EP8kI6qWPVAtQ0LggKCBx7PmfQh/D0wcs7yBR57VkpyNrg3e/7++F/s
 GyaaVwDr2Zy0pjq8bXzQ3eK0ssoEPPe+yr2CLXBGk7GqTRnG09cyBr75H
 TBt0lR+Nrz4fSOnn1CDr0pr15xH1a3xfFPPpwcefplX9eBGBr7EEOECQC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="10407769"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="10407769"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="931157873"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="931157873"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:16 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915/dp: Add jitter WAs for MST/FEC/DSC links
Date: Mon, 29 Jan 2024 19:55:27 +0200
Message-Id: <20240129175533.904590-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
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

Add workarounds to fix jitter issues on non-UHBR/UHBR MST/FEC/DSC links.
This fixes at least the output on MTLP + a DELL docking station MST/DSC
link with different monitors connected.

Imre Deak (6):
  drm/i915/adlp: Add MST FEC BS jitter WA (Wa_14013163432)
  drm/i915/adlp: Add MST short HBlank WA (Wa_14014143976)
  drm/i915/adlp: Add DP MST DPT/DPTP alignment WA (Wa_14014143976)
  drm/i915/adlp+: Add DSC early pixel count scaling WA (Wa_1409098942)
  drm/i915/mtl+: Disable DP/DSC SF insertion at EOL WA
  drm/i915/mtl: Add DP FEC BS jitter WA

 drivers/gpu/drm/i915/display/intel_display.c | 25 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 35 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h              | 10 ++++++
 3 files changed, 70 insertions(+)

-- 
2.39.2

