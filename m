Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EAE510735
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 20:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0665B10E1D2;
	Tue, 26 Apr 2022 18:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C27810E1D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 18:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650998240; x=1682534240;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xjSVOog5lNgMLZcnJshK/+iuCplpOKFj09JfpLFlReo=;
 b=UZ6Ox3MnA8lXHIvSoFcT2XJjF4CIq5xJf1s+LOidreHmFv5dGTnMF7xw
 qqwlNovvhhXjQ9gIc93Y42jFapE+gXl3MUABGcEzcLStxUpaGRHciANpP
 hr7kzL3+Bq5Oz8MdOpQYLsM0T3Iinsl6wtRHKja4mLghqCKkK9iDIPhfA
 +l7j1vBPCeyDiFXKfv5QtbXHqiHaoedowuAPMRKXa30CZE4dA/pwPYgm3
 vc6leP6TVws8o/D4h6t++Tg9keG+NK4A/1HGXQmyXfSJh+Twd8aAyZ5Um
 3D/pQ7CEtmpt/+WHzrpzVCtFNV6qu2Xc6wcJmQWNTogkZxPQUqKSbLRyA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265209599"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="265209599"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 11:37:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="538982033"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 26 Apr 2022 11:37:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 21:37:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 21:37:13 +0300
Message-Id: <20220426183717.27099-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915: Start reordering modeset clock
 calculations
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

Start reordering when we do the clock/dpll calculations
during the atomic check. The eventual goals are:
- back feed the actually calculated clock into the crtc state
  so that stuff that depends on it (eg. watermarks) will be
  calculated based on the actual hardware state we're going to use
  rather than the semi-fictional state we started with
- fix the fastset/fastboot stuff to actually require exact
  clock matches. Avoids the current mess where the user asks
  to slightly change the refresh rate (eg. to match video frame
  rate) but the kernel decides to ignore it and do a fastset instead.

v2: Repost of the remainder, earlier patches already merged

Ville Syrjälä (4):
  drm/i915: Split shared dpll .get_dplls() into compute and get phases
  drm/i915: Do .crtc_compute_clock() earlier
  drm/i915: Clean up DPLL related debugs
  drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()

 drivers/gpu/drm/i915/display/intel_display.c  |  26 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  98 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 333 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 +
 4 files changed, 275 insertions(+), 185 deletions(-)

-- 
2.35.1

