Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7D4986CD7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 08:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FD6810EA9C;
	Thu, 26 Sep 2024 06:48:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LpeG07Vs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A149E10EA9C
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727333334; x=1758869334;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tcBzRVGSQumA86ubs+FBpD47LJE0tAV41jcd4qMrmDA=;
 b=LpeG07VsJGGtwy4W4CCeWOIm5bA8fX1t5hJE/AK8YeJ0K2EA7hBuunak
 7+L7DnDwbOQ1CxvVE6CYBl9NTXJFWSrcPLOJIC8quG4w4xhIdmi++uh1A
 1/xMMUfD7Ni5MJ0Cpz/Ipbvs1En+7CykySmS4gE2EfE7kfmDthRK+vM6q
 7ILhQagH8S1O3PkJUD3X1zn3+E0/Sfmub9tBCw1L4foRofa5dTphczwfp
 2N4B24EkOEF7QTSFLbA7FI5Ea5HQbwTfCLhfELoJLb8E0PVK+VnyD3oGS
 SpZGKdQKwGrXUaz89pdPpdBmX55WEkEVNKBemGT0ASZg0vbe2r3dTnn+F A==;
X-CSE-ConnectionGUID: VBgYQhEwSeefMbV1YL90Lg==
X-CSE-MsgGUID: N0ofxPhZQl+cRH9tiFUq0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37554755"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="37554755"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 23:48:54 -0700
X-CSE-ConnectionGUID: mIG4T9rtTXy0F9T1lqQ/Hw==
X-CSE-MsgGUID: KTRf5u9FRlmd3tuH3r84KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72340225"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.145])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 23:48:52 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mika.kahola@intel.com, gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/2] Implement Wa 14019834836
Date: Thu, 26 Sep 2024 09:47:57 +0300
Message-Id: <20240926064759.1313335-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

This patch set implements Wa 14019834836. Also a new helper is added
to apply workarounds for selective update area.

v2:
  - move Wa 14019834836 to it's own function
  - apply only for display version 30

Jouni Högander (2):
  drm/i915/psr: Add new SU area calculation helper to apply workarounds
  drm/i915/psr: Implement Wa 14019834836

 drivers/gpu/drm/i915/display/intel_psr.c | 58 +++++++++++++++++++++---
 1 file changed, 51 insertions(+), 7 deletions(-)

-- 
2.34.1

