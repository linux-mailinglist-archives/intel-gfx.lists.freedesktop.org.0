Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BEC46EE31
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:55:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC18210E61C;
	Thu,  9 Dec 2021 16:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DBA810E116
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 06:03:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="298779387"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="298779387"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 16:59:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="612311312"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 16:59:45 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Dec 2021 16:56:07 -0800
Message-Id: <20211209005610.1499729-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Support bigger GuC RSA keys
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

Some of the newer platforms use a bigger RSA key to authenticate the GuC,
which is provided to the HW via a ggtt-pinned object instead of mmio.

While doing the changes for this I've also spotted an inconsistency in
the error status of the fw on init failure, so I've added a path to fix
that as well.

Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>

Daniele Ceraolo Spurio (2):
  drm/i915/uc: correctly track uc_fw init failure
  drm/i915/guc: support bigger RSA keys

Michal Wajdeczko (1):
  drm/i915/uc: Prepare for different firmware key sizes

 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 32 ++++++--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c    | 75 +-----------------
 drivers/gpu/drm/i915/gt/uc/intel_huc.h    |  2 -
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  | 95 ++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  | 18 +++--
 5 files changed, 127 insertions(+), 95 deletions(-)

-- 
2.25.1

