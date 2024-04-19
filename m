Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A70FE8AABA0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 11:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB1E10E80D;
	Fri, 19 Apr 2024 09:42:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UszsXuKk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B32E10E809;
 Fri, 19 Apr 2024 09:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713519730; x=1745055730;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o8qPt7dC/dt6pmu8dyibsJe9xr76YTgY6EKfwbi0ofo=;
 b=UszsXuKktyI/bNhYvwMXXGiJlYcxozd+J5tDo6ixa/+gPlDXMvAqWohq
 HBdlkfjRnAipu3puOvDSScNkgH9I982PzhtkV77GsJUkQV+9lCcf4PFi1
 SU3PFssG0cuIUdYcvwTu0ayCZA2MVsUxWe24D7nu03wx+9BwgTZ3DbtB9
 c+Xj6BV820MNX89cUlF2oluN/z+jkvIFnZ6M0dfredNXFdzCVLhKup0Ag
 iY2xYCxYtcKwVx7Lr8mlzLrSkqA8DK5FaOi8b4d03+JV/aq/69fHwHpXt
 KgYjUgGdLVI57hZ/l1zrXEyA9yAEuRJurTSOLS660XS5oKcCel23HRVXR w==;
X-CSE-ConnectionGUID: vg37mq7tSEm6VyvQxZ3ByQ==
X-CSE-MsgGUID: 5Asi3W7eQFWrJS9LuVMkGQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20503819"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20503819"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:08 -0700
X-CSE-ConnectionGUID: HTkcypQDSkmcQ/0Oq7SeGg==
X-CSE-MsgGUID: f8DodayrSSuWJvASpwZWow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28117105"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v2 0/5] drm/i915/dmc: firmware path handling changes
Date: Fri, 19 Apr 2024 12:41:53 +0300
Message-Id: <cover.1713519628.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

v2 of https://lore.kernel.org/r/cover.1713450693.git.jani.nikula@intel.com

Jani Nikula (5):
  drm/i915/dmc: handle request_firmware() errors separately
  drm/i915/dmc: improve firmware parse failure propagation
  drm/i915/dmc: split out per-platform firmware path selection
  drm/i915/dmc: change how to disable DMC firmware using module param
  drm/i915/display: move dmc_firmware_path to display params

 .../drm/i915/display/intel_display_params.c   |   4 +
 .../drm/i915/display/intel_display_params.h   |   1 +
 drivers/gpu/drm/i915/display/intel_dmc.c      | 175 +++++++++++-------
 drivers/gpu/drm/i915/i915_params.c            |   3 -
 drivers/gpu/drm/i915/i915_params.h            |   1 -
 drivers/gpu/drm/xe/xe_device_types.h          |   3 -
 6 files changed, 112 insertions(+), 75 deletions(-)

-- 
2.39.2

