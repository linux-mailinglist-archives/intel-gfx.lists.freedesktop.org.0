Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D072A20BD3B
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 01:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9CB6E50E;
	Fri, 26 Jun 2020 23:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E10166E507
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 23:48:52 +0000 (UTC)
IronPort-SDR: Da00+gmj7d6ydnFZav5FshOGmq9MjVfOXr2wTbcEHyKbyFYg7rTN5S+EpWLN8R2Z/evDrxnV6d
 OS8TDqEdwOgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="147014064"
X-IronPort-AV: E=Sophos;i="5.75,285,1589266800"; d="scan'208";a="147014064"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 16:48:52 -0700
IronPort-SDR: I3PrjHbSGNeF77mZx5ckXTxEsQ98/qjmqPqbny6bMbaV3O2caWxzoFkL6vcgnUFrDaqV8BWsdd
 qi70LUjTAHnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,285,1589266800"; d="scan'208";a="311536625"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 26 Jun 2020 16:48:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 16:48:31 -0700
Message-Id: <20200626234834.26864-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/2] Variable renames
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

Sadly checkpatch is not working in this series and it passed even if
there was a clear alignment violation. I fixed the one reported by Ville
and reviewed the rest to check if there was others.

Lucas De Marchi (2):
  drm/i915/display: remove alias to dig_port
  drm/i915/display: prefer dig_port to reference intel_digital_port

 drivers/gpu/drm/i915/display/intel_ddi.c      | 154 ++++----
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
 18 files changed, 535 insertions(+), 539 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
