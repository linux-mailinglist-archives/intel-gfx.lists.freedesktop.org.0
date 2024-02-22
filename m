Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2EE85F8F1
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 13:56:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DDC10E2AA;
	Thu, 22 Feb 2024 12:56:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vo0M6b20";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4CE410E2AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 12:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708606611; x=1740142611;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xQsN60Mf6rw1a4Tle6ALRpevbUcxbJvR7DjRyCwnwKE=;
 b=Vo0M6b20pk+JN5OHinxW0jbzEnxO42Vt/JZROCMZ7WxPk2v71fmFSdol
 nYUBhNWmVDYP5ZGoxmEuO6RdB4sGMMOYMn0mV7qmQWwh0/cpjA8XX5JND
 JgIRkiVePg5pgw6c9t6rG5NSI3stE9BwyJd8w1nGP/sRvHZ0c6VX3j4or
 oAGvIkft6uCvVVvRfeYtOrU+cUgV7a384E0ad3x8dHJSBWxZElyom2oRf
 AQSCNJ94K0graovBKeaLuOgzZj3CnN9xD4V97x82/wQgqsLA3SumAu49b
 Ir+fhBWuS66Xsl3CFRsatE0CCuep2mrI1fdS52fzOLTNon3Ab2Pk5illM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2979091"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2979091"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:56:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5464266"
Received: from sfriis-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.44.6])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:56:48 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 lucas.demarchi@intel.com, matthew.d.roper@intel.com
Subject: [PATCH v1 0/6] LNL display
Date: Thu, 22 Feb 2024 14:56:28 +0200
Message-Id: <20240222125634.275047-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
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

Rest of the cdclk patches as well as the patches to enable the display in LNL

Balasubramani Vivekanandan (2):
  drm/i915/xe2lpd: Load DMC
  drm/xe/lnl: Enable the display support

Ravi Kumar Vodapalli (1):
  drm/i915/lnl: Add programming for CDCLK change

Stanislav Lisovskiy (3):
  drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
  drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
  drm/i915/xe2lpd: Update mbus on post plane updates

 drivers/gpu/drm/i915/display/intel_cdclk.c    | 74 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  9 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 35 +++++++--
 drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
 .../gpu/drm/i915/display/skl_watermark_regs.h |  2 +
 drivers/gpu/drm/xe/xe_pci.c                   |  1 +
 7 files changed, 118 insertions(+), 9 deletions(-)

-- 
2.34.1

