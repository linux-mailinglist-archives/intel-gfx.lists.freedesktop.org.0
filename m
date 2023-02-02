Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8490688885
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 21:47:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A8910E05E;
	Thu,  2 Feb 2023 20:47:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D4C10E05E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 20:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675370873; x=1706906873;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=huYtaXkwoBH6YxEkDwb6HiOeT+rN/UgHp48cZas6Sh4=;
 b=LAM1/cEURpFh705lW2Ns/K9v5x8c8n1qaeczT4EB1v6GL9o4AY92xm44
 hL6LranZJo028+dMLbnHJueDK3II9qUm1AfE243msEM2Jj6Du2YQAgcWX
 rz3I/tdI1aAXEyJUrmnYOd11sNNHYOugXkYG6JNiV+UyoQmYsV6Tpamgz
 6UXbj/dWe1TSNHMXc29W5SYWx0m20c0cF3WzvIz0yi2l0iEqEwGFMvHL9
 AC0m8s9e1cbf+UPk0aFPROO5K05YbORmTwB0AhipVZNbjOH4SQMUToB7A
 vVeWciXfiKcTIVQAfyu1e5CvK6sgLFHM3h6EhE9QSvfpkwGAdWoFhtX90 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="329850164"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="329850164"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 12:47:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="697823150"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="697823150"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 12:47:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 22:47:45 +0200
Message-Id: <cover.1675370801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/3] drm/i915/dmc: allocate dmc struct dynamically
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allocate the >1k dmc struct dynamically, only for platforms that need
it.

Jani Nikula (3):
  drm/i915/power: move dc state members to struct i915_power_domains
  drm/i915/dmc: drop "ucode" from function names
  drm/i915/dmc: allocate dmc structure dynamically

 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 .../gpu/drm/i915/display/intel_display_core.h |   8 +-
 .../drm/i915/display/intel_display_power.c    |  25 +--
 .../drm/i915/display/intel_display_power.h    |   4 +
 .../i915/display/intel_display_power_well.c   |  31 ++--
 drivers/gpu/drm/i915/display/intel_dmc.c      | 159 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dmc.h      |  44 +----
 .../drm/i915/display/intel_modeset_setup.c    |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   3 +-
 drivers/gpu/drm/i915/i915_driver.c            |   6 +-
 10 files changed, 164 insertions(+), 123 deletions(-)

-- 
2.34.1

