Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C28D784B9C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 22:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7841410E0B5;
	Tue, 22 Aug 2023 20:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 356E410E0B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 20:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692737314; x=1724273314;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=37XhkEK56THjaXtWhtHCn/wPug5cx5yMHzXCGAQyBxM=;
 b=jXIWRjdr8NBO9s4cyG22RQCLVR3VSVNR8aE/Cpi60/UaORePp83rTQyb
 mUc2ddrld6A91zxJPIEhWkA4EAAewfa3jomoRViUNi9QRvz5QvIrQA0EM
 akXr2Olc5DVg4iDbP64jLx70LGtENXYAUuxEloevpcK2dJN+QfueD8/3G
 qhZtNNg/3CIsu9Wpe7qfcmQoX+YuY0UEh6gf2BLNaCSuUDzYBK7Q/2YhL
 Iz2wQ51cFAsGLx66y3poy4Eae+5RXsepWQXIpOg5646m3Vhr/ad4oV+SO
 a76unSmqdrfc1vsGqXWW+K1+LXFvPFMZwMJO4XZ50J2zVB2HqKQyRQW6X Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="404991136"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="404991136"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 13:48:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="910223848"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="910223848"
Received: from nnesher-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.251.213.152])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 13:48:31 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 23:48:16 +0300
Message-Id: <20230822204818.109742-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/2] SDP split for DP-MST
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

SDP split config for DP-MST

v1: Fix wrong port comparison (Jani Nikula)

Vinod Govindapillai (2):
  drm/i915/display: update intel_dp_has_audio to support MST
  drm/i915/display: configure SDP split for DP-MST

 drivers/gpu/drm/i915/display/intel_dp.c     | 12 +++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 21 ++++-----------------
 3 files changed, 14 insertions(+), 22 deletions(-)

-- 
2.34.1

