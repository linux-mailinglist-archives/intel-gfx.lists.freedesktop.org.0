Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8F4C4CBA7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 10:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09EE510E2C3;
	Tue, 11 Nov 2025 09:42:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rb5mD6eg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C3A10E2C3;
 Tue, 11 Nov 2025 09:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762854176; x=1794390176;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pODudOvEVX4uRnFbgb7cKKTkKI89gyK8e0SIJOf2hMg=;
 b=Rb5mD6egwLx9x+qB+RWyk7xNRJaCIC+VuD1Gp+bGg2gWDrRFOLjOq1Oc
 Gv46Swvx0bjeX+k8Vi0xJbdBOKcBynM62rNUGCpM6gvA6IDc28GK3TM9l
 6rgccCa8h+GyD5h1x5YWgfPW1Tbx7c5oEFSWldTYXfCvDCS3B5922Bavy
 y6PbTzIUmJwisYyLGvYclRw2xEQ8T11LwdYCy9h1F5UvduW778M/Xce08
 c6BbOrUWCCvHkewcRJriU4ugdz4zqWwK4yNuiGvC+DiiWzAUyM/n8A7ke
 9Hxdz/Lm1RtJGwxGUpCoL5GG/9LTOfjK8pGOWUtgISa3u6IOsI9U1TGPz g==;
X-CSE-ConnectionGUID: 3P9uxGakQWKHnD1Lwqvz/w==
X-CSE-MsgGUID: mq1IkeTwRFC/UkGt57D3QQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68773759"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="68773759"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 01:42:55 -0800
X-CSE-ConnectionGUID: CvG3/KNXRDWJY7jFTdpXfQ==
X-CSE-MsgGUID: SBwGPVvzRKC6XmpXE+eACQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="193175858"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 01:42:52 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/4] Fix Adaptive Sync SDP for Panel Replay
Date: Tue, 11 Nov 2025 15:00:03 +0530
Message-ID: <20251111093007.3771409-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Enable Adaptive Sync SDP always when Panel replay + auxless ALPM is
supported. Ensure AS SDP is sent on line which is within the SCL +
guardband region.

This series is in continuation from discussions in [1] [2].

[1] https://lore.kernel.org/all/1b8c6c6de1e5fe0db83e6ae942dfee7e6f950767.camel@intel.com/
[2] https://lore.kernel.org/all/aPtqdAxDwiuQZbrn@intel.com/

Rev2:
Add few fixes in AS_SDP and Lobf.

Rev3:
Add patch to avoid VRR with PCON.

Rev4:
- Address review comments.
- Drop Lobf changes. To be sent as a separate series.

Ankit Nautiyal (4):
  drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
  drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
  drm/i915/dp: Allow AS_SDP only if panel replay + auxless alpm is
    supported
  drm/i915/dp: Account for AS_SDP guardband only when enabled

 drivers/gpu/drm/i915/display/intel_dp.c  | 22 +++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.c |  7 +++++++
 2 files changed, 22 insertions(+), 7 deletions(-)

-- 
2.45.2

