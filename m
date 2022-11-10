Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A208862451F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 16:08:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7B010E85A;
	Thu, 10 Nov 2022 15:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D689B10E85A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 15:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668092883; x=1699628883;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ownWWZMA7iYkzR/4YaVjQkOZhXIay9/CoA+zOHnwJHk=;
 b=Xq5ygSoANA1qTKkMXwpHXnNoPrIn9J0cQiJOx8ZL/WBGc3embD5AiB/g
 sPU+GgMJ8Y2g+J5OXfG6+3CeXcsgFequbnHUA9zgCpTX1F5Gu7pg3MDOL
 FlSbV6m5qZlv4siYJ3eSWDn10TmHnBEIkNeguXDqFNQdVP/K0SVwlhaZ0
 iWCkt6XtarQ6KIn813FInjmX6VJQT7rJGb36BObR3QTuGNA5cMSccSZEe
 0tO97zJhSzFwUVPnBT111b+wSPr//PHYAPQTiZs7rSyCRdSM3NbjLJZOB
 LAuVy3c6SJIzWQF1VvArKNQn7usPhTVWgKNwdPeXs6QlpzqmMmiUhuE3O Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397624583"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="397624583"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 07:08:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="668436470"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="668436470"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga008.jf.intel.com with ESMTP; 10 Nov 2022 07:08:01 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 20:33:03 +0530
Message-Id: <20221110150307.3366-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Panel replay phase1 implementation
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

Panel Replay is a power saving feature for DP 2.0 monitor and similar
to PSR on EDP.

These patches are basic enablement patches added on top of
existing psr framework to enable full-screen live active frame
update mode of panel replay. Panel replay also can be enabled
in selective update mode which will be enabled in a incremental
approach.

Note: The patches are not tested due to unavailability of monitorPanel replay phase1 implementation

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (4):
  drm/i915/panelreplay: dpcd register definition for panelreplay
  drm/i915/panelreplay: Added HAS_PANEL_REPLAY() macro
  drm/i915/panelreplay: Initializaton and compute config for panel
    replay
  drm/i915/panelreplay: enable/disable panel replay

 .../drm/i915/display/intel_display_types.h    | 15 ++++
 drivers/gpu/drm/i915/display/intel_dp.c       | 44 ++++++++---
 drivers/gpu/drm/i915/display/intel_psr.c      | 74 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 include/drm/display/drm_dp.h                  | 11 +++
 6 files changed, 131 insertions(+), 15 deletions(-)

-- 
2.29.0

