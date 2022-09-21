Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C841A5E5506
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 23:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5480F10E51F;
	Wed, 21 Sep 2022 21:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C8A10E51F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 21:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663794929; x=1695330929;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e7VuVlBfSyR1YDF2COda6l4Qd63wIpw3slMi6zoDxVM=;
 b=YBK8TwRTpZM9vcWu+zGbiUBw1c2DSnTvTF12eneiZNP925VFN2T3JILA
 WEVDYOoH5830Y+BCSygl1d0IxoiFmeAgmuWk9RAqZMHnkdqUllgEVPhdU
 cOlUeXZTIfqzcvU/HBCI3myd9Y1xmJAlz/Qpsa/jNFQihb1H6zrFZB8Gb
 db+JpD6M0NZOXZx96H7GCr6Z5PSBCspxslwwgiFVhZZ1H/O2SyWtRfL+o
 Tu7Voksqs5H08VV6uUGp4bXf6nVuDMM1UORbw1TtY2/o6KVgausfY9O0N
 wjIohfR61MEymc7jHW2UcntRkNFNvXGwxUnzBmtk2+SWqgzDPFF6cP49s A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="326442708"
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="326442708"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 14:15:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="614962430"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 21 Sep 2022 14:15:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 00:15:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 00:15:21 +0300
Message-Id: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Fix TC port PLLs after readout
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

I broke the dp-alt->tbt fallback for TC ports a bit. Try to fix it.
Also pimp the debugs around those parts a bit.

Ville Syrjälä (4):
  drm/i915: Force DPLL calculation for TC ports after readout
  drm/i915: Don't bail early from intel_dp_initial_fastset_check()
  drm/i915: Pimp DPLL ref/unref debugs
  drm/i915: WARN if PLL ref/unref got messed up

 drivers/gpu/drm/i915/display/intel_ddi.c      | 15 +++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.c       | 18 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 16 +++++++++++++---
 3 files changed, 37 insertions(+), 12 deletions(-)

-- 
2.35.1

