Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A85535BB50B
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 02:44:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08FBE10E0A2;
	Sat, 17 Sep 2022 00:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 612AC10E028
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663375462; x=1694911462;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3+uj9OUKIxTDYKSp9+4hXKtWlBCWCHARJ33/wG7N1A0=;
 b=JkYh0HhewP9Quv8s1cuZmws6qbnq/xw8DXHXZuTLSeuiOSP4nmokFfHJ
 l0bEjGzyFyL5dlwRa6myK/wgAxCJ/Zzvj05/JQKjErMM3bIoUrXYVLSAR
 nAXs4xDxAX8/Ov8psjsoM6b8kgdm9jdyOJ/50hmlFfnNfVWHAytCgLkf9
 Wxfp21ECG5rnJyBYXNcUlblKiZDNEnsVtGfnI4fGBysca7Gc1MuEJjyEb
 86ggaxUYV1WhHZFnOkjZFN+OeGacjA2amRwcRytjV9VEuI3Vjo8xrgv2y
 sjCnkf7typdndVIGhcHYN0aadUKtkE1w3+yh3Yc2Qb6HS+HXvWIMCkhvN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278835731"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="278835731"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="743519249"
Received: from cgros-mobl.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.209.28.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:21 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 17:43:58 -0700
Message-Id: <20220917004404.414981-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] Introduce struct cdclk_step
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a prep series for the actual cdclk refactoring
that will be sent following this. Idea is to have a
struct - cdclk_step that holds the following:
- cdclk action (squash, crawl or modeset)
- cdclk frequency
which gets populated in atomic check. Driver
uses the populated values during atomic commit
to do the suitable sequence of actions like
programming squash ctl registers in case of squashing
or PLL sequence incase of modeset and so on.

This series just addresses the initial idea. The actual plumming
in the atomic commit phase will be sent shortly.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

Anusha Srivatsa (6):
  drm/i915/display Add dg2_prog_squash_ctl() helper
  drm/i915/display: add cdclk action struct to cdclk_config
  drm/i915/display: Embed the new struct steps for squashing
  drm/i915/display: Embed the new struct steps for crawling
  drm/i915/display: Embed the new struct steps for modeset
  drm/i915/display: Dump the new cdclk config values

 drivers/gpu/drm/i915/display/intel_cdclk.c | 77 +++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_cdclk.h | 16 ++++-
 2 files changed, 74 insertions(+), 19 deletions(-)

-- 
2.25.1

