Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C25B84D9CD7
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 15:02:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34A110E43C;
	Tue, 15 Mar 2022 14:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D263E10E43C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 14:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647352924; x=1678888924;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jy7C2EAAb4X/L9nTDNru0ft8IqSFdGobsfz2npZyeUY=;
 b=lYvRFPxfjBuKgHu+F6Ntp+1QzYjf4nFAjmwIBuZsw+cwj9CyXN5kFHtQ
 Qr5mI+oX3Bg1Rx94aD1pF7svu/qwtwPVA5LgWUldzVgHrWryule+Igpcf
 xPtThXa88vmIP2zQlur6RhTiK+3AkIsXSTPIkw0aLhvP5jRBq2n0TZjVN
 yLvkrs6i4kU2usgAymBXrBMcojXHz9pMDdKGDRRuSwzFPupyjoHGf6mgK
 FoGI8QTMLFUVo8JZISUDqoW9EOMvCQPGMb1ZxDmYFMiIu67YVdHg/WdnC
 i9zu0masGh07fnaPyMZw/NBSAct6F7avcq8UC9VWY6Ej2GIOUNfZiqozN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="319528486"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="319528486"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:00:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="598317810"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 15 Mar 2022 07:00:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 16:00:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:59:54 +0200
Message-Id: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/fbc: FBC frontbuffer stuff
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

Avoid all the FBC frontbuffer vs. atomic commit raciness
by not doing any FBC nukes while a flip is pending. Allows
us to remove the last locks from the i9xx plane code.

I also want to explore the idea of always generating DSB
batches for pipe commits and just excuting them on the
CPU if no DSB hardware is available. Locked register writes
(and any register reads, of which there are still a few)
prevent me from doing that.

Ville Syrjälä (7):
  drm/i915/fbc: Eliminate possible_framebuffer_bits
  drm/i915/fbc: Streamline frontbuffer busy bits handling
  drm/i915/fbc: Skip nuke when flip is pending
  drm/i915: Remove remaining locks from i9xx plane udpates
  drm/i915/fbc: Remove intel_fbc_global_disable()
  drm/i915/fbc: Introduce intel_fbc_sanitize()
  drm/i915/fbc: Call intel_fbc_activate() directly from frontbuffer
    flush

 drivers/gpu/drm/i915/display/i9xx_plane.c    | 12 ---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +-
 drivers/gpu/drm/i915/display/intel_fbc.c     | 88 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_fbc.h     |  2 +-
 drivers/gpu/drm/i915/i915_suspend.c          |  4 -
 5 files changed, 44 insertions(+), 66 deletions(-)

-- 
2.34.1

