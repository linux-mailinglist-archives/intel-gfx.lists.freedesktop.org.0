Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181245EB101
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 21:13:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3FA410E471;
	Mon, 26 Sep 2022 19:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDF3D10E471
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 19:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664219624; x=1695755624;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8miH4FnVZW2MYlWaQaD7maNRloypSAo6VnRowk9YQJw=;
 b=FCx40ElPu476c0KyJYyZRM8REkbozftJ+jAJQ8kIk+ZkhzAFY0O+RerI
 6rOvkWTfz8EG2FJOY/5xqBiW4Id+R2OCl7XOZNozHIzb1fBH3s9i30o6G
 OXjV4IhNYPffkKAkYAWB1osCq0C37kWRjkj5eKsViQ5U0/ZSof28CwwVj
 a3o9JfN9q6zNvRc91sxhg3E+8pq0FWXncCPGlQyLBUCH81zpzrMlWYGCS
 etB6Jzy2YMq0Tk/ieUm0R3VQ1soGP0fjlDS5ov3J+lh3l1xDboOCPoo2z
 aW1fQg3+ph9kYWE6gTCBZzqfuA30dnY+bVHu/ZtzqypwBEye45cbEmwkB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="280841897"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="280841897"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 12:13:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="616525349"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="616525349"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 26 Sep 2022 12:13:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Sep 2022 22:13:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 22:13:37 +0300
Message-Id: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915: Start cleaning up the DPLL ID
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

Ville Syrjälä (4):
  drm/i915: Stop requiring PLL index == PLL ID
  drm/i915: Decouple I915_NUM_PLLS from PLL IDs
  drm/i915: Introduce for_each_shared_dpll()
  drm/i915: s/dev_priv/i915/ in the shared_dpll code

 .../drm/i915/display/intel_display_debugfs.c  |    5 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1011 +++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   26 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |    7 +-
 4 files changed, 543 insertions(+), 506 deletions(-)

-- 
2.35.1

