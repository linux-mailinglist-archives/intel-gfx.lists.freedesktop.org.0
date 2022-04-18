Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B103504F10
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 12:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E85410F57D;
	Mon, 18 Apr 2022 10:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8A0910F57C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 10:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650279263; x=1681815263;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iM+9GAg6N11CXzV3lKH+CR68GsQ/uG43X9HDDaNMpNw=;
 b=M2aydG4RPB0Exx5QlkNeQc1MPoXPqzS8WQ08iY5HNDOvqlfgrWf/1H7M
 a7azGCiq9rZIzA194CWsg/1PV3DPDIHNbOa9aJo2ItgVfp+totfKTMQ2o
 cLTpUaE6HSunreK/l+RD63a8mG9o2o84aPyXAcauK5Y5QooUC2JgogTg0
 CviPwJ/k926Fok6Rf7GxK9Ml+AXtM0qE/FwsI5tDp3gjwFRwZCNWceh1A
 8ogx/PY2K6JRiaW/ezmMLsbpSXG8OSxYBOpdgdrxNJsLYw/DspbLiRiIf
 L150ku4H6s23QEvZHnhhyNNV40WMYok0nesRFdmbGTT7xy+L0nAKkJRJz g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="250798252"
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="250798252"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:23 -0700
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="665139307"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:20 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 16:24:02 +0530
Message-Id: <20220418105408.13444-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/6] DGFX OpRegion
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series setup DGFX OpRegion.

v2 has addressed the review comment to keep only opregion
abstraction stuff in "Abstract opregion function" opregion
patch and some other error handling as mentioned in the 
patches commitlog.

v3 has addressed review comment from Manasi.

v4 has addressed Abstraction Level related review comment from Jani.

Anshuman Gupta (6):
  drm/i915/opregion: Add intel_opregion_init() wrapper
  drm/i915/opregion: Abstract opregion function
  drm/i915/opregion: Add dgfx opregion func
  drm/i915/opregion: Cond dgfx opregion func registration
  drm/i915/dgfx: OPROM OpRegion Setup
  drm/i915/dgfx: Get VBT from rvda

 drivers/gpu/drm/i915/display/intel_opregion.c | 545 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_opregion.h |   8 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 3 files changed, 505 insertions(+), 50 deletions(-)

-- 
2.26.2

