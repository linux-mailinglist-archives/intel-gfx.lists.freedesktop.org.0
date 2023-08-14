Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BEB77B97B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 15:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76DC310E1EC;
	Mon, 14 Aug 2023 13:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58D3110E1EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 13:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692018828; x=1723554828;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YQs0l8J7NdDoosNl+S+UEgOk99DNxu5XtD8g/Sc8nQk=;
 b=Hxej1g1++PU3E9Yojm8kdVsHHkpk2K3s7IKubGUw44bg4wekB7kTHsiu
 iqaXlv+65bayxvs5M7O5OlmcG2DYir81dFioEDEFYqNre/ZhY8EZNLa7R
 4Njt+wDkTWpEGnfkU4kXspSLDIHqsulbvIV3kX5rwMaF+xxgSe9JFHaLS
 q7z/SpOZ9iHc5dxPJMDYcYBOzz/1kR/A6JDZ9PVaf8JmjzlwH6pL9yrWo
 iNRoW5jkWHCTpR6motesVpIfNiSVNMzMG6fmNvUahVMNuaE+9z+5/feEE
 p7tGbKOAQkgL/4lVfQVR9DNN1BNb8zWMM7/v2eh9e6OlmLpuf6/bu8Pfb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="374805405"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="374805405"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 06:13:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="907234117"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="907234117"
Received: from svikra2x-mobl.gar.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.145.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 06:13:46 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 10:13:27 -0300
Message-ID: <20230814131331.69516-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] Fix C10/C20 implementation w.r.t. owned
 PHY lanes
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
Cc: Jani Nikula <jani.nikula@intel.com>
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

v2:
  - Make condition for selecing PHY lane mask more clear in patch #2.
    (Jani)

Gustavo Sousa (4):
  drm/i915/cx0: Add intel_cx0_get_owned_lane_mask()
  drm/i915: Simplify intel_cx0_program_phy_lane() with loop
  drm/i915/cx0: Enable/disable TX only for owned PHY lanes
  drm/i915/cx0: Program vswing only for owned lanes

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 155 ++++++++-----------
 1 file changed, 66 insertions(+), 89 deletions(-)

-- 
2.41.0

