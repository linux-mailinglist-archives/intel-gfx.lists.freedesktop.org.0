Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C14BB59513
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 13:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D422710E0AD;
	Tue, 16 Sep 2025 11:24:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VDhC5xHv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5423A10E0AD;
 Tue, 16 Sep 2025 11:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758021866; x=1789557866;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CG0vX80oNbfDdZbG+4hGWt4QG8YUo/u+ib8MqQTUExo=;
 b=VDhC5xHvXjb6bYgJIOujwT/ZEiXHcTfc3rGhnab1KiAF0TvmMGuO4DEy
 gmWxwqR16H5etx4r8Wj8CAe6hXjfXsd7oI3ErZMManDm3kwlqhL0SwafU
 9mIQUdfmReT8fm6vVOJXPyQ4CUnrlM2acRBO0mZ3pO0isie75Nv1+BkW7
 Som+Qwn1s2OdtUFwbssNj9Zu5m6J94e/7OVsRi8RBPmk4s6LXHMRNqYx4
 uKGki+ZLxljXNCZZczBzzD4CeZL0RXh4IEK03Vd7zrifYVS10mh0u4zZk
 7PiEZ6CVv5FW+5Q3BEgGpbr+ceuxKyp18iHct8aGi2l0m/AkIV7cp7m82 A==;
X-CSE-ConnectionGUID: ckrDjgCzSTKqulTY0grHHA==
X-CSE-MsgGUID: 4/7b9OCTT/Kmfmlnv4hD4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="77905913"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="77905913"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:24:25 -0700
X-CSE-ConnectionGUID: d+6dtC5LS8C9SUeThJ1uFQ==
X-CSE-MsgGUID: rsjdPHZETPSGgD+DeIkKsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174521685"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.81])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:24:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] drm/{i915,xe}/dsb: refactor DSB buffer allocation
Date: Tue, 16 Sep 2025 14:24:16 +0300
Message-ID: <cover.1758021803.git.jani.nikula@intel.com>
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

Better separate i915/xe drivers specific details from display.

Jani Nikula (4):
  drm/{i915,xe}/dsb: make {intel,xe}_dsb_buffer.c independent of display
  drm/{i915,xe}/dsb: allocate struct intel_dsb_buffer dynamically
  drm/{i915,xe}/dsb: make struct intel_dsb_buffer opaque
  drm/xe/dsb: drop the unnecessary struct i915_vma

 drivers/gpu/drm/i915/display/intel_dsb.c      | 42 +++++++++-------
 .../gpu/drm/i915/display/intel_dsb_buffer.c   | 43 ++++++++++++----
 .../gpu/drm/i915/display/intel_dsb_buffer.h   | 13 ++---
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c    | 49 +++++++++++--------
 4 files changed, 88 insertions(+), 59 deletions(-)

-- 
2.47.3

