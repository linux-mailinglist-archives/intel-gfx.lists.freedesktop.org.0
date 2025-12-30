Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1721CE907B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 09:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D13E10E869;
	Tue, 30 Dec 2025 08:31:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zv/+E09/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD7E610E869;
 Tue, 30 Dec 2025 08:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767083510; x=1798619510;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1dAR6EOuFDJ+vRQZNdv4/SpLL8V3FYcpNnHsNgg2i3o=;
 b=Zv/+E09/x52REOwrsZJGih7EIffR/8bLT7YtEx5QL48btyHE5kdb4rz9
 0gA28HWRzDqg7zQgNbKUQKO8pKNWQQSmjZ1M+LeIr5PiJzNVrOkszLaLp
 oQHNYA2JBPvsErYlHQZOAVMm2zWkSFW3Oi5OAGz3Xvf7+8raB3F9a6gnz
 xV3HQb3u8adZsd66jRgYGSjn2NAe2noAz7SlS5CNN+mBtHKQl5hBVXX1h
 JaZsJ+6zdAJIZR+Ej/kPkQ0abKY/AjXjAVEuCPuTpxsEkzOW28VkvQpo6
 r63q4fYGmntLrqocJD4YnwJQ946O4jcUU5EzybAX8QxsqwbjaEfJM5JzN g==;
X-CSE-ConnectionGUID: F76qaxtySVWyuV11qh1Hfg==
X-CSE-MsgGUID: v9u7LU2UR++L8ZC1M2hS6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="72298385"
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="72298385"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 00:31:49 -0800
X-CSE-ConnectionGUID: xUQBskzkT8GuZm5VyxRxMQ==
X-CSE-MsgGUID: SwSZK73uTUWP+4v6WSmjpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="238604435"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 30 Dec 2025 00:31:48 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/3] Fix Cx0 Suspend Resume issue
Date: Tue, 30 Dec 2025 14:01:39 +0530
Message-Id: <20251230083142.70064-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

CX0 PHY currently has two issues which cause a hang when we try
to suspend resume machine with a delay of 15mins and 1+ hour.
This happens due to two reasons:
1) We do not follow the Enablement sequence where we need to
enable our clock after PPS Enablement cycle
2) We do not make sure response ready and error bit are cleared
in P2M_MSGBUS_STATUS before writing the transaction pending bit.
This series aims to solve this.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Mika Kahola (1):
  drm/i915/cx0: Split PLL enabling/disabling in two parts

Suraj Kandpal (2):
  drm/i915/cx0: Move step 12 to enable clock hook
  drm/i915/cx0: Clear response ready & error bit

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 122 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  12 +-
 2 files changed, 84 insertions(+), 50 deletions(-)

-- 
2.34.1

