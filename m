Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4004F77DDBD
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 11:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9557A10E0CD;
	Wed, 16 Aug 2023 09:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2BF610E317
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 09:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692179409; x=1723715409;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=41FhaY2a3UI2YvYHoEm/FkyUjlJtWOQ0QURunXucLSg=;
 b=b5A8T16pQe4JZU3FT8dC17QmPqJzpUd36jZqS1Jz92qEcx1KuHQ+lSQ3
 u6LK7Eo+0kih/oWj1rSz6egZ/79lN/kYBRYJaMuIWYxgm6M5pGNG6HN+L
 ZLBFWGUeG+AecVBirKqTDitbL+SZapaxfc8kiP3BqKMBnIqcyyvU+FzaZ
 /zkVtFETwMlAp0aInMVnSEhoBonwP1ty/wPoQS9Ib00EwgkjZUgAMZ67J
 fkEaXPYgMJmeNgk8wAG3/1gVfwm2e0Bsca1Z59CbttJiQA8Gi8AjqjbJN
 glIGic1dsytdO/+5qAlgxgYFjZHWrBYssmiFhFRgLcgwnp6FPQhqYkOui w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357464185"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="357464185"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:50:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="737234424"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="737234424"
Received: from mpietras-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.43.172])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:50:07 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Aug 2023 12:49:52 +0300
Message-Id: <20230816094956.487498-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] DP split for DP-MST
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SDP split config for DP-MST

v2: Style changes and patch splits (Jani Nikula)

v3: More style changes and reorder patches (Jani Nikula)

Vinod Govindapillai (4):
  drm/i915/display: remove redundant parameter from sdp split update
  drm/i915/display: combine DP audio compute config steps
  drm/i915/display: update intel_dp_has_audio to support MST
  drm/i915/display: configure SDP split for DP-MST

 drivers/gpu/drm/i915/display/intel_audio.c  |  6 +++---
 drivers/gpu/drm/i915/display/intel_audio.h  |  3 +--
 drivers/gpu/drm/i915/display/intel_ddi.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c     | 23 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++---------------
 6 files changed, 22 insertions(+), 34 deletions(-)

-- 
2.34.1

