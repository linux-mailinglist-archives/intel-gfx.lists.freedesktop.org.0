Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 569AB77CE14
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 16:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D73A10E198;
	Tue, 15 Aug 2023 14:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3214B10E198
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 14:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692109776; x=1723645776;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X8w1FU7WRTR+BtkZuoqzSTc4yASD+YjG/ol6EuJvz5E=;
 b=LyskNAESnj6cp9Xqv7bBMxTU6qUXi9bvsVp7X7f3IK+zUIgYQEaVIYNm
 dwucq/fo0AaQUz8zAexmJCHRoA2JA95YBeF8BviB0sJtrSZFmZ6lQ7Gvb
 5uK2o9z7Tz+qQI6Ih+SZ90Jm7vaP1X5sJ9vVd3rUuaHA+6tYI6Ynrwkmi
 R7ZuqEQazl9s0wibeK5/0fra6MZ90Uo36n31CC8x+QtdK+ePUpAuV2D/T
 2CfTiBioL5XFYwWgme8xw7KnFBPf3uIat4MK0ZhK8X6RgNwl/ViHxON4R
 BAkghCLTYEUpdTBJg8k6d+UQO/eLPipOJVslmmV2RC8nimVtx1PAzk6z2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376021511"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="376021511"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799210047"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="799210047"
Received: from emurares-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.43.82])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:33 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 17:29:17 +0300
Message-Id: <20230815142921.404127-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] SDP split for DP-MST
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

Vinod Govindapillai (4):
  drm/i915/display: remove redundant parameter from sdp split update
  drm/i915/display: combine has_audio check for DP and DP-MST
  drm/i915/display: combine DP audio compute config steps
  drm/915/display: configure SDP split for DP-MST

 drivers/gpu/drm/i915/display/intel_audio.c  |  6 ++--
 drivers/gpu/drm/i915/display/intel_audio.h  |  3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c     | 31 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  7 +++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 20 ++-----------
 6 files changed, 31 insertions(+), 38 deletions(-)

-- 
2.34.1

