Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DF6CA348E
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:47:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1D710E91A;
	Thu,  4 Dec 2025 10:47:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QoklsNmm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A182410E91A;
 Thu,  4 Dec 2025 10:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845277; x=1796381277;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yIsVJ8jQ72fQ6Xgd+au9cVT3e8xDk6Sgh93LqR7q4ak=;
 b=QoklsNmmv3xg0XioZpkg/m5VLzOLmknNW1A5pJYVWBqPYSLJiUyMY7jR
 WPpYimK2sl+01sABAVLavAiZDuBQTu7RTpy/hTfx76hSTmK0jzf7PvaHV
 2SRDrdzNAyvxPl916FUWgYlzjVPFhxfJ/yifAwX0yvLKmTDAA51kR+UV3
 GjrFUeykM0kGUbyYmI3qH9Tn1uUYFOFHCF7owMKgx4SsyYHWCRTyj0Ffu
 jkOArmhNQcxT/Ly7TAxPneBHJlGH9MdiX9SLr4MJv1WA69zejjbxay2oy
 YSxMw4mg17rkFt0tT2nvQlYY+8NHX3FnGGqOIjTcP9l7+nSTpoXoQpXdR g==;
X-CSE-ConnectionGUID: LKv+LV4gTFqbUj92KAeRMA==
X-CSE-MsgGUID: 8DbXCs1jQmCzVSH9gy5TkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66901793"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="66901793"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:47:56 -0800
X-CSE-ConnectionGUID: 1m6u6t7nSdOFMqElrPpIJQ==
X-CSE-MsgGUID: my8sqXzbTMiz1GtXV0p4BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="194018689"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.248])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:47:54 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/8] Move PSR/Panel Replay sink data into intel_connector
Date: Thu,  4 Dec 2025 12:47:25 +0200
Message-ID: <20251204104733.1106145-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This is a preparation patch set for MST Panel Replay.

In case of MST Panel Replay we may have several CRTCs on single
pipe. There CRTCs representing virtual devices within e.g. docking
station. All these virtual devices has their own DPCD registers
containing their Panel Replay capability information. These needs to
be taken into account when computing used Panel Replay state. Due to
this we can't continue having only sink capabilities stored in struct
intel_dp.

This patch set is moving Panel Replay capabilities into struct
intel_connector to make them available for Panel Replay CRTC state
computation.

v3:
  - use cpu_to_le16 for default granularity values
v2:
  - use __le16 for two byte values in dpcd
  - use sizeof instead of hardcoded size in reading dpcd
  - drop unnecessarily passing intel_dp pointer
  - inline simple helpers 
  - use intel_dp_attached_dp instead of passing as a parameter
  - move pr/psr_dpcd into *_caps substruct
  - add FIXME
  - extra w/s removed

Jouni Högander (8):
  drm/i915/psr: Add panel granularity information into intel_connector
  drm/i915/psr: Use SU granularity information available in
    intel_connector
  drm/i915/psr: Compute Panel Replay/Adaptive Sync coexistence behavior
  drm/i915/psr: Move pr_dpcd and psr_dpcd to intel_connector
  drm/i915/psr: Clear pr_dpcd as well on disconnect
  drm/i915/psr: Move Panel Replay DSC sink support data to
    intel_connector
  drm/i915/psr: Move sink PSR and Panel Replay booleans to
    intel_connector
  drm/i915/psr: Move sink_sync_latency to intel_connector

 drivers/gpu/drm/i915/display/intel_alpm.c     |   6 +-
 .../drm/i915/display/intel_display_types.h    |  45 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  17 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 302 +++++++++---------
 drivers/gpu/drm/i915/display/intel_psr.h      |   2 +-
 5 files changed, 207 insertions(+), 165 deletions(-)

-- 
2.43.0

