Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AE64CE08A
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Mar 2022 00:06:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABB3C10F30F;
	Fri,  4 Mar 2022 23:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09D710F30F
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 23:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646435215; x=1677971215;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HXBUPNY4v/YS/ZE7sVwiQnXVsCug7nMWRn5JGf95VN0=;
 b=Yn9p3NKSQFwlCNewO+nP310RlWrbf2thRP3mMPrGTiACiuldWXfTtvpr
 fhEm4i0hapj0cBUtcp6j0YwwKuZoiESPrcFzbXl60oK9VeP1ee7RshqOn
 wntwYV7rU6Bv9JgSQLxNe8jFq6AvMyTJxwSgq7+wveXIH2QUGCsMkdDWS
 +7hX0gTWaUAyyElleiIsSCtELHcfrxiEFc/nqzsLJSl17fGx+m/K8/dmy
 vwvrBk3Yw8jNXkaq/lV04W09uHtrNgPfMttJs6TVr6mHO0U1z+/VX5owt
 NvKnSAuVrPKILHpE5+MqzdeX7LFI02CWFFhYjEwSMOqpBKcNgX0Co/7Wx w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="234688961"
X-IronPort-AV: E=Sophos;i="5.90,156,1643702400"; d="scan'208";a="234688961"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 15:06:53 -0800
X-IronPort-AV: E=Sophos;i="5.90,156,1643702400"; d="scan'208";a="577022868"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 15:06:52 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Mar 2022 15:03:49 -0800
Message-Id: <20220304230354.1453629-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] Add CDCLK checks to atomic check phase
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

This version splits the original patch into simpler units.

The intention is to check for squashing, crawling conditions
at atomic check phase and prepare for commit phase. This basically
means the in-flight cdclk state is available. intel_cdclk_can_squash(),
intel_cdclk_can_crawl() and intel_cdclk_needs_modeset() have changes
to accommodate this.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Anusha Srivatsa (5):
  drm/i915/display: Add CDCLK actions to intel_cdclk_state
  drm/i915/display: s/intel_cdclk_can_squash/intel_cdclk_squash
  drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
  drm/i915/display: Add drm_i915_private to intel_cdclk_needs_modeset()
  drm/i915/display: Add cdclk checks to atomic check

 drivers/gpu/drm/i915/display/intel_cdclk.c    | 172 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  16 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 3 files changed, 125 insertions(+), 65 deletions(-)

-- 
2.25.1

