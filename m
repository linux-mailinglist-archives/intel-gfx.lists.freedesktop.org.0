Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD12ABD1EC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9231310E567;
	Tue, 20 May 2025 08:29:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="meNU5vDY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E8010E569
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 May 2025 08:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747729772; x=1779265772;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Oouynfk8LxUMdsr6ATk1iIA6uipJv8NCpa6ZtSaxZtk=;
 b=meNU5vDYCsyVpGz/IWufJLzp+tFOwwY37sul87lXf2RzJR2IP+XrfrSR
 9c/Na13lAUgCh3a0ZQXgJkY4JNjIZyND0NvejLups0g2FEdPN0Ayg+pIV
 vuWQ4XQ108th1rVfZZGQj/WNM/FP3btztH7nECs8jUQFO5Yy9f+Gxd+85
 ph+MraRVprFANvdhiH/l10x9Mv9GSbffkMCz2e/eKAoATHZot2pJC47nw
 +r47WFKaWGei+zs7scWQty8Y9fFIMu9nPNo6kFdEC/wsS52PuUovSOu1y
 wQrFjKV3brIelR+N2zEtty8T+suU2eaZKGBl2nuio+RewKSdA3dqtBQnm A==;
X-CSE-ConnectionGUID: xxWk/xhpReyjLFClidoTrg==
X-CSE-MsgGUID: pCRwiJl1Q/az525zZacfvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49804348"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49804348"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:29:30 -0700
X-CSE-ConnectionGUID: rvIrqiipRBWwUNOFfPkCBA==
X-CSE-MsgGUID: 5kjA2Bg1Tumnw8WnDbVLwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144875710"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.245.245.155])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:29:29 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/2] drm/i915: small fixes from code reviews
Date: Tue, 20 May 2025 11:26:57 +0300
Message-ID: <20250520082917.1302665-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.47.2
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

Hi,

Here are two small unrelated patches to fix a couple of issues found
during code analysis.

Please review.

Cheers,
Luca.


Luca Coelho (2):
  drm/i915/dkl: return if tc_port is invalid in dkl_phy_set_hip_idx()
  drm/i915: remove unused arg in skl_scaler_get_filter_select()

 drivers/gpu/drm/i915/display/intel_dkl_phy.c |  4 +++-
 drivers/gpu/drm/i915/display/skl_scaler.c    | 17 ++++++++---------
 2 files changed, 11 insertions(+), 10 deletions(-)

-- 
2.47.2

