Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3854DA377
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 20:50:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25C710E214;
	Tue, 15 Mar 2022 19:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70D08954A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 19:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647373810; x=1678909810;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tzdBMn44hidBTUIPf/DOLgdHClKZFjsJxpoPQUogIqI=;
 b=QbW5bKRQNkuqF8/Z1MPO9YpWn8iOuKYoHSxIlP2ODjr6QoKP1R0M74lg
 0aBY90plZYAoYcpF0N5Jtn0GOfB6AKMSpdYBPmmUFVIFcsf7PFsCwlipE
 yRq5lC+9AdG7BhYGaQxzl4tAsPEIJ9RoM6PPVl026oZPcqcRYdlqpJbsq
 bl4IgP1qrPrVxTGBAjZ7FFZHxD1Q5SlfPFEHapmFUL0VAV8zBUS+TUOce
 5v01r5Jv3CfqjqCTVLlHPQ+udAgrfrUjx9+QkCyxDspoM4Wri83md637q
 wqv6KE1aEycxJIxJxArW7wWBFh8LxJO6rfdTJ5TiIB6dyKqC5KWOYzWlz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="319629249"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="319629249"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 12:50:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="714312380"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 12:50:10 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 12:47:08 -0700
Message-Id: <20220315194712.2113450-1-anusha.srivatsa@intel.com>
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

