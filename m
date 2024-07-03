Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5E792656C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 17:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 215EB10E92D;
	Wed,  3 Jul 2024 15:59:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l1OE7dDm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B512710E924
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 15:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720022370; x=1751558370;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fG1C13N1+JZKaDmK9MX5ZVJHuvc/C4WdOlbnTD8kARo=;
 b=l1OE7dDmc9jwuD/EInKBgt8FelvcewXuCCpeJ5qiJcmWtaqvzvlCnNAC
 3b4uyisM5B+iarpHksSsREcv1y2qgQbHNLBMOrCGr5eB3RL/UzkoS9BrO
 KgQ73pvWmub8pqJMUjfwPdID1BiR8X7jVgbsbxTyq+y5FNj6qR3Qr7ahR
 pCvj4gRMv340ZJXaOJH1ifaLw6g0jas9MRR4bcG/z+HaoRddYpyJaYxCg
 DmCZ+RsMVNEIayxhel6CdHt7FwnUUPak7htPbsLMcMMAcb30xVSBwXhSe
 qDOXVXaUoGXJXp5Eaz/0ygGouZ1Kx/t0/6gphTyVozOf7YXIdbYWezOZc g==;
X-CSE-ConnectionGUID: dhftu0nuTeOpdq649Gd0xw==
X-CSE-MsgGUID: EwrrQOszQPifUV3w0v6FHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17131762"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="17131762"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 08:59:26 -0700
X-CSE-ConnectionGUID: /U9BvD3VTLiJ0T8gbGop0A==
X-CSE-MsgGUID: MiVTy8+USt6VEQfPNOokiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46964094"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 08:59:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/5] drm/i915/dp: Fix LTTPR detection
Date: Wed,  3 Jul 2024 18:59:32 +0300
Message-ID: <20240703155937.1674856-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

Fix the DP LTTPR PHY detection, avoiding a loss of link synchronization
when the detection is done while the link through the LTTPR is active.
Also dump the LTTPR PHY descriptors to help debugging similar issues.

Imre Deak (5):
  drm/i915/dp: Don't switch the LTTPR mode on an active link
  drm/i915/dp: Reset cached LTTPR count if number of LTTPRs is
    unsupported
  drm/i915/dp: Keep cached LTTPR mode up-to-date
  drm/dp: Add the LTTPR PHY OUI DPCD register
  drm/i915/dp: Dump the LTTPR PHY descriptors

 .../drm/i915/display/intel_dp_link_training.c | 81 +++++++++++++++++--
 include/drm/display/drm_dp.h                  |  4 +
 2 files changed, 78 insertions(+), 7 deletions(-)

-- 
2.43.3

