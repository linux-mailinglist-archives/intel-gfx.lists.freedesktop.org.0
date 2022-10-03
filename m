Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 536525F391C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 00:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6133710E4FD;
	Mon,  3 Oct 2022 22:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D7A10E4F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 22:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664836399; x=1696372399;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sYG3n0TZriVn/6jaP2AaWJF3jlKgTjf4z6hR+2vNlzQ=;
 b=P2xXkJ0KR+xcfPnc74HlylVfX31bxi7CJzCwooLFSz++re/ywzGYgUjW
 F292BSTGjkylYX5MJ0ar6ZihdWSfaTXfSL07SNIb/4NlfP5uYOsLOfHca
 ARiEcvIG3SVHcgrEyvJxxj9vEOvAfPW29dJOow4BdeSVV5xRu9eLba/Mx
 /gpaPUVTIxBpubiguJsYaivWZknQhQCus1ProhSCytP5YC7PyoGsrc5zi
 9c9ZwbZEayuej7bUpe5RSsORTkByBOcm/1zvJ7JDvYfQAjbIJGQqrjD72
 KFHL/NOgIFkcyyl9/x2pTL7w9E5YJtrUUfrwkhzDLae7ZmXqJr7L0MFzw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="285967334"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="285967334"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692262828"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="692262828"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:16 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 00:32:54 +0200
Message-Id: <20221003223258.2650934-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Simplify uncore register updates
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patchset should not modify behaviour of the code (except patch 3).
It just replaces sequence of uncore read/modify/write with single call.
Moreover it replaces nested pointers with alias if there is one.
All patches except 3rd, were generated using coccinelle (quite ugly)
and adjusted in some cases by hand.

Regards
Andrzej


Andrzej Hajda (4):
  drm/i915/display: Use drm_device alias if defined
  drm/i915/display: Use intel_uncore alias if defined
  drm/i915: refactor intel_uncore_rmw
  drm/i915: use proper helper for register updates

 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   2 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   9 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               | 237 +++++++-----------
 drivers/gpu/drm/i915/intel_pm.c               |  59 ++---
 drivers/gpu/drm/i915/intel_uncore.h           |   8 +-
 drivers/gpu/drm/i915/vlv_suspend.c            |  28 +--
 12 files changed, 131 insertions(+), 234 deletions(-)

-- 
2.34.1

