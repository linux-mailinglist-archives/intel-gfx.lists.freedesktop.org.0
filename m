Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 342DAA628D3
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Mar 2025 09:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08FD810E158;
	Sat, 15 Mar 2025 08:16:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XG8QVZZp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C36310E158;
 Sat, 15 Mar 2025 08:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742026607; x=1773562607;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jtd43/56vznuxDKuJ11i0rio4kCn/I5Qfunau2Mg8Fc=;
 b=XG8QVZZpEVTaqh9jgro3tf9Zz5YuzJRhqcSrg6q14Grq2imyl7MbeqdH
 Zet+rrk8NBXzntYhiaZ0K54TDJu5rA6vNilvsAWbseAvk5ur3Aqz2wSV7
 vOzQ6+wx1SwxV+5n7wxSCOP6DAk2crjLoL1a/DatmyMWc+rNj0Yx1jVAn
 raEsnKFj2QPZ8Wzjm91yZLbxXosHQWOsKTPNbBn9anF3doWN1uop/u6If
 LyATuJR18/k5W1Mem1pzzF4kFweYrjrbJUlgiUJkTHcT1omzIuguJCPJL
 gn8CmdULTJGCl4HfxLVOMGD/YIqqntstroVlO4YcF3mGC0oamsZ6mMQ5L A==;
X-CSE-ConnectionGUID: RyJK32QBR0+hxElSgkBUcw==
X-CSE-MsgGUID: Lgu61NXWQ1eNM7VzWOJ9vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60725877"
X-IronPort-AV: E=Sophos;i="6.14,249,1736841600"; d="scan'208";a="60725877"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2025 01:16:44 -0700
X-CSE-ConnectionGUID: fzfa5r13RPyJaG5qtwQsHA==
X-CSE-MsgGUID: +pmWtdXQS9ab5EQ/Bo8aUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,249,1736841600"; d="scan'208";a="121692423"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2025 01:16:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/2] Fix vrr.enable handling and add logging for fixed_rr
Date: Sat, 15 Mar 2025 13:34:47 +0530
Message-ID: <20250315080449.2325563-1-ankit.k.nautiyal@intel.com>
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

The commit:
a27217f9d1856 ("drm/i915/vrr: Track vrr.enable only for variable timing")
adds a change in reading the vrr.enable, which is causing issue when GOP
enables VRR timing generator with fixed timings.

Add the fixed_rr status in crtc_state_dump and remove the check for
fixed_rr during readout.

Ankit Nautiyal (2):
  drm/i915/display: Add fixed_rr to crtc_state dump
  drm/i915/vrr: Avoid reading vrr.enable based on fixed_rr check

 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c             | 4 +---
 drivers/gpu/drm/i915/display/intel_vrr.h             | 1 +
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.45.2

