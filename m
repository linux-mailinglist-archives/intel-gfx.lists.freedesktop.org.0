Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFAB4D06C6
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 19:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23BF10E121;
	Mon,  7 Mar 2022 18:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1513B10E114
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 18:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646678781; x=1678214781;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HXBUPNY4v/YS/ZE7sVwiQnXVsCug7nMWRn5JGf95VN0=;
 b=EGJ7GmS/kN2cmzC1wgKRk/aZF5MZ8lZBgaeAXcYW5gJTA2nlUwdrCNXp
 TnoKXDEq5BaDFf+nVdTX5fKoR/jiD49VuXzkc3/EWXa9LBpNFZmAojFJp
 41HNDmMOvSKuWty9N6cgI5cD36YbWQVAUA/5CZ7eGr4E2bPqhVzvEofpp
 8LVAAGNjBRBV7HH0/A6e3mNpHJUK5Zn9Pw6nED5YRz+2cw9cRdm1opHw1
 PNFIRN3JUuGenr6KaMyM6CL/qKRib9d0PbHdFs6nnX0dhE3TgZZoq2qLp
 7wUnVq10fwiiytVLNu9wy4lHNRQpb7UbcxxAW725V88Ln6yW0skrloZrS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="254662260"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="254662260"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 10:46:20 -0800
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="537228277"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 10:46:20 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Mar 2022 10:43:25 -0800
Message-Id: <20220307184330.1635013-1-anusha.srivatsa@intel.com>
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

