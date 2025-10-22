Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9F0BFCE98
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:36:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43DF710E167;
	Wed, 22 Oct 2025 15:36:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mndgS/W/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0405810E15C;
 Wed, 22 Oct 2025 15:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761147404; x=1792683404;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UEhhoF57DnjbjWgc0s2JKIeC1ivUG0DE6XyhwbC8HNs=;
 b=mndgS/W/F3aevEBFyh9ZPSc0khoLkKq5zqSyYoZJGcXd2DYNuePAl+Ji
 aikXo9Tjk6ySURR0N4CHAT6ZHRT8TZew4m60Q1iq1x5z8TUAqxcMkeKZZ
 2hqSbFaMXeKWgq+xlGO1lu2L5/0TjXCowLX4N14wPHWrz1HaWrdk/LwK9
 iM+1KuCn8DPVzg/+8ToWTcK1uUMuCJinKyfd2JHqhummrXiAEyd50KAj0
 cw+VOsr3cHifxq1AS7ifEe0a2VxXQ0aA4/QjsQtYA3hxGqkCpEKeTVRmV
 21fQ5UIT7HvLfvyt7L0AIh8xErFCG3b5forVziCpkmxMIIUGCKk7FKuLW w==;
X-CSE-ConnectionGUID: 4nZgETHmTKWi87bQWIAPvQ==
X-CSE-MsgGUID: EfGU2TAkQOy9QJB49AoROA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74646876"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="74646876"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:36:44 -0700
X-CSE-ConnectionGUID: ziYngxW6Ro6SRjVW2vYtzg==
X-CSE-MsgGUID: DRHZPnyzTqO1K9DS+/AM3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183951649"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:36:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 0/4] drm/{i915,xe}/dsb: refactor DSB buffer allocation
Date: Wed, 22 Oct 2025 18:36:34 +0300
Message-ID: <cover.1761147363.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Resend of [1].

[1] https://lore.kernel.org/r/cover.1758021803.git.jani.nikula@intel.com

Jani Nikula (4):
  drm/{i915,xe}/dsb: make {intel,xe}_dsb_buffer.c independent of display
  drm/{i915,xe}/dsb: allocate struct intel_dsb_buffer dynamically
  drm/{i915,xe}/dsb: make struct intel_dsb_buffer opaque
  drm/xe/dsb: drop the unnecessary struct i915_vma

 drivers/gpu/drm/i915/display/intel_dsb.c      | 42 +++++++++-------
 .../gpu/drm/i915/display/intel_dsb_buffer.c   | 43 ++++++++++++----
 .../gpu/drm/i915/display/intel_dsb_buffer.h   | 13 ++---
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c    | 49 +++++++++++--------
 4 files changed, 88 insertions(+), 59 deletions(-)

-- 
2.47.3

