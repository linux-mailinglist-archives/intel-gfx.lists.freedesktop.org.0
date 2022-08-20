Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5633159AA4E
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Aug 2022 02:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E675610E17D;
	Sat, 20 Aug 2022 00:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF5910E17D
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Aug 2022 00:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660957131; x=1692493131;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XZPxGPtBvg8Je1r0DoLPmN9E8epBX/nMTLpzLWMlvks=;
 b=FkQ1DF6H/q/I6Q173WyDD2VV9bPV2KxHjGI/mDnYVlFT5b3FnRnCSiHt
 pD0115JnuspA6uOLntX/DdByeWvg7Rup+QxauYJOLfRpFY/VmXqMJ5QLs
 J8+x0DvDlKG268N879+DoUq+8cXbhXFzFEeWfyCbu8k5L7YrMUVpYZCDz
 YhaTFZHSPvfb5jMHx38Z3LkkQwNdc4c3c+feVHEQsikVCBHjYa5SWCic6
 ChSB7/uDs6mGlno1D5APK0TlfI1PmaShq7turDwA2ptP6/9zdPazlr7br
 0C1gjIdQeJf4C3bMwC/VeU0TWJftLpqazDAO8zShOoqsDqeFCywkF5xWr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="294411873"
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="294411873"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="676626669"
Received: from cdhirema-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.188.51])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:49 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 17:58:18 -0700
Message-Id: <20220820005822.102716-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] CDCLK churn: move checks to atomic check
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

The intention is to check for squashing, crawling and modeset conditions
at atomic check phase and prepare for commit phase. This basically
means the in-flight cdclk state is available. intel_cdclk_can_squash(),
intel_cdclk_can_crawl() and intel_cdclk_needs_modeset() have changes
to accommodate this.

Anusha Srivatsa (4):
  drm/i915/display: Add CDCLK actions to intel_cdclk_state
  drm/i915/squash: s/intel_cdclk_can_squash/intel_cdclk_squash
  drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
  drm/i915/display: Add cdclk checks to atomic check

 drivers/gpu/drm/i915/display/intel_cdclk.c | 150 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_cdclk.h |  13 ++
 2 files changed, 108 insertions(+), 55 deletions(-)

-- 
2.25.1

