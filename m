Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D67D899BE5
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:35:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E59113B3A;
	Fri,  5 Apr 2024 11:35:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kPT2MDeR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B86113B3D
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712316948; x=1743852948;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SC/5VwnhA1kQl2OVC0L0ZPJ67yvutsD14cZnmVZnDHo=;
 b=kPT2MDeR6m3j2o6ajTFsBJBgKobZwCd9NZwTBgxo2LUPxuIVwdhHF7Xx
 BJ4sc2HrTI2SwDe7sjT6af77DdXhgyFz4dPE4UiXFticd7zV7y5wtoxGk
 t/JND1dlaOVTjN8+0mL2ta5x1cv9wkSTbjOW/aT0wUItM1hZc5/NdCuTO
 BlnKVemrEfFjPCiRxW1k8WEuXiCwdEnRjuW/qry0UBK+3onxTTXvnffx9
 qlLf1EeFru31VDakR7S+HVy0RCIfHrzZm0iF2PbWse4MPJnsJP+gFWYEd
 rHtFTDcj7Az+aJECv6mNvEVmeSUBnNQag7YSiT49DKB0yOomCbjOIBzbs Q==;
X-CSE-ConnectionGUID: B5C+mtxIROWdLR7AoeN/7Q==
X-CSE-MsgGUID: +T3LYEAVSGaFC4INSP/dQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7540231"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7540231"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:35:48 -0700
X-CSE-ConnectionGUID: oIOxuktYQwCgirhmBwEUCQ==
X-CSE-MsgGUID: DX4Pg0Y4Tcuw9sFoROBlhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19066008"
Received: from pfilseth-mobl.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.58.154])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:35:46 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v10 0/6] QGV/SAGV related fixes
Date: Fri,  5 Apr 2024 14:35:27 +0300
Message-Id: <20240405113533.338553-1-vinod.govindapillai@intel.com>
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

We have couple of customer issues, related to SAGV/QGV point
calculation. Those patches contain fixes plus some additional
debugs for those issues.

Stanislav Lisovskiy (4):
  drm/i915/display: Add meaningful traces for QGV point info error
    handling
  drm/i915/display: Extract code required to calculate max qgv/psf gv
    point
  drm/i915/display: Disable SAGV on bw init, to force QGV point
    recalculation
  drm/i915/display: handle systems with duplicate psf gv points

Vinod Govindapillai (2):
  drm/i915/display: extract code to prepare qgv points mask
  drm/i915/display: force qgv check after the hw state readout

 drivers/gpu/drm/i915/display/intel_bw.c      | 160 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_bw.h      |   6 +
 drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c        |   2 +
 5 files changed, 129 insertions(+), 42 deletions(-)

-- 
2.34.1

