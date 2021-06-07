Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB1839E5C8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 19:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B636E992;
	Mon,  7 Jun 2021 17:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E3C6E984;
 Mon,  7 Jun 2021 17:46:06 +0000 (UTC)
IronPort-SDR: v1/CEoJwrpbVEJc2Q18JBxt1Io5QWhvS7uO9/2lF1Bl8qwcRAqSKoPCoN5+5Hao4EcvkAz62NI
 VqY3yatucNYw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204695165"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="204695165"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:46:04 -0700
IronPort-SDR: /00dWf3qityGc9f3bTa/IfrXxrnhLIuhf+3+ssbGYPUVy0ZuGhKYefYRV8+RvQEYZgTNnzG17Q
 +WPSRLBSyLkQ==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="551970148"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:46:04 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Mon,  7 Jun 2021 11:03:42 -0700
Message-Id: <20210607180356.165785-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/13] Update firmware to v62.0.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As part of enabling GuC submission [1] we need to update to the latest
and greatest firmware. This series does that. This is a destructive
change. e.g. Without all the patches in this series it will break the
i915 driver. As such, after we review all of these patches they will
squashed into a single patch for merging.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

[1] https://patchwork.freedesktop.org/series/89844/

John Harrison (3):
  drm/i915/guc: Support per context scheduling policies
  drm/i915/guc: Unified GuC log
  drm/i915/guc: Update firmware to v62.0.0

Michal Wajdeczko (10):
  drm/i915/guc: Introduce unified HXG messages
  drm/i915/guc: Update MMIO based communication
  drm/i915/guc: Update CTB response status definition
  drm/i915/guc: Add flag for mark broken CTB
  drm/i915/guc: New definition of the CTB descriptor
  drm/i915/guc: New definition of the CTB registration action
  drm/i915/guc: New CTB based communication
  drm/i915/doc: Include GuC ABI documentation
  drm/i915/guc: Kill guc_clients.ct_pool
  drm/i915/guc: Kill ads.client_info

 Documentation/gpu/i915.rst                    |   8 +
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  | 107 ++++++
 .../gt/uc/abi/guc_communication_ctb_abi.h     | 130 +++++--
 .../gt/uc/abi/guc_communication_mmio_abi.h    |  63 ++--
 .../gpu/drm/i915/gt/uc/abi/guc_messages_abi.h | 213 +++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 107 ++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  45 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 355 +++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  75 +---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  29 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  26 +-
 13 files changed, 750 insertions(+), 420 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
