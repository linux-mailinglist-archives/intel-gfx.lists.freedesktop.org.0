Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84190A875ED
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 04:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF7B10E44F;
	Mon, 14 Apr 2025 02:54:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IsdbLynr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2334210E25F;
 Mon, 14 Apr 2025 02:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744599272; x=1776135272;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iUAHst3zI6fEf7PtpM5r+6Q34eoySQdVHpTtIfkQwcg=;
 b=IsdbLynrsJpgMisM+X8Gs1mwO12q0H3XscvE3pquBHVOwn0K9owVYxAT
 kr3p9KrOsi9ZyfH+6gNidksV/RTf+UgeLQ+glOaM5QUmvDoUh6I6bGf+6
 fgy6s8DXb4g/w9od4+UaLW4ZXZK+27pmqerI//QCular+K7cMIAAWgZfK
 ijfsE9mDGuWepanlQkS4fPvGwHzZHdx43v6FRxhvziW70djs/WmXiXZjn
 /iHoZshrbWC/V6DxBTOes6elau6xZJAALwgl2miti8A7vzPuLKZSWlIEg
 qHS0zA6Pa8499a+H5WopOyMFM9KOIIaVU+5ocmXFtnxvVgwK5Xq/giGok Q==;
X-CSE-ConnectionGUID: MW+UZmPiT9iT4SoL733EbQ==
X-CSE-MsgGUID: T4AzzEXpScmRr92El2sAsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="46189563"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="46189563"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 19:54:29 -0700
X-CSE-ConnectionGUID: 31aSWBO1QjayrxyaezRigQ==
X-CSE-MsgGUID: +Qw0VttASQCth+FLqF5yEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="130016209"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 19:54:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, stable@vger.kernel.org, ankit.k.nautiyal@intel.com
Subject: [PATCH 0/2] Macro for 3 DSC engines per pipe
Date: Mon, 14 Apr 2025 08:12:54 +0530
Message-ID: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

3 DSC engines are supported only for BMG to be used in specific cases
where 12 DSC slices might be required.
Add macro for the same and use that while configuring DSC slices.

Ankit Nautiyal (2):
  drm/i915/display: Add macro for checking 3 DSC engines
  drm/i915/dp: Check for HAS_DSC_3ENGINES while configuring DSC slices

 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c             | 7 ++++---
 2 files changed, 5 insertions(+), 3 deletions(-)

-- 
2.34.1

