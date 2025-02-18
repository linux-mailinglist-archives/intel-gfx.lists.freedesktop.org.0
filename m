Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D58A3AA31
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 21:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E89D10E010;
	Tue, 18 Feb 2025 20:58:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SezuHGAA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4FEF88A27;
 Tue, 18 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739912334; x=1771448334;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TShG1UOty1Cz6yMybqsiDW/s2I3SW9fW2IY/nVPQDdg=;
 b=SezuHGAAGh3cDmYWlji31vzaXYTVxAVJWoAxjcg1g14mVP1wNZG/ikc3
 98/UcwhcHCqdkeyzqV4yQsjodujLOVgufNqmXPylu+hAI8trDd7/61L/N
 WJn7O4y7Af7NsMto1KVfweLAOy2zzGROcgGohOy98Y6RAjrEKzaTQa9DZ
 QRWU1GV5zrCdDcbQtRJGJfaa1994x9LNcYKFcHhhtzDOkvW3pHXFbNcQC
 u4uvGeMvUhhQE2XkX30ttyV0FPOIdmUamRCXk5NW/5WpgwFGUChBGCnT8
 ajN+f1RiNmVtEqKOk/n5lw+hqsWggepXZnZDcxbZH5Bt3BTg6sXX8kXtJ Q==;
X-CSE-ConnectionGUID: zPW88+3NSvyYUAHTSjCNTg==
X-CSE-MsgGUID: rrsOEbwqR42WwbSpUUpInQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="28228329"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="28228329"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 12:58:53 -0800
X-CSE-ConnectionGUID: QYFDlboAQ8i7Yn6z+7TLOg==
X-CSE-MsgGUID: vGNUDus2QBmhbbGMS8YRdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114688966"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 12:58:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 22:58:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/dsb: Update plane scalers on DSB
Date: Tue, 18 Feb 2025 22:58:46 +0200
Message-ID: <20250218205850.1422-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

Update plane scalers via DSB based commits, and in general
allow DSB based commits while scalers are enabled.

Ville Syrjälä (4):
  drm/i915/dsb: Allow DSB based updates without planes
  drm/i915/dsb: Plumb dsb into plane scaler functions
  drm/i915/dsb: Allow DSB based commits when scalers are in use
  drm/i915: Do state check for color management changes

 drivers/gpu/drm/i915/display/intel_display.c  | 12 ++--
 .../drm/i915/display/intel_modeset_verify.c   |  2 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 60 +++++++++++--------
 drivers/gpu/drm/i915/display/skl_scaler.h     |  7 ++-
 .../drm/i915/display/skl_universal_plane.c    |  4 +-
 5 files changed, 49 insertions(+), 36 deletions(-)

-- 
2.45.3

