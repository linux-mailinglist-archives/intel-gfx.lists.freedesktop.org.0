Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6B9B14CDD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 13:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C40C10E613;
	Tue, 29 Jul 2025 11:17:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jd207dVo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E2210E611;
 Tue, 29 Jul 2025 11:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753787836; x=1785323836;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CvXySDcjF70Danwe6yImWJTF/wrOQuYYCk6zq8D31nA=;
 b=jd207dVo8zPbtnOPNmoCJacdeziljDqf8qr/+jbCqKhChx14uEUTAzCV
 5ahqhwpGDx6Cw7lTVYWmZifCE4JgJx/9kzNDeyiZCUa8vpFVNz7g8UiHB
 pIPTTmhhl3y3e28xoJY61d1qkozckwJDSDlQ2R6c8c4yVxxvEkHjNIr93
 +B91jATgnSa+38W0uer9HkZi+6hKK/y8um0Rr77zIIMrpnGKX7xSK+Nxs
 XJodW6JjF+9hdmwpSAvWiT2cUsWxOMr860DsibOLPbhHSNOb2+N9oS9Ly
 xtPr4tME1vesDhPNAaR2M+1zitGo6O2N6QO3ZI8tBY/niB1TwcDfKQvQI Q==;
X-CSE-ConnectionGUID: 2MsYqWa5S4aXL5gZuoaQMA==
X-CSE-MsgGUID: 6m5E2B1cSU+PWN6wctAM7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="66324323"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="66324323"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:17:16 -0700
X-CSE-ConnectionGUID: 5sXjgJ/UQd6XfIexaPgGUA==
X-CSE-MsgGUID: v6n030CSRiWLsYseSt3w0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="168082015"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:17:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/i915: dig port and connector cleanups
Date: Tue, 29 Jul 2025 14:17:07 +0300
Message-Id: <cover.1753787803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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


Jani Nikula (2):
  drm/i915/display: add intel_dig_port_alloc()
  drm/i915/connector: make intel_connector_init() static

 drivers/gpu/drm/i915/display/g4x_dp.c          |  7 +------
 drivers/gpu/drm/i915/display/g4x_hdmi.c        |  9 ++-------
 drivers/gpu/drm/i915/display/intel_connector.c |  2 +-
 drivers/gpu/drm/i915/display/intel_connector.h |  1 -
 drivers/gpu/drm/i915/display/intel_ddi.c       |  8 +-------
 drivers/gpu/drm/i915/display/intel_encoder.c   | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_encoder.h   |  3 +++
 7 files changed, 26 insertions(+), 22 deletions(-)

-- 
2.39.5

