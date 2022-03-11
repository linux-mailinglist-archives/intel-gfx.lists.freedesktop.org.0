Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F06C14D5C01
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 08:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEE3210E1A0;
	Fri, 11 Mar 2022 07:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFEDD10E17E
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 07:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646982442; x=1678518442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tzdBMn44hidBTUIPf/DOLgdHClKZFjsJxpoPQUogIqI=;
 b=ciWMu3Na+iDidHUrPw//dURwtUZecD/966Rh9a/M3lIfkbkBmVXJ3KkB
 hXknYoo0rdbuQfOyK8MUfcOS071woFB9q0ndoshb0k617T69K84mX43do
 HB3yRMsCH6SIv6B9r+qll9/U65oC5cbR6iSgZEUEIqOp8GBr7Nr4UdG1G
 NZzXWlp+68Hgb3q3reTfw05A3m6HR6f5qmGyDIjc0kArL8czSUiPbtxTC
 eTlfTUu1oeP9ZZ8hMpK5W4iKg4xsyltE6S9xhebOQLEOHr4dkU49EJ3xF
 TN1Odjk4qs/jv/l1ueBsWwkTLCMcVtQqY1Mh623grnj1NpLooz9ou8HxW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="341944523"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="341944523"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:07:22 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="555186334"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:07:22 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 23:04:25 -0800
Message-Id: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
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

v2: Introduce intel_cdclk_modeset() instead of cramming
all changes into intel_cdclk_needs_modeset().

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

