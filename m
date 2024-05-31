Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A26358D60D6
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 215FF10E3CF;
	Fri, 31 May 2024 11:41:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jt8laTBY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7C210E332
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717155664; x=1748691664;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vqno946DcGd8TWNJaK6GagTZ4hhUE6S52xWSAuHZjK8=;
 b=Jt8laTBYqDMLGflJHmPeM7COeXyvzfgp/nbftwD9okZADk/qhNlEBpDr
 az4jonhuytRt5AGO0QHFZP2xMTY6YticcqJH8gDxdesmh8slac/2arvVW
 UYTNLaPj0/vN7+UUqAeuoFVPXxC8u1mLq6Cw5YO2xHSR2e+7em2WGYAw/
 WdKuYNrREeM2tJvI/e1VgB25NkUqaqslXx5gfg+9KoPIQFq/HqHapZ0qe
 lWJbUyshgrBiNxWcCN8wLpsbZXAjj9L1BJfl2wHz9QiFPMTfUEyO/wtDS
 7aThdCjrvvDUSv8zaj3b2i4s/LfKvSFEndxS+h69JjtYYbq2BwV3Ebmp9 Q==;
X-CSE-ConnectionGUID: fWghLO8fSYa3lD4C9lQY2A==
X-CSE-MsgGUID: 7ISgEAtATBqJV3rhRH+4Lg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13863899"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13863899"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:41:04 -0700
X-CSE-ConnectionGUID: dl4WVahvTEKVWkQTuzuOPg==
X-CSE-MsgGUID: +DXQ+x2QTU63oU63YJwqTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36132721"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:41:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:41:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/dsb: A bit of polish
Date: Fri, 31 May 2024 14:40:57 +0300
Message-ID: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
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

Apply a bit of polish to the DSB interface.

Ville Syrjälä (4):
  drm/i915/dsb: Polish the DSB ID enum
  drm/i915/dsb: Move DSB ID definition to the header
  drm/i915/dsb: Pass DSB engine ID to intel_dsb_prepare()
  drm/i915/dsb: Use intel_color_uses_dsb()

 drivers/gpu/drm/i915/display/intel_color.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c    | 20 +++++++-------------
 drivers/gpu/drm/i915/display/intel_dsb.h    |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_vblank.c |  4 +++-
 4 files changed, 20 insertions(+), 15 deletions(-)

-- 
2.44.1

