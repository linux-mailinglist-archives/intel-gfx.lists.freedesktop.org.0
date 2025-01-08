Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD01A05DF6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:05:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B596E10E8BB;
	Wed,  8 Jan 2025 14:05:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DEztWqWi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A9510E8B7;
 Wed,  8 Jan 2025 14:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736345108; x=1767881108;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dnY4cCuevO5Rhi5Acn6I01lZ3wlWE9d7olms1FPWS1c=;
 b=DEztWqWiM/ChMKrukyrW+5ih5rO58ljdh1bp7bRkDDLuUW3INnIgfZLy
 L0og6EMlm6anEgNagiXm7pDg4czIo9lpLD5/bSWN3N54A+a+2I15Z8e6l
 WWQ0vGZ7QEK+mIl42+1rv6Tg6V+gO9q/tFsNPsujmbBrxnDDXnkQJDeXv
 ikXLNkq3MoDVhD6Yd5AV83MHR71C8mtsfLaKs3zuT9xuiT/021tWO9n7a
 cgAyelnUdmmT+6jlYAWVLDZxz69GbSQZQ7Dlfmk2/YhCxO1643QmzsxKv
 VyNDJF0cQzPqP/uVGkWP6bKTaKOwTKwtDc8HHBtKaTzcqTgvq2TS9NNZ+ A==;
X-CSE-ConnectionGUID: Cb2xaIhQSXypRJm13RThDQ==
X-CSE-MsgGUID: PnnpqlWCTmCbZWb9h60VdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47146051"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47146051"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:04:21 -0800
X-CSE-ConnectionGUID: 6dhrSbAGRYSNiZbNYmbWtQ==
X-CSE-MsgGUID: 8DRu3z51SkCQdROCvDIFag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="108153854"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:04:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915/audio: convert to struct intel_display
Date: Wed,  8 Jan 2025 16:04:12 +0200
Message-Id: <cover.1736345025.git.jani.nikula@intel.com>
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

Audio conversion to intel display.

Jani Nikula (3):
  drm/i915/audio: convert to struct intel_display
  drm/i915/audio: convert LPE audio to struct intel_display
  drm/i915/audio: rename function prefixes from i915 to intel

 drivers/gpu/drm/i915/display/intel_audio.c    | 487 +++++++++---------
 drivers/gpu/drm/i915/display/intel_audio.h    |  14 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   5 +-
 .../drm/i915/display/intel_display_driver.c   |  10 +-
 .../gpu/drm/i915/display/intel_lpe_audio.c    | 118 ++---
 .../gpu/drm/i915/display/intel_lpe_audio.h    |  18 +-
 drivers/gpu/drm/i915/i915_irq.c               |   6 +-
 drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
 8 files changed, 333 insertions(+), 327 deletions(-)

-- 
2.39.5

