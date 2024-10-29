Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0C09B5278
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 20:11:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC1B10E6DE;
	Tue, 29 Oct 2024 19:11:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eNOEIQvk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1503910E6DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 19:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730229104; x=1761765104;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jiuF3TDOmIpUBIGdTAblOwGhScY/DAqUYOqircwYC/I=;
 b=eNOEIQvkd35sNn7blpL2HGJ+54h5sUN3q8OEZxsrACc8Ok2HrYVBnlu4
 pDdX/BXELsNzPMAjqpGv6dYN8t+m+GHfzORrJq+gMcDYNHy1tOLZ1Mm5m
 jxkq8TzSsyC8B4Esls0lE9kiT1pXSMbVOXbfEUer0b5H5O8J452/L8wHr
 55LgkZMgV0VrrH7dEr89WmJVsTjLmQdF9NysjC6YnVxbbP9LfN3dfJwo6
 0zv/HO0wC7u1MiR0Wig7aBmxfVeKcsUit8P/E0IM9ug9Rm+n4hHYh9AsP
 crkh7RSpvvmIrWN9QdPNeIz86AC6qFq4hp1OaMTsyJRZZhxQu571YOVBN Q==;
X-CSE-ConnectionGUID: kWbluzTjTUyoGRK92qobtw==
X-CSE-MsgGUID: YdeEuKBnRkWsWv4Suvaf7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29745589"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29745589"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:43 -0700
X-CSE-ConnectionGUID: QWT3dgpTS1aYa32lJR37mg==
X-CSE-MsgGUID: ulSt54sRQzGNHtuGDjFBgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86812686"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/dp_mst: Fix DDI function/DP2 config programming
Date: Tue, 29 Oct 2024 21:12:11 +0200
Message-ID: <20241029191215.3889861-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

Fix/align with the spec the DDI function and DP2 config programming
during enabling/disabling MST slave transcoders. On PTL the first patch
fixes a slave transcoder getting stuck issue. On PTL the DP2
configuration and on other ADLP+ platforms both the DDI function and the
DP2 configuration changes only align the code with the specification,
without actual problems reported that these woud fix.

Imre Deak (4):
  drm/i915/ptl/dp_mst: Fix slave transcoder enabling wrt. DDI function
  drm/i915/dp: Export intel_ddi_config_transcoder_dp2()
  drm/i915/ptl/dp_mst: Align slave transcoder sequences with spec wrt.
    DP2 config
  drm/i915/adlp+: Align slave transcoder sequences with spec wrt. DDI
    function/DP2 config

 drivers/gpu/drm/i915/display/intel_ddi.c    | 17 ++++++++++-------
 drivers/gpu/drm/i915/display/intel_ddi.h    |  5 +++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  8 ++++++++
 3 files changed, 23 insertions(+), 7 deletions(-)

-- 
2.44.2

