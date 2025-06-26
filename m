Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2968FAE9BF0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 12:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6DE710E291;
	Thu, 26 Jun 2025 10:55:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EvhZbU5L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 904E110E297
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 10:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750935324; x=1782471324;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qyn9Ozq5YnJWmqaoYikBi8fPR8UF6Eq4cF12LUnCA5o=;
 b=EvhZbU5L6MMtoQbCwyUy5TImC40bwrdKJjIMUYOLwBGgJEjzL3tS2vuc
 CAnCDzCw51NXk8S53raMy6sslihnwRqHXyO5aSXG++lGCmpPYoS0mRDVi
 BkwbQWt5ODfhH+22KGfWzXtkFaPCTF/60f3k2W0iArpSqdt6er0rtU+tF
 EWPxstf/7j0fo/GPAxOReDbAPutrHaTiGEiRb/YfhFY1up0yx2dL7YLv+
 125jsg2NKKUm/krNEhx62Od8GJV6IgQNEMHIhFqqrj+wt/9Doo5NqFX+V
 PKhkvAMwAFx+97z/hUjRck8iaUg6Yw3NzMuxnidjoaRjvD5H5eV4Rn9pG g==;
X-CSE-ConnectionGUID: 5zZpH0dLRZWUgnDxe6Zqug==
X-CSE-MsgGUID: O84saB1QSmmAnet4CfNxUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="64660931"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="64660931"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:55:12 -0700
X-CSE-ConnectionGUID: 7OHvLl67QmORDnE4IS+6ng==
X-CSE-MsgGUID: R8xVm7RgSrqnPCHF+w4wEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="157985908"
Received: from unknown (HELO
 dg2adlp-Alder-Lake-Client-Platform.iind.intel.com) ([10.223.55.70])
 by fmviesa004.fm.intel.com with ESMTP; 26 Jun 2025 03:55:10 -0700
From: Mohammed Thasleem <mohammed.thasleem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: karthik.poosa@intel.com, anshuman.gupta@intel.com,
 Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: [RFC] [PATCH v2 0/1] Enable VRSR
Date: Thu, 26 Jun 2025 16:24:24 +0530
Message-Id: <20250626105425.106209-1-mohammed.thasleem@intel.com>
X-Mailer: git-send-email 2.25.1
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

Enable VRAM Self Refresh.

Mohammed Thasleem (1):
  tests/intel/kms_pm_vrsr: Add test to validate VRAM Self Refresh

 tests/intel/kms_pm_vrsr.c | 623 ++++++++++++++++++++++++++++++++++++++
 tests/meson.build         |   1 +
 2 files changed, 624 insertions(+)
 create mode 100644 tests/intel/kms_pm_vrsr.c

-- 
2.25.1

