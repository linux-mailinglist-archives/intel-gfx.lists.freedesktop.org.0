Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B76026F1E52
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 20:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610C410ED9D;
	Fri, 28 Apr 2023 18:56:35 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1FA410E138;
 Fri, 28 Apr 2023 18:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682708192; x=1714244192;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eDkW2cR9Wen7PMb6wrUVyK1dCDz4YixjYNAAg+P69pQ=;
 b=NXaraPH9OMghNim81yEmad8tStlBRDd5uYusflAkhWaPy8Y7LZkIuzIR
 5jkGrSGVVFxwNLcb8bcPeLyI8oCvwQ9UctLCTV8AVAJKKDZOS7TnHysZY
 CW8j62N4WlEMKsKKqj5EockJLxDanJ0amYMz8iWi9dkM6rQKt8gWJ+JX3
 uj25bUg+mP4YEWAZtyP+ygMuCnZC12TnbL/XVpQ3wBMfDJercS0WDNOJQ
 s70TP62wd4pt/ZfEzF3waAJm2lK6L8kgznOunE5PdL227S7IJ0bxyisDT
 J6rgRNMDby12PEFCgN3nXXOKfJ0kQStmlZshwE1NPuXuHCzkWGiHyjVUt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="410934511"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="410934511"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 11:56:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="869291576"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="869291576"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga005.jf.intel.com with ESMTP; 28 Apr 2023 11:56:30 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 28 Apr 2023 11:56:32 -0700
Message-Id: <20230428185636.457407-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] Improvements to GuC error capture
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The GuC error capture list creation was including Gen8 registers on Xe
platforms. While fixing that, it was noticed that there were other
issues. The platform naming was wrong, the naming of lists was
misleading, the steered register code was duplicated and steered
registers were not included on all supported platforms.

Separately, it was noticed that the capture list search was broken for
virtual engines. So fix that up too.

v2: Swuash the split patches into a single patch ready for merge.
Also include an extra patch about capture lists and virtual engines.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (4):
  drm/i915/guc: Don't capture Gen8 regs on Xe devices
  drm/i915/guc: Consolidate duplicated capture list code
  drm/i915/guc: Capture list naming clean up
  drm/i915/guc: Fix error capture for virtual engines

 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 242 ++++++++----------
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   3 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  32 ++-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  11 +-
 4 files changed, 149 insertions(+), 139 deletions(-)

-- 
2.39.1

