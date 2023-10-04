Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1BF7B8448
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3143810E10B;
	Wed,  4 Oct 2023 15:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1482610E10B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434971; x=1727970971;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JPdm+Ik7jGrwL5N2ICcdzrvT6tc95OPrPtKosDFekqk=;
 b=HMcEc+m9rsPfPNomJO1lgTKGc+OxnwJLNKNJoQw5HSX1htcpNNbGn4Pt
 ElRSQR1P5RJrctE01Z562Zw7jYWJ0L0M7XNvjlEiA7HYETREmnK5CIBSJ
 DWd7DJgTzcopz0T4R7EbcL6eUhjObNqxeO5phxDGeIPK9pZbZ8QLTTlVt
 KQEMWG5cnrn4nNXS+oY/dOkYGMLDKqV2ShMtW3Bozo+B7XsqjEKifY6NL
 6iha0f1xtaMj9fCr00g3D5S94d7+Ob+J/TLfO68DnG9cAKOR5snp4kOGP
 HTtztLXud7WcvDl0LzVl2jYx1+oJoeQM5De2Wqh8qMmbZRcRW2pkWdbf+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483740"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483740"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867440758"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867440758"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:55:55 +0300
Message-ID: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: Display state checker cleanup
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The biggest thing here is changing the state checker to use
a dedicated crtc state (instead of clobbering the old state),
the rest is all polish.

Ville Syrjälä (12):
  drm/i915/psr: Unify PSR pre/post plane update hooks
  drm/i915: Stop clobbering old crtc state during state check
  drm/i915: Constify the crtc states in the DPLL checker
  drm/i915: Simplify DPLL state checker calling convention
  drm/i915: Constify watermark state checker
  drm/i915: Simplify watermark state checker calling convention
  drm/i915: Constify the snps/c10x PLL state checkers
  drm/i915: Simplify snps/c10x DPLL state checker calling convetion
  drm/i915: Constify remainder of the state checker
  drm/i915: Simplify the state checker calling convetions
  drm/i915: s/pipe_config/crtc_state/ in the state checker
  drm/i915: s/dev_priv/i915/ in the state checker

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   7 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   7 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  16 ++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   7 +-
 .../drm/i915/display/intel_modeset_verify.c   | 129 +++++++++---------
 .../drm/i915/display/intel_modeset_verify.h   |  11 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  20 +--
 drivers/gpu/drm/i915/display/intel_psr.h      |   3 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   7 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   3 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   4 +-
 drivers/gpu/drm/i915/display/skl_watermark.h  |   3 +-
 13 files changed, 106 insertions(+), 114 deletions(-)

-- 
2.41.0

