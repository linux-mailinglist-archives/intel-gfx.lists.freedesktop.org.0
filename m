Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44C2A27397
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:58:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72E5F10E651;
	Tue,  4 Feb 2025 13:58:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WKt9y0yY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF19410E650;
 Tue,  4 Feb 2025 13:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738677530; x=1770213530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zAlBI8EUokIeCmSHo2yuDbz96Ks01zKIj8ClPZ0wLKU=;
 b=WKt9y0yYVkJSY+sJLTew7vvHuU537WafXUwYp+G+i+l+jwjICYaq+w4t
 9UzN0ccwITMWhsa+EfFUuW/P6kPA0IWVvI6zU1Z5Iu02EIwQpx98/nDvq
 b0jIESo0z/CZU9GpoY8zXQv4q7glWkdNOzPfmFXQaJ+vkBClPBYxS9kYQ
 ErFXvpaBvAYlzLt+79BypFW2aE0tld2JJNee9hTKo4gLbwIGzQqQiOBgt
 7acljpdEy8bvlS6jAb/zcCLMdWdWNfVnet8/5tXKw2Y9dOj9mTGL++JKI
 hA1FyJ3h/zqSMR/MjvHj57cmRU3wndUe89uIL2WjZpC/4QN/nrZqM2EEz A==;
X-CSE-ConnectionGUID: jxNw6n92SKeK2FeJ2wdLMw==
X-CSE-MsgGUID: Z+BuQ7AuRDOUnOKoTwd+Mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39358978"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39358978"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:58:49 -0800
X-CSE-ConnectionGUID: U+pqJyYfTgWC4/qI1EiPLA==
X-CSE-MsgGUID: Y0/mR+0tTE2j1RZSY333SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110484221"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:58:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/6] drm/i915/lspcon: interface cleanups
Date: Tue,  4 Feb 2025 15:58:37 +0200
Message-Id: <cover.1738677489.git.jani.nikula@intel.com>
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

v2 of https://lore.kernel.org/r/cover.1733243959.git.jani.nikula@intel.com

Jani Nikula (6):
  drm/i915/hdmi: move declarations for hsw_read/write_infoframe() to the
    right place
  drm/i915/lspcon: add intel_lspcon_active() and use it
  drm/i915/lspcon: change signature of lspcon_detect_hdr_capability()
  drm/i915/lspcon: change signature of lspcon_wait_pcon_mode()
  drm/i915/lspcon: remove dp_to_lspcon(), hide enc_to_intel_lspcon()
  drm/i915/lspcon: rename interfaces to intel_lspcon_* to unify

 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++---
 .../drm/i915/display/intel_display_types.h    | 12 ---------
 drivers/gpu/drm/i915/display/intel_dp.c       | 18 ++++++-------
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  9 +++++++
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 27 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_lspcon.h   | 25 +++++++----------
 6 files changed, 51 insertions(+), 46 deletions(-)

-- 
2.39.5

