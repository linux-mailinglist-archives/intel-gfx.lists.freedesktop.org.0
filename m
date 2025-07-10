Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E21B00C5C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 21:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D057F10E233;
	Thu, 10 Jul 2025 19:53:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="etW+gklv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A924310E233;
 Thu, 10 Jul 2025 19:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752177201; x=1783713201;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1ZzPsLONNJ4gludf+SZUi3hLjfHZOG+qNamA+j/G9y8=;
 b=etW+gklvm92aNtSTKRYiRVcNkaFZo8GIekSCPU7H6Er2Ze2YrlCrRfaP
 Jpj1vEhXu3g5biSysK1UXhbiZ/E0qZIDFNDN18Y7iPPouG2s5cnFNPqrv
 /cegzRzSVOrte/VW7e08nZsLlAATz4/Vd3emSZ13ISU/x+yJnVro6+fc+
 a7oegt4gdQqfof7eOGmHFYKXjw1BsmBITkvIJHFcCFMpcgfpJWcJDWyMt
 cMRKj5WZ1GJyZlbgaYYhYGjZWxuReQdEe6l0kbA6oZDysyy4bIDw24AR/
 nbUuE166W7Q9YWkRn3jy/ezZHEbWF+EgUSHvbm2R6oUiYFW4WoTsDNQfk Q==;
X-CSE-ConnectionGUID: 1bxxaWmgQaC/fDLT42it1w==
X-CSE-MsgGUID: ngNj11q7TLCzAOe4ff+Bsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54597029"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54597029"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 12:53:21 -0700
X-CSE-ConnectionGUID: 7Lc2Fp4nTdy8V29WT0vd3g==
X-CSE-MsgGUID: xNOpC6LsTfmRHEod6DeBKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="156898492"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.189])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 12:53:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/2] Enable_psr kernel parameter changes
Date: Thu, 10 Jul 2025 22:53:08 +0300
Message-ID: <20250710195310.3153786-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently disabling PSR2 via enable_psr module parameter causes Panel
Replay being disabled as well. This patch changes this by still allowing
Panel Replay even if PSR2 is disabled.

After this patch enable_psr module parameter values are:

-1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
 0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
 1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
 2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
 3 = PSR1 : yes, PSR2 = no,  Panel Replay : no

I.e. values different than -1 and 0 are handled as bitmasks where BIT0
disables PSR2 and BIT1 disables Panel Replay. Enable_psr parameter
doesn't impact Early Transport anymore.

v3:
  - add definitions for disable bits
v2:
  - make it more clear that enable_psr is bitmask for disabling different
    PSR modes

Jouni Högander (2):
  drm/i915/psr: Do not disable Early Transport when enable_psr is set
  drm/i915/psr: Do not disable Panel Replay if PSR2 is disabled

 .../drm/i915/display/intel_display_params.c   |  6 +--
 drivers/gpu/drm/i915/display/intel_psr.c      | 38 ++++++++++---------
 2 files changed, 23 insertions(+), 21 deletions(-)

-- 
2.43.0

