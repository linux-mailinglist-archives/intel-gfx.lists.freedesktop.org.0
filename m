Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0105C5F093E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 12:43:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BECCC10EC68;
	Fri, 30 Sep 2022 10:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB5010EC74
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 10:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664534586; x=1696070586;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DIhw8qbGJO/ph1zSvBoxqQmDmyAhf5uyaKuQ+TI/kkc=;
 b=HfJxvDp/HhheXnydFT2nn2+40jxF4KzYFthbK1eaAq+xAtgDxMpor7Wm
 p/FNVnvKMO/IjhoK6ZS21YI7IMK6MPcbDotg4boFz02+E/W/Jc2DDt7KD
 HS0Rz8QII7KtnBp4ydR1k7vsfMXxZcJUYV6CC05u0lUwoexAfphKfeuk+
 kdhM6eBHKv/XT/A8yZue1DCjovTi94CwmTc99CvXqMITiXdq5zghopn2H
 Nfuuf9uVjg0KSSN9WLb/W+3xvmwrcSeLybMrw85kppL1f48oZObA4GZwm
 RkaMXQjrf83dCLzVhFF2jlJMih2/NTM5J//17OzZttuVbTeWJUvXc767I w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="303073587"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="303073587"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 03:43:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="765092001"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="765092001"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 30 Sep 2022 03:43:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Sep 2022 13:43:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 13:42:57 +0300
Message-Id: <20220930104302.25836-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: Fix watermark calculations with
 various CCS modifiers
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

We are neglegting to consider all the new CCS modifiers as
Y-tiled in the watermark calculations. So we are incorrectrly
calculation the watermarks as if dealing with a linear surface.

Ville Syrjälä (5):
  drm/i915: Fix watermark calculations for gen12+ CCS modifiers
  drm/i915: Fix watermark calculations for gen12+ CCS+CC modifier
  drm/i915: Fix watermark calculations for DG2 CCS modifiers
  drm/i915: Fix watermark calculations for DG2 CCS+CC modifier
  drm/i915: Simplify modifier lookup in watermark code

 drivers/gpu/drm/i915/display/intel_fb.c      | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c | 10 +++-------
 3 files changed, 17 insertions(+), 7 deletions(-)

-- 
2.35.1

