Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44602B3B29D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 07:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 722BB10E1F5;
	Fri, 29 Aug 2025 05:39:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XeOceDrm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A1B010E052;
 Fri, 29 Aug 2025 05:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756445985; x=1787981985;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3bTbknaumBzV/HT9SuhWZaOMniwa6I5OgZuvJ56zp/A=;
 b=XeOceDrmBXBbqjdVZpDDOcpcmPacU2+lQqFQQ8byxJ8zoGL3qPtZB7C4
 R2UZqQHJnLeax8huwZPWx3MfGEDhfl+yZLICkRaPaNx6LjChooYmAqwOX
 cyUK57e1EtEE6AjXTVprJCC2+l89KYj4RZ4/52EtyNNz0mewbmujJkeyM
 JK+Ziq+cGPHfMyk5e8hWddnci2nVWB2THMMNYaPlSpDeEdS1/gG5N0ldx
 VTHzLlYDDHnAGrEZjBxvIDfR7bCqKwSd+pKzlgZ8cymsq7D07p1bvQQGw
 EKyZDyYccRzHjWw5UA0ET5VL3JJFyz5IzJ80P5DBHZV7dTjcvGpKa0QVP g==;
X-CSE-ConnectionGUID: +VH6PWr/TVWGGO6dbB/ucQ==
X-CSE-MsgGUID: hC/et/z2TICg5Tib56aAuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58874482"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="58874482"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 22:39:44 -0700
X-CSE-ConnectionGUID: SdYxR7yDSIW4AnaAU1M4fg==
X-CSE-MsgGUID: EycwryA0S8OwCP1l2iy4kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="193963805"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.172])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 22:39:43 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/4] ALPM LFPS and silence period calculation
Date: Fri, 29 Aug 2025 08:39:24 +0300
Message-ID: <20250829053929.3585636-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

Currently ALPM LFPS and silence period are hardcoded for different
link rates. This patch set implements calculation for these
parameters.

Also AUXLess wake time is optimized by using actual LFPS cycles and
silence period instead of maximum values.

v2: replace hardcoded 20 with 2 * LFPS_CYCLE_COUNT

Jouni Högander (4):
  drm/i915/alpm: Calculate silence period
  drm/i915/alpm: Add own define for LFPS count
  drm/i915/alpm: Replace hardcoded LFPS cycle with proper calculation
  drm/i915/alpm: Use actual lfps cycle and silence periods in wake time

 drivers/gpu/drm/i915/display/intel_alpm.c | 133 ++++++++++------------
 1 file changed, 58 insertions(+), 75 deletions(-)

-- 
2.43.0

