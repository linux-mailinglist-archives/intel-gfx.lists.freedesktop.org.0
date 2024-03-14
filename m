Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E635687B89F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 08:38:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69A7310F8C6;
	Thu, 14 Mar 2024 07:38:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uq0jUH6f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 916B610E305;
 Thu, 14 Mar 2024 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710401903; x=1741937903;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UfqNqBz/Iv0wLPeWGEHMF0OaaGHEjrE2N6VKy1MzreE=;
 b=Uq0jUH6ft5SOtKck7mTlds9Yk1dddzaATGzux4wd1Jq42IIJ9HL6gUMu
 QoKOOBMmXL6ruWMnfVR990tMbTpGTFJ1nGUKlfTHTih+cNWryLiEyu4Qe
 xiIhxAzwnAlm+Ufl8CyVyBoOvaYVyMBDmMQq3Ek7TS8d5bf7umxfK3b/2
 LivJrr2ReLT9X1MTD0BxMn85UlzrdbnU9QqlLG6WFHPBgzKTinFXuX1od
 YWE6ZCsPOCoFMFMzZWdHqOXtR6geFimcW3DY/zLwPTqbI9fO6NTAjgV8k
 /i9/VtAl6Ifj8UP3yKV0O9MTWL0kBQYR/01c2N6LfRxNk2ASA3PNnAAdV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5330850"
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; 
   d="scan'208";a="5330850"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 00:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; d="scan'208";a="12216645"
Received: from rscales-mobl4.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.209.110])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 00:38:20 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v2 0/4] drm/i915/display: DMC wakelock implementation
Date: Thu, 14 Mar 2024 09:37:48 +0200
Message-Id: <20240314073752.1245879-1-luciano.coelho@intel.com>
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

This is the fourth version of my series, the second as a proper
patchset.  Now sent for the drm-tip (intel-gfx).

The changes comparing to v1 are just addressing Gustavo's comments.
The major changes are:

  * Enable/disable the wakelocks on DC5-6 entry and exit instead of on
    DMC load and unload;
  * Added bspec link to the commit message;
  * A bunch of other small changes.

For the complete list of changes and discussions, please look at the
patchset in patchwork: https://patchwork.freedesktop.org/series/128628/

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
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 244 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  30 +++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 12 files changed, 391 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h

-- 
2.39.2

