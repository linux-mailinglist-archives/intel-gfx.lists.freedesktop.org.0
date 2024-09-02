Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FB2967F9A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 08:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA1310E15B;
	Mon,  2 Sep 2024 06:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DH0JM6+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72BE010E15B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 06:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725259383; x=1756795383;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4cl6KbnjA2n+4vY1FcKXz2Y4KGGAwbkX1t6+dWDtLSg=;
 b=DH0JM6+5mbRDJQPSQNJF0OaE8AZnX44l+qxTQb/4uyPKviAtkSe+rj11
 Q9P68Tv9oux2W4w2Bk42AuX5Tv/GTSPqINDU+uV5CLp/Q+K/zgzM7RKfE
 xKHKg15+kUOUg9lctQBtVMA6SqeyO2tdguHSN6C2oSIRiB5l7giVBio+C
 /lQ1jAQ0Kb0if+vQjWObixT8bP3ieo/Vgt/ZDLaGsDWFIri7fMJGB0Oq/
 selXnsATN0CXaPtH83uXq2o7Avor6KqHymPUW/L60FIboA4cYVdHGnEDA
 YphCOyQ3ZAMIK4rNo3hYhwWJjQUw2pUDYEuzrHLYp33G6CmB9HJruvDEf w==;
X-CSE-ConnectionGUID: b7GCc7fyToWjx4ORJ09uOQ==
X-CSE-MsgGUID: eY33ZW0lSrOJwMXiGDup5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="41327198"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41327198"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2024 23:43:03 -0700
X-CSE-ConnectionGUID: BMQtM3PiTViJlFk7yHvpDQ==
X-CSE-MsgGUID: vEl/QvF6Rc+zMD4EmHZr2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64865750"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO jhogande-mobl1..)
 ([10.245.244.34])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2024 23:43:02 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/2] Increase fastwake sync pulse count as a quirk
Date: Mon,  2 Sep 2024 09:42:39 +0300
Message-Id: <20240902064241.1020965-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

Implement mechanism to apply quirk only if certain panel is detected
on certain setup. Use this new mechanism to increase fastwake sync
pulse count on certain Dell laptop and only if specific panel is
installed on that laptop.

v3:
  - !mem_is_zero fixed to mem_is_zero
v2:
  - instead of using struct intel_quirk add new struct intel_dpcd_quirk


Jouni Högander (2):
  drm/i915/display: Add mechanism to use sink model when applying quirk
  drm/i915/display: Increase Fast Wake Sync length as a quirk

 drivers/gpu/drm/i915/display/intel_alpm.c     |  2 +-
 .../drm/i915/display/intel_display_types.h    |  4 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 16 +++--
 drivers/gpu/drm/i915/display/intel_dp_aux.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_quirks.c   | 68 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h   |  6 ++
 7 files changed, 95 insertions(+), 7 deletions(-)

-- 
2.34.1

