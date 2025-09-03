Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 364B2B41816
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 10:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26AE610E474;
	Wed,  3 Sep 2025 08:11:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKpUYDos";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4DF210E46A;
 Wed,  3 Sep 2025 08:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756887081; x=1788423081;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PI/jKLLlOs3YZl1P7BIGff0UBTA3g1DYHo6WCJFUp4U=;
 b=jKpUYDos1LdL9QdHLjjSAbKXasiSSSMQdrwv4XguHU7uMKnawEkq2EZ0
 Swl5j0xI93r1SijICr21RLNLcIZGo+0w9vCgxbEiZ/j4PfdArIvt93tkz
 +Hr29BmPNhLLjsWl2QtEBlWYGtwrWhdGxfzsiS8E5mY/79/u+rGEIh8h2
 KWoyTTTLZCCOxp25h5rORDSm+KeSXEv+yH9JGNHTF1K+OoyqktAdGLkbu
 pYaGxldyEoL0Vi7y8QcB+DiB1rTlzoi+kVsrC0ERQ9fvPc6HFUilF/wNI
 4JMxFo0aEl/hfKY1fz0GkN17rJlnLWPlUVQ+73OOr7e6RYyDFYqmpC9Wj w==;
X-CSE-ConnectionGUID: jq35BOsJTBWtNa++bjqa2A==
X-CSE-MsgGUID: dwfiMldhQRqYmC8TyrtiBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62834552"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="62834552"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 01:11:21 -0700
X-CSE-ConnectionGUID: vDa74XtGTp2nOGktjNAXwg==
X-CSE-MsgGUID: nxfVDQonRiGV1kH8+BTghg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="208731834"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa001.jf.intel.com with ESMTP; 03 Sep 2025 01:11:19 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vinod.govindapillai@intel.com,
 jonathan.cavitt@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: [v3 0/1] drm/i915/display: Remove FBC modulo 4 restriction for
Date: Wed,  3 Sep 2025 13:53:22 +0530
Message-ID: <20250903082323.283632-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
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

FBC restriction where FBC is disabled for non-modulo 4 plane size
(including plane size + yoffset) is fixed from ADL-P onwards in h/w.
Relax the restriction for the same.

Test-with: 20250903075924.282801-1-uma.shankar@intel.com

v3: Updated comments from Jonathan Cavitt

Uma Shankar (1):
  drm/i915/display: Remove FBC modulo 4 restriction for ADL-P+

 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.42.0

