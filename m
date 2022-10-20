Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0BA605FB0
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 14:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E004810EBC1;
	Thu, 20 Oct 2022 12:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2052C10EC07
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 12:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666267501; x=1697803501;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rp53gye5eApOo1NqqCXDSdzREOAi3r2flNllLXlOErE=;
 b=XOkaHbWfLEqRse6Zz/46hJGAPAfMIYPzWZpxp8A6PsYtmVBxbgYFpoV1
 R1je51Asn8YEx4C0VW0Ey+YoOIacKFG9MhIjBAZhv/iaza58d8CkKVMgM
 UfcPEEisN3Qh42rXBAKHCS+21gdxnxEkLmZW6xZa3/mHmjUUtIxRX38TC
 CNITHAk+/ZT1yoDQ2gt6rYG4buXFer+HcJ0YhKALZZy+c8p7mClaASpkD
 EHstd9U5Gs5UsHUKTPexBLDZkEph8b/gDTTQgIIkRd59Jnt7579uLAekS
 I3IhN3okq/DDMBS1AU5tCNAdskuRnlOfe7IIl7Z0oj4zYZb+TqMsBGzw5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="370900724"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="370900724"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 05:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="663004671"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="663004671"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 20 Oct 2022 05:04:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 15:04:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 15:04:53 +0300
Message-Id: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Clean up crtc state flag checks
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

Some cleanups for checking whether the crtc was flagged for
modesets/fastsets/color update.

Ville Syrjälä (4):
  drm/i915: Introduce intel_crtc_needs_fastset()
  drm/i915: Remove some local 'mode_changed' bools
  drm/i915: Don't flag both full modeset and fastset at the same time
  drm/i915: Introduce intel_crtc_needs_color_update()

 drivers/gpu/drm/i915/display/hsw_ips.c        |  8 ++--
 drivers/gpu/drm/i915/display/intel_crtc.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  6 ++-
 drivers/gpu/drm/i915/display/intel_display.c  | 46 +++++++++----------
 .../drm/i915/display/intel_display_types.h    | 14 ++++++
 .../drm/i915/display/intel_modeset_verify.c   |  3 +-
 6 files changed, 46 insertions(+), 34 deletions(-)

-- 
2.35.1

