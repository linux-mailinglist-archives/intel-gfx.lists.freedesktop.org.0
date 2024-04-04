Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B874A898632
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 13:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C61811B493;
	Thu,  4 Apr 2024 11:42:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dOdIbAjb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6502D11B493;
 Thu,  4 Apr 2024 11:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712230923; x=1743766923;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w9ii9fMBFuft10zulKpHeQe920OdrvSSqK0m3tGbmio=;
 b=dOdIbAjbIa9esBXEIpV3BM66HEfj1MDUlNmeKU5Dk5zKMYWmQh9mlv1D
 +xbrOQLm5+kLE/Qne0chtajQ/VM4Nzrc160djhVdw+DrrRoxLAe7kkEDu
 ZnemVL36LShuM+j6ePTqNB3QKEOdVqoQ+F62byXToavAuMnLJ/LfknJho
 Qpbmd6hPufsYOk2xKBAv1yJbMfxEbr7SVNfJTvrkOJqIP1fFT6xwGaV2c
 DZczynLbNVQU5pp7KXU92/aiGO/45OWIEo+M3+FiUzc7bIdfXvjC6obbs
 v9Mq/5wcsJpnDuKkGFQdDplNTwF5jGVk2wCpzFWrr6d771uI0U+aCNz5n Q==;
X-CSE-ConnectionGUID: KFh2MkowTlCX5YhgXYVAdg==
X-CSE-MsgGUID: f4WgGko2TUGQPr+2Y+SK+A==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11279836"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="11279836"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 04:42:02 -0700
X-CSE-ConnectionGUID: u1tw7jkrR0CgxUp3OW3pkA==
X-CSE-MsgGUID: T/xAAzWRSgG6sGitJXZypg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="19199739"
Received: from tsonono-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.41.97])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 04:42:00 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v4 0/4] drm/i915/display: DMC wakelock implementation
Date: Thu,  4 Apr 2024 14:41:43 +0300
Message-Id: <20240404114147.236316-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
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

Hi,

This is the sixth version of my series, the fourth as a proper
patchset.

These are the changes:

In v4:
   * removed the call to init from the first patch (gets added later);
   * added a flag to check if the wakelock is taken in DMC, so we
     don't try to take it again if get() is called while the work is
     queued;
   * changed the copyright year to 2024;
   * added __intel_dmc_wl_supported() to make checks easier;
   * check if supported also on init;
   * check if DMC is loaded before enabling;
   * removed a couple of stray debugging messages.

In v3:
   * Fixed some checkpatch issues.

In v2:
  * Enable/disable the wakelocks on DC5-6 entry and exit instead of on
    DMC load and unload;
  * Added bspec link to the commit message;
  * A bunch of other small changes;
  * For the complete list of changes and discussions, please look at
    the patchset in patchwork:
    https://patchwork.freedesktop.org/series/128628/

Please review.

Cheers,
Luca.


Luca Coelho (4):
  drm/i915/display: add support for DMC wakelocks
  drm/i915/display: don't allow DMC wakelock on older hardware
  drm/i915/display: add module parameter to enable DMC wakelock
  drm/i915/display: tie DMC wakelock to DC5/6 state transitions

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_de.h       |  97 ++++++-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_driver.c   |   1 +
 .../drm/i915/display/intel_display_params.c   |   5 +
 .../drm/i915/display/intel_display_params.h   |   1 +
 .../i915/display/intel_display_power_well.c   |   7 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |   4 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |   6 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 266 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  31 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 12 files changed, 414 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h

-- 
2.39.2

