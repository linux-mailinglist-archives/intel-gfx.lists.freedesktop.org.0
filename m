Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC599A835D0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 03:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4B610E291;
	Thu, 10 Apr 2025 01:35:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aFTGVh+e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E512C10E291;
 Thu, 10 Apr 2025 01:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744248913; x=1775784913;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nqFyOX+Q4ek8EcNFUS5T/fnkiQDrAIBRviA0E+mxUVQ=;
 b=aFTGVh+esPFX3SKR5HoS9uEMPL8eL01m7ZCCs3Mzma5AhS3uptc2Wxyv
 qa4HVgWZHbIOYdi8GuPVZOqelApxbfK00ZLZj9UCtRsqioESUZF6fZOvD
 Ny3XIgfqzxg5vl4uk7wRvADT7XpJU9jQOsakCvM34LRYopm8LnswLLrY3
 2pRRVnYtm3klOm8N8FN/iyHCAsYMjfzKNQSkGOkeCPKPoehPu3p1Ek6Wl
 QHtGBkv1TkVlw9UsuCX5TLPZbm7NvGGNbYksA38l2H89VPIF9MjrE+bRx
 776MYPvHsgYydNshpuuZQxupol5N9gLSmzhMvA2y5wPb+5XM83Nje9Pu5 g==;
X-CSE-ConnectionGUID: MBuov4abSeibpxiFLX1JLA==
X-CSE-MsgGUID: O/Yyf6mjQS6CX5OCI+xXkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45875537"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45875537"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 18:35:12 -0700
X-CSE-ConnectionGUID: 0HdP3QA0QyegvNqOFMaz2Q==
X-CSE-MsgGUID: 3fwuRwZyR+q3rkkEjBBJjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="129095721"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa008.fm.intel.com with ESMTP; 09 Apr 2025 18:33:43 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: [PATCH i-g-t 0/2] Add PMU test for GT frequency
Date: Wed,  9 Apr 2025 18:33:12 -0700
Message-Id: <20250410013314.613109-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
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

This will validate PMU frequency attributes that have been added
to the driver.

Cc: Riana Tauro <riana.tauro@intel.com>>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (2):
  lib/xe_gt: Move get/set GT freq utils to lib
  tests/xe_pmu: Add frequency test

 lib/xe/xe_gt.c           |  61 ++++++++++++++
 lib/xe/xe_gt.h           |   2 +
 tests/intel/xe_gt_freq.c | 166 +++++++++++++++------------------------
 tests/intel/xe_pmu.c     | 147 ++++++++++++++++++++++++++++++++++
 4 files changed, 275 insertions(+), 101 deletions(-)

-- 
2.38.1

