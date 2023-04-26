Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4A06EF5CD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1770E10E09A;
	Wed, 26 Apr 2023 13:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19FBF10E09A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682517022; x=1714053022;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gKA663ZtemOacTxR0Oz457QkCFiqa6tvriPQ2s20xQs=;
 b=h7P6ljw3zekv+7bFILs5Zyhw14vOMyexENdqzHSdhofVz3eRbLCSQJF4
 6jI5TyWNtQ/Uf0TdZrZnf0Hp7FTDx62gxPKqXSkUVMG09LW6XsXEopAgX
 z2/hBJaceHeKzBi0lWFV62Ka7l75LcPNLbZrQr5/UBs4Wk38DLD81OEAX
 AgQFDHaJ9fOyR8HFfsfN33qmY7CTk/6rqfjgn5JJdK2KlIo51zRr2prDL
 +qk37J4ovAdTM+Xa3CXsqBu0keUvftCnqmhPHeD6t28rEYc8zdO3wPtK+
 WKtzsKQzm24keS+2jodj/zNC4j0PhxNCQACyFrVJRv/n6PfBzU9N6O3xG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="327436743"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327436743"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:50:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805514233"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="805514233"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2023 06:50:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Apr 2023 16:50:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:50:12 +0300
Message-Id: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] drm/i915: Scaler/pfit stuff
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

Remainder of the scaler/pfit cleanups.

v2: Go back to using full 16 bit masks for pos/size

Ville Syrjälä (7):
  drm/i915: Define bitmasks for ilk pfit window pos/size
  drm/i915: Remove dead scaler register defines
  drm/i915: Rename skl+ scaler binding bits
  drm/i915: s/PS_COEE_INDEX_AUTO_INC/PS_COEF_INDEX_AUTO_INC/
  drm/i915: Define bitmasks for skl+ scaler window pos/size
  drm/i915: Use REG_BIT() & co. for pipe scaler registers
  drm/i915: Define more PS_CTRL bits

 drivers/gpu/drm/i915/display/intel_display.c |  12 +-
 drivers/gpu/drm/i915/display/skl_scaler.c    |  28 ++--
 drivers/gpu/drm/i915/gvt/handlers.c          |   2 +-
 drivers/gpu/drm/i915/i915_reg.h              | 136 +++++++++++--------
 4 files changed, 104 insertions(+), 74 deletions(-)

-- 
2.39.2

