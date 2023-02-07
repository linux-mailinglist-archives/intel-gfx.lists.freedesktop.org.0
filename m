Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DAF68DD8C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 17:04:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F4110E53D;
	Tue,  7 Feb 2023 16:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA77010E53D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 16:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675785864; x=1707321864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JIL0WECd4sQwf15JLF2F2kqsXsxy2YEvE2SX67CmZEI=;
 b=EJrPWt/n3OnKc8In27usax47xRBOv2UiuJLnFpiUkdh2X462Y3dl0qCO
 koBQrRJgSSYZGBxfgjv4F6LNukV8wqe6mZlE1Mz6nAlUNYaq6P+Skdsjh
 bvYDH0h4/VmGCFiHYyPDcR2njt/UI+81qmwv5ZKGbc2jkJ5Kw7QJhmZuG
 cjfqp6iLTDldb5iro7m5PVZy3jV8EMfH95ex+m1zTfq30BnPwMk7M4lMG
 Ml6RbQBl6vKvy6u4NatFfW3nrFd5pvbGriB1pruGP1zyAY0xeGCTuxVap
 S1cPmGI+hbxxa5WKB2jet4olYjhsYJIm288+edckC1q6pCnVb9nFKRJlo Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="356915820"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="356915820"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:03:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="840821353"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840821353"
Received: from kfurnanz-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.48.81])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:03:22 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 18:03:08 +0200
Message-Id: <20230207160311.930772-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/3] Provision to ignore long HPDs in CI
 systems
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

Some panels generate long HPDs during CI execution steps even
while connected to the system and cause unexpected CI execution
failures. In environments like CI, we don't expect to disconnect
the panels in the middle of the CI execution.

There are two parts to handle this case - display driver and IGT

1. In the display driver, based on a flag, long HPDs are
ignored. This flag can be set/unset using debugfs on systems
where such panels are connected. Also random link training
issues are popping up because of spurious HPDs, ignore the
link training failures as well if the ignore long HPD is set.

2. In IGT, add provision to set ignore long HPD debugfs entry
on the driver and also set Force "on" the active connectors.
With force on, the connector's detect sequences will not get
initiated.

This patchset address the driver part to handle this issue.

Vinod Govindapillai (3):
  drm/i915/display: ignore long HPDs based on a flag
  drm/i915/display: debugfs entry to control ignore long hpd flag
  drm/i915/display: ignore link training failures in CI

 .../gpu/drm/i915/display/intel_display_core.h | 11 +++++++
 .../drm/i915/display/intel_dp_link_training.c | 24 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 32 +++++++++++++++++++
 3 files changed, 67 insertions(+)

-- 
2.34.1

