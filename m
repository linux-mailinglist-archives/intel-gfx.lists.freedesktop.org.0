Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCDC3EAA69
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 20:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F24A6E44C;
	Thu, 12 Aug 2021 18:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E2F66E44C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 18:44:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="195010302"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="195010302"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 11:44:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="461167962"
Received: from jhli-desk1.jf.intel.com ([10.54.74.156])
 by orsmga007.jf.intel.com with ESMTP; 12 Aug 2021 11:44:36 -0700
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: seanpaul@chromium.org, anshuman.gupta@intel.com, ramalingam.c@intel.com,
 rodrigo.vivi@intel.com, Juston Li <juston.li@intel.com>
Date: Thu, 12 Aug 2021 11:44:24 -0700
Message-Id: <20210812184427.167689-1-juston.li@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/3] drm/i915/hdcp: HDCP2.2 MST dock fixes
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

Fixes to get HDCP2.2 over MST working on MST docking stations with
certain behaviors that cause the current flow to fail.
Tested with Dell WD-19 and Lenovo ThinkPad USB Type-C Dock Gen 2.

These fixes should make the flow more robust to handle behaviors that as
far as I can tell are unclear in the HDCP spec:

RxInfo contains repeater topology information needed for MST. The
behavior on these docks is that this can only be read during
RepeaterAuth_Send_ReceiverID_List when the RxStatus READY bit is set
otherwise the dock will return NACK. It seems these docks treat
reading this range at any other time as invalid when the READY bit
isn't set possibly because it could be stale. The HDCP spec also states
the READY bit is cleared after RxInfo is read.

These fixes address this behavior by only reading RxInfo once during the
AKE flow and reusing that data.

Changes since v4:
 - move topology_type1_capable to intel_digital_port and rename it as
   hdcp_mst_type1_capable (Anshuman)
 - make a helper function intel_set_stream_types() to set stream types
   in hdcp2_authenticate_and_encrypt() (Anshuman)
 - break on failure to set stream types and retry instead of returning
 - remove no longer used declaration for streams_type1_capable()

Changes since v3:
 - Don't change the offset define for Send_ReceiverID_List
   When reading, update message offset to account for RxInfo being read

Changes since v2:
 - Remove no longer used variables in _intel_hdcp2_enable()

Changes since v1:
 - Fix subject line for 3/3

Juston Li (3):
  drm/i915/hdcp: update cp_irq_count_cached in intel_dp_hdcp2_read_msg()
  drm/i915/hdcp: read RxInfo once when reading
    RepeaterAuth_Send_ReceiverID_List
  drm/i915/hdcp: reuse rx_info for mst stream type1 capability check

 .../drm/i915/display/intel_display_types.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 78 +++++--------------
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 64 ++++++++-------
 3 files changed, 58 insertions(+), 90 deletions(-)

-- 
2.31.1

