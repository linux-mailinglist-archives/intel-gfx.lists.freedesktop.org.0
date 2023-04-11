Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7BA6DE485
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6B610E617;
	Tue, 11 Apr 2023 19:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD7CF10E614
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681240477; x=1712776477;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9D1Ea/6wfAO9zW3Gad+kgCleGYh+0VGQ/fDs47sPu8A=;
 b=fRCp8EUD32iUq5aeuVdzGhN04idvKA65hseD4HUwZEmcHniIdkxFMz/v
 hmd41WO5VYHyF2IyzMVl1lHTd4D+RhxWx/6Ro1BYTweRbuSspSn10hI/I
 gBrIQphIzmD28MN0+Q0zQ4pSWFgzNk2UNfZK4Syx2AoQ6PT0FCB8fFDSU
 cgquWJrXo+KvCYjGOBV0iy52IeR7584L431IOGuvcJBJbRDtFUKfs64i2
 IjDDrzH4RITs6yMDQ/nPkNVPSovGRddj16XCpU3mLSBIF8vjpHX7LNZYo
 OLoE9qHvV0E4MZa9FDOhDQ93yJxeAyXAyy4rZvociBjxNAsUVTJbqPivM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="341201987"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="341201987"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 12:14:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="832446448"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="832446448"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 11 Apr 2023 12:14:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 22:14:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 22:14:21 +0300
Message-Id: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/8] drm/i915: (mostly) PSR related register
 cleanups
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

Some cleanups around mostly PSR/related registers.

v2: Improve the mask bit docs and rebase due to
    intel_psr_regs.h

Ville Syrjälä (8):
  drm/i915: Fix up whitespace in some display chicken registers
  drm/i915: Clean up various display chicken registers
  drm/i915/psr: Clean up PSR register defininitions
  drm/i915/psr: Use intel_de_rmw()
  drm/i915/psr: Define more PSR mask bits
  drm/i915/psr: Add a FIXME for the PSR vs. AUX usage conflict
  drm/i915/psr: Include PSR_PERF_CNT in debugfs output on all platforms
  drm/i915/psr: Sprinkle cpu_transcoder variables around

 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   5 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 258 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 207 +++++++-------
 drivers/gpu/drm/i915/i915_reg.h               | 193 +++++++------
 drivers/gpu/drm/i915/intel_clock_gating.c     |   4 +-
 5 files changed, 389 insertions(+), 278 deletions(-)

-- 
2.39.2

