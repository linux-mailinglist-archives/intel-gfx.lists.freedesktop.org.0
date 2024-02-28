Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B022686A973
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 09:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71CE10E5AA;
	Wed, 28 Feb 2024 08:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KZGyYGKR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3699F10E5AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 08:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709107336; x=1740643336;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ifCloHFy0D6sE3vKqMxkvF/8LZCPSTlAvJtC2Pausbc=;
 b=KZGyYGKRduLTwpVoKV9rLbtjxYgkYyXmBuJireCWRMis/bi9qkFE0y4e
 4fmUhkCvcZUsusirugOlPnWzWpHEhfhAe050KN7OKKGgejXQTXjzt4Dvj
 /rixTvDzVVltEvP7MIiQeJ6/ejtFtXQ1h0YTwKe5doFuljsaI+DTYWHAl
 lvo2p3bIgPv6X2EC9a71e0ufDLFOG+nUqVMzs2pUIddVIh+flRg+68voz
 IY+2iQ09Gcv+Y7C5qlyhUY9smefEgFTynKkFYCxTvyVKDtKmOATtaNnVH
 ch910zweH1JHErHbjeNFAh1L+wGm5VPr3j398MRpHhNOd+c3PnJ+Z+Mzx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14205673"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="14205673"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:02:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7220628"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa007.fm.intel.com with ESMTP; 28 Feb 2024 00:02:14 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/2] Enable fastset for mbus_join state change
Date: Wed, 28 Feb 2024 10:02:11 +0200
Message-Id: <20240228080213.17441-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

Currently fastset is not supported, if mbus join state changes,
so whenever we have to switch mbus state, we have to force a full
modeset. This patch series makes fastset possible from MBUS state
point of view.

Stanislav Lisovskiy (2):
  drm/i915: Update mbus in intel_dbuf_mbus_update and do it properly
  drm/i915: Implement vblank synchronized MBUS join changes

 drivers/gpu/drm/i915/display/intel_display.c |  13 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c | 104 ++++++++++++++++---
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 3 files changed, 99 insertions(+), 19 deletions(-)

-- 
2.37.3

