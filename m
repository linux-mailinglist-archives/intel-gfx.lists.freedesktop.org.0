Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A44098CFE40
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA0F10FA40;
	Mon, 27 May 2024 10:42:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LAyP+xoF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325BA10FA40
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716806528; x=1748342528;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yL/qH2ydIWi9eRCFukL7xSJalGI/KNBIpVT+3QBFxvQ=;
 b=LAyP+xoFJdJkWxTFNo+wBFj7TaJu+XlqB+O90hSf6BFfUWEwTgUYqWP6
 aRiaTzpcVmEZKFQjkTrALZGxmj//KefXbKEzsMCnUKVGePyBQskrfjm+2
 U1gmsBFoObmgZBTum6pYGGuben4Bs10sDSIL23VnVDa3nCb+1jR0qM3mu
 jlA5SvK7sxtEIRVV8WJn24KS8fcELsM/HdSRH3Jefr/clLhrV/MaepXpW
 qRPOAEDBgfWS+0bJnYd2M7WeSoLAni1oPQ+WZ4nlGA1xhnQEqrnz64VNG
 GlJ3wZeptRxUwTbN7rc9XviUQXD2ZRB5O7ddsON2g/nVkNgObQwNi0ir4 A==;
X-CSE-ConnectionGUID: S/jzGf5WRZ6nQYTCw7Pesw==
X-CSE-MsgGUID: hHJy+6GEQmGHZefA4M1pDQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="23718221"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="23718221"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:07 -0700
X-CSE-ConnectionGUID: T2gUQWjGR6yog6IX31MIJg==
X-CSE-MsgGUID: N8O3UMHrSwa0vLqPaON22g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39122755"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/6] drm/i915/pps: pass dev_priv explicitly to PPS regs
Date: Mon, 27 May 2024 13:41:56 +0300
Message-Id: <cover.1716806471.git.jani.nikula@intel.com>
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

Continue avoiding the implicit dev_priv local variable.

Jani Nikula (6):
  drm/i915: pass dev_priv explicitly to _MMIO_PPS
  drm/i915: pass dev_priv explicitly to PP_STATUS
  drm/i915: pass dev_priv explicitly to PP_CONTROL
  drm/i915: pass dev_priv explicitly to PP_ON_DELAYS
  drm/i915: pass dev_priv explicitly to PP_OFF_DELAYS
  drm/i915: pass dev_priv explicitly to PP_DIVISOR

 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  4 +--
 drivers/gpu/drm/i915/display/intel_lvds.c     | 29 +++++++++---------
 drivers/gpu/drm/i915/display/intel_pps.c      | 30 +++++++++----------
 drivers/gpu/drm/i915/display/intel_pps_regs.h | 16 +++++-----
 5 files changed, 41 insertions(+), 40 deletions(-)

-- 
2.39.2

