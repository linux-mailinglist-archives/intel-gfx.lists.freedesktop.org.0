Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EA89B485D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 12:33:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E094C10E631;
	Tue, 29 Oct 2024 11:32:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dRQoe+d3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9FCF10E631;
 Tue, 29 Oct 2024 11:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730201577; x=1761737577;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TITDgOCZtW+bKmMBb6dbvP5+5Knz99HKmEF2/TG7vcg=;
 b=dRQoe+d3NQkEcdgqHQuIgFg+CBalDLGzVAIvs8zILYOZcPo1by0cuoD2
 4BwwZY7L56UanTaI2oB7ppzjn6i4rPBfmzZ6gBaFHfjDHhXCCBfT8WV6C
 0xj6Ia3M1YosOEozmmiFtudTCtsa9xo2VMc7/BiaSu2RdbcHXQnkZAdZ/
 4FvBYudm+j8VTHN2rfzhVh2guu9fp+0xp5Ig3QVZpnmVXcdtphQQ8jTFm
 WhwbdfVlxqiHSqnxhKZKAFJ2JXeM5o029iEEdmavEOjh6uvtR3RE9ZRSR
 YJB1DErm2FOPJW5955HkoBdzZ3VNv5DoDg9wa2TNvqjsm4QVRIN+ESlQF Q==;
X-CSE-ConnectionGUID: PreSiP2KSj6P0szQMMAyXw==
X-CSE-MsgGUID: Eq8YApJDS4+jP81YMPwjgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33535743"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33535743"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:32:57 -0700
X-CSE-ConnectionGUID: 1zVOfHPYTNqCky8Q2551qQ==
X-CSE-MsgGUID: 5rJNmc4VQy6y4C3+soIJag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86699604"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:32:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/3] drm/i915/psr: minor cleanups
Date: Tue, 29 Oct 2024 13:32:47 +0200
Message-Id: <cover.1730201504.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Some cleanups in PSR code. If this conflicts with more important stuff,
this can wait.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>

Jani Nikula (3):
  drm/i915/psr: add LATENCY_REPORTING_REMOVED() register bit helper
  drm/i915/psr: stop using bitwise OR with booleans in
    wm_optimization_wa()
  drm/i915/psr: clarify intel_psr_pre_plane_update() conditions

 drivers/gpu/drm/i915/display/intel_psr.c | 84 ++++++++++--------------
 drivers/gpu/drm/i915/i915_reg.h          | 13 ++--
 2 files changed, 43 insertions(+), 54 deletions(-)

-- 
2.39.5

