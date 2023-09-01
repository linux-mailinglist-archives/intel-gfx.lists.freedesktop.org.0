Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A71BB78FDFB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AB5110E7C1;
	Fri,  1 Sep 2023 13:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1779C10E7C0;
 Fri,  1 Sep 2023 13:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573457; x=1725109457;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5Gw0JG4YPFiH6MD0xTmJjHqELE5jeUg9HR16WrQBNQk=;
 b=QhcNbXETOc55/joWZwteHbpJQuh8YIF/IQsu1Xu+zdPzYxXURceBw3sV
 orih9bWGboGvqHHw4VOiWSBGrZRX8VeFtCN346j/zYO6rr57gY5Es1HWp
 QadECf2Iw5YQMpnCI9IuVdIAI4y6IeNdBGHcjlqKbHOrEv0OPcgVVTRaG
 Tg/fF+/gKyH0KreSDDP3vHtJeffedeJHfrMRlfqlYSuhUAgKb7i25+vNp
 vsndAWSy+dSkcxq2vWzFAz5yArZbad9om1y1n7TpwJ7VBLlcOTXOq6W28
 L64jPoYjxaS25ePpV4iMuMZB2ApUoqst+ltrjXPAsVRsRq2iCOLhF6sdS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="380002799"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="380002799"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="986672297"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="986672297"
Received: from jeroenke-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.59.110])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:04:13 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:00 +0300
Message-Id: <20230901130401.76266-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] fbc on any plane
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FBC can be supported in first three planes in lnl

Matt pointed out that FBC + PSR2 combination require few more condition
checks and also a WA also need to be impleteds. So patch to enabled FBC
in case of PSR2 is removed from this version.  Also per pizel alpha
condition is removed for FBC in LNL.

Vinod Govindapillai (1):
  drm/i915/lnl: possibility to enable FBC on first three planes

 drivers/gpu/drm/i915/display/intel_fbc.c           | 7 ++++++-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 ++++-
 drivers/gpu/drm/i915/i915_reg.h                    | 1 +
 3 files changed, 11 insertions(+), 2 deletions(-)

-- 
2.34.1

