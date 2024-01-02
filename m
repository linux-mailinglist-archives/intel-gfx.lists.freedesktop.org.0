Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0B2821B53
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jan 2024 13:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4587110E18D;
	Tue,  2 Jan 2024 12:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6A310E18D
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 12:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704197055; x=1735733055;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KHsVZFIzmAm7P3xOTrLACis3iaNEahLvBCarwb7n9ZU=;
 b=m3d30C5/AjEHzFR2dN+rbQc2epVRK9oXNaEv8fVbhHWMpPpbML2Kgpgt
 EfV0525GK/WQaC+WXiUplF1QkiXH8I1IaOL4k1U7r/2rambu9dq6SV0lW
 fFEeY0OXTd/8rYFikrHwYt9D4tt04/gLpnP13SqSvoG/LXs1Wib+rvI82
 dDZy0uAPlLc1p6Kekhb+q1bU2ekS6oVgCEPd1H4UlBxAYAlv3G4qYcP84
 60crp1MhsxiaBl62OMttBi3bKWgK69/GPUB06bUWmDuDE/d/oEP4z3lLW
 LP1mY4tSUwx/+UMd3JPu6cbvQhSaoF2qxC719K/P9V3KFYvmwx2VTWy0O g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="3645217"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; 
   d="scan'208";a="3645217"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 04:04:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="808498165"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="808498165"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 02 Jan 2024 04:04:11 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/3] drm/i915/display: C20 clock state verification
Date: Tue,  2 Jan 2024 13:57:38 +0200
Message-Id: <20240102115741.118525-1-mika.kahola@intel.com>
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

Add pll selection check for C20 as well as
clock state verification0. We have been relying
on sw state to select A or B pll's. This is incorrect
as the hw might see this selection differently. This
patch fixes this shortcoming by reading pll selection
for both sw and hw states and compares if these two
selections match.

While at it, cleanup mpllb selection by removing intel_c20_use_mplla()
function as redundant.

Fixes: 59be90248b42 ("drm/i915/mtl: C20 state verification")

v2: reword commit message and include fix to a
    original commit (Imre)
    Compare pll selection (Jani)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Mika Kahola (3):
  drm/i915/display: Fix C20 pll selection for state verification
  drm/i915/display: Store hw clock for C20
  drm/i915/display: Cleanup mplla/mpllb selection

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 153 ++++++++++---------
 1 file changed, 78 insertions(+), 75 deletions(-)

-- 
2.34.1

