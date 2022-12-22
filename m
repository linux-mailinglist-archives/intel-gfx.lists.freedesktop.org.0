Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C38B9654091
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 13:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E8C10E04C;
	Thu, 22 Dec 2022 12:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17C7510E04C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 12:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671710452; x=1703246452;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+wgB9E5Nh5/Uzlh5x5PMxvGr3+d5l+K3XpXRZCJFOag=;
 b=HAq3rRbcoKAZyxszqhgRMh/HqSid9xzb0KFoH5SXlGLvDjlwAMVOIGgg
 qg33HW4vsfdhcz4LG3IBwDQ0blZO8SlzCoaDiPPh2/Mxh4QRzGwVulL4y
 aKRCF/Fv6vfivcPw/VVhSCbDbA+e1WeHJSr1C7x9rO4iu3s1IzUxxUkvJ
 LHmr4PU3PFj1Bd99FioOo/IlJ4yjqIGpRUUThc7hV18JpdAsfYE3mL+8a
 3nFpXmT5zOuTaG77rk1q/ngO9jUJtffKXET47bHaB0G/S+yuA8owNd8On
 lOCMqhZOwZsvpJkZt0JQfgXjeHNcJmhr80AaHlcj7ZLv4Mh4Xx56NGVwp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="303541447"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="303541447"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 04:00:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="794079143"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="794079143"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 22 Dec 2022 04:00:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Dec 2022 14:00:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 14:00:43 +0200
Message-Id: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: vblank stuff
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

A bunch of stuff related to vblank length/start.

Ville Syrjälä (5):
  drm/i915/vrr: Fix "window2" handling
  drm/i915/psr: Fix the delayed vblank w/a
  drm/i915/psr: Add the latency reporting chicken bit for pipe D
  drm/i915: Extract skl_wm_latency()
  drm/i915: Reject wm levels that exceed vblank time

 drivers/gpu/drm/i915/display/intel_psr.c     |  11 +-
 drivers/gpu/drm/i915/display/intel_vrr.c     |  10 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 136 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h              |   1 +
 4 files changed, 128 insertions(+), 30 deletions(-)

-- 
2.38.2

