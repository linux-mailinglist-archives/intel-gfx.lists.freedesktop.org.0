Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E65B1B8491D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 14:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4390E10E126;
	Thu, 18 Sep 2025 12:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYMl3jRZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33EC210E11E;
 Thu, 18 Sep 2025 12:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758198354; x=1789734354;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EwxdCsntsuJTGugjAMsvPcUL/5awtHoTAIAc9VOy4y4=;
 b=kYMl3jRZxFgmaikJWyjPXoBg0pmJmDDWmyORhZvvYq4YDAVC+s91WpTm
 BsYTScIizBnYK0FcSnXlMkcb8zxRaYQ2KmCGlyqm5SEdbHrl1NyfH4iC7
 zGjMRC+ubzucYIfteInuPKrI/ebSs5GNdoywGg20PPSv1OZbnvgJHlNVe
 N/iQXjoBRk+V7CVdidhUt+ndEMTaPs8G3JrnjRjS271yr/efw9HUsy4f5
 KsVvJSbaNgcA1ottrnhvc643xCjINicHU75/qm5Vi7pgmim1gTpT07FtG
 3lNZKRHY+98b071yR5ePZyPhjEvZCwJnAcVuSaZCz6/cVTwnfCN5WZoov Q==;
X-CSE-ConnectionGUID: Dv0LzSoyR+eGDgluwbUY1Q==
X-CSE-MsgGUID: 4eQTEcw6R3iujzy9Ww59hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60674856"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="60674856"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:25:54 -0700
X-CSE-ConnectionGUID: eFsvjxLUS3yYN3ZjBcUhdQ==
X-CSE-MsgGUID: g2REyayUQDCjDD40QMKjDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="179525104"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:25:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/5] drm/i915/irq: clarify and refactor ->irq_mask
Date: Thu, 18 Sep 2025 15:25:43 +0300
Message-ID: <cover.1758198300.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

Split ->irq_mask usage by platform, and move display related stuff under
display.


Jani Nikula (5):
  drm/i915/irq: use a dedicated IMR cache for VLV/CHV
  drm/i915/irq: use a dedicated IMR cache for gen 5-7
  drm/i915/irq: rename irq_mask to gen2_imr_mask
  drm/i915/irq: rename de_irq_mask[] to de_pipe_imr_mask[]
  drm/i915/irq: add ilk_display_irq_reset()

 .../gpu/drm/i915/display/intel_display_core.h | 16 ++++-
 .../gpu/drm/i915/display/intel_display_irq.c  | 58 +++++++++++--------
 .../gpu/drm/i915/display/intel_display_irq.h  |  2 +-
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |  8 +--
 drivers/gpu/drm/i915/i915_drv.h               |  4 +-
 drivers/gpu/drm/i915/i915_irq.c               | 27 +++------
 drivers/gpu/drm/xe/xe_device_types.h          |  3 -
 7 files changed, 65 insertions(+), 53 deletions(-)

-- 
2.47.3

