Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BFE7CD929
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 12:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B87A10E3CD;
	Wed, 18 Oct 2023 10:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBF110E3B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 10:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697624860; x=1729160860;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QrP2DS4WQ8tZ9DBvVukD1/ifLKRudTAYv0muKcfqI5Y=;
 b=AhDF4YaeUXRUqEgr+rShMMAoM5+VnCZ5cpIeUQw7um82z03VRCWs1xMh
 4gnR037aGIc13YapfkfSaNgmME8EZFKZJF+dxJgu64R9goMz7ns7ggBhc
 Q9cXGSP3UBVsgDg7pEj4buiOpJkxUxRarVCKhB+3gb4cbvaj4UUfkxSM0
 8nJzOpzTKHZ8IblRNlAd2t1Xw28cT2dgPvNQeW8ED9ZHodNgmwYViStjd
 DE0tJzmWgLFnRMn9++pWblMkr73j8bWHiplZRJOtYTkm8dVvA9THr84bL
 wSwcsQg+sMcwNx0s/1XQjgqX42TAj+WVWUmXl2kWDTYBNWzKnEKQKC/rD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="452453244"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="452453244"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 03:27:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="822393314"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="822393314"
Received: from feyang-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.44.154])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 03:27:35 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 13:27:21 +0300
Message-Id: <20231018102723.16915-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] display device info as a separate
 debugfs entry
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

Expose the display device info as a separate debugfs entry to list out
display device info and remove the same from i915_capabilities

v2: rename the debugs entry to i915_display_capabilities and patch
    description changes

v3: Exclude the patch to remove display device and runtime info from
    i915_capabilities from this patch series. Remove this only after
    IGT starts using the i915_display_capabilities

v4: Add back the patch to remove the display info from i915_capabilities
    and use test with tag to combine the IGT and kernel changes 

Test-with: 20231018063537.140125-1-swati2.sharma@intel.com

Vinod Govindapillai (2):
  drm/i915/display: debugfs entry to list display capabilities
  drm/i915: remove display device info from i915 capabilities

 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++++++++
 drivers/gpu/drm/i915/i915_debugfs.c                  |  1 -
 2 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.34.1

