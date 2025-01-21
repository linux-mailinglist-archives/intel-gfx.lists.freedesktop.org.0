Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9005EA17730
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 07:05:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F213610E4C8;
	Tue, 21 Jan 2025 06:05:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QX+hSOsU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D32E10E4C4;
 Tue, 21 Jan 2025 06:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737439539; x=1768975539;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xV2a6RlmyDeiUcnr+d7Jwuj5eAU8a6Y6vebXfYa+8R0=;
 b=QX+hSOsUuirDN8xwpvrxsL8XQMdC1RclFoiUYKAuU9+p2ZaVNTZHFfnR
 KcoBTvlecVh/vbHsjwiWkDfqdgMo21poqPxI9Ijd35zrqYKquGSo8ASVU
 GrOslycTMgh9VGA/gXth99v/xn/GY7EslTMcWEDUnMXFGsvj4EAl2fdBX
 bxMPzHcnLeZl3Xm2rImWbWyjpb/ojLm4kuQ6+iq0fpyGG3tAa8ZcOeos+
 yBJbBMrg7tUxEaZQumJKxMLRWGF1G3e3lTOznVdxrFXC1sRp6WxmbHGak
 MJgmF6SZD3zcp7fZC5j6SVW88V6FanQVGoJ65x/RW2aWN82+yjiMYSQD9 w==;
X-CSE-ConnectionGUID: 6uoJPyoOQdmFxPaeNsNngQ==
X-CSE-MsgGUID: zjR2zlBUSsu/ylJdD2FOfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37947865"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37947865"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 22:05:38 -0800
X-CSE-ConnectionGUID: XULcltHxRDe/YnEi2lIkkg==
X-CSE-MsgGUID: 4J5fQgQ6QfWaGVU2GNSkIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,221,1732608000"; d="scan'208";a="106509078"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 20 Jan 2025 22:05:36 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: jani.nikula@intel.com, dmitry.baryshkov@linaro.org,
 arun.r.murthy@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/3] Extended Wake Timeout 
Date: Tue, 21 Jan 2025 11:35:19 +0530
Message-Id: <20250121060522.1296166-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Retimers in H/w usually takes 30 to 40ms to wake up all the devices. To
get this we use the Extended Wake Time feature in which the sink device
tells us the minimum amount of time it requires to wake up and we need
to do a write to grant this request else we need to wake up within 1ms
of low power state exit.
DP source  device shall keep retying  the AUX tansaction up to the
extended timeout  that is being granted for LTTPRs from the sink device

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/dp: Add the DPCD register required for Extended wake timeout
  drm/display/dp: Define function to setup Extended wake time
  drm/i915/lttpr: Enable Extended Wake Timeout

 drivers/gpu/drm/display/drm_dp_helper.c       | 47 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 ++
 .../drm/i915/display/intel_dp_link_training.c |  2 +-
 .../drm/i915/display/intel_dp_link_training.h |  1 +
 include/drm/display/drm_dp.h                  | 14 ++++++
 include/drm/display/drm_dp_helper.h           |  1 +
 6 files changed, 68 insertions(+), 1 deletion(-)

-- 
2.34.1

