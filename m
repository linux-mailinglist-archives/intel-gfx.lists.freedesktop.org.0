Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 399E2A6B7E7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 10:45:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE2A10E767;
	Fri, 21 Mar 2025 09:45:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ALJgymmS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0581D10E767;
 Fri, 21 Mar 2025 09:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742550346; x=1774086346;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2jkg2nFte8kEvbeJNENJCWgTzIGBVQSeNfQFl9Y+YXY=;
 b=ALJgymmS4mPArB8QQbv+q2qg3R4TFWeNxnevdUqVUOhcJIR4qpVtK+MQ
 vdzmIM6Wo+Sqm/QGB4ABYWCpXmQ0G+SlS8f1k6MbhrEXv5+SoqymZaTih
 dselg/58jlBdhl6cEoFbl6U4Ux9dX0Is+kafOzk7cWrpcw07zMeZ+nM7c
 QLLImH8N1hhuxdulvBqEO4HJarPbek0b6JoQzuEci5VZCG7wWk8AjoV4Q
 LYfGbGEaekb1YoT1gphFrsJiY8Mf9N/Xq6dy65c4Dy2WkUeYWLDhJR57a
 e2SY9Q6y+ID4nQNGovj4qZcSoRtoDp6lINtgMIP+mhMnU2ANGw1mP4Vpq A==;
X-CSE-ConnectionGUID: saJfYr+PQk+ZVIfPv4PZpQ==
X-CSE-MsgGUID: JDloS9GJTPuCmnW0hDXJjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43974526"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="43974526"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:45:45 -0700
X-CSE-ConnectionGUID: 2EkFSPJlS4eXFF5I54/lPw==
X-CSE-MsgGUID: EQVNWd/LQ0GZj2OdjQ4Tew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="124132829"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.179])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:45:42 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jouni.hogander@intel.com,
 ville.syrjala@intel.com, uma.shankar@intel.com, jani.saarinen@intel.com,
 jeevan.b@intel.com
Subject: [PATCH v2 0/2] drm/i915/fbc: disable FBC if PSR2 selective fetch is
 enabled
Date: Fri, 21 Mar 2025 11:45:27 +0200
Message-ID: <20250321094529.197397-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
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

Disable FBC in case PSR2 selective fetch is enabled for all
platforms from display version 12. Later on there will be
mechanism to select between selective fetch and FBC based
on the dirty rect percentage.

v2: keep the fbc psr1 wa as it is - excluded from panel replay

Vinod Govindapillai (2):
  drm/i915/fbc: keep FBC disabled if selective update is on in xe2lpd
  drm/i915/fbc: update the panel_replay dependency in fbc wa's

 drivers/gpu/drm/i915/display/intel_fbc.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

-- 
2.43.0

