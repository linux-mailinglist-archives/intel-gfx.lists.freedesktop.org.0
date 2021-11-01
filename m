Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 230CA4412C4
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 05:40:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CEA4899BC;
	Mon,  1 Nov 2021 04:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95B9E89991;
 Mon,  1 Nov 2021 04:39:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="228399915"
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="228399915"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2021 21:39:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="582497786"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga002.fm.intel.com with ESMTP; 31 Oct 2021 21:39:52 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Sun, 31 Oct 2021 21:39:34 -0700
Message-Id: <20211101043937.35747-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] drm/i915/guc/slpc: Implement waitboost
 for SLPC
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

Waitboost is a legacy feature implemented in the Host Turbo algorithm. This
patch set implements it for the SLPC path. A "boost" happens when user
calls gem_wait ioctl on a submission that has not landed on HW yet. GT
frequency gets temporarily bumped to RP0 to allow the previous request
to finish quickly. We achieve this on SLPC by setting the min frequency,
SLPC will set that as the requested frequency.

The boost will occur through a worker thread that will be scheduled
when the required conditions are met.

Like before, boost frequency is configurable through sysfs, so we can
adjust it to any specific value as long as it is between [min, RP0].

v2: Add a worker thread to perform freq boost.

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (3):
  drm/i915/guc/slpc: Define and initialize boost frequency
  drm/i915/guc/slpc: Add waitboost functionality for SLPC
  drm/i915/guc/slpc: Update boost sysfs hooks for SLPC

 drivers/gpu/drm/i915/gt/intel_rps.c           |  73 +++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h           |   3 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 149 +++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   3 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  13 ++
 drivers/gpu/drm/i915/i915_request.c           |   2 +-
 drivers/gpu/drm/i915/i915_sysfs.c             |  19 +--
 7 files changed, 222 insertions(+), 40 deletions(-)

-- 
2.25.0

