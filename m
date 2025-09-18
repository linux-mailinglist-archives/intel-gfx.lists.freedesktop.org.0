Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1C8B87595
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 01:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62F410E0C0;
	Thu, 18 Sep 2025 23:22:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mn9gpi2Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0614810E0C0;
 Thu, 18 Sep 2025 23:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758237751; x=1789773751;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZkP5pMF08L8wtLEtXJdVV4c4WkxHxPbTTinJlrbPQu8=;
 b=mn9gpi2QwX7SKHQi26ZQpJutUzpiFx67OqGFsZ+kRwurFrbHD3HQKLpv
 xasprqQc3900dohccp4O2Zvl7tZ8OeWCoWpzYTUHaJJBdWtSBf7SnLb9F
 5CvvLoe5lHJQv+kCh6S1J0j/M+fGiuHf6qzySj+ff65a/KEbSpW66oZka
 8xI/WcPGoxPpdmF91BQP97KxK4UR/hNrRFhh2V28MhkzVsbVKkPhPau7R
 hatpL91JtPKjbmJIRIJPugA+ws5U6FKn8vNBz8z50NAz1jk1rlpuBs8qY
 wMPlhJ27gYCo2DxOtwkOLfibqhU3DPDQfPgJdyuqsXBYKUQZZ9j61dhSW g==;
X-CSE-ConnectionGUID: u3b35y2pQaSv17lWY8aRGw==
X-CSE-MsgGUID: cZCpDtLeTy21Qu4ETF0LSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60735320"
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="60735320"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 16:22:30 -0700
X-CSE-ConnectionGUID: GMXlvnMjSl6CVMGnkS1/lA==
X-CSE-MsgGUID: ZEDnvHBuRZettX+ORA8/Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="176491260"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 16:22:28 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/2] drm/i915/vrr: Hide even more ICL/TGL weirdness
Date: Fri, 19 Sep 2025 02:22:24 +0300
Message-ID: <20250918232226.25295-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Previosuly we took care to hide most of the ICL/TGL vs. ADL+
differences. But the flipline>=vmin+1 stuff still remains.
Try to hide that as well.

Ville Syrjälä (2):
  drm/i915/vrr: Hide the ICL/TGL intel_vrr_flipline_offset() mangling
    better
  drm/i915/vrr:
    s/intel_vrr_flipline_offset/intel_vrr_vmin_flipline_offset/

 drivers/gpu/drm/i915/display/intel_vrr.c | 34 +++++++++++++-----------
 1 file changed, 19 insertions(+), 15 deletions(-)

-- 
2.49.1

