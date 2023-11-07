Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C6B7E3480
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 05:23:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2882F10E122;
	Tue,  7 Nov 2023 04:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF53E10E122
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 04:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699331019; x=1730867019;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OwWVaLy9bv76EfEVhLt5pXats+k0AZlzVWFbxo8UnH8=;
 b=QsYD3AtGkIkZoPk0pcdYDz5XKou+4hZGi6qhbM8RFJBFx92dpRpYhRjW
 qZA7iNo3dNXkttBcL9EqfL+kIApOpHtt8X/80GF4ovBHHGjC59/ShaJQ/
 GLyX3wBNZ0rQClMCedKk3kCQmTlhUpz8wNBqNYHqxza2yht3SoE3H6Vgl
 eJ/z+NPrEDra92pz9F7eJ89fLRi1M5HhSCifT4/wkEZrvBtEltXt7rKpI
 W2BJvxaBwGOhp14oJsNL1e29XmnYXYcKJgjRTDzh3d64GlsyvEg+URwCb
 tYzfRNsMiKX74PI8x3v1OTMnjEm3hgBrA1T6lFb9td2ohTxZ4QOu0qO/M g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="475667573"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="475667573"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="712435765"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="712435765"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:36 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 09:47:36 +0530
Message-Id: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] DP DSC min/max src bpc fixes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use helpers for source min/max src bpc appropriately for dp mst case and
to limit max_requested_bpc property min/max values. 

Rev2: Dropped patch to limit max_requested_bpc based on src DSC bpc
limits. Instead added change to ignore max_requested_bpc if its
too low for DSC.

Ankit Nautiyal (4):
  drm/i915/dp: Simplify checks for helper intel_dp_dsc_max_src_input_bpc
  drm/i915/dp: Fix the max DSC bpc supported by source
  drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
  drm/i915/dp: Ignore max_requested_bpc if its too low for DSC

 drivers/gpu/drm/i915/display/intel_dp.c     | 33 ++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++----
 3 files changed, 29 insertions(+), 17 deletions(-)

-- 
2.40.1

