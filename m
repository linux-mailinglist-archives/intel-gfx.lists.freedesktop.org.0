Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D6B6221E7
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 03:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6732E10E559;
	Wed,  9 Nov 2022 02:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA5310E558
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 02:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667960525; x=1699496525;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V7X9VnqWb5vx5BGeDB7XSRf/Z8ZNx03xCWt+FKFbZd0=;
 b=aRXAMF8vwK+cahhrfVrHa8IsrWQbxED9XCO5w004K//raiSEhZe/yaSu
 SHdfJsAAVxLPAQv4ECRtgzRLajcVNzJUKLBOhrH6/bsskFkN62VxgsGpH
 BQB7SBXhKGWFfFDYgKlvldgEBi+YOocOTZ/OD9+2A3iAC40Ae55SauCoU
 t3RzTs/Lyj4pfgNKyZKO5TZyJeKkFT4adRolopDqS5WSyvAmnnzOyKKGI
 ZkN726LQrl5JLEBeMTxyR1wIs+bDnQRjVKeQsFRgzb8QkHQxp/A2yZTL0
 tDzBT5BM53I2LYRNsEetmPBKlmBn6ogNxVtPFQHUX6mrQZUIyaf0KzMPP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="291255791"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="291255791"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 18:22:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="639024093"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="639024093"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 18:22:05 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 18:22:00 -0800
Message-Id: <20221109022201.3205623-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/1] drm/i915/rps: Query min/max freq from FW when
 displaying in sysfs
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

CI ONLY, PLEASE DON'T REVIEW

Test-with: 20221108215457.2494061-1-ashutosh.dixit@intel.com

Ashutosh Dixit (1):
  drm/i915/rps: Query min/max freq from FW when displaying in sysfs

 drivers/gpu/drm/i915/gt/intel_rps.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

-- 
2.38.0

