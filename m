Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6FF70CFC2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 02:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF25510E2D7;
	Tue, 23 May 2023 00:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4DED10E2D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 00:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684802790; x=1716338790;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7FuX703lpqEwCt92W/gtK96UcfgNJcrxKHzVo8a0J9E=;
 b=Mg97SNvESuwti/FIqBHN8u7YOu5IqUj7KkbfyJD+x9ZAkmImq8IhvGlI
 umn+84GnZGMFGqfRIQD0mrqsZhfnGI+Mb5XVmQ4pin++NUwenS1s4z/eD
 hvYB4wblJCt810OYyGHuXRxDGQNlFPV10GjiVtYcydjzSh9xTWEa+TkvF
 xigvMp/12e3DEFHKYBcSWN+v+fZYJeGrE7aDOvOnCsw4ZOM431ygbg1Qk
 QrgqtnYtYsSLvHfFIL5YFPss4pRiZf1JpSa8Hqn1l/VGSfbmn69y7zQyl
 l/gQIDLjDAGHVl9iF0hTl96hW4e5F1dHyeVpNnQbDR1j9+1IzFPvXFEn0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="351932922"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="351932922"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 17:46:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="877985945"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="877985945"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2023 17:46:28 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 06:14:52 +0530
Message-Id: <20230523004455.1206533-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] HDCP Cleanup
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

Some basic cleanup of hdcp code.
Consists of 
-rename dev_priv to i915.
-move away from master naming rename it to arbiter.
-rename comp_mutex to hdcp_mutex.

--v2
-remove redundant i915_hdcp_comp_master declaration [Chaitanya]
-some tweaks to commit message of patch 2 and 3 [Chaitanya]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915/hdcp: Rename dev_priv to i915
  drm/i915/hdcp: Move away from master naming to arbiter
  drm/i915/hdcp: Rename comp_mutex to hdcp_mutex

 .../gpu/drm/i915/display/intel_display_core.h |   7 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 652 +++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   6 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  16 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/misc/mei/hdcp/mei_hdcp.c              |  26 +-
 include/drm/i915_hdcp_interface.h             |   4 +-
 7 files changed, 356 insertions(+), 357 deletions(-)

-- 
2.25.1

