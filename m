Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF3C50304D
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 00:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9304810E602;
	Fri, 15 Apr 2022 22:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755AA10E602
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 22:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650062429; x=1681598429;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CrtBkoq/UjI3XHeyP9OXC8pmsIWHDekfcO1ykEvyLUU=;
 b=UmWItsAQMLe2U1Z8Kjjmv/9jnFDlxHKaOP60C26XjsAjSU35QGqc3lpG
 sxgK6pT4e4DvFj8pM9xEKzi4vV7ytsSsL447rv4gzSDTrwdQtLWLbLvsm
 ihgctmOvbr2Lbs/em7jdCS+ia1kzk/+ejHXJdBBZON9U1I3SFU31ILdtn
 jbxvHNcZV9vzyrdMgwQsApyk0+d8O3LnfWCJORQ4uoxvUupIqUo0+hRN5
 dyOVVGy1W9nAmsfehFVb1CMjWe4/lmWknuy0IkeiQIYsfli3UrKZlrgzd
 1LHdJV2vnwNlEy0GUhLCuprJlUxdbO4VkYtSJIHbHNW17/IoA1+6va/o6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="326144494"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="326144494"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="574563708"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Date: Fri, 15 Apr 2022 15:40:19 -0700
Message-Id: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] Enable WAs related to DG2
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

Enable work arounds related to DG2.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

John Harrison (2):
  drm/i915/guc: Enable GuC based workarounds for DG2
  drm/i915/dg2: Enable Wa_22012727170/Wa_22012727685

Matthew Brost (1):
  drm/i915/dg2: Enable Wa_14014475959 - RCS / CCS context exit

Tilak Tangudu (1):
  drm/i915: Add Wa_22011802037 force cs halt

Umesh Nerlige Ramappa (1):
  drm/i915/guc: Enable Wa_22011802037 for gen12 GuC based platforms

Vinay Belgaumkar (1):
  drm/i915/guc: Apply Wa_16011777198

 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 41 +++++++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  9 ++
 drivers/gpu/drm/i915/gt/intel_engine_regs.h   |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  8 ++
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  7 ++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  9 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 18 ++++
 drivers/gpu/drm/i915/gt/intel_reset.c         |  5 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 35 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  8 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 89 ++++++++++++++++++-
 11 files changed, 222 insertions(+), 8 deletions(-)

-- 
2.35.1

