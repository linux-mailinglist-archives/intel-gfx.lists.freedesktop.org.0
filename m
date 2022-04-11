Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAB94FC7C5
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 00:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0AB10E3E0;
	Mon, 11 Apr 2022 22:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE7810E0FC;
 Mon, 11 Apr 2022 22:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649717005; x=1681253005;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AG/MSrbAGH6Ci7p/rt2x/bultsAooqilkD67DUwyCp8=;
 b=E2oG5z5EVci6AZPEgeeM/4e6q9tLC/eEHBZ0aJpCZPELb+KbNCfbiOVF
 q43A+y30+TsVuBSvx5VUTrTr8EmvV06iOKd506PDxQWGbia/91ox9Xelg
 SkhkdPfpb87vkfpsuRu+XluykmNLRBXmSetPPBkqk9CPn6Ug/rDSCsftl
 311svEmOjZi9n2MEQFUjIgx4PDNlskgLV0S0cFIFyO3Ya4vYTUJTm8wB9
 r3/qwboXBS86S2/Bp54SVucwFlXvh9TKBliVaF7zFuqFyPM8JjkphZf5t
 9a1ng26pHxzzha+gK64AA4V408T6FgBYcjDj3+jkoqxkEjDuzawsctYpr A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="249513169"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="249513169"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 15:43:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="551432082"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 15:43:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Apr 2022 15:43:15 -0700
Message-Id: <20220411224319.467166-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] i915: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES
 uapi
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a continuation of Matt Atwood's new geometry topology query from
here:

    https://patchwork.freedesktop.org/series/101219/#rev4

This does a bit of initial cleanup/clarification of the query interface
documentation (including converting more of it to kerneldoc so it will
actually show up in the generated html/pdf) and then applies MattA's
changes on top of that.

Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Francisco Jerez <currojerez@riseup.net>
Cc: Daniel Vetter <daniel@ffwll.ch>
UMD(Mesa): https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/14143

Matt Atwood (1):
  drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES

Matt Roper (3):
  drm/i915/doc: Convert drm_i915_query_topology_info comment to
    kerneldoc
  drm/i915/doc: Convert perf UAPI comments to kerneldoc
  drm/i915/doc: Link query items to their uapi structs

 drivers/gpu/drm/i915/i915_query.c |  71 ++++++--
 include/uapi/drm/i915_drm.h       | 285 +++++++++++++++++++++---------
 2 files changed, 258 insertions(+), 98 deletions(-)

-- 
2.34.1

