Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D009C5005C3
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 08:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0E110FBA4;
	Thu, 14 Apr 2022 06:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A783610FBA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 06:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649916455; x=1681452455;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aNxVbeqF/LGHWkHXBGAdBlHRvR93vMgS0lE3wzSao28=;
 b=bArIowaFOBizGhMr4aUkGLkrcbTzGEC1tT11jX+cIzmZjd1uZwIKz/tQ
 TmVf6ddHAbxZz/74xm7t8G/0JNCwS0yo/FtBb1X+sa+koIVsiWLAflw+v
 Elm0SZHbWi5v4Ge+Ie4NQ2N5gPJhQJzUz5AgTwYABY9jaA95KPwDGQgVA
 ysXii4uuD07FVSFiokuWYc9qV/tSk/W54GEjUNTvrMoHM3J/zhkzIm/6j
 lbKhcLbc06QNvdyQ5pAiuC6UawjNntWgsuWFjj3W31txCc0e4x571j6aN
 NKp1Gwa5jiSMKW3Vb7zIE3Znuyr9SJQgnfz9r4eJO3UH51t0PrxH7cPMl A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250147541"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="250147541"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 23:07:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="623981421"
Received: from srr4-3-linux-109-jbhatt.iind.intel.com ([10.190.239.24])
 by fmsmga004.fm.intel.com with ESMTP; 13 Apr 2022 23:07:32 -0700
From: Jigar Bhatt <jigar.bhatt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 11:37:28 +0530
Message-Id: <20220414060729.1973394-1-jigar.bhatt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/display: Communicate display
 configuration to pcode
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
Cc: nischal.varide@intel.com, jigar.bhatt@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display to communicate "display configuration" to Pcode for more accurate
power accounting for DG2. Existing sequence is sending only voltage.
New sequence is sending cdclk along with number pipe of active pipes
to Pcode.

Jigar Bhatt (1):
  drm/i915/display: Communicate display configuration to pcode

 drivers/gpu/drm/i915/display/intel_cdclk.c   | 93 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 +
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++
 drivers/gpu/drm/i915/i915_reg.h              |  4 +
 4 files changed, 101 insertions(+), 4 deletions(-)

-- 
2.25.1

