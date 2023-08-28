Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FD978A5A9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:20:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C8910E05D;
	Mon, 28 Aug 2023 06:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B9710E05D;
 Mon, 28 Aug 2023 06:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693203653; x=1724739653;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aMpJiqNNxSrOljx/2ljoGrhSDInJASX6XN20woFqxlQ=;
 b=IMStvPEjIGF5QAKqX/x9cigBAkUKcdOTXVOuiRYPlZb9Y+kyq/UHOQKe
 cHtpoxBSfCKQUGJZse9w89HP1Upofgfo854YZI8haQqSGCJQUrR/UnOi6
 HLyEgIH4+HnsQeG44THOb71J+Zhqt4jwn559OIjM4XWtSK3ZetXykD7W3
 BzVyFH4WIO0SvaaclFQpK6miL/ovpt+BQG/5RG/QV5Fp2i3MtQi1CutRe
 qz3S+GQX81L34DYyaLCJ3hsyS0Axw/E8DV71/A/DX2LYaJS+9WGGA7a4x
 P+eTsL11THMa7cy97u+s3h2ctiey2uVGDw8ZOLwfTKSuWwBAcD4Qrm/qj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="438973545"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="438973545"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:20:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="861709792"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="861709792"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.5])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:20:49 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon, 28 Aug 2023 09:20:31 +0300
Message-Id: <20230828062035.6906-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] fbc on any plane
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In LNL, FBC can be supported in planes other than the primary planes.

Vinod Govindapillai (4):
  drm/i915/lnl: FBC can be enabled with PSR2
  drm/i915/lnl: update FBC debugfs to include plane information
  drm/i915/lnl: support FBC on any plane
  drm/i915/lnl: FBC is supported with per pixel alpha

 drivers/gpu/drm/i915/display/intel_fbc.c      | 50 ++++++++++++++++---
 .../drm/i915/display/skl_universal_plane.c    |  5 +-
 drivers/gpu/drm/i915/i915_reg.h               |  4 ++
 3 files changed, 52 insertions(+), 7 deletions(-)

-- 
2.34.1

