Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2D24C9188
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:31:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3127610E5C6;
	Tue,  1 Mar 2022 17:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56D5910E5C6
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155892; x=1677691892;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=czXK93t+6qggVXblO7p2ICQK1LgpImH2U/iqPSKoA9U=;
 b=aH03c/L22gURWjEqHW99kpVCpcO9NoJv0252SRcW7hy6AuEs9ewe4TYZ
 JGphxHB18smEZKel2P3adyoyWu8q/AdcZfd3R2g++xoOlhyL4Mghe8EPr
 vKgQT4i4HUkz8UqiOhDdUrsw4YmYBgFXW9n9TG77YiOFkQ+qMaMhXdZG4
 515E6GKxVOzaetXQDF+R2LZa3m91PblUB1/7l6p4Ezrqn0g9E0hfEHM7b
 THLca+6M6R5AC3geFyQ4seKOZGR06nWssgb23XcAZwcyB+3ZC6L+DT+Da
 LooMFDLRtKThJuR0geVbiYvx2FjIPr563MMpBk6cwYJPSfcOgUEzuKSEI A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="252925626"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="252925626"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:31:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="534988769"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 01 Mar 2022 09:31:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:17 +0200
Message-Id: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] drm/i915: Clean up some dpll stuff
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

Ville Syrjälä (11):
  drm/i915: Nuke skl_wrpll_context_init()
  drm/i915: Move a bunch of stuff into rodata from the stack
  drm/i915: Clean up some struct/array initializers
  drm/i915: Store the /5 target clock in sturct dpll on vlv/chv
  drm/i915: Remove bxt m2_frac_en
  drm/i915: Use designated initializers for bxt_dp_clk_val[]
  drm/i915: Store the m2 divider as a whole in bxt_clk_div
  drm/i915: Replace bxt_clk_div with struct dpll
  drm/i915: Replace hand rolled bxt vco calculation with
    chv_calc_dpll_params()
  drm/i915: Populate bxt/glk DPLL clock limits a bit more
  drm/i915: Remove struct dp_link_dpll

 drivers/gpu/drm/i915/display/g4x_dp.c         |  47 +++----
 drivers/gpu/drm/i915/display/intel_dpll.c     |  26 ++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 115 ++++++++----------
 3 files changed, 77 insertions(+), 111 deletions(-)

-- 
2.34.1

