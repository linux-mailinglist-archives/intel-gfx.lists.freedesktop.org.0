Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C15FDC1E6AB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 06:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2ABC10E24A;
	Thu, 30 Oct 2025 05:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZWgr2rY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437BD10E248;
 Thu, 30 Oct 2025 05:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761802251; x=1793338251;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7k4iWaUEDuA9yjuV5voIbSkbUI6Rnzmzaol+D9OXzAY=;
 b=iZWgr2rYgTKSq9ofBpwNZskzFVF5p7IgJCLhsNPAjjjnnrHaX8Q9ca/W
 qxskXnMDb9UF8Exdvuo8ee9RTiXWZ1zwGh1E+V19svcun0Chw/8QYZ0ls
 0AZJO3i7IzjZELCE1doKR0uxsfEdW3AppU5lKcjRO9JVHWNBHFiJ4LGlO
 tJeeW1eagWw6GI35ekqrFsng5qcgdTrRlFhVqJVmsbnsI0FlvyaAMjPYt
 D1PNNQdgDTHNGd5e8IQx9kA4iLjKNvoGOazsu2sA6FiYhZAXrlUw93k/Q
 UaNkGg1F++B5PCjb8Gy5X0xeqP6sBWoX4Dt8hm44tKB9IR41fi1MA83gh w==;
X-CSE-ConnectionGUID: 4COw8z1fSAuNbgqu0jzpsg==
X-CSE-MsgGUID: lteXyrB8SxSb3ws24b0WFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63845063"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="63845063"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:30:50 -0700
X-CSE-ConnectionGUID: LtpNC8TCSt6+UEcunz5GVA==
X-CSE-MsgGUID: xY6XijM5RImgOW4F5QJzWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="186206822"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:30:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/5] Fix Adaptive Sync SDP for Panel Replay
Date: Thu, 30 Oct 2025 10:47:50 +0530
Message-ID: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
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

Enable Adaptive Sync SDP always when Panel replay + auxless ALPM is
supported. Ensure AS SDP is sent on line which is within the SCL +
guardband region.

This series is in continuation from discussions in [1] [2].

[1] https://lore.kernel.org/all/1b8c6c6de1e5fe0db83e6ae942dfee7e6f950767.camel@intel.com/
[2] https://lore.kernel.org/all/aPtqdAxDwiuQZbrn@intel.com/

Rev2:
Add few fixes in AS_SDP and Lobf.

Ankit Nautiyal (4):
  drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
  drm/i915/dp: Allow AS_SDP only if panel replay + auxless alpm is
    supported
  drm/i915/alpm: Compute LOBF late after guardband is already determined
  drm/i915/alpm: Allow LOBF only if window1 > alpm check_entry lines

Jouni Högander (1):
  drm/i915/display: Take into account AS SDP in
    intel_dp_sdp_min_guardband

 drivers/gpu/drm/i915/display/intel_alpm.c | 41 ++++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_alpm.h |  6 ++--
 drivers/gpu/drm/i915/display/intel_dp.c   | 35 ++++++++++++++-----
 3 files changed, 62 insertions(+), 20 deletions(-)

-- 
2.45.2

