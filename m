Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3EFC5B66E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 06:40:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE64010E9A2;
	Fri, 14 Nov 2025 05:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SV/IWaqY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F7710E220;
 Fri, 14 Nov 2025 05:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763098833; x=1794634833;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MDYzKZxaDXMjeZZWo8qO+4+0tcDQ+PVryCGEXSnIbJo=;
 b=SV/IWaqYlVwE/4dXpNOdsYib+JWP1k221rzz4HgY5a++YvVkxmkQ5zqd
 LYPqYkApsuHFVCs7WWZYvXa8dfd9vwBnakMVpcsNDqnmhsMGFwIzlt9wv
 Zt81y/wkbJgKNuYenMsNGzSEh5WwK9RyHpbxhTHnlXX9CXZy6IvzkrIPp
 XWf+E/k37ww758NF9cZRrzTWS22rdVdzjcuQ7B0K9kO8xTagbCgH3sImH
 /pyFOHAzi0ZxrGvt6BLEK1fcmBiKfFHeW1XGJnMTTU/6DG0aI/b/2R/cf
 lwVLHWwgl1wQ5rZBKA61BnbOz5pTkIUF/nN5W/bw8AHHqVPHJTRxHin2H Q==;
X-CSE-ConnectionGUID: iRlumQeyQ86KZJxY7VbCbA==
X-CSE-MsgGUID: rJJHJLiyT4aT+r7qZ+21dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76536255"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="76536255"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:32 -0800
X-CSE-ConnectionGUID: 84OS6inhQ1KFqTe1yFimDQ==
X-CSE-MsgGUID: +5EbAJ4JRnuRSd9lr8anPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="189543581"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:30 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/5] LOBF fixes
Date: Fri, 14 Nov 2025 10:57:41 +0530
Message-ID: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Fix lobf to use computed guardband and set context latency.
Also disable LOBF while switching to LRR/seamlessMN modes.

Ankit Nautiyal (5):
  drm/i915/alpm: Compute LOBF late after guardband is already determined
  drm/i915/alpm: Allow LOBF only if window1 > alpm check_entry lines
  drm/i915/alpm: Allow LOBF only for platform that have Always on VRR TG
  drm/i915/alpm: Simplify and align LOBF checks in pre/post plane update
  drm/i915/alpm: Disable LOBF around transitioning for LRR/seamless MN

 drivers/gpu/drm/i915/display/intel_alpm.c  | 103 +++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_alpm.h  |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c    |   2 +
 drivers/gpu/drm/i915/display/intel_intel.c |   0
 drivers/gpu/drm/i915/display/intel_vrr.c   |   2 +
 5 files changed, 91 insertions(+), 19 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_intel.c

-- 
2.45.2

