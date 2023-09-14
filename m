Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 576597A0D5B
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 20:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD6510E15A;
	Thu, 14 Sep 2023 18:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ECDB10E15A
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 18:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694717011; x=1726253011;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QFDlv0pg8qVgd5BRy3DgtPasvU7MAA3/ZnzSzUhBbPQ=;
 b=DQYeRdjTBHn1Uk/M1+6OVi67T9bTKdI2WVMBYm8jKcogH3IK9dPhn7KW
 YpGme81XIZ7Kyr56o471QgJYOmGOaeEja85ufkbqvuZzuWF3V9oNW1CCO
 PZmGZCQaOg6FYaMAf9NSUzCO/CzDxvS6f3k5wYztrakJ3ZBEPQqBjDmEk
 IeU29fFu7cSKdkVRXXostOGxrsRLdx4o8A4pvY0dAnu0i0RK0LpmDaO4a
 5nsdaoF6NvlonAtYrNr7+rmzks/On1GR/M+yPXOVg094TZzmqFQsr6u38
 /74Wen3QQ/yRSbFRFsT23P3STSVFXhhpU11l5WPWzvgYzCtO5zl0nTCAb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="443087375"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="443087375"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 11:43:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="1075488685"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="1075488685"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 11:43:30 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 11:32:48 -0700
Message-Id: <20230914183249.2505085-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/uapi: Enable L3 Bank Count Querying
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
Cc: bartosz.dunajski@intel.com, adam.cetnerowski@intel.com,
 jonathan.cavitt@intel.com, slawomir.milczarek@intel.com,
 michal.mrozek@intel.com, james.c.wright@intel.com, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extend the query ioctl to allow querying the count of the available L3
Banks on a given engine.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Ashutosh Dixit <ashutosh.dixit@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
CC: John Harrison <john.c.harrison@intel.com>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: James Ausmus <james.ausmus@intel.com>
CC: James C Wright <james.c.wright@intel.com>
CC: Slawomir Milczarek <slawomir.milczarek@intel.com>
CC: Michal Mrozek <michal.mrozek@intel.com>
CC: Adam Cetnerowski <adam.cetnerowski@intel.com>
CC: Bartosz Dunajski <bartosz.dunajski@intel.com>

Jonathan Cavitt (1):
  drm/i915/uapi: Enable L3 Bank Count Querying

 drivers/gpu/drm/i915/gt/intel_gt.c      | 26 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h      |  3 +++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  1 +
 drivers/gpu/drm/i915/i915_query.c       | 34 +++++++++++++++++++++++++
 include/uapi/drm/i915_drm.h             | 15 ++++++++++-
 5 files changed, 78 insertions(+), 1 deletion(-)

-- 
2.25.1

