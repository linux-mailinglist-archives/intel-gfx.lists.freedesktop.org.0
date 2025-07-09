Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A06FAFE1AA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 09:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6F210E755;
	Wed,  9 Jul 2025 07:58:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KqPv54Lt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA73610E043;
 Wed,  9 Jul 2025 07:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752047890; x=1783583890;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5q/TVrDVJWg3lwQINuVc+n7n6IpcJXlUrmoswB+FUNY=;
 b=KqPv54LtGuTNPtl50iWvlmC/NleF1xtG1/yLenM7s/PoyF6ZRm0vrhAq
 dLN53GOUqlOo+kStagt+sICvQdDPE94FfnUPEsCvwaGB3JXo4dbH/7Quv
 AGNLp4C7bDGfslc5c2PXzRTeGwTu251DE2ZnzkDjpORrauWnGbMgU3FIN
 Q0rJsYhN0iz/ZJdmzOBjnCtMR8GT2qsEXTT8Zx4PpyKOySGOyzvYKvSrv
 jnU2di/RuuyzHLkVy9SgiXcqVzrp+vbMRNDx4Np/9kS+og8kv0RlDXwCJ
 sEIyiIkVS7ZsQaotfsEyb2oWPCQNDVd24qIZbzVbiTGlG9MPqa8/Lnkbn A==;
X-CSE-ConnectionGUID: HfWzMAp1TtK8/a4P33HJ0g==
X-CSE-MsgGUID: 4Hu/VAeuRUK76AO8OPFWmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="65649493"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="65649493"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 00:58:10 -0700
X-CSE-ConnectionGUID: eqJhCJ+YQx6Za0BRktOdqA==
X-CSE-MsgGUID: IMaL/0YxQ1qFy+Wv87ItuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="156289387"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.175])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 00:58:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/2] Enable_psr kernel parameter changes
Date: Wed,  9 Jul 2025 10:57:56 +0300
Message-ID: <20250709075758.2510714-1-jouni.hogander@intel.com>
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

v2:
  - make it more clear that enable_psr is bitmask for disabling different
    PSR modes

Jouni Högander (2):
  drm/i915/psr: Do not disable Early Transport when enable_psr is set
  drm/i915/psr: Do not disable Panel Replay if PSR2 is disabled

 .../drm/i915/display/intel_display_params.c   |  6 ++--
 drivers/gpu/drm/i915/display/intel_psr.c      | 35 +++++++++----------
 2 files changed, 20 insertions(+), 21 deletions(-)

-- 
2.43.0

