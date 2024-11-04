Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014969BC02B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 22:35:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0DE310E4DF;
	Mon,  4 Nov 2024 21:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D1xKCyFG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6975810E4D9
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 21:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730756135; x=1762292135;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VPBJ8ID2BW7bPUgKVqop80BvIm0NyjE07ho1LSj3/wM=;
 b=D1xKCyFG/3lJ/iGF8vU6BavbE/Y/HK7+JtRq60u5MEbzWop45QoiJssI
 cxmhpwJppnAO9f/8UsacMoAVsVwYjsKEZELVdJVhPawNVoBv/0P2/DVCP
 kiPpk+3oQKE8yOAg6SY32vfbxxV/kioRrkPrUyt42CTjN1PWXVq+VPptm
 wD7JC93I64+J38VqgI4Y4aOg+pTPq8vR/AFssIzN6b7EWHLMRDvsKc9qv
 uuFayzY2u4DNKB21wPzaWfgk4Pus5XrtESLnWzJUD/4kQpsymcJiIHSFj
 JUlLuGyoHxS/DM01Pg5Ui39g73fDCgyBfkFTh2204QSsXokL8B/LDWa+c w==;
X-CSE-ConnectionGUID: vV3TwY0bQgWTta7XyhPoaQ==
X-CSE-MsgGUID: 1CwepKeKQ5a1jPZap92S6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30420298"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30420298"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
X-CSE-ConnectionGUID: m2jh4JsxQjWZGFYQ4GFaLA==
X-CSE-MsgGUID: nkQ4FonHRzmklgxAkqL0ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="114562840"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/pmu: Refactors
Date: Mon,  4 Nov 2024 13:35:08 -0800
Message-ID: <20241104213512.2314930-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
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

Extract refactors from https://patchwork.freedesktop.org/series/136362/
to land them independently. With recent developments in the perf side,
the fixes won't be needed anymore as perf_pmu_unregister() should be
able to do the right thing. See https://lore.kernel.org/all/20241104133909.669111662@infradead.org/

With that, we can drop a few patches, keeping just the generic
refactors my series included. And in future, with a fixed
perf_pmu_unregister() we may simplify our checks by
pmu->registered too.

Lucas De Marchi (4):
  drm/i915/pmu: Rename cpuhp_slot to cpuhp_state
  drm/i915/pmu: Stop setting event_init to NULL
  drm/i915/pmu: Replace closed with registered
  drm/i915/pmu: Remove pointless synchronize_rcu() call

 drivers/gpu/drm/i915/i915_pmu.c | 50 +++++++++++++--------------------
 drivers/gpu/drm/i915/i915_pmu.h |  4 +--
 2 files changed, 22 insertions(+), 32 deletions(-)

-- 
2.47.0

