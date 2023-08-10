Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F227771F4
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 09:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D4D10E15F;
	Thu, 10 Aug 2023 07:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E76710E4EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 07:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691654170; x=1723190170;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XZPPJHLsJxql/TJYhunbMR/Cpnhq0921kNbDre8lRi8=;
 b=BrOIdod6OVnhV4GFsBjr45JTqm6qgX+D7Zx2qMh2+nerxioCk+1oUNe3
 ijDbrGACD+dknZE4FrGCSFCj3QEkHZE27JNR+KOSwjaZcSdT33ZzUxLpv
 kWez2uFGrQQ36hm6QfID0WShKoVwL3r/d8m+NRUV6f2gg01rXOSsC9pWQ
 VKva0u5ONlgGJzWGvBYnCRXecREfVoR83NcHhayJrHnKhknb552mvB939
 Zv8az0CYExqPQfYziIZ6mopLRN45GQSuO2QdUwOmORfKHL9uZNgVshCyI
 O1H8Vhz/ZoRnATbrVMHhVy1NbN8G/LwpwAfEuGVezco30Oz308o2W6LDV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="351628916"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="351628916"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 00:49:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="735307918"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="735307918"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 10 Aug 2023 00:49:50 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 13:17:55 +0530
Message-Id: <20230810074758.154968-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] HDCP MST aux issue fix
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
Cc: uma.shakar@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Up until now all dp hdcp specific function derived the aux
from dig_port which gave the aux of the primary port but with
DPMST when a MST hub comes into picture the monitor becomes remote
and what we need is a corresponding aux which is also remote.
These set of patches aim to fix up just that.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (4):
  drm/i915/hdcp: Use intel_connector argument in intel_hdcp_shim
  drm/i915/hdcp: Propagate aux info in DP HDCP functions
  drm/i915/hdcp: Send the correct aux for DPMST HDCP scenario
  drm/i915/hdcp: Adjust timeout for read in DPMST Scenario

 .../drm/i915/display/intel_display_types.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 61 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 30 ++++-----
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  6 +-
 4 files changed, 58 insertions(+), 45 deletions(-)

-- 
2.25.1

