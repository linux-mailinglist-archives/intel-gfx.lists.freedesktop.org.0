Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 458B686D7CA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 00:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84EAB10E6E7;
	Thu, 29 Feb 2024 23:29:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OcWQTIUA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB9210E6E7;
 Thu, 29 Feb 2024 23:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709249347; x=1740785347;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P20IrE3w3D42HEHSCk8FJFx1ZXmXvC2tnN09KvpgKyY=;
 b=OcWQTIUAIgUvIRCd1Ti6XonEXYPbxvTEHttD77waF8dxCyIux/Zm5edE
 HGDmnE62Nu9fyOfkXnhW8sfAT3SPsw12k/nbvYRb8AAhyvB0EJQ80wa3M
 YouqPau4C4OPPim/inB9ULEhe2I8oYkC9NsFnVC7Z71EYq5UFt9/dibPB
 pVvu6xwE4TpsTrSLxXmpX5hbbxeEitAs0Ta5vs6Q7lw2o8sv5WAO0koM0
 zRSsevGdub4VUuRO6veOYzX1W/6bfjxGNiP9yDWoNEPRfW7sPBjo7Z3y4
 HFvIy7sIXggGTV8N+ti8F1VUxxehH9QP1MiOWXu0FLH4/u1l69lqLGpFT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="15201198"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="15201198"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 15:29:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="45544035"
Received: from syhu-mobl2.ccr.corp.intel.com (HELO intel.com) ([10.94.248.193])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 15:29:04 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, stable@vger.kernel.org,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH v3 0/4] Disable automatic load CCS load balancing
Date: Fri,  1 Mar 2024 00:28:55 +0100
Message-ID: <20240229232859.70058-1-andi.shyti@linux.intel.com>
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

Hi,

this series does basically two things:

1. Disables automatic load balancing as adviced by the hardware
   workaround.

2. Assigns all the CCS slices to one single user engine. The user
   will then be able to query only one CCS engine

I'm using here the "Requires: " tag, but I'm not sure the commit
id will be valid, on the other hand, I don't know what commit id
I should use.

Thanks Tvrtko, Matt and John for your reviews!

Andi

Changelog
=========
v2 -> v3
- Simplified the algorithm for creating the list of the exported
  uabi engines. (Patch 1) (Thanks, Tvrtko)
- Consider the fused engines when creating the uabi engine list
  (Patch 2) (Thanks, Matt)
- Patch 4 now uses a the refactoring from patch 1, in a cleaner
  outcome.

v1 -> v2
- In Patch 1 use the correct workaround number (thanks Matt).
- In Patch 2 do not add the extra CCS engines to the exposed UABI
  engine list and adapt the engine counting accordingly (thanks
  Tvrtko).
- Reword the commit of Patch 2 (thanks John).

Andi Shyti (4):
  drm/i915/gt: Refactor uabi engine class/instance list creation
  drm/i915/gt: Do not exposed fused off engines.
  drm/i915/gt: Disable HW load balancing for CCS
  drm/i915/gt: Enable only one CCS for compute workload

 drivers/gpu/drm/i915/gt/intel_engine_user.c | 52 ++++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gt.c          | 11 +++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  3 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  6 +++
 4 files changed, 60 insertions(+), 12 deletions(-)

-- 
2.43.0

