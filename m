Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CF7B1184C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 08:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAF610E425;
	Fri, 25 Jul 2025 06:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QwBk+hup";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74FCF10E078;
 Fri, 25 Jul 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753424153; x=1784960153;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jLQK/q6xijQuc7YWUlFr4u03OGlkEYg2qqyN7pP/ysQ=;
 b=QwBk+hupUOv65YCy8+HE6EL+TlF+CXSD4vo2eWvNUoFxQMd1jjBwbRkR
 xVY8pBA9ls0FI5bFJXWleiGd9q+6rS4PMcpWoW0TYNGINZvSOai+eerQR
 eIRLW1mOrVxUH+Qbp/nbQQAMxoDhjW1qOmpEyvaoWL/hhjqXfnBroRCYI
 5WTHeTQ1xX8uszthSP4qj1nfGDFddrwcckLQ7bDIjnA4hT7b+IHnBB4HQ
 uEGdXMnlAHS3gun0gsvQydx3tXU76Eqt9c3fr5O9xJjEdaNYCl6OJ/PWs
 ZF3zAj6Zv3ATj+MGnA52W0dXag7OpbEUwwkungkqS5u0BzbU3cCIhjzRm A==;
X-CSE-ConnectionGUID: 7Pxp6OeTRmeRx5c2tAE/vg==
X-CSE-MsgGUID: lXgkwaZiTyawMdF2kxYrXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55609336"
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="55609336"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 23:15:53 -0700
X-CSE-ConnectionGUID: bhmWTtrUSZS6H+mZqz0IAQ==
X-CSE-MsgGUID: w8LAWX90SK6lJ++WrStjzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,338,1744095600"; d="scan'208";a="164973704"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 24 Jul 2025 23:15:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/3] eDP Data Override
Date: Fri, 25 Jul 2025 11:45:45 +0530
Message-Id: <20250725061548.2704697-1-suraj.kandpal@intel.com>
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

Suraj Kandpal (3):
  drm/i915/vbt: Add eDP Data Overrride field in VBT
  drm/i915/bios: Add function to check if edp data override is needed
  drm/i915/edp: eDP Data Overrride

 drivers/gpu/drm/i915/display/intel_bios.c     | 62 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 19 ++++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 +++++
 4 files changed, 98 insertions(+), 1 deletion(-)

-- 
2.34.1

