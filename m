Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EAD7D7FAC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 11:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9D610E78A;
	Thu, 26 Oct 2023 09:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 865B810E78A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 09:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698313128; x=1729849128;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NLcB9ZzDqN5c0Qf10O0A92gke6NBp5D7Ll8diuSnon8=;
 b=Vzpx3cj0vXu3wzwNmhCjFvCmYuebzJPwVT5L+axoaeZWRodWc10xmWz1
 t23ZCTVhwHZlUnZ0nuFkgrC6vyuacU9kwCDvfZnxPDUx9qQtIu4TQnL+l
 9F8ZsI72nfGAWO8ry0+D6egHkoSlbRvxvfS7Va1b7HeNqmQpN+AlKFWFs
 VqxU/t3S2TaDg0FMA3irst8tOguQZ3drZEnaotnVKvZdLXLshYq59Adil
 ET76NYUAWbKkkA3AkRh2WSXWRDOZxF8F0ntRNldVjyztjvIi87+xGM8Fw
 3MAD4n1dGzzMt+aHIoQ/kScXkFh8bGXde3uBGWEZncRarBMuFFkocBO4y A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="384708151"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="384708151"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 02:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="735688239"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="735688239"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 26 Oct 2023 02:38:46 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 15:06:44 +0530
Message-Id: <20231026093647.987267-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/hdcp: Additional conditions to
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
This first and second patch refactors the code while the third one adds the
new conditions to enable hdcp.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915/hdcp: Rename HCDP 1.4 enablement function
  drm/i915/hdcp: Convert intel_hdcp_enable to a blanket function
  drm/i915/hdcp: Add more conditions to enable hdcp

 drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +--
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 37 ++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_hdcp.h   |  8 ++---
 4 files changed, 35 insertions(+), 20 deletions(-)

-- 
2.25.1

