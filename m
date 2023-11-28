Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4AB7FB9AD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A469910E4E4;
	Tue, 28 Nov 2023 11:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1B510E4E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701172301; x=1732708301;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BTaZhmtGOlTEo3ehiTw+8Bb4li+IyWCjEwQV/GYMkhY=;
 b=AVa66JZEeLgVVzChxU60RSySvyA/fXibG0i1eJJmqOSf6ULlIVWW4TEh
 JzxjtJ/jp229tp+SV7TTn6UaxdGQRWFZ0wXlUMtzxEEBNfpSGCuK93hrJ
 FzhqOX0Pll4MNeUVUTpSlCJ/fEHxCakMh03R5L8RBPxQBUq2u4ztDypN/
 h02w46xwdSvwhWMwLCxPMIawIG0OnARkfNMig0cvxY1Uj//uqvqfuDRKH
 BZspRJ61tJDA/6wwmEAyM6TGtqSKHy8SiFxOhgIbj3C9e7HOp4bhje4uu
 zaOxciqnxBYUuNPW9ZmSrulU9CCO/ZMqR4ytRktebcNzEZ/v3yftW7R3c Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459411578"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459411578"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:51:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761907406"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761907406"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 03:51:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 13:51:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 13:51:30 +0200
Message-ID: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: cdclk/voltage_level cleanups and
 fixes
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

A bit of refactoring around the cdclk/voltage_level stuff.

I also spotted that we were miscalculating the voltage level
on MTL in two different places, so included fixes (or rather
power optimizations) for those.

Ville Syrjälä (8):
  drm/i915/cdclk: s/-1/~0/ when dealing with unsigned values
  drm/i915/cdclk: Give the squash waveform length a name
  drm/i915/cdclk: Remove the assumption that cd2x div==2 when using
    squashing
  drm/i915/cdclk: Rewrite cdclk->voltage_level selection to use tables
  drm/i915/mtl: Fix voltage_level for cdclk==480MHz
  drm/i915: Split intel_ddi_compute_min_voltage_level() into platform
    variants
  drm/i915/mtl: Calculate the correct voltage level from port_clock
  drm/i915: Simplify intel_ddi_compute_min_voltage_level()

 drivers/gpu/drm/i915/display/intel_cdclk.c  | 101 ++++++++++++--------
 drivers/gpu/drm/i915/display/intel_ddi.c    |  50 +++++++---
 drivers/gpu/drm/i915/display/intel_ddi.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |   2 +-
 4 files changed, 102 insertions(+), 54 deletions(-)

-- 
2.41.0

