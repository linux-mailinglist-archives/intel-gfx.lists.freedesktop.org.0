Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4F93FDFD6
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 18:26:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 977BC89861;
	Wed,  1 Sep 2021 16:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BBE8972B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 16:26:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="282512521"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="282512521"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:26:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="688431201"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by fmsmga006.fm.intel.com with ESMTP; 01 Sep 2021 09:26:31 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Date: Wed,  1 Sep 2021 21:33:57 +0530
Message-Id: <20210901160402.24816-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] Fix in max source calculation for dp/edp
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

HBR3 support for display gen11+ platform is depends upon some
conditions which are mentioned below.

ICL:
- eDP (only on DDI-A): Up to HBR3 for higher Vccio.
- DP:
        - (DDI-B, combo phy): upto HBR2.
        - (DDI-C to DDI-F): upto HBR3
 
RKLC:
- eDP/DP: Up to HBR3? Vccio dependent? (missing bspec pages)
 
JSL/EHL:
- eDP (DDI-A): Up to HBR2.
- DP (DDI-B to DDI-D): Up to HBR3 for higher Vccio _and_ retimers.
 
TGL:
- eDP (DDI-A to DDI-C): Up to HBR3 for higher Vccio.
- DP:
        - (DDI-A to DDI-C, combo phy): Up to HBR2.
        - (DDI-TC1 to DDI-TC6): Up to HBR3
 
DG1/ADL_S:
- eDP (all DDI is part of combo phy): Up to HBR3 for higher Vccio.
- DP (all DDI is part of combo phy): Up to HBR3 for higher Vccio _and_ retimers.
 
ADL_P/D13:
- eDP (DDI-A to DDI-B): Up to HBR3 for higher Vccio.
- DP:
        - (DDI-A to DDI-E): Up to HBR3 for higher Vccio.
        - (DDI-TC1 to DDI-TC4): Up to HBR3 for higher Vccio.

Some condition added during max rate calculation in this patch series
based on above conditions.

Animesh Manna (2):
  drm/i915/dp: fix EHL/JSL max source rates calculation
  drm/i915/dp: fix for ADL_P/S dp/edp max source rates

Jani Nikula (2):
  drm/i915/dp: fix TGL and ICL max source rates
  drm/i915/dp: fix DG1 and RKL max source rates

Matt Atwood (1):
  drm/i915/dp: Fix eDP max rate for display 11+

 drivers/gpu/drm/i915/display/intel_dp.c | 62 +++++++++++++++++--------
 1 file changed, 42 insertions(+), 20 deletions(-)

-- 
2.29.0

