Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953317F576C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 05:33:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A7A10E03B;
	Thu, 23 Nov 2023 04:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282CE10E03B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 04:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700714005; x=1732250005;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lEO1VZhSsAmRkR7kX8+GLoWemqF1WkLk1ORHNMS3P1Q=;
 b=OuhGoCycxi4vlHncf4E0dVlbvAKIzA/xz3M2AOVlBxt2CQXe/1fBj9Ez
 mCA9jXqhpIbwrOGLZWlNcB/Ti0epo1mQ8zK8KT/Ox286RzOOgMl15cq4C
 VaSh78UuUNZp3Jq+sW3D14oM+PxmIsDeacT1SYEt3Eg7HhneDeh6vG5sT
 lUhjihhY7d4i4aiVKRTM6kg1DQGcsP2WcEyy2i1BPbWI1yDJsYD54J1cV
 ocCb79fKe8o25HXgEp/XD89OKag7hY3F/0sVRgy6cG+exx7O875xF6ts5
 qANS0E7orMmiCcxXpiff0I5uyurOGmqzrGMtnn55ZN4LPJsZF2n9jDGFe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5336577"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; 
   d="scan'208";a="5336577"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 20:33:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="796223316"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="796223316"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 20:33:21 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 09:57:29 +0530
Message-Id: <20231123042733.1027046-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] DP DSC min/max src bpc fixes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use helpers for source min/max src bpc appropriately for dp mst case and
to limit max_requested_bpc property min/max values. 

Rev2: Dropped patch to limit max_requested_bpc based on src DSC bpc
limits. Instead added change to ignore max_requested_bpc if its
too low for DSC.

Rev3: Updated patch#1 commit message.

Rev4: Rebased.

Ankit Nautiyal (4):
  drm/i915/dp: Simplify checks for helper intel_dp_dsc_max_src_input_bpc
  drm/i915/dp: Fix the max DSC bpc supported by source
  drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
  drm/i915/dp: Ignore max_requested_bpc if its too low for DSC

 drivers/gpu/drm/i915/display/intel_dp.c     | 33 ++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++----
 3 files changed, 29 insertions(+), 17 deletions(-)

-- 
2.40.1

