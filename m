Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5CF9D35C8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 09:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD6F710E3BA;
	Wed, 20 Nov 2024 08:47:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QTsI0LCq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068D210E3BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 08:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732092465; x=1763628465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1yvBuAWmFKyD9ktzWpz6O1uw28P7iZmw7Jky27BPmRw=;
 b=QTsI0LCqYa8BNoy5Tviz8OJAxpJ0+i9L9W7adckegz1kgtACPe3BGaSd
 ARn2HJWT5aacPlBprPEuNwTaVDFWw9HSEJ2k86Ub/fxbof3UfvXPcg8BC
 h+DJxgO56gfTCJ30l0MRTI+x9jyD6dlWdMomB1gKRd6r32ypu7+7jRe/N
 rPSQBjeDZMM6AEjzgxhojoue9bgJbh4eh1XcLFQADjfSU8/u0HJCOHQ4f
 VYQXFAw2OYGQSCnQ9b2RLwxR5fMCn+RL+Re7SoTjDyj5i9TIjMwgtmNMG
 Q3DW8QxyCZkHFdkrdRr5OGZW0divEioZbB0rlBtJJbmxQBo2pVQrqWsWP w==;
X-CSE-ConnectionGUID: CLWZiK7/QeGcQ4rEST8Pfw==
X-CSE-MsgGUID: LzTD0FYUQxuKWZEe5FEGmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31887140"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31887140"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 00:47:45 -0800
X-CSE-ConnectionGUID: qKF00KduRSm/Eh7h1i0ptg==
X-CSE-MsgGUID: Y7KabsPnRFuKGGQNoiEfxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89956731"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 20 Nov 2024 00:47:43 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH v4 0/5] Add AS_SDP to fastset
Date: Wed, 20 Nov 2024 14:19:43 +0530
Message-ID: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
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

vrr enable disable should happen with fastset, where
adptive sync SDP should not block it to full modeset.

Ankit Nautiyal (1):
  drm/i915/dp: fix the Adaptive sync Operation mode for SDP

Mitul Golani (4):
  drm/i915/vrr: Add crtc_state dump for vrr.vsync params
  drm/i915/vrr: Update vrr.vsync_{start, end} computation
  drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
  drm/i915/dp: Compute as_sdp based on if vrr possible

 .../drm/i915/display/intel_crtc_state_dump.c  |  4 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +++---
 drivers/gpu/drm/i915/display/intel_vrr.c      | 25 ++++++++-----------
 3 files changed, 16 insertions(+), 20 deletions(-)

-- 
2.46.0

