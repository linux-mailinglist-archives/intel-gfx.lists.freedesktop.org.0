Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D60407E5954
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 15:39:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 278C510E78A;
	Wed,  8 Nov 2023 14:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A946510E785
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 14:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699454377; x=1730990377;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rdl1kYudmcWGKymILURoUW0iHTUAe4Yg93qQ4R9KABE=;
 b=oDD7amrB73ESQa+IUp+U+Z3y1Ry3PuZ0UJ9BrFGg+9peqySNaIjf2S5S
 fkfU/J5aFKMEWKZOMI4BeZ7Cw6VANWvLU06H2gnontyhDKIlf71TULg+j
 wloLH+TiGcpvIcZbkveA+aDsIRLY5HBMwlF1z3GXbRmuDnglZ8XOfW1PD
 ovWVePU2iIiljWKZvjKdy4YLKlB8HL79amLpSn+iT27nPmoWmviTflyo5
 MJAKT9jtLARpIvgma5cqCkct+NnZXnrcuP31oFUd+CjNyKK0k1PP8McEx
 nDimFwJ9AoRCVFJXvogiQz+pFDzeDFtMNvFx0UX1TdL6t0SLbntgS6dqH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="388635085"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="388635085"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 06:37:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="828992542"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="828992542"
Received: from nofferma-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.43.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 06:37:13 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Nov 2023 16:37:01 +0200
Message-Id: <20231108143702.40495-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] drm/i915/xe2lpd: WA for underruns during
 FBC enable
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update the FBC enabling sequence. The plane binding register bits
need to programmed before fbe enable bit.

v2: update the patch subject and description as this underrun is not
    tied to PSR. FIFO underruns are observed when FBC is enabled on
    plane other than the primary.

Vinod Govindapillai (1):
  drm/i915/xe2lpd: implement WA for underruns while enabling FBC

 drivers/gpu/drm/i915/display/intel_fbc.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

-- 
2.34.1

