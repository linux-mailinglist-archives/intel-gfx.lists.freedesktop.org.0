Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DCC9C05B8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 13:27:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4F510E816;
	Thu,  7 Nov 2024 12:27:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G47Trp0L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B8A10E813
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 12:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730982422; x=1762518422;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lhv03atkcuLJr0bffQO5Y+rwZElBPhfm/IdWI6maLmE=;
 b=G47Trp0LB9hZZMzNHFNousKFugqK+owdgpMHOAeokNFg2YOv4+AIx60G
 P17L7XlmIeLLbGjFTw2qA7c80o6NxZWWCwUVNpuoateltmxprmzo0Ay8W
 PDuudKMAsv4vTGpGhW8HslxbvDrHHb0zCeADOG73MMuNrkbAeN2pqWeje
 pGRiarKmnpNzKvFDOsYjSzyR341SN7AuYoxN294d3VSHH7oGwoPV/IUKf
 RJK/KyVxS6T89g3nUGsnp5N2pc+s3CWmlozYkdI5NmlHsHk8p8ASIJHn3
 RU+6KkJzGzVaGQ9L8NDrnCR5VlZ+omjHPZzfRay0hHa/nJ3NUTj/hJSe5 w==;
X-CSE-ConnectionGUID: f9XUU2YwSveAKxbjaMLRbA==
X-CSE-MsgGUID: 2t6ANYpwTj+D1+YXRDsjqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34515988"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34515988"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 04:27:01 -0800
X-CSE-ConnectionGUID: dKNUJ68HRlWitL3K/drTGQ==
X-CSE-MsgGUID: i3R1rF/qS5S2EZZTj/g5TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,266,1728975600"; d="scan'208";a="85189292"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 04:26:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 14:26:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/8] drm/i915/scaler: Scaler code cleanups
Date: Thu,  7 Nov 2024 14:26:50 +0200
Message-ID: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

Bunch of cleanups/refactoring in the scaler code.

v2: same as v1, with one of the patches dropped

Ville Syrjälä (8):
  drm/i915/scaler: s/intel_crtc/crtc/ etc.
  drm/i915/scaler: Remove redudant junk from skl_scaler.h
  drm/i915/scaler: Pass the whole atomic state into
    intel_atomic_setup_scalers()
  drm/i915/scaler: Clean up intel_atomic_setup_scalers() a bit
  drm/i915/scaler: Convert the scaler code to intel_display
  drm/i915/scaler: Carve up intel_atomic_setup_scalers()
  drm/i915/scaler: Make scaler in_use a bool
  drm/i915/scaler: Extract intel_allocate_scaler()

 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     | 286 +++++++++---------
 drivers/gpu/drm/i915/display/skl_scaler.h     |  11 +-
 4 files changed, 151 insertions(+), 150 deletions(-)

-- 
2.45.2

