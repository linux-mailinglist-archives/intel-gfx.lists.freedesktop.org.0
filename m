Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8479DA499D0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 13:49:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603D610EC8E;
	Fri, 28 Feb 2025 12:49:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FY51aUjI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF0310EC8E;
 Fri, 28 Feb 2025 12:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740746980; x=1772282980;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XHdHCOeaU3C1I5YABkI47VhwoMl/LArtuOEIazvmNT8=;
 b=FY51aUjIkQRoHVOCrP/9I9SMDFk5EPiavtsFWw5fffPtITcUNcICqVBP
 leP3t7fu1cNqhhHMCc3MpSMQyzxI74IIGS9y/AZAgE4e8DHglDY5BmjLM
 1DXHTZujow4vXqyUtbZpgUKCi+OX8DIvfvLtw7rkPySmM/xj7x2XBV8PF
 TmrrKbuD1ULeTqDPpokRjyobw9xj8Bp/WsBdI68ZNhwJPVSnjLAeVHyp9
 rahxE7WYl4VzlFXHhJPl6ZxmuBlnv1AYy9NfX9gsgNrJQHhCEQYUFEKsL
 cooCExeXIuqIljRJYp1weFKt6Z5RlhmyUOsDYuZezOZcl/hOPt7ffNO51 Q==;
X-CSE-ConnectionGUID: ORRd/AXdRiCLT2gL0xbl9g==
X-CSE-MsgGUID: 56mFwioiScetIEtodXDtBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="40915045"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="40915045"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 04:49:36 -0800
X-CSE-ConnectionGUID: LVjGzbVDQMevqC84i+f+8Q==
X-CSE-MsgGUID: M291r7N0RmyQqkl/sB1q6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148252092"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.24])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 04:49:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915/display: add some sub-structs for clarity
Date: Fri, 28 Feb 2025 14:49:28 +0200
Message-Id: <cover.1740746939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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


Jani Nikula (3):
  drm/i915/mst: add mst sub-struct to struct intel_dp
  drm/i915/mst: add mst sub-struct to struct intel_connector
  drm/i915/hdcp: add hdcp sub-struct to struct intel_digital_port

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +-
 .../gpu/drm/i915/display/intel_connector.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_types.h    |  44 ++---
 drivers/gpu/drm/i915/display/intel_dp.c       |  38 ++---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 154 +++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  94 +++++------
 10 files changed, 180 insertions(+), 178 deletions(-)

-- 
2.39.5

