Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C0798A278
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 14:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BB210E42C;
	Mon, 30 Sep 2024 12:31:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R71zv3dd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A13010E418;
 Mon, 30 Sep 2024 12:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727699495; x=1759235495;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gWcwNin+Q66QQcYsqPODfCaT5qtce+N8/K1QVfYgKx0=;
 b=R71zv3ddxyyc7mjKqmSkpcOgKZIOBNwqxn/kzJWRlDjkZyEOy4zBVOFg
 kq0kfr84wWjhBXPVb/Zfwlb1mocq05KBNPQtYU7CQgF67NcavIbIaraVa
 S8BZQRCAcGWqQNpdcxL+u+PZXnLfaTC0dc+0Qam/z21JCx7VeJmVt64k0
 5m1rPdmyKZnN7qTSFBDWyXi7voPJyQvHHgiFEKVU20SXByp3A5GA7O5f/
 PC+kbSGGeB7Fqe8J9/aqlzQ/U/gyndP8hSRfWI7r0ihJ9Y1oRmAY01dgB
 ApQSQVYqfqSMgyu3XIINnqkF7fVqu239gQdp3gCHfcZjSBbissoTyAQPa g==;
X-CSE-ConnectionGUID: YW7dv4s9Sam8B/HQEU0gpg==
X-CSE-MsgGUID: IrfQJM4rTM+HkTZ8o1LKnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="14410300"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="14410300"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:31:35 -0700
X-CSE-ConnectionGUID: 8C7O/JuaSC+mfm6C+2zCpQ==
X-CSE-MsgGUID: //tp4f7GTWCXh7fdTCcbNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73258321"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:31:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v3 00/15] drm/i915/display: platform identification with
 display->platform.<platform>
Date: Mon, 30 Sep 2024 15:31:01 +0300
Message-Id: <cover.1727699233.git.jani.nikula@intel.com>
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

v3 of https://lore.kernel.org/r/cover.1724092799.git.jani.nikula@intel.com

Rename display->is to display->platform. Make platform member names
lowercase. Add the concept of platform and subplatform groups to handle
g4x and hsw/bdw ult/ulx. Add more conversion patches at the end. Minor
tweaks here and there.

I've dropped the previous R-b's because there have been so many changes.

I like the end result better, and I feel more comfortable merging this.

BR,
Jani.


Jani Nikula (15):
  drm/i915/display: reindent subplatform initialization
  drm/i915/display: use a macro to initialize subplatforms
  drm/i915/display: use a macro to define platform enumerations
  drm/i915/display: join the platform and subplatform enums
  drm/i915/display: convert display platforms to lower case
  drm/i915/display: add display platforms structure with platform
    members
  drm/i915/display: add platform member to struct intel_display
  drm/i915/display: remove the display platform enum as unnecessary
  drm/i915/display: add platform group for g4x
  drm/i915/display: add subplatform group for HSW/BDW ULT
  drm/i915/bios: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/pps: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/tv: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/vga: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/vblank: use display->platform.<platform> instead of
    IS_<PLATFORM>()

 drivers/gpu/drm/i915/display/intel_bios.c     |  40 +--
 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../drm/i915/display/intel_display_device.c   | 267 +++++++++++++-----
 .../drm/i915/display/intel_display_device.h   | 181 ++++++------
 drivers/gpu/drm/i915/display/intel_pps.c      |  47 ++-
 drivers/gpu/drm/i915/display/intel_tv.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  11 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |   4 +-
 8 files changed, 337 insertions(+), 226 deletions(-)

-- 
2.39.5

