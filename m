Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B88D97AAFC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 07:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5120010E40E;
	Tue, 17 Sep 2024 05:27:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+ZPirqZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 471BB10E1E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 05:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726550848; x=1758086848;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=exhRn04p5VSTW7GNl8yQljnhv4iKOym7tqK10l4QIpY=;
 b=C+ZPirqZGPZBQig8BbPz749AnfaMfg4RVpyHtqW23jhxvWm69aikAhzd
 2/1YHOnd4PsQg8FFlxDztN//dV4M6WK9twIYZsoyESCmZ73pQ+CG86oE+
 N35S0NvQfIfK3VfoUCHuhHR00t4KgPGmD0DYp334gknNaYmaZBD1eiqmz
 21IImvgaPaMV7iz5hZEPhFp6/6PJ3JSHkYeEasuBv27OL0s9/ItLaddHu
 t7HZyxZYRYlaZA4xKUZ6HnPV9XtxI1AxzVI3OXRdNDFl9pZJEf6DexUU7
 lAYztvViTJivrKFbWlQcC7Y4dpbyQXoEUbDr87eSEXyXDJTNVvEHZIMgv A==;
X-CSE-ConnectionGUID: XIOXIvlZSK+zs0W6dnkGtg==
X-CSE-MsgGUID: pmxUbiG2RSuiqC9YbgVhQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="36744726"
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="36744726"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 22:25:36 -0700
X-CSE-ConnectionGUID: f6UbJLveTTmNbhsmXkEfjg==
X-CSE-MsgGUID: d33Be7ZMRpKhEgfiPoWxQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="69038875"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 16 Sep 2024 22:25:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Reduce SHPD_FILTER_CNT value
Date: Tue, 17 Sep 2024 10:53:05 +0530
Message-ID: <20240917052307.760662-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

This patch series reduces the SHPD_FILTER_CNT value for DISPLAY12
to 250us to have the same effect as the solution provided in
Wa 14013120569.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hotplug: Reduce SHPD_FLITER_CNT for Display12
  drm/i915/hotplug: Add comment for DISPLAY13 SHPD_FILTER_CNT value

 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

-- 
2.43.2

