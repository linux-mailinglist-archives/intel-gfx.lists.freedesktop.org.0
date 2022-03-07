Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E4B4D0C21
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 00:39:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7EB010E1BB;
	Mon,  7 Mar 2022 23:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D01810E1BB
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 23:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646696383; x=1678232383;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IABCT4NDzva5jPS81G9hGFeVVMYqD2JMcvTzPNlyQxQ=;
 b=GssoC+ELhrwP10ATzF1nf8QBYxregNgXOhfwAvpw8Z+6CtJweHAKT4/Z
 XaW4j1CwtbfGIasS5sd9b0C8qL6ahOtUF8OVRJ6mvBinWaz/R8X3cc4dy
 X70qFq7ePtNWReMj+OT6g6aQaWcsC4UzqEtqHxp2Xq1OYxNO4vTK/B1Qq
 VRGdG80ffr+mAF9AFeLVZWGVB3xEipjehsg5cfeXvD+Zzt8B/aWNFneim
 v8MVvnfMdEcAk4H8VlKROxx95f+Pya8z6y3HNdkE5gZDVuLmybA1Iu+ap
 T3tsKN5ogzIW3h8y5QeQt1NeRNeF6+sBHE1cFKwFbyyh+cgEWfOTD1yt0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="252109719"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="252109719"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 15:39:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="687720677"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 07 Mar 2022 15:39:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 01:39:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 01:39:32 +0200
Message-Id: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/8] drm/i915: Clean up some dpll stuff
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

Clean up a bunch of struct dpll usage, and a few other
random things around the same area.

v2: Clean up the BXT PLL registers and pimp a bunch of comments

Ville Syrjälä (8):
  drm/i915: Store the /5 target clock in struct dpll on vlv/chv
  drm/i915: Remove redundant/wrong comments
  drm/i915: Clean up bxt/glk PLL registers
  drm/i915: Store the m2 divider as a whole in bxt_clk_div
  drm/i915: Replace bxt_clk_div with struct dpll
  drm/i915: Replace hand rolled bxt vco calculation with
    chv_calc_dpll_params()
  drm/i915: Populate bxt/glk DPLL clock limits a bit more
  drm/i915: Remove struct dp_link_dpll

 drivers/gpu/drm/i915/display/g4x_dp.c         | 55 ++++-------
 drivers/gpu/drm/i915/display/intel_dpll.c     | 37 +++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 94 ++++++++-----------
 drivers/gpu/drm/i915/gvt/handlers.c           | 19 ++--
 drivers/gpu/drm/i915/i915_reg.h               | 61 ++++++------
 5 files changed, 113 insertions(+), 153 deletions(-)

-- 
2.34.1

