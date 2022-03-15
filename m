Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F4E4D95FE
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 09:16:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032F089CE1;
	Tue, 15 Mar 2022 08:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A5AF88503
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 08:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647332172; x=1678868172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TQYm+728ABaSTe5/U2nkyE41gpk/+zHDCZ9RKM5xb1g=;
 b=IQlFvABhm3r24lxIvswXE68glcVPPPgft1RRE9kW1eCzzBywIEHQs/RN
 Yh50XvW9YqaswbGsnAT+d7OEyQ7rUa+FHYvC4sKNiLtkjrP+Uybi/nzyU
 TnXIobtGiE7X7IMijgxVULLpoWcO/EHzGTrr+VBvNig+o6Eu8XpJ9azlR
 +vNpTFSctiT3EV5IDP6zl4mQwMcQ0WI0aWjspwtfHyek+eEN+50InqueE
 81N4Zd7jnp2jIkxtw4X0YCRVyy0NlZ0ym2CP7llGkK3+VEA+LdgewtUMk
 aor1G33YwXKvr0lhiqQ8CQhN3nFa6XdIXOPL6Xxb4j41MrvgU3YDtU2eK g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="243694604"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="243694604"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:15:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="714069163"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:15:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 13:32:45 +0530
Message-Id: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Remove check for ComboPHY I/O voltage
 for DP source rate
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

This patch series is continuation of the discussion in:
https://patchwork.freedesktop.org/patch/457398/?series=95444&rev=1

along with a patch to add debug print voltage configuration for
combo PHY ports.

Rev3: Added names for voltage levels (Imre)

Ankit Nautiyal (2):
  drm/i915/display: Remove check for low voltage sku for max dp source
    rate
  drm/i915/intel_combo_phy: Print procmon ref values

 .../gpu/drm/i915/display/intel_combo_phy.c    | 36 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.c       | 32 ++---------------
 2 files changed, 29 insertions(+), 39 deletions(-)

-- 
2.25.1

