Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D965884C1E9
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 02:33:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76ACF113038;
	Wed,  7 Feb 2024 01:33:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NgPaL7vw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0022A113038
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 01:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707269621; x=1738805621;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aQ0ADIOn+uJHLD0m4Ev8pTcKFzR3LAVNUq/9nBLL2f8=;
 b=NgPaL7vwKW8Q+HCesvGl6BWnhV4e6jlkntRgsxv98Thuvu8RH6fg+CKT
 5JcjYpjpdLX4V3FBpdiB3w/lZ/VvByN2hlPYqx4B14XWbgn6ZYBCFvplx
 8ZL6bA9eREnShIYtgdhGgUKDGOo3NmW3c52etieYClxtv88UcB49U8EvH
 FPiRLV9XbWiLO0d5aft8ZTRhC0DsEPxNYp3T7EvCI20vlT/NDqEeuwxLF
 ByHdUx3EfMRONpXx8BhkP/nhaMp3x9eBF8P9EtErBtoaxAaea5T1Ts28Y
 4cyOEJkHstcjUvDAdPRbfz53mhZki7n/aTUc2XVYuVKgg81Pjyvq/NiOz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="18399556"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="18399556"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 17:33:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="824353979"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="824353979"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 06 Feb 2024 17:33:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Feb 2024 03:33:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/cdclk: More hardcoded cd2x divider nukage
Date: Wed,  7 Feb 2024 03:33:30 +0200
Message-ID: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

I missed a couple of spots when I was nuking the cd2x divider==1
assumptions from the squasher support. Remedy that.

And while I was in there I decided to pimp the docs to
describe the CDCLK update methods we support.

Ville Syrjälä (4):
  drm/i915/cdclk: Extract cdclk_divider()
  drm/i915/cdclk: Squash waveform is 16 bits
  drm/i915/cdclk: Remove the hardcoded divider from
    cdclk_compute_crawl_and_squash_midpoint()
  drm/i915/cdclk: Document CDCLK update methods

 drivers/gpu/drm/i915/display/intel_cdclk.c | 60 ++++++++++++++++------
 1 file changed, 43 insertions(+), 17 deletions(-)

-- 
2.43.0

