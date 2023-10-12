Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E00857C6E2C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D3E110E03A;
	Thu, 12 Oct 2023 12:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7BFF10E03A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697114125; x=1728650125;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z2Ecz/YVMjwdhyyVZSsXRI9skmpp9UP7uKUV6GO2sP4=;
 b=JqAXnbwjkXbJcvVuH8uFo5FLYCcxG4D0VQROIMvPMrR5ZEZHrt7B65P/
 DcDafGOKcRnR72YnFDF7hlRRHsYTFq2cL+6HrevarU8OIcbFx5DwjCCd/
 D1Hj+mJlr0eXmnr15WqnWP9ztKsxofBeyyHYKtS2pGNeVqJYpf5hGuYmz
 vJCXjR+GDt/6P17TjpWYPRBvE9v1ab6d7dP2fnPueQ88fAq0v4Hje9+r0
 efL9eBDYVrusDLha+oBprCYKw/uq9NPwMN/QfnOFjCTXamYmzXrI4fIn9
 aaSmrwsPVB0ZSmmrapJXaeUauuiEw6PZennDfufHBMmgdYQAgro7w5POc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382142520"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382142520"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:35:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844982123"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844982123"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:35:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:35:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:35:18 +0300
Message-ID: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: DPLL code cleanups
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

A bit more cleanup/refactoring in the DPLL code.

Ville Syrjälä (4):
  drm/i915: Use named initializers for DPLL info
  drm/i915: Abstract the extra JSL/EHL DPLL4 power domain better
  drm/i915: Move the DPLL extra power domain handling up one level
  drm/i915: Extract _intel_{enable,disable}_shared_dpll()

 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 187 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   6 +
 2 files changed, 101 insertions(+), 92 deletions(-)

-- 
2.41.0

