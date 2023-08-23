Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F712786039
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 20:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2BB10E0D9;
	Wed, 23 Aug 2023 18:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8268310E0CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 18:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692816963; x=1724352963;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G4Q3w56UpGSHC09OQ7qVy5g9JfHVAhdmH+xY5jstAwI=;
 b=NOQZiRELRYpJBEBW5kGByQGunTV1iggTDodKuyNtrwUjO10Duq3lyWlw
 1rFNob/P5LxcXYloR8JUTzhS9zc+j2uY7as02rS8ofwm2+d0+Zyb3ZBMm
 9cUwDC5WyY4vpDTQkjl9WRYefLbBeWXRM9waE0QpGqp6m1Vwms5o+LJc0
 utWbr5TaOPEta+ExBDwc623h9TfpTtCMLUGGc0fW4lILp1CeE/RQ4Ufa5
 LVatCtI6oekk18GytDc9TvN7deV3cvvRsQCDOKTJiqCVQG2lVyi39Qm//
 MpOgGj6KSG0zd3AMRhwA+CD0j5wNeffv1ZI4mViBbn4V5M8iNrpOSRnE9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438172320"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438172320"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="686569647"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686569647"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:55:59 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 11:45:18 -0700
Message-Id: <20230823184520.1993320-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Apply Wa_16018031267 / Wa_16018063123
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
Cc: tomasz.mistat@intel.com, jonathan.cavitt@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apply Wa_16018031267 / Wa_16018063123.  This necessitates submitting a
fastcolor blit as WABB and setting the copy engine arbitration to
round-robin mode.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Tomasz Mistat <tomasz.mistat@intel.com>
CC: Gregory F Germano <gregory.f.germano@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
CC: James Ausmus <james.ausmus@intel.com>


Nirmoy Das (2):
  drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
  drm/i915: Set copy engine arbitration for pipeblit WA

 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   6 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |   3 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 114 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |   6 ++
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++----
 drivers/gpu/drm/i915/i915_drv.h             |   5 +
 6 files changed, 178 insertions(+), 21 deletions(-)

-- 
2.25.1

