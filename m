Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC69895CCC1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 14:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4439D10E607;
	Fri, 23 Aug 2024 12:47:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dRFb1ENS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDADE10E5F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 12:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724417262; x=1755953262;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BRcglgVTF1qa0aM7CYwNuEpJYS66onqgzx+c/TDU1tU=;
 b=dRFb1ENS9gEJMsDlF07QCiZus6Mvil6yCQ8y3qe7J+gBX9cBC4M7w0N5
 EQG6guEMmJlGOw7Z0omAlzM3SXFB7ZPhkoOUetzA/xaQOUQ0+YPVd8c37
 WvZz6Nex93PPHA0xx2ALtRYsYcvNhBvdPvWJV0vAVIyEzSHlBM5jN5XH4
 JcWWWFykIkiNHA6TVaz+Y6M8EYs9U3O3bCzuq0D5w6+8sM5/XJ/REser2
 1KQvYbhDrkKr9j0rNrCrTecM6t5mc0hYC6hPCiayKXFA070x8w5mew7Hk
 5G/WBbL2/8OgmRky6jMlAdyRN3OlEVtsWB8konXK+aLqLKjPHjQKMN4XQ A==;
X-CSE-ConnectionGUID: IZdC2qDBSWC1rCRm6rajWA==
X-CSE-MsgGUID: LNXOFLqrSCuqRVEz0ApAgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="48278207"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="48278207"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 05:47:42 -0700
X-CSE-ConnectionGUID: 9wRSy1OgTFCPBliIxEFvfg==
X-CSE-MsgGUID: uolwxvoaRYiu8eDNdNl69Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="61807451"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.244.214])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 05:47:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/2] Increase fastwake sync pulse count as a quirk
Date: Fri, 23 Aug 2024 15:47:23 +0300
Message-Id: <20240823124725.424291-1-jouni.hogander@intel.com>
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

