Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA5B52BB4E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D24510ED71;
	Wed, 18 May 2022 13:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0687610ED71
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652879178; x=1684415178;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0jtO8WnLmwB9/I+G6+PCFPvzBdxdMzsmlI+raDlo9MI=;
 b=Iz+wHBc1hxgQFYgt/tyDiIP2eS9muPswUJ+D964RRj+CDGeMUToBHzms
 RFr7nQP2mg+O6ElRqgpiD2Y8nxKngpyk1oAm52ytMBh9y2xPams6FYGvA
 szvSyToT8abmcBpf3FJ8cJRR3HUFj7yjkZeCJl+CO1B83e46zxO8KxMcQ
 elxOmdIits87vCK/3GCUDGfPxfKNq3cZvpPtHjOSoA/2WbfcCn+BeygLX
 Ph8FNYHMTr0z29M/EKMsPjP7fDfBl0NVkRfIjKZPL4WbuZQvjJfO2ghCD
 7Ef04udQcHhwF8F6DGi02zEZQw4AilEleyaJOK0FFXwgDiZXdKXCt8iqa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="334708609"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="334708609"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:06:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="523504730"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:06:15 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 18:35:52 +0530
Message-Id: <20220518130552.10823-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] DG2 VRAM_SR Support
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series add DG2 D3Cold VRAM_SR support.

TODO: GuC Interface state save/restore on VRAM_SR entry/exit.

Anshuman Gupta (7):
  drm/i915/dgfx: OpRegion VRAM Self Refresh Support
  drm/i915/dg1: OpRegion PCON DG1 MBD config support
  drm/i915/dg2: DG2 MBD config
  drm/i915/dgfx: Add has_lmem_sr
  drm/i915/pcode: DGFX PCODE MBOX headers
  drm/i915/dgfx: Setup VRAM SR with D3COLD
  drm/i915/rpm: Enable D3Cold VRAM SR Support

 drivers/gpu/drm/i915/display/intel_opregion.c | 85 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h | 17 ++++
 drivers/gpu/drm/i915/i915_driver.c            | 28 ++++++
 drivers/gpu/drm/i915/i915_drv.h               | 17 ++++
 drivers/gpu/drm/i915/i915_pci.c               |  2 +
 drivers/gpu/drm/i915/i915_reg.h               |  7 ++
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_pcode.c            | 25 ++++++
 drivers/gpu/drm/i915/intel_pcode.h            |  1 +
 drivers/gpu/drm/i915/intel_pm.c               | 43 ++++++++++
 drivers/gpu/drm/i915/intel_pm.h               |  2 +
 drivers/gpu/drm/i915/intel_runtime_pm.c       |  3 +-
 12 files changed, 228 insertions(+), 3 deletions(-)

-- 
2.26.2

