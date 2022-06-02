Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B59FC53BA90
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 16:20:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18CAB112D3A;
	Thu,  2 Jun 2022 14:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C7FF112D3A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 14:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654179631; x=1685715631;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MmVEigUFDwxnFBGM5CxA5ZrHTJI/3haJFFZahhgyn9I=;
 b=TCW0nSTV1J1atu8z8PQJyARnCjmYblzL0fugY3YzfWs2O32FY2JglQ93
 lBn7eD72t905EQix1VzGXHxHD8DyDzjOP/qyQOzzhODJgxSms/+QcrNwK
 LlRXmODh0Vz9GYDOJ/+OxMQ/iTShjITwtgMw/lf564Gv1h9ILVt8bAdgb
 XzltpCFi6lcSxp9JGHGjfI4VNX2jt5zlNUdxQ+sg24ZyEIZmdOsTq4Emq
 hkFwAPRDCoGYJU8vLlU+Z6LGnceUknJJIoskk2bjsurr2YfWq4UvLr28i
 3W/CvpxmRvfkAIhoZgYtNDFcYO1bL40wRCxEXAXqquINGaf1twvLVpzHq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="339007257"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="339007257"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 07:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="905007583"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga005.fm.intel.com with ESMTP; 02 Jun 2022 07:20:28 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 19:48:45 +0530
Message-Id: <20220602141850.21301-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/5] Dual LFP/EDP enablement
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series read the separate entry for each
LFP from VBT and populate the structure, which will be used
for enablement of the respective panel.

Port sync implementation is not part of this patch series.
Will be taken up later as per requrement.

This patch series do the initial enablement of dual EDP panel as
per the data provided through VBT.

Animesh Manna (3):
  drm/i915/bios: calculate drrs mode using panel index for dual LFP
  drm/i915/display: Use panel index to parse panel timing for dual EDP
  drm/i915/display: Use panel index to parse lfp backlight

Arun R Murthy (1):
  drm/i915/display: prepend connector name to the backlight

Nischal Varide (1):
  drm/i915/display/tgl+: Use PPS index from vbt

 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 .../gpu/drm/i915/display/intel_backlight.c    |  2 +
 drivers/gpu/drm/i915/display/intel_bios.c     | 92 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_bios.h     |  3 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 10 files changed, 79 insertions(+), 37 deletions(-)

-- 
2.29.0

