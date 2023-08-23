Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F25B786048
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 21:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78F3E10E0DF;
	Wed, 23 Aug 2023 19:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D95A10E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 19:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692817334; x=1724353334;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vC31hE/dmVHHwp8rMn7ZAJjc4opIWvJmorI/tSVeF4k=;
 b=OjfNRy5y8hKBHjCQJ+rKyEj4UhB5jr1vY6PR2pIQN/+VccF5nVhaTEI9
 7+ob8ACKu/nJhC4/hLlIhm8gOEggTNOlFnvdys6d9CtQ/d0X/gRmBeCnN
 NYmLa1NwfSMRA9f2dABl4+Cqnx8UKiIvT+ar/BJ+S6OBSCI1ZdOkdpc7F
 g56f1EAWbzmzxNl6ooXB5I9fshyLB2+IdO2sV6K5I0+IYmC5mRWMJn3g9
 x4CxjgBIC6pAHu/E9/gvfFTpoMWXuVysP6Kt4VNEbbb1bPWOr7BEaWZMY
 3uSKMtxkHH+xZSVV28UhKYGzef2q/s0rpvgJXVJkPzBNXzgreiuez/q84 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="376975752"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="376975752"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:01:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="826835394"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="826835394"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:01:44 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 11:51:02 -0700
Message-Id: <20230823185104.1994138-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Apply Wa_16018031267 / Wa_16018063123
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

v2:
- Rename old platform check in second patch to match
  declaration in first patch.
- Refactor second patch name to match first patch.

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
  drm/i915: Set copy engine arbitration for Wa_16018031267 /
    Wa_16018063123

 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   6 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |   3 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 114 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |   6 ++
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++----
 drivers/gpu/drm/i915/i915_drv.h             |   5 +
 6 files changed, 178 insertions(+), 21 deletions(-)

-- 
2.25.1

