Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 591206F1888
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 14:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2FFA10ED3F;
	Fri, 28 Apr 2023 12:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A9A10ED39
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 12:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682686516; x=1714222516;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tEI089NIXcTbZqIHsDJSSWEXY73oi8WNsvITkBnfZS0=;
 b=eQJ0N9mlGnj5LqI+S45qg+9awpRpvo5PmVSnSI9b0Gnq1VkDZENUpxHx
 8MVxz/UI14pEUvo9bxF0Po2iMQnPqWBHxGDLJGI5WIdWhw+aJyM6wL1PY
 JSKWaQHNuhDYYDbIyHtAE06r0LNW5qWsQnmMQ9Fnd+wBRUsGUHyVEIrb9
 WuvVKvU2QNrk2gDz5fllfwYuCd4fwp/aJIb0QB7LR3p7KMH4jAvL+h0ic
 ibnzT8kXpDHBmqehHX8xnJlNsiR6bUPJwBLbXj8YziWWAJZIwDc+kg3MD
 Ce1ZQ6mBb02AIPl1gy3ahGkE5etAwbHBo8y8MBef52e+MUnTI0XJ1D/HN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="413127884"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="413127884"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 05:55:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="759646881"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="759646881"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga008.fm.intel.com with ESMTP; 28 Apr 2023 05:55:01 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 18:29:50 +0530
Message-Id: <20230428125952.4037964-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: Use gt_err inplace of pr_err
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When we use gt_err we get GT info when that failure
hits which helps in debugging.

Cc: Andi Shyti <andi.shyti@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Tejas Upadhyay (2):
  drm/i915/gt: Use gt_err for GT info
  drm/i915/selftests: Use gt_err for GT info

 drivers/gpu/drm/i915/gt/selftest_engine_pm.c    | 3 ++-
 drivers/gpu/drm/i915/selftests/i915_gem_evict.c | 4 +++-
 2 files changed, 5 insertions(+), 2 deletions(-)

-- 
2.25.1

