Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B02340FD9E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 18:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7986E02C;
	Fri, 17 Sep 2021 16:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E9B6E02C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 16:12:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="202324727"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="202324727"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 09:12:10 -0700
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="473168219"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 09:12:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com
Date: Fri, 17 Sep 2021 09:12:01 -0700
Message-Id: <20210917161203.812251-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Check SFC fusing on Xe_HP
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

Xe_HP adds some new fuse bits to indicate whether an SFC unit is fused
off.  We should utilize these when initializing VD/VE SFC access and
also when capturing/dumping SFC_DONE for the error state.

Matt Roper (2):
  drm/i915/xehp: Check new fuse bits for SFC availability
  drm/i915: Check SFC fusing before recording/dumping SFC_DONE

 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 25 ++++++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gt_types.h  |  3 +++
 drivers/gpu/drm/i915/gt/intel_sseu.c      |  5 ++---
 drivers/gpu/drm/i915/i915_gpu_error.c     |  6 ++++--
 drivers/gpu/drm/i915/i915_reg.h           |  4 ++--
 5 files changed, 31 insertions(+), 12 deletions(-)

-- 
2.33.0

