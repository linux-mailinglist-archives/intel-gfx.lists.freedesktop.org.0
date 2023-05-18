Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF92707A48
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 08:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F1610E4DD;
	Thu, 18 May 2023 06:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0698E10E4DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 06:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684391866; x=1715927866;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WfF152grFP7tBOVpD5McvMUwEOe9Tnckf96+r+k4SuY=;
 b=dlG7WCgLJn33i9/U4cuizFKwOcKtgLtXE1HUkAN7uHZaXJdLOiM+84Yj
 tBUp09QZD9k/WEnqoabdW8SQUi9TytXkNLPwcU8c0XX7SyxUfxDnDHGcU
 sHTOvar+tPBInlj8bb6WUYlDcwDd1LT7o6d/lDNCGxqXa2bKwnAJzgTAg
 OyqlOudWK8khkRdHd+zBqO1uDe20YYN+r+BD/A4Ev/WTeP2ZySJihy6l/
 WZqnM/tuSUC/WJAjZPAtnNKUxllkBpZvzYIbuXMcNddZcZ4W5zWsCxNJ8
 rlH7QZ6tSq1isS/lI8BL+GYs+BGeBUZrgXzmJTZ0UJMbhnb789HrMWlm5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="332348452"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="332348452"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 23:37:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="702036867"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="702036867"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 17 May 2023 23:37:43 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 May 2023 12:06:09 +0530
Message-Id: <20230518063612.1044370-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] HDCP Cleanup
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
Cc: tomas.winkler@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some basic cleanup of hdcp code.
Consists of 
-rename dev_priv to i915.
-move away from master naming rename it to arbiter.
-rename comp_mutex to hdcp_mutex.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Suraj Kandpal (3):
  drm/i915/hdcp: Rename dev_priv to i915
  drm/i915/hdcp: Move away from master naming to arbiter
  drm/i915/hdcp: Rename comp_mutex to hdcp_mutex

 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 652 +++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   6 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  16 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/misc/mei/hdcp/mei_hdcp.c              |  26 +-
 include/drm/i915_hdcp_interface.h             |   4 +-
 7 files changed, 356 insertions(+), 356 deletions(-)

-- 
2.25.1

