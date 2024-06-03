Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD278D8350
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B4410E3B4;
	Mon,  3 Jun 2024 13:02:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U6RzQhpq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA8C10E032
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419775; x=1748955775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W5fnLzfI3AymgvsL8Rq28LuUgjWRSutSEdwe1p+RP1I=;
 b=U6RzQhpqU2zWNbJox0Ld1q/Nq45J+RTQNqufh//G8NJfSSZwWdj44RDm
 n4Pbxm1iooZDy1HELmwd1lQbEliAc+jYtJZe1Tv92laCmX3Bf3TkCo+Rg
 k4TroeQI4jbZYlQHbXuVf3Ap2+vmQwr8eV5eFbx2eTq7neOgFjDabfes6
 Yf8wdTvNoro40EYIpehqEa0qfatYWzY/51l3IbBO8+Y4eVRRS83OzjKtG
 gT+mcEA6uE9iTafR/EHr6yYcStGzShtJ4wFh0V0BXMDMD5iNjdGiwDY3l
 +cnUUOrOKRp1rTgVFnUZN5h0ravarSYG+XCaHsCJWxxheogFpewozZpAs g==;
X-CSE-ConnectionGUID: P3qFDvwOQyeyX/EDLM5b0A==
X-CSE-MsgGUID: gMaOHUyoRt2dMZlxTrJQPA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="11873377"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="11873377"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:02:55 -0700
X-CSE-ConnectionGUID: vZZowNPmSOKr+fzw/N95EA==
X-CSE-MsgGUID: 9DkM52a/Sr+GcavCAm6wMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41959956"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:02:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 0/5] Use VRR timing generator for fixed refresh rate modes
Date: Mon,  3 Jun 2024 18:33:14 +0530
Message-Id: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
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

Even though the VRR timing generator (TG) is primarily used for
variable refresh rates, it can be used for fixed refresh rates as
well. For a fixed refresh rate the Flip Line and Vmax must be equal
(TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
dependencies between the VRR timings and the legacy timing generator
registgers.

This series is an attempt to use VRR TG for fixed refresh rate.
Currently the support to use VRR timing generator for fixed refresh
rate is added from LNL+ and only for panels that support VRR, however
this can be used for older platforms also and used with panels that do
not support VRR, which will be added subsequently.
There are still few cases that need plumbing like having PSR/PSR2 with
VRR timing generator and bigjoiner + VRR.

Ankit Nautiyal (5):
  drm/i915/dp: fix the Adaptive sync Operation mode for SDP
  drm/i915/display: Add member fixed_rr to denote Fixed refresh rate
    with VRRTG
  drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh rate
  drm/i915/vrr: Avoid sending PUSH when VRR TG is used with Fixed
    refresh rate
  drm/i915/vrr/xe2lpd: Use VRR timing generator whenever panel supports
    VRR

 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 59 ++++++++++++-------
 4 files changed, 46 insertions(+), 25 deletions(-)

-- 
2.40.1

