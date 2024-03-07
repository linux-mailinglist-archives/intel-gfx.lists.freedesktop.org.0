Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 923B38752F6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 16:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2318110F478;
	Thu,  7 Mar 2024 15:18:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FUgBOSE5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FCA710F478
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 15:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709824694; x=1741360694;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gmnfSip29WGLG1HHbI+RuYSLR0/loqa7Un8JucF6/9M=;
 b=FUgBOSE5XU9fzGes9kMt/KtD/uDkf6oNh3EsVeW9LkY7xG6yx9ssYdva
 FpvmwN/82zaGig4qrNMge+nQtY7EFf+JCAsXx0tZ9Q7RIbItvSemC1b57
 YvKG+hjkNKHfQf1M4SI7RV9nWaSraJw0BPtbR3E8tOF8ZxLJu5ExC/csA
 HjvFlu2io85MG/qXzaKEhMgzM+M8PrITr4qi2m9vwOEXbTyXkIi45TLld
 6ATL5r1VuCdpu1ypJPz1UGooAFze/vmKijr5Ryn/Z5bHynIV2iOsj6ON5
 AS1JeqIH4VuGpYEMMYBu/+wQSsdjqo9VDajx5uLhOrVAQy+HcUWEp3sgC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="26969171"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="26969171"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 07:18:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827774789"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="827774789"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2024 07:18:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Mar 2024 17:18:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915: Use container_of_const()
Date: Thu,  7 Mar 2024 17:18:06 +0200
Message-ID: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Start using container_of_const() for some extra const safety.

Ville Syrjälä (4):
  drm/i915/dsi: Use enc_to_intel_dsi()
  drm/i915: Don't cast away const
  drm/i915: Use container_of_const() for states
  drm/i915: Drop pointless (void*) cast

 drivers/gpu/drm/i915/display/icl_dsi.c             |  3 +--
 drivers/gpu/drm/i915/display/intel_atomic.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_bw.h            |  3 ++-
 drivers/gpu/drm/i915/display/intel_cdclk.h         |  4 +++-
 drivers/gpu/drm/i915/display/intel_display_types.h | 14 ++++++++++----
 drivers/gpu/drm/i915/display/intel_pmdemand.h      |  5 ++---
 drivers/gpu/drm/i915/display/intel_sdvo.c          |  4 ++--
 drivers/gpu/drm/i915/display/intel_tv.c            |  3 ++-
 drivers/gpu/drm/i915/display/skl_watermark.h       |  4 +++-
 drivers/gpu/drm/i915/display/vlv_dsi.c             |  3 +--
 10 files changed, 27 insertions(+), 18 deletions(-)

-- 
2.43.0

