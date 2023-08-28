Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C4578A54C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 07:41:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B0410E046;
	Mon, 28 Aug 2023 05:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE0BA10E044
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 05:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693201311; x=1724737311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/anDLg1NKOACppdHymQcAJkuTIP71pyoGiPfwpd0Lm0=;
 b=BlTLfnJcG6LP2N1nkGbgzuutSuKSb8QNb83VC8Qv6b4TkVxX4o3C1X2h
 wlbVaD+sGVVmyoZCO6zoKE7vkqY02cUrGyvGiLzHBZfdwoUhTVC/JGIzv
 L7uBhR2O9SKVQevA+HaHvResETdmzJ3IDbaid6ST/L7FZjKhSELNorqTf
 5l2aAAXd/XZDYuv5SiRenF+DLkM25agj0Hzo+/7uuId4MjEH+2+rc97pp
 Iq105twqO4u+jMdljiV9SyfzYWrljN5cv8VCzHye8u03I55zMOMt3hlOG
 5K7j/G9EF4oMPrSkcOnbfo9vR1tv2hefE/G/BKtA+BKNcN5MFJJ7aovt4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="372420484"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="372420484"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 22:41:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="852707929"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="852707929"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 27 Aug 2023 22:41:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Aug 2023 08:41:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 08:41:34 +0300
Message-ID: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: VRR and M/N stuff
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

Some prep work towards reconciling VRR and M/N. I think after these
we coukd try VRR fastsets that alter the state of the VRR registers,
assuming we toggle VRR off and on around the update.

Cc: Manasi Navare <navaremanasi@chromium.org>

Ville Syrjälä (6):
  drm/i915: Move psr unlock out from the pipe update critical section
  drm/i915: Change intel_pipe_update_{start,end}() calling convention
  drm/i915: Extract intel_crtc_vblank_evade_scanlines()
  drm/i915: Enable VRR later during fastsets
  drm/i915: Adjust seamless_m_n flag behaviour
  drm/i915: Optimize out redundant M/N updates

 drivers/gpu/drm/i915/display/intel_atomic.c   |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     | 105 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_crtc.h     |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  45 +++++---
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 6 files changed, 101 insertions(+), 60 deletions(-)

-- 
2.41.0

