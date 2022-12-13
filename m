Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2779C64B024
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 08:03:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E246010E2C7;
	Tue, 13 Dec 2022 07:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB6EE10E2C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 07:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670914982; x=1702450982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZhTgTcM7yYJDY4HEyOvjMyLpYw2hA3+zbhNlqVGnq5k=;
 b=OBalTpHhHFEo0bRGT50lre1mHyAsMui1NpVezCOuAjW8hdRUBErdvYR/
 chNpmT92M6RvMHF+o+uRa0477irX0NcxLeE8wSOkZCzHqmpePJWWDC/wE
 bwcX89K/3fwvbmm1SanP9kMw9WgYzfXUeynJDNNCIEzVaEXoIngrUqxUx
 LdoBg6DGE0V48rc1i4hRCE8ZAf0T+7eD8QhPsJxS6bcRrfh3lBRTHiasy
 zqHmQFuohSau0V+uuMs/45+Ooo+D+u0aNUOb9o1vop3wpoQnSlOVZWJTU
 IHcpb2W4lpN8SeUUG1V4MgIYQPPGHXbPn0x0AasDm9hjoLJfpjRqGXSl6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="404319128"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="404319128"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 23:03:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="977347000"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="977347000"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2022 23:02:58 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Dec 2022 12:31:51 +0530
Message-Id: <20221213070158.2621403-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] Enable HDCP2.x via GSC CS
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

These patches enable HDCP2.x on machines MTL and above.
From MTL onwards CSME is spilt into GSC and CSC and now
we use GSC CS instead of MEI to talk to firmware to start
HDCP authentication

--v2
-Fixing some checkpatch changes which I forgot before sending
out the series

Anshuman Gupta (3):
  drm/i915/hdcp: Keep cp fw agonstic naming convention
  drm/i915/hdcp: HDCP2.x Refactoring to agnotic cp f/w
  drm/i915/hdcp: Refactor HDCP API structures

Suraj Kandpal (4):
  drm/i915/gsc: Create GSC request submission mechanism
  drm/i915/hdcp: Fill wired_cmd_in structures at a single place
  drm/i915/mtl: Adding function to send command to GSC CS
  drm/i915/mtl: Add HDCP GSC interface

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_display_core.h |   3 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  94 ++-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 708 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  28 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c     |  62 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |   3 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h   |  42 +
 drivers/misc/mei/hdcp/mei_hdcp.c              | 190 +----
 drivers/misc/mei/hdcp/mei_hdcp.h              | 355 +--------
 include/drm/i915_cp_fw_hdcp_interface.h       | 736 ++++++++++++++++++
 include/drm/i915_mei_hdcp_interface.h         | 184 -----
 14 files changed, 1670 insertions(+), 740 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
 create mode 100644 include/drm/i915_cp_fw_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

