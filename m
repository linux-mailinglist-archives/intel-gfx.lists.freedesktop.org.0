Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D48965299
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 00:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD0610E766;
	Thu, 29 Aug 2024 22:03:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZyXt7kD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5019010E766
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 22:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724969037; x=1756505037;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+GJ3tTyp4qNW+w/nicbP8nTZyndDLAHznSvJW6N97UI=;
 b=EZyXt7kDwk8u5EFtXRlwra7NfkDrhmrdQjS7p0h3uhtXPx6M9It5iUfy
 5VlWFu6n7OT5xK/dg2hWFyhR+uCY3++yK9eoRgFKRlrosvXTjZuiKBjik
 NcPDCHNP6Jw+oi9IbM899/EmAfuqlEGoqdnh3FhKUuLwCOjH578ibK4WJ
 46HxC1rsVIbvQex3GFVc+Hl/J9VeoeIC8rpRd+gDPZgtzhlZ7XD/fKsKM
 7CHvAQtirA6odjvV/IpEGJoPWkV5Csq8wblVKyehxhwtFLB/JlgJG/U/V
 6+n61GAhSfYjfDG25E5DHoY7kxYFdWS35wJuiGZk0LSZ/D3Ri0B9U5ozO Q==;
X-CSE-ConnectionGUID: SBiNV9RNSACR3q+R2iLNMA==
X-CSE-MsgGUID: GFYPrBCySUK5/Q7M+hw+Gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="27356205"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="27356205"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 15:01:44 -0700
X-CSE-ConnectionGUID: nBWGmmpAT6yzB9ezAISgCw==
X-CSE-MsgGUID: dsQ9/8uuS765KQPofTMySQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="68541428"
Received: from djiang5-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.108.19])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 15:01:43 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] Miscelaneous fixes for display tracepoints
Date: Thu, 29 Aug 2024 19:00:43 -0300
Message-ID: <20240829220106.80449-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.46.0
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

I recently bumped into some issues while using trace-cmd to inspect i915
display trace events. This series of patches provides fixes for them.

Gustavo Sousa (4):
  drm/i915/display: Fix out-of-bounds access in pipe-related tracepoints
  drm/i915/display: Store pipe name in trace events
  drm/i915/display: Do not use ids from enum pipe in TP_printk()
  drm/i915/display: Cover all possible pipes in TP_printk()

 .../drm/i915/display/intel_display_trace.h    | 187 ++++++++++--------
 1 file changed, 106 insertions(+), 81 deletions(-)

-- 
2.46.0

