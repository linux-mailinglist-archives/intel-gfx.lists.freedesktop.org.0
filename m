Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5051DB4375C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 11:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4C410E9D0;
	Thu,  4 Sep 2025 09:41:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FqBPpqkL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA7E010E9D0;
 Thu,  4 Sep 2025 09:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756978898; x=1788514898;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bzrhkUka80T/1xtEIDqcKAzQvIeWfVY79JZLYQDxMfc=;
 b=FqBPpqkLM/Gra0HcJv352rOu3rELnT/qfYusDrpGHfold20xSch3nFBn
 ZN34seiuAdni/bNg58u5Tac/6B3y6Jmfr16sfCK4s7Eb4ysqbaLCo0L4y
 OncRjQhLvxnADXuQ352oyhVC3yY8JNTGsW6YmQsoLjViFON9khT27VzU3
 6Q1bGiFBIIulsnd9M+sLIiw0hxNMGCSqL3vz4++dEgHuRiA+973z2si53
 ZasNzcqgUEsWbldFjefsG/bcMBxb8JW+6jfWF7dRTpxLvL6vBNZIzAddk
 kKpxMauBe0xudvyHJ4ALh6FrgF1YAaC2RnDGdieWzxcFO36gIcW2e2VfG A==;
X-CSE-ConnectionGUID: rGSmt3UUQH+ZAgg5Ya38qg==
X-CSE-MsgGUID: HWhNXK0iT3usOWPv3tGcTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="58524316"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="58524316"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 02:41:37 -0700
X-CSE-ConnectionGUID: KcPm3QSgQwS8H6zHPjv/6A==
X-CSE-MsgGUID: +mq1yAwxQNSSWxSke1RviA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="202779817"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 04 Sep 2025 02:41:34 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vinod.govindapillai@intel.com,
 jonathan.cavitt@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: [v4 0/1] drm/i915/display: Remove FBC modulo 4 restriction for
Date: Thu,  4 Sep 2025 15:23:37 +0530
Message-ID: <20250904095338.300813-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
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

FBC restriction where FBC is disabled for non-modulo 4 plane size
(including plane size + yoffset) is fixed from ADL-P onwards in h/w.
Relax the restriction for the same.

Test-with: 20250903075924.282801-1-uma.shankar@intel.com

v4: Dropped redundant commit message

v3: Update comments from Jonathan Cavitt

Uma Shankar (1):
  drm/i915/display: Remove FBC modulo 4 restriction for ADL-P+

 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.42.0

