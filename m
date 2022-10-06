Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 738AA5F6BCA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 18:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CED710E650;
	Thu,  6 Oct 2022 16:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEEC10E470
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 16:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665073939; x=1696609939;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Oy8gXIrU+t3C4ecOsFKK4F72hseOo2fprafS/1DEQmU=;
 b=lexfSnTX3U0ONoVQvowe1BoFdeqJ20C0rS5s13DDMz3XilSqqnpg0nGp
 hU2ID0QDpYHR7BIGxJSpDjDLGzbFgtwXhjgcYQHIXjzz3sineYGknTU+d
 dzNO4x+GlcwWuOdvxcmNlwcL3DBhdUQ2MXSWXw78VDlnSjmLQKg3/KfVv
 tOPFxoaHCZC89TxN95z2HYHvQYJVhDf0zoXaDn9sYZ3D3hF89prHA3qmX
 uhh60Va3C6QOtQIysZ8keOziqsUwuyHwB7JkrjItMnNKZMDXdbZ80txTE
 wJhUsCg9LQzGUo2xwuykndZGZFdEMYetsGFupoP3JmL+0/9j6zP/OO1DC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="303473841"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="303473841"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 09:32:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="799951417"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="799951417"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 09:32:17 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Oct 2022 18:31:56 +0200
Message-Id: <20221006163200.2803722-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] Simplify uncore register updates
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

v2:
- addressed comments by Andi, Jani and lkp,
- despite Jani objections Ive left 1st patch with hope he will change his mind,
  if not it can be safely ignored :),
- converted few more read/modifiy/write sequences in last patch,
- style adjustements to make checkpatch happy.

Regards
Andrzej


Andrzej Hajda (4):
  drm/i915/display: Use drm_device alias if defined
  drm/i915/display: Use intel_uncore alias if defined
  drm/i915: make intel_uncore_rmw() write unconditionally
  drm/i915: use proper helper for register updates

 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  13 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   2 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   9 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               | 237 +++++++-----------
 drivers/gpu/drm/i915/intel_pm.c               |  60 ++---
 drivers/gpu/drm/i915/intel_uncore.h           |   8 +-
 drivers/gpu/drm/i915/vlv_suspend.c            |  28 +--
 12 files changed, 133 insertions(+), 237 deletions(-)

-- 
2.34.1

