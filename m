Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FECA70233A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 07:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7878A10E0A3;
	Mon, 15 May 2023 05:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F5210E0A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 05:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684127848; x=1715663848;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CIeF9bCpesfQjvdSXbfX6KFEiya0GBrkDXvWdI5T5rI=;
 b=NGo1QRltGDKRoBR59ZYCBB4JvIjIbdQXZG5Q9nH5JPzao4gwiGvPc4sO
 9GVcpotmFc2uAIsMJ0ppcM7tuv/OVPYIPGNSdjultkDG12j8EbFbb6TOr
 wQMhVcyXqK1DegL285DuQjrPQdHowblE4G+imi1C6+blZj6KhWgYNT1Fx
 oa49q5WlJBGyiKRGjUkM35lcUnhAFdOwc5kJLr/z3xdIO9BejmZp+Y5b4
 rEHFLTMrCqbI5iC+UW/Vih5PAgbNvwGPBvJTokqHTEcnTxBieAV1JbIII
 etpHahhex3Jmoj6dhR+chfCgbGyhBKXs04nO3LjEw/Jx0/oz4+LQw6wDR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="330729685"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="330729685"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 22:17:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="700835414"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="700835414"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 14 May 2023 22:17:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 10:45:53 +0530
Message-Id: <20230515051557.672109-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] Fix modeset locking issue in HDCP MST
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

HDCP MST scenario sees modeset locking issue ever since
topology_state was added to drm_atomic_state and all modeset
locks were being taken for us causing a locking issue to occur
when we iterate over connectors to assign vcpi id, the fix
being to pass acquire_ctx to drm_modeset_lock. 

--v2
-call intel_hdcp_prepare_stream instead of intel_hdcp_required_stream
in the beginning [Ankit]
-replace intel_connector argument with intel_encoder [Jani]

--v3
-break intel_hdcp_required_stream to two parts and call
intel_hdcp_set_content_streams at beginning [Ankit]
-Move encoder_type0 out of loop [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>


Suraj Kandpal (4):
  drm/i915/hdcp: add intel_atomic_state argument to hdcp_enable function
  drm/i915/hdcp: Remove enforce_type0 check outside loop
  drm/i915/hdcp: Fix modeset locking issue in hdcp mst
  drm/i915/hdcp: Fill hdcp2_streamid_type and k in appropriate places

 drivers/gpu/drm/i915/display/intel_ddi.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 91 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_hdcp.h   |  6 +-
 4 files changed, 62 insertions(+), 43 deletions(-)

-- 
2.25.1

