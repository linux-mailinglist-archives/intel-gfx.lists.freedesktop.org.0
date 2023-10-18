Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 281057CEB36
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 00:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B73610E45B;
	Wed, 18 Oct 2023 22:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61F4110E45B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 22:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697668086; x=1729204086;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RwcVk5yXYOfzq495qmR24wI2DzBefjsvvx6RBKbHJLA=;
 b=T+xS7+pAJ910n2VeRQO8lkFkbc7UQu22pdHpsHaixIj8UiVRd3zy6jvq
 7c29BJn4NBZ9Qg1oiLtdBT4o+8y9mDvOA+mlbEtwBxS+ewORwK9VomUxV
 hj5HkRNXQP0qBO4/UYUBGOMVlHlEMVcwY7CHMB9epRrEKCs5aYhnEZxaf
 3q09cXE1nnqL6s825Pdy+QnAyZSsGO3picFe0fhdAiiJDsPMyUnS/qzD9
 HJLubQ34sjUbrkradVJH2pPF8H1QzAEmWMV/ppoUmNNYDvLJ7ecMrJVNl
 Wy+nqYB9NtgPVWKY6ugAMiPT8mr1qrLkHgDRi3Ga+xBdwpyhoWFGAskQS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="450348296"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="450348296"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:28:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="822605185"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="822605185"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:28:05 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 15:28:29 -0700
Message-Id: <20231018222831.4132968-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Cleanup a few functions in C10/C20 handling
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I started a cleanup on the c10/c20 while adding LNL, but had to stop due
to other priorities, so this is not a complete cleanup.  More details
and ask for feedback at https://patchwork.freedesktop.org/series/125322/

Maybe it's worth getting these in regardless.

Lucas De Marchi (2):
  drm/i915/display: Abstract C10/C20 pll hw readout
  drm/i915/display: Abstract C10/C20 pll calculation

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 40 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h | 14 +++----
 drivers/gpu/drm/i915/display/intel_ddi.c     |  9 +----
 drivers/gpu/drm/i915/display/intel_dpll.c    |  7 +---
 4 files changed, 42 insertions(+), 28 deletions(-)

-- 
2.40.1

