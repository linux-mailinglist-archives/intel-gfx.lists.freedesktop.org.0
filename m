Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F28A492415
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 11:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E8361123FC;
	Tue, 18 Jan 2022 10:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8071C112A2D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 10:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642502916; x=1674038916;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Wte3NT7/aqQzEzB2ey2JF36i46FGIW4R7mDuHNK4RNQ=;
 b=IhCNEoD3Y9sTuOpBVZOC3qba+HjmA+xcL9nWlHnsTehn0jpKaZ/JXCFP
 gC1vaPYcRIsLEVLoI6zk+ID8UGOOBLFagp/heEoTNuPHhwbgqy3GT8nSx
 USd2z/XGzwf0UikgjLtg59NPnbx5pCYhCiXHHkCXcPfztoLIX8t2axdft
 XtQs1dsG2d3OBIFdRQJmqUZiSMYXKOiudr8w1SWKFhRACBEmaaVRdu7Va
 yY7Jp8QCc+k4g0cvLOUvA6ANq+1qFuz6JwA8YbCc97Ig66/LdQHW5N55V
 TVgEIFNddQq6zBUaYTPjYcLJ+jSQsVuXVPtR1KTTVV5yfohLgxwKlZcVm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="225465372"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="225465372"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 02:48:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="531736647"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga008.jf.intel.com with ESMTP; 18 Jan 2022 02:48:33 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 12:48:35 +0200
Message-Id: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Async flip optimization for DG2
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

Limitting the WM levels to 0 for DG2 during async flips,
allows to slightly increase the perfomance, as recommended
by HW team.

Stanislav Lisovskiy (4):
  drm/i915: Pass plane to watermark calculation functions
  drm/i915: Introduce do_async_flip flag to intel_plane_state
  drm/i915: Use wm0 only during async flips for DG2
  drm/i915: Don't allocate extra ddb during async flip for DG2

 .../gpu/drm/i915/display/intel_atomic_plane.c |  4 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 15 ++++
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/intel_pm.c               | 69 +++++++++++++++----
 5 files changed, 77 insertions(+), 17 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

