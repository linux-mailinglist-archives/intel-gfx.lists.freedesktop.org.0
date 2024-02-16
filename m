Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B258587CA
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 22:16:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378A310E3E1;
	Fri, 16 Feb 2024 21:16:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J57q6yaB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF98E10E3DE;
 Fri, 16 Feb 2024 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708118215; x=1739654215;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0yZ8zrzJpCExwY+veE2cWY4w/utip4VIvJ8BOgtSJn0=;
 b=J57q6yaBMKfB6RQUUPoP+rGi+L9S5eWsnU9KdQF/jMB1/iFTw8HWxopg
 EuoryvA1F4iWbOV/yw7bv+FHv0R9uvTG2AdENU1TR/Q+BjDV4vy4PtTQK
 MLXKKp1TTDB0idZsBbed54bQ3MSH5kFsoybCayQUWE6PYwVhA9mHMIzm6
 HoehJ1NBXk6XijTzKoFF5fxuGNmkJAQqHtEZhlm7s/RA8uOB6kkZzSlhy
 y8cEIqn1aIg0WL+Tc+L12mkVALKlXstZnyAxbYNF9tZZkP6KD47bzVMw1
 YKDBIgJALPLldR0h9MRRzEh5iB479z8F7NFbuyg4B17/XkYcykOE/nic2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="19683347"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="19683347"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 13:16:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="27105854"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmviesa002.fm.intel.com with ESMTP; 16 Feb 2024 13:16:52 -0800
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Cc: jwboyer@kernel.org, kyle@kernel.org, ben@decadent.org.uk,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: PR for new GuC v70.20.0 binaries
Date: Fri, 16 Feb 2024 13:14:32 -0800
Message-ID: <20240216211432.519411-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The following changes since commit fbef4d381e3d0143427e1a8c924be8e738c0fc2d:

  Merge branch 'main' into 'main' (2024-02-08 12:24:01 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.20.0

for you to fetch changes up to 28c2472d37d089edb56c75e3af83511babaa756c:

  xe: First GuC release for LNL and Xe (2024-02-14 16:28:32 -0800)

----------------------------------------------------------------
John Harrison (2):
      i915: Add GuC v70.20.0 for ADL-P, DG1, DG2, MTL and TGL
      xe: First GuC release for LNL and Xe

 LICENSE.xe           |  39 +++++++++++++++++++++++++++++++++++++++
 WHENCE               |  20 ++++++++++++++------
 i915/adlp_guc_70.bin | Bin 342848 -> 347584 bytes
 i915/dg1_guc_70.bin  | Bin 272512 -> 321472 bytes
 i915/dg2_guc_70.bin  | Bin 443200 -> 410368 bytes
 i915/mtl_guc_70.bin  | Bin 365376 -> 332544 bytes
 i915/tgl_guc_70.bin  | Bin 330304 -> 335168 bytes
 xe/lnl_guc_70.bin    | Bin 0 -> 336640 bytes
 8 files changed, 53 insertions(+), 6 deletions(-)
 create mode 100644 LICENSE.xe
 create mode 100644 xe/lnl_guc_70.bin
