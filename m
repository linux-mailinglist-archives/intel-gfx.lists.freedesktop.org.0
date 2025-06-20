Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC8FAE1B44
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jun 2025 14:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C6610EB51;
	Fri, 20 Jun 2025 12:55:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CwfprcbL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCCA10E123;
 Fri, 20 Jun 2025 12:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750424101; x=1781960101;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i05u39IbD2xmz6sAKBfh9C5qX8eIMwC2Ux2bE5TnFjY=;
 b=CwfprcbLwAp7bImybi/vLQx5jMnShRRAqGQH978wFqjhlzPzF+0TzXnT
 6wIuvUWyuhD17Nts4XTWfl9nF2fJXx40TZ5b3GB65KelYyB7Odq9fXuiv
 +iXTY/Rl57yOcKLhGU8gpAKY9m/LhGOB8vsZa9lgW6h4+sxQZseKHhcAC
 Y7Vs9ReTKqrM4yqQKuDsrCmDtnhas3Fj9tHp2x346llXL5zBpXv/mAhsp
 gT+1iLZ79/pDTS/IktrkXYzjMz8NFYd/m32/XN591OCtSGe/U9hKxeDha
 /4jEvg2aN8tM9bf8/QviRSsS/iYFMfjgKBtKdOYN72WE3KFfGSUTHaU5R w==;
X-CSE-ConnectionGUID: vr8jvaMrTb22giL4dcvZKw==
X-CSE-MsgGUID: /xRt5wzqS0G7s6LUCbZCUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="63738789"
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="63738789"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 05:55:01 -0700
X-CSE-ConnectionGUID: JkUGDQGfQmGN+7GM5yYUFw==
X-CSE-MsgGUID: uiXznoi3TMC+LTvGdl9LSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="151216174"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 05:54:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] Revert patch to reject HBR3 for all eDP panels
Date: Fri, 20 Jun 2025 18:14:15 +0530
Message-ID: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
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

Revert the existing patch that rejects HBR3 for all eDP panels that
do not support TPS4. With the patch reverted, the gitlab issue#5969 [1]
will get opened again. Add a quirk to limit the rate to HBR2 for the
device mentioned in [1] and close the issue.

This series is a continuation from [2], and [3].

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
[2] https://lore.kernel.org/all/1cd154a09823abf6d34221ae9e02f9cd342cc3a3@intel.com/
[3] https://lore.kernel.org/all/87y0uzh5tz.fsf@intel.com/

Ankit Nautiyal (2):
  Revert "drm/i915/dp: Reject HBR3 when sink doesn't support TPS4"
  drm/i915/dp: Add device specific quirk to limit eDP rate to HBR2

 drivers/gpu/drm/i915/display/intel_dp.c     | 29 ++++++++-------------
 drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++++
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 3 files changed, 21 insertions(+), 18 deletions(-)

-- 
2.45.2

