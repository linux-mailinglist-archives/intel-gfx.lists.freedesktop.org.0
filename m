Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10744860BF0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 09:16:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8064F10E089;
	Fri, 23 Feb 2024 08:16:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g8YJ3YNJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2385410E089
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708676213; x=1740212213;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UavXwdJmwudySItglSYoYO4uA5boXOAsJFZZ/A7/xf4=;
 b=g8YJ3YNJtgnO7TTGwdt9q+FW+XARYPopP306k3iBZBysPP5oRRzGWlx8
 Gk8umT8NPyK5HjQjUygNtOt8ubm6xM+uX2TyewNelLF9m45NbQ7y98Bto
 F171aFOcllpAZoqzNOQuJ6YPDxi+jw7JB0d96kQ+HRezTwKpbbbSzaVcM
 oKzQv6UQs2Rvg86udhTliPiK//2x7LdGXfAiil+1/uaTV/Re0BXNsEcXH
 TRuYcYB9lujLkeFrnXejDs7+Az+F0B8q7TtKj7KVPzv6d9xSs/UbcZstc
 65CloM5lnWabar3rvj7rF6lZjnZg5Qamgh+zACBVKrYCSRDT+Einwzo/s g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2830005"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2830005"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 00:16:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10528779"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 23 Feb 2024 00:16:50 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/13] HDCP MST Type1 fixes
Date: Fri, 23 Feb 2024 13:44:41 +0530
Message-ID: <20240223081453.1576918-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

We were seeing a blank screen whenever Type1 content was played.
This was due to extra timing which was taken as we had moved to
remote read and writes previously for MST scenario, which in turn
was done as we were not able to do direct read and writes to the
immediate downstream device.
The correct flow should be that we talk only to the immediate
downstream device and the rest needs to be taken care by that device.
With this patch series we move back to direct reads and writes,
fix the fastset setting because of which direct reads and writes to
HDCP related DPCD register stopped working, derive hdcp structure
correctly and increase robustability if rxcaps HDCP capability
reporting.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (13):
  drm/i915/hdcp: Move to direct reads for HDCP
  drm/i915/hdcp: Move source hdcp2 checks into its own function
  drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
  drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
  drm/i915/hdcp: Rename hdcp capable functions
  drm/i915/hdcp: Add new remote capability check shim function
  drm/i915/hdcp: HDCP Capability for the downstream device
  drm/i915/hdcp: Remove additional timing for reading mst hdcp message
  drm/i915/hdcp: Extract hdcp structure from correct connector
  drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link
  drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link
  drm/i915/hdcp: Allocate stream id after HDCP AKE stage
  drm/i915/hdcp: Read Rxcaps for robustibility

 .../drm/i915/display/intel_display_debugfs.c  |  21 +-
 .../drm/i915/display/intel_display_types.h    |  12 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 137 +++++++----
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 226 +++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   6 +-
 6 files changed, 228 insertions(+), 181 deletions(-)

-- 
2.43.2

