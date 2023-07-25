Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE97B762461
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 23:27:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AF9810E182;
	Tue, 25 Jul 2023 21:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C8010E182
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 21:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690320454; x=1721856454;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5JIaRasSVWJJ++fFt7TCuiAgwXOYfEzlwoqL21oDDZY=;
 b=TUAU1CD9nxMcXbBQbHVHUL+8DnRva9O2/2EWRR6unlX9dPNh1gs/N3TC
 oTJ6exrRtBc4MOys1U3dXn99XkChZrWYjoN/xgvk2h45r3d4utqT9IVrm
 gb8sJjPNeHKjhV6HccDIBT5ZaIZU0iAO9B+p04jW97q1LqKHmkO3icvYc
 IqXEnWi+pGqfApX/4InCHKVkBU30gcLVjDruf08DxDuwvELLkRPKUGoX6
 BYfJJAJhapKeOay8Jo0rgcjcBUk0pno2T7WKbiivrY2OIKL52YDoI3hha
 OsFErhdI1IKVq7nyjzDFC1EEvBnZ3Y+G/bEKojlQnyUXb/mdx3FhWF+Ny w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434104387"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="434104387"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="900117423"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="900117423"
Received: from joshigx-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.247.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:32 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jul 2023 18:27:12 -0300
Message-ID: <20230725212716.3060259-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Fix C10/C20 implementation w.r.t. owned PHY
 lanes
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

While 619a06dba6fa ("drm/i915/mtl: Reset only one lane in case of MFD")
fixes the problem for lane reset logic, there are also more parts of the
implementation that need to take owned PHY lanes into consideration.

This series provides fixes for such places. The changes to the logic
have been tested on a machine with a Type-C connection in DP-Alt mode
using pin assignment D. In that mode, only PHY lane 0 is owned by
display and, without these fixes, we get message bus timeout errors
because we try to perform reads/writes on registers for the not-owned
PHY.

Gustavo Sousa (4):
  drm/i915/cx0: Add intel_cx0_get_owned_lane_mask()
  drm/i915: Simplify intel_cx0_program_phy_lane() with loop
  drm/i915/cx0: Enable/disable TX only for owned PHY lanes
  drm/i915/cx0: Program vswing only for owned lanes

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 155 ++++++++-----------
 1 file changed, 66 insertions(+), 89 deletions(-)

-- 
2.41.0

