Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 845AF84AEBD
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 08:16:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84027112A0F;
	Tue,  6 Feb 2024 07:16:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A2zZvPO8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BFB7112A0F
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 07:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707203781; x=1738739781;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iuoWgIjVA72G6o1qb7t24BSaRZZNsfCOn0OuqIvEEx0=;
 b=A2zZvPO819baSAdsFeKpPNKvxGGFVqKOik3BRdWJcHOr4uqRADyaJxlh
 uaay1HYRc1XLpCzP5jBoL/STRj6lBNk59GJeZjujqOpR1wG77PJWhD25z
 Zs0rx2lBJaxlSplR1OOpULACdV5QctGyIBz6fwlcAYjR2x7ST1r1WWQV4
 /sLgVTx38w/Y1kuGzxm5LL5/Hm6mbigTXPbYebu3cVsu+Vj+dS9RnEkzl
 zM5Ybqh1pB+P3o9aM/xWPut/gYbh9GhSSAIWGR2O/It2pI1mVfBrTlwJZ
 fVfTFVK8LCq+5WShfqJlgvCpICozi+KEL3bQrkRsT4M9doZIIn9bVjoht w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="12041501"
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; d="scan'208";a="12041501"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 23:16:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="824094093"
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; d="scan'208";a="824094093"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 05 Feb 2024 23:16:18 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 0/2] drm/i915/display: Force full modeset for eDP
Date: Tue,  6 Feb 2024 09:09:35 +0200
Message-Id: <20240206070937.197986-1-mika.kahola@intel.com>
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

It was discovered that we couldn't skip the fastset on state
verification and hence this workaround is proposed.

First, the patch that skips state verifcation in case of
fastset is reverted. The second patch proposes the following
workaround by forcing full modeset for eDP when booting up.
GOP programs PLL parameters and hence, we would be able to
use fastset for eDP. However, with fastset we are not setting
PLL values from the driver and rely that GOP and driver PLL
values match. We have discovered that with some of the panels
this is not true and hence we would need to program PLL values
by the driver.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Mika Kahola (2):
  Revert "drm/i915/display: Skip C10 state verification in case of
    fastset"
  drm/i915/display: Force full modeset for eDP

 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  3 ---
 drivers/gpu/drm/i915/display/intel_dp.c      | 13 +++++++++++++
 2 files changed, 13 insertions(+), 3 deletions(-)

-- 
2.34.1

