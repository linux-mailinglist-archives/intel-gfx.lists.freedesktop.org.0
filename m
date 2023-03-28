Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 033226CBABC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 11:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A57610E358;
	Tue, 28 Mar 2023 09:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F0E810E358
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 09:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679995846; x=1711531846;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ib6sYQpNvTb3h0gQZf87aFLNID1vxdKp5SFB1s6xCC4=;
 b=EpojWHQLPtFutuLmFQRUqhpd4CLNQICTCFo4ACVy8dyxzFaDQ4v1+UzL
 9Zybl8jDXPqOVsm8Ap09a1zyNDR4HJMcFzfpnXrx4ZJzNVhD9BRk331Fb
 /Dh9+7GtYBXdDJ4UmueqOdvs98W0oQ+jMOrTShIcPWdOU+pErQ3h/8Rki
 AeGylJjaNS7DU2XD3zpeAyp8CrNFbEyp9KFzGAPbx+1JmpxmoJd4qY9g1
 umvUS1E0UxNBJo5oZOYdRijZPL7QPuqdNrKF+qTNlMN64IxVuUV8midSY
 2AhYR+hvsUGp1wdprzVmdD12ATVv6qbxZJNvGoKHTbZMhWotxDaDxNGhj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="403129409"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403129409"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 02:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686343519"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686343519"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 02:30:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 12:30:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 12:30:34 +0300
Message-Id: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: (mostly) PSR related register
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

Ville Syrjälä (8):
  drm/i915: Fix up whitespace in some display chicken registers
  drm/i915: Clean up various display chicken registers
  drm/i915/psr: Clean up PSR register defininitions
  drm/i915/psr: Use intel_de_rmw()
  drm/i915/psr: Define more PSR mask bits
  drm/i915/psr: Add a FIXME for the PSR vs. AUX usage conflict
  drm/i915/psr: Include PSR_PERF_CNT in debugfs output on all platforms
  drm/i915/psr: Sprinkle cpu_transcoder variables around

 drivers/gpu/drm/i915/display/intel_dp_aux.c |   5 +
 drivers/gpu/drm/i915/display/intel_psr.c    | 258 ++++++++-----
 drivers/gpu/drm/i915/i915_reg.h             | 392 +++++++++++---------
 drivers/gpu/drm/i915/intel_pm.c             |   4 +-
 4 files changed, 385 insertions(+), 274 deletions(-)

-- 
2.39.2

