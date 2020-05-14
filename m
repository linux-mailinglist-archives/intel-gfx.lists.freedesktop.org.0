Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 373E41D3501
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 17:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F626E36F;
	Thu, 14 May 2020 15:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013D46E36F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 15:25:53 +0000 (UTC)
IronPort-SDR: XIMBPT30s3+G9ftQG3YYmyH7cu79bIicTTFmFw2mDk13DVJuxNjzGjEwLkBfDls8GDWHM1rBST
 04mjcZXgzkhw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 08:25:53 -0700
IronPort-SDR: qM304QtK1fRk6pQYjyY4Dyn3jY9tG1QlQrnHMfTdmLaSgucoiaMWK4ZxRpyRQ06eia+vCG0gWV
 6jFsGeLLfCaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; d="scan'208";a="410112403"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga004.jf.intel.com with ESMTP; 14 May 2020 08:25:51 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 18:21:38 +0300
Message-Id: <20200514152145.2449-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 0/7] Consider DBuf bandwidth when calculating
 CDCLK
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to calculate cdclk after watermarks/ddb has been calculated
as with recent hw CDCLK needs to be adjusted accordingly to DBuf
requirements, which is not possible with current code organization.

Setting CDCLK according to DBuf BW requirements and not just rejecting
if it doesn't satisfy BW requirements, will allow us to save power when
it is possible and gain additional bandwidth when it's needed - i.e
boosting both our power management and perfomance capabilities.

Stanislav Lisovskiy (7):
  drm/i915: Decouple cdclk calculation from modeset checks
  drm/i915: Extract cdclk requirements checking to separate function
  drm/i915: Check plane configuration properly
  drm/i915: Plane configuration affects CDCLK in Gen11+
  drm/i915: Introduce for_each_dbuf_slice_in_mask macro
  drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
  drm/i915: Remove unneeded hack now for CDCLK

 drivers/gpu/drm/i915/display/intel_bw.c       | 114 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h       |   9 ++
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  30 +++--
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   1 -
 drivers/gpu/drm/i915/display/intel_display.c  |  88 +++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |   7 ++
 .../drm/i915/display/intel_display_power.h    |   1 +
 drivers/gpu/drm/i915/intel_pm.c               |  31 ++++-
 drivers/gpu/drm/i915/intel_pm.h               |   3 +
 9 files changed, 244 insertions(+), 40 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
