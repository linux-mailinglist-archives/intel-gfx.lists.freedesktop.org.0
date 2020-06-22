Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 995BC20446F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 01:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5276E92C;
	Mon, 22 Jun 2020 23:28:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D296E202
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 23:28:27 +0000 (UTC)
IronPort-SDR: EacXXlA4x8o20ZeaUDYWY9qyp2e8yN6q2NxhodTHRcH2u78QSc2puG3L1z1EhCaM1INz/pBZBz
 X/wJiXOn+klQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="161983751"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="161983751"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 16:28:27 -0700
IronPort-SDR: O1WHcV+5OZmuRDw5kYYSdc3daR6Poqtzswdp02I5K3PIxSXmTOcx9LkiHjW5ieqB+hqTjAtlAb
 AkqtfcFvwxDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="422813864"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga004.jf.intel.com with ESMTP; 22 Jun 2020 16:28:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 16:28:19 -0700
Message-Id: <20200622232821.3093-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Variable renames
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These were part of previous unrelated series. Rebase and submit they
together on their own.

Lucas De Marchi (2):
  drm/i915/display: remove alias to dig_port
  drm/i915/display: prefer dig_port to reference intel_digital_port

 drivers/gpu/drm/i915/display/intel_ddi.c      | 150 ++++----
 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |  12 +-
 .../drm/i915/display/intel_display_power.c    |   4 +-
 .../drm/i915/display/intel_display_types.h    |  40 +--
 drivers/gpu/drm/i915/display/intel_dp.c       | 338 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  74 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   6 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  38 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 118 +++---
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 252 ++++++-------
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   4 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_lspcon.h   |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   8 +-
 18 files changed, 533 insertions(+), 537 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
