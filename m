Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 931A74BB2A0
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 07:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8B0610E461;
	Fri, 18 Feb 2022 06:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0A910E461
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 06:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645166442; x=1676702442;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HxkIpMPnbvUSqih/8TNcGpN21IgnKy/tnZEivBHIADY=;
 b=AdsAr9slb/M8QI2elnRoxCXEwIOOfS8LKWziLF5FPMH3p/XjVO2CnrYM
 B2UZBVTTsfpf6Z8oPTSmoRdvzWk01vF0D/AsbueOBKyNGHQvxinJkd7jY
 0sLal951V22zlCZw63yJXnx3jRdnLGF1dMRQWo+Y3tvvwfYEPefu/PWQK
 BZSX4AFjkdbwjT3kGdi2DJn21yYfQx7DHcyL4Vn1kbwuyH/LLxnS7L+UQ
 Dp8f4wnp4Ft+av1+36xOEar/mU5ZjmSE/8aKbsPy7V3QavClwMYCWwH0F
 d6rgWuKypAenjZK5AXS8FfNoqyJHjhbloXMCUpsLkB70BdZ84TVoK1KSr Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="231048097"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="231048097"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 22:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="546142542"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 17 Feb 2022 22:40:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 08:40:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 08:40:33 +0200
Message-Id: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/6] drm/i915: SAGV fixes
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

While pokingaround the watermarks/etc. I noticed our SAGV code
has a bunch of bugs. Let's try to fix it.

OK, v3 which sould avoid the extra debug spew from the bw code.
That should help make the stress tests pass in ci.

Ville Syrjälä (6):
  drm/i915: Correctly populate use_sagv_wm for all pipes
  drm/i915: Fix bw atomic check when switching between SAGV vs. no SAGV
  drm/i915: Split pre-icl vs. icl+ SAGV hooks apart
  drm/i915: Pimp icl+ sagv pre/post update
  drm/i915: Extract icl_qgv_points_mask()
  drm/i915: Extract intel_bw_check_data_rate()

 drivers/gpu/drm/i915/display/intel_bw.c |  84 +++++++----
 drivers/gpu/drm/i915/intel_pm.c         | 177 ++++++++++++++----------
 2 files changed, 165 insertions(+), 96 deletions(-)

-- 
2.34.1

