Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE3F830A29
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 16:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADEC010E083;
	Wed, 17 Jan 2024 15:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D5D10E083
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 15:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705507042; x=1737043042;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EEXXvJI6ZJEUnzed1RVcXIMB+zRCuyqvdHavDd6Jw0Y=;
 b=H+t+tb5KY0suUhqBHqKQFzoCpKNvkOAghNsdK3S6YTwNvCKbVjwiw4dM
 n5x7HCH11iE1va08oSPflHZbq7D1F5lY8xtbfaEXxw5IOR16wa+QNpn8c
 09NqyOJBeznowSuaPZ/G/yacgCShcTpn+ye93YmhWzWxwocgMoNLnRM6A
 vtWFsY7RrtxnBXW/uSdckaCrf1uxFOZnqtjQU1NDKm/wWgmXaN28Arxh8
 iP6v3yCmrxnfQsJJiqha4x/zBzAnwtfCaUjSpTvY5QvE8AVspEIOIrO4c
 +JsSG94+yR6IPq1aWPkBhhMKUjjY6fkI/35GucEfkytnilLMJrM9fHTXa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="6904365"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="6904365"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 07:57:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="907789524"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="907789524"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 17 Jan 2024 07:57:19 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] QGV/SAGV related fixes
Date: Wed, 17 Jan 2024 17:57:15 +0200
Message-Id: <20240117155718.3439-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

We have couple of customer issues, related to SAGV/QGV point
calculation. Those patches contain fixes plus some additional
debugs for those issues.

Stanislav Lisovskiy (3):
  drm/i915: Add meaningful traces for QGV point info error handling
  drm/i915: Extract code required to calculate max qgv/psf gv point
  drm/i915: Disable SAGV on bw init, to force QGV point recalculation

 drivers/gpu/drm/i915/display/intel_bw.c | 109 +++++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_bw.h |   2 +
 drivers/gpu/drm/i915/soc/intel_dram.c   |   2 +
 3 files changed, 84 insertions(+), 29 deletions(-)

-- 
2.37.3

