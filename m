Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C9497E54D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 06:32:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92CD10E374;
	Mon, 23 Sep 2024 04:32:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SOk0HKUJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 580D710E136
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727065942; x=1758601942;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t/J8V0L+XJAQPKjnUoLzvOpIjmO1ubAJHJl17WxOo1Q=;
 b=SOk0HKUJZwUsLcr7E+oMHLeKfbWbCXEIIz8i3P0kYCGjXhhjEf6ri+ZO
 MzaQPdA8Qg7DJtN8+9V4nTo4Gyeq40XjoB8iYsIx/Zs4r8ymzLzAagNxK
 vqnV40hV4hgkF6+pnbtYQ29NzA7vQ5hS2KZBqy2OllT3NYZODJFnptslN
 tPtYF0YyXYozJzcAz9kLb+Lfst+J23YVYNyqe1i9fQdaoYlbvs2GSZfmZ
 VvOrxv/UuzLiLRnLsuc55iXt5IL/GuKtqV0+tYz+CTldKMMuJsHV2DFOf
 oZexbRolEEKG6zWHouZN3+qFHr3ipj7OSx6Ydvkv0NhIMiTDsNZgn4kp6 g==;
X-CSE-ConnectionGUID: yD1+ykGvQ02J9BTMmaJSig==
X-CSE-MsgGUID: jsEbCpLiRBq9TI9Yn9RVFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="37368669"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="37368669"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 21:32:22 -0700
X-CSE-ConnectionGUID: +C7hd6blRpesiEul2g63SQ==
X-CSE-MsgGUID: WeX9wvcvTau8njFXHKrzZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="101786761"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.245.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 21:32:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/2] Implement Wa 14019834836
Date: Mon, 23 Sep 2024 07:32:03 +0300
Message-Id: <20240923043205.2016070-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch set implements Wa 14019834836. Also a new helper is added
to apply workarounds for selective update area.

Jouni Högander (2):
  drm/i915/psr: Add new SU area calculation helper to apply workarounds
  drm/i915/psr: Implement Wa 14019834836

 drivers/gpu/drm/i915/display/intel_psr.c | 52 ++++++++++++++++++++----
 1 file changed, 45 insertions(+), 7 deletions(-)

-- 
2.34.1

