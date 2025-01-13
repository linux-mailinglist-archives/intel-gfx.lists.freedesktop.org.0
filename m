Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33359A0B434
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E5510E62E;
	Mon, 13 Jan 2025 10:11:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R648BctU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BDE810E62E
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 10:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736763107; x=1768299107;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WWn9IvJks94oJyXXhwtQIK0M3c49kb6tBghFHLz3eck=;
 b=R648BctUVcqqSZfiURT+z3Io6s2c5TnGjDxXP01eN8TTkRcFbq1/nhPX
 J09zA+PUoiQSNxYgyHC//Mtz9q3CoTKlz2agDtQ/i2tYQ/OUzJaI95cd8
 quMXPk1QA0VJStVuM0jilwuCMRO96gByUa0cvw5C5yUrDbRIJ+gn7fcfK
 a58Q9QGEWrTVE9vSI2TdUhXFGWqDctQdAdudTJ2DA4yLtAnobPCQt8iFZ
 BT8MJ8E7zT3qlBPuUbfK9xMeE7kQotmbiv7G8ZMTeK0ByGFS7qeLqhVd2
 fe7Ja8dB2BWs0cLyY7g0QcDHorUMn7NojiUdEYn8//r5ZOntjq0yaCwig g==;
X-CSE-ConnectionGUID: SopEnFXCRMGS8i0HX8QV0Q==
X-CSE-MsgGUID: N9kAyMtJSlKSclbwMaDbDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="40696331"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40696331"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:11:23 -0800
X-CSE-ConnectionGUID: sUFrqUJzQCqwRtTQIGr6Jg==
X-CSE-MsgGUID: yPqd4erDTsKHm5S0qipbMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="127689491"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:11:20 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH 0/2] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
Date: Mon, 13 Jan 2025 15:29:10 +0530
Message-Id: <20250113095912.356147-1-sk.anirban@intel.com>
X-Mailer: git-send-email 2.34.1
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

Add dedicated functions to measuring power in SLPC and
for rps use read_cagf to use the raw frequency to measure power,
ensuring more accurate and reliable power measurements.

Sk Anirban (2):
  drm/i915/selftests: Correct frequency handling in RPS power
    measurement
  drm/i915/guc/slpc: Add helper function slpc_measure_power

 drivers/gpu/drm/i915/gt/selftest_rps.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_slpc.c | 17 ++++++++++++++++-
 2 files changed, 17 insertions(+), 2 deletions(-)

-- 
2.34.1

