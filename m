Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0524CB0D186
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 07:56:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9802F10E5EB;
	Tue, 22 Jul 2025 05:56:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n3PhZWIE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E21010E5EB;
 Tue, 22 Jul 2025 05:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753163791; x=1784699791;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pqyDxCGS//ZgtL4ejvejJbyf+37RdC65YpUS82/QHag=;
 b=n3PhZWIE9aB7zXqZGEZqa0qDiauyV6ZNyF+zDcsffFbIhp3vWsJSv7IR
 vSS6EbAICh7M6f5JDwEqUc0KrU1SSTDPJvqNgZZQKg0eGWt6W8hAiU2eF
 uifKT7pfISnz2Yk52tapBzQh5iYLC5EUm6fNupXo4KHIMs2N7M/OgHCzJ
 LHCu2dfevdKwITWuI3LxQOkf1r01uHepCT8w7JmnrHrPDRtQxr3ZUStA8
 4g9zRe/TbfZCGe0RpHJDHi06O3omqy5lR7K2SYF1QNeXa+4LyeIS0SDUd
 lwXRk3oXQge2dDvEUyKwTqFysk50srpWsBQk00ny1p1t+IEQyE9is9AE1 g==;
X-CSE-ConnectionGUID: qaohJm4lQvCKolwZ3DAKJw==
X-CSE-MsgGUID: XutdT73mRvm7u/IFA8+DOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="66468568"
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="66468568"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 22:56:31 -0700
X-CSE-ConnectionGUID: V5WrCpWIT9SR55GtMcCSXQ==
X-CSE-MsgGUID: LolnXpIpS9Oy+Xxabo1/UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="196116074"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 21 Jul 2025 22:56:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] eDP Data Override
Date: Tue, 22 Jul 2025 11:26:22 +0530
Message-Id: <20250722055624.2251656-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

When using link rates 2.43 and 6.75 causes a strong noise for WIFI
bands. Its recommended we use 2.7 and 8.1 Gbps instead.
The solution proposed was a static vbt field that provides us with a
mask of rates which need to be skipped in favor of the next higher link
rate.

HSD:14022096069
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/vbt: Add eDP Data Overrride field in VBT
  drm/i915/edp: eDP Data Overrride

 drivers/gpu/drm/i915/display/intel_bios.c     | 60 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 11 +++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 +++++
 4 files changed, 85 insertions(+), 4 deletions(-)

-- 
2.34.1

