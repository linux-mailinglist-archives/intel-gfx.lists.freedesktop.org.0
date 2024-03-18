Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F9E87EA34
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 14:38:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23EF910EF3B;
	Mon, 18 Mar 2024 13:38:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RpopbW8i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585FF10EF0D;
 Mon, 18 Mar 2024 13:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710769099; x=1742305099;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HetKqzqkr6rBSi2czCHeiUaSghN8pzXlYkE+BX/awDI=;
 b=RpopbW8iqCWxkoZktu3BJjtqAAgG9QDK++FeQMufYQ7YVGInMX7hrN+l
 0/CGy5GaoYxB0x5BEciA7/hZalDKqLCfGiyArioyUUoKYf4H/Nsd7K1KI
 R5uQDGzRA2xO5Z/LHB8i5jZ4nnUkhwLBHXhZXv6ejO/oWEy/Eoa/UXyRh
 RMyp8bBf38hnbxQfzeZp8fh66nVg0GXDF8V1AVAfQqXhAqacaeWkwTfDT
 WepntklZ+g1E6UkZrvuJ9RMGJBzwDE3W5cKP2B3VkMiEtIMXWsjxS0fwr
 kRf0J1b8lJp65/oKZWmzXvAqaG0DAbK52cgAHDciHPae1y+GDuMk+xe/3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="16218015"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="16218015"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="13570036"
Received: from dcroitox-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.210.126])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:17 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v3 0/4] drm/i915/display: DMC wakelock implementation
Date: Mon, 18 Mar 2024 15:37:53 +0200
Message-Id: <20240318133757.1479189-1-luciano.coelho@intel.com>
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

This is the fifth version of my series, the third as a proper
patchset.

These are the changes:

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
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 242 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  30 +++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 12 files changed, 389 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h

-- 
2.39.2

