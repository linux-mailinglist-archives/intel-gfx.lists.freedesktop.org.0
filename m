Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D28497D7D7D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 09:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98B110E603;
	Thu, 26 Oct 2023 07:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E75D10E070
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 07:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698304665; x=1729840665;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ATvPsqRSKPXexIubYHRLZRzGNbXUlKY8tgRtS48lz1I=;
 b=Qqp0zUvE647cyum+riYjQbB3OKeO200KUqmfYs42qUzuHpDcv454kLu2
 WC2ooWoUXrEu4TpPBDsYJFj5wkQEd2UYetD/s0ZL+PmvRR5vtbLADJxm7
 wHg9Aw7k3hUb1HZkHcaJp6nDcWwEWtS3OAhNrZ/IJBMEpwdA3eIn86cqN
 h3/JbK6BN2UYTlcFR5e+IKjZHrtl8V1FYI46MA9sfGlHYeSP5kjJ6uCnX
 fBJE6/VyJbeLSMTEyt37AXa63JOGAdOQm76YYF6W0PwoqVii+9XIWjPu1
 cw1k2AJnrY4HNwELKqCK7OtqyGWUYwK24jAyMgh5NjSdtAjJA0FNZIjdM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="451713070"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="451713070"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 00:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="902798047"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="902798047"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2023 00:15:17 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 12:45:39 +0530
Message-Id: <20231026071540.974755-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/hdcp: Additional conditions to
 enable hdcp
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

We are seeing a issue when we close the lid of a laptop or dock a
monitor hdcp content is not being reenabled automatically this is
because when we dock a monitor we end up with a enable and
disable connector cycle but if hdcp content is running we get the
userspace in enabled state and driver maintaining a undesired
state which causes the content to stop playing and we only enabe
hdcp if the userspace state in desired.
This first patch refactors the code while the second one adds the
new conditions to enable hdcp.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Create a blanket hdcp enable function
  drm/i915/hdcp: Add more conditions to enable hdcp

 drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +----
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +----
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.h   |  4 ++++
 4 files changed, 27 insertions(+), 8 deletions(-)

-- 
2.25.1

