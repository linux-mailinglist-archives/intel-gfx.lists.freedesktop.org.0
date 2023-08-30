Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB83378D3A6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 09:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0062E10E4CB;
	Wed, 30 Aug 2023 07:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B4D10E4C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 07:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693381017; x=1724917017;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6fylIBBZS+f6f1NhCiMFTtZJtnJRuIBI1BtG1H7fis4=;
 b=K3Ma6dKnzOml7zKlXAJmWfrf1DE6Yj4BbsS9v1AH7ubaz6iUZbBPnDmJ
 rdGQOvLnKMeR/foCs4l5U8rslfq++KTYmpU+UsNUHWpnu+L2U3DKFeDza
 d1p32vJ8tTVp1EGB2/sJzpxvjnRR0Ml165yEtzNOnH0FRW44lRQHk3qB0
 B9zAh2O/9PnKRvEaD4Q54yRUKtpt8LdKkltPdpLaGcr8yX10VqGQJnGUf
 mf5vrh76SijpNfuIR41juyNIVFgXuo1I8GEAeItADVSWpuF8UIElKvheR
 Y990dg52J87yaajH9Y23YBD4D8lcZb5eYSmu1r2PZPrnThMauCRyJQLV4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="379326133"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="379326133"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 00:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="912692470"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="912692470"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 30 Aug 2023 00:36:55 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 13:04:36 +0530
Message-Id: <20230830073437.666263-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Fix HDCP2 capability check
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

In DP MST scenarios we derive the connector and in turn the
aux from intel_digital_port which always gave the primary
monitors aux, this caused the capability of the primary
monitor to be checked twice rather than enumerating the
different HDCP capabilities for each monitor because of this
we saw the below issues
-primary monitor = HDCP 1.4 secondary monitor : HDCP 2.2 1.4
i915_display_info reads as : HDCP 1.4 for both monitor

-primary monitor = HDCP 2.2 1.4 secondary monitor : HDCP 1.4
i915_display_info reads as : HDCP 2.2 1.4 for both monitor

Solution is to derive the aux from intel_connector instead.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Use intel_connector as argument for hdcp_2_2_capable
  drm/i915/hdcp: Use correct aux for capability check scenario

 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c       | 7 +++++--
 drivers/gpu/drm/i915/display/intel_hdcp.c          | 3 +--
 drivers/gpu/drm/i915/display/intel_hdmi.c          | 3 ++-
 4 files changed, 9 insertions(+), 6 deletions(-)

-- 
2.25.1

