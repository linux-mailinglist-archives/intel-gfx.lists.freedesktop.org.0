Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393548B5AC7
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5694110E6EF;
	Mon, 29 Apr 2024 14:02:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EDXbDKgs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F49C10FEDB
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714399348; x=1745935348;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+IuMpHLlRW8cYpmrPncvWedEJqXb1dgKDZ90iU7vgIw=;
 b=EDXbDKgs+tuAsWLluGtsIQ8oyZqnUTNI1d3jtnhK5FXdeV1sT2zk1dAF
 ojitW4X1Bn3gFoUt6vfkMGKWdE9EW7CaSe+84afwwrj0ylHIkmQ3Y5hUt
 LuVOwjPqpEMHCgnREdSCFE9M1t8wXHf64DYIgkUjota10vCpWBUA9lDqk
 mDroMmFQ9mhpl3hJc220+41/1LEpbvAhamPFYa9Vd+3oAtAbIguKwZ+Yu
 7FMzQB3FWvhfxMy0+xZjdZjAulzaJQdKjU2B1j3HMol8O7g3vV3gmqGNu
 zW2Y7R7h9o21UkEmuXv+b+9Ap4G+gOdPql8ZAgqRZNgsHU1nKr0a1cIfL g==;
X-CSE-ConnectionGUID: i4l/rQeuQxaCKOM9BTiU9Q==
X-CSE-MsgGUID: ipYv+UTGQ2eHRIeXa1CVfw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32563291"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="32563291"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:28 -0700
X-CSE-ConnectionGUID: qGUCNdcFT4G8Zcu9/y1IBg==
X-CSE-MsgGUID: OxkrgwALSRqA/+ijiaaouw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="63598968"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 0/7] drm/i915/color: first batch of implicit dev_priv removals
Date: Mon, 29 Apr 2024 17:02:14 +0300
Message-Id: <cover.1714399071.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

This is the first batch from [1], selected based on the macros having
just been moved to intel_color_regs.h, so it's a nice contained set.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1714136165.git.jani.nikula@intel.com


Jani Nikula (7):
  drm/i915: pass dev_priv explicitly to PALETTE
  drm/i915: pass dev_priv explicitly to PIPE_WGC_C01_C00
  drm/i915: pass dev_priv explicitly to PIPE_WGC_C02
  drm/i915: pass dev_priv explicitly to PIPE_WGC_C11_C10
  drm/i915: pass dev_priv explicitly to PIPE_WGC_C12
  drm/i915: pass dev_priv explicitly to PIPE_WGC_C21_C20
  drm/i915: pass dev_priv explicitly to PIPE_WGC_C22

 drivers/gpu/drm/i915/display/intel_color.c    | 53 +++++++++++--------
 .../gpu/drm/i915/display/intel_color_regs.h   | 14 ++---
 2 files changed, 38 insertions(+), 29 deletions(-)

-- 
2.39.2

