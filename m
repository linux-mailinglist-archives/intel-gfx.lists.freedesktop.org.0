Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 825AA702A8D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0294B10E1A0;
	Mon, 15 May 2023 10:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7264D10E1A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684146847; x=1715682847;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kb6N14IBkKwiB6lct3pVjzhesRbpPHH6gwCBN+ew2BU=;
 b=YIXmH99wj/eWqVZw3jS2TpkyMgFjbxgvQ+WaGSnk5TVAtW8SXLa3aFIp
 3yiY42mS0/ww0Zx8ffoU2hQEQMBgvzBEeH7GrnboWJzfsyBojevQJ0I53
 XqLP3+1+OKM4qeGIv+6nuTN7vk/CYM0fe2bv38IteL6Zf1otSapOEhFzw
 8vbh/mHq8iu1Lc7+mJwZgfcqVpnZLjGeFqs0rW7F3tDdQwM/j+J3N9NAY
 BlihHOCv7LlN3SerOQ/GTPYH4GfWgIgML6dH3re/1I6Nrnj5FMY196MWq
 IDcbsRVvQJcOauvpFpzhc8j2YtcIT3tAxrb9QEpzepRWV5ExO5iXt9/AK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="414562988"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="414562988"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:33:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="845209438"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="845209438"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2023 03:33:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 16:02:21 +0530
Message-Id: <20230515103225.688830-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/4] Fix modeset locking issue in HDCP MST
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

--v4
-rename intel_set_content_stream [Ankit]
-remove return type from intel_hdcp_prepare_stream and
intel_hdcp_required_content_stream [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (4):
  drm/i915/hdcp: add intel_atomic_state argument to hdcp_enable function
  drm/i915/hdcp: Remove enforce_type0 check outside loop
  drm/i915/hdcp: Fix modeset locking issue in hdcp mst
  drm/i915/hdcp: Fill hdcp2_streamid_type and k in appropriate places

 drivers/gpu/drm/i915/display/intel_ddi.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |   4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 143 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_hdcp.h   |   6 +-
 4 files changed, 81 insertions(+), 76 deletions(-)

-- 
2.25.1

