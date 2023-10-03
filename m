Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A40F17B7249
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 22:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E55C10E314;
	Tue,  3 Oct 2023 20:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA0010E071
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 20:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696363583; x=1727899583;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Vkabjc2AnPGTQ6pj+/zMZyRdIPTafJoG+PsXUbPGVJM=;
 b=DJfrgLPa1/+/aAMw1wElswtIG6sKIMrQ2Vvfx8oZsKWySyPnJ1YCDu2n
 3Py5iMNxbA5X+BQuElHnVJwZR8x8lSVG1c+k3lFb/Ydk9EzteB8ZinxHB
 57kgHPae3KtFJ/NeVcCiPeUq5lDg8H/Tj5iUv7ArLQpUK+qVQ09KEASB9
 0xXVmvzbfeWqATMkNL+BtwB+eNy3xvnUC9bubduPBBPqxNOwpN76IYlI2
 xKEuK4LSphk2pECPXbahWtFf6LGYTctQ6k8Wdfm7JaDfEW6tjrhMRnfpY
 V3OEuaFdKo4/hY4Oa4QCrlUwGpSNojQf1C4CwqDRwX8VUxIlh63UuQDQm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380242810"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380242810"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 13:06:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="816829616"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="816829616"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 03 Oct 2023 13:06:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 23:06:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 23:06:16 +0300
Message-ID: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] drm/i915: Start cleaning up the DPLL ID
 mess
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

Start to clean up the mess around DPLL IDs a bit by removing
the nasty assumption that the index of the DPLL in the
arrays matches its ID. Fortunately we did have a WARN
i nthere to cathc mistakes, but better to not has such
silly assumptions i nthe first place.

There's still a lot of mess left since the DPLL IDs in
the hardware are a mess as well. Eg. the index of the
register instance often differs from the index used
to select the DPLL in clock routing thing. So we could
probably clean up more of that, perhaps by declaring
separate IDs for each PLL for each use case...

v2:
- the trivial patches were already merged
- introduce pll->index
- add another patch for for_each_shared_dpll()
- add another patch s/dev_priv/i915/

v3:
- deal with pll->index in debugfs code
- rebase due to other changes

Ville Syrjälä (4):
  drm/i915: Stop requiring PLL index == PLL ID
  drm/i915: Decouple I915_NUM_PLLS from PLL IDs
  drm/i915: Introduce for_each_shared_dpll()
  drm/i915: s/dev_priv/i915/ in the shared_dpll code

 .../drm/i915/display/intel_display_debugfs.c  |   9 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 965 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  26 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   7 +-
 4 files changed, 522 insertions(+), 485 deletions(-)

-- 
2.41.0

