Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 499CF97680C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:42:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDB8C10EB54;
	Thu, 12 Sep 2024 11:42:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mttPCVmV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40EAA10E059
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 11:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726141320; x=1757677320;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ydfhDr8Y+0JHEhVL+JDzD4UhGoHDLAHdrNdUJK6iUh0=;
 b=mttPCVmVd8PNSNmE1vcvHNlJB5Vp1fugUKBviiK/V+Zh3BLXeJg4Z24R
 ou4gpVmhvYd0/UxvwwYLFtqYVyMLpO5ZC3LGOxgMvyOwIQR2wuitNfMgz
 Pt7qVehrNkDGv6ozkP+bQ4iU9TzuRQ0K00Kd0at7op2ZktHY4oHfm6dST
 /jOiIvffitbJUezloW3KX/UM7i50x8Uf/+ruHJsPZNg/lvTMSplkYo37v
 gmKBnl05RQgCdQhaMK0E/jZVA2q6Lse2ROvK4D32XswChHxec8uB6Llpi
 S5jcQjSi5byUWEbihSwJsyzIf04HEheRTUL7eZq6JX6lQDVpaIpFU8kSX Q==;
X-CSE-ConnectionGUID: utT5MYEDR3qhaIJKSgjFZw==
X-CSE-MsgGUID: qjhchFuZS5S01oeGV7e1jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25089221"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25089221"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:42:00 -0700
X-CSE-ConnectionGUID: T7JyOtlWTLO6EHraP0HFuQ==
X-CSE-MsgGUID: 4ZcbsWDmQ7uj64aV28HWTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67675418"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:41:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] Use num of pipes in joiner helpers
Date: Thu, 12 Sep 2024 17:13:26 +0530
Message-ID: <20240912114330.1244982-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

Currently few joiner helpers pass joiner flag to represent if bigjoiner
is used. To scale this for ultrajoiner, enhance these helpers to use num
of pipes instead of joiner flag. This new approach is adaptable to various
joiner configurations with 1 (no joiner), 2 (big joiner) and forthcoming 4
(ultrajoiner) pipes.

This patch series is a spin off from original series for ultrajoiner
basic functionality [1]. Few of the preparatory patches are taken here for
review and merge before the other core patches of the series.

[1] https://patchwork.freedesktop.org/series/133800/

Ankit Nautiyal (4):
  drm/i915/display: Simplify intel_joiner_num_pipes and its usage
  drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
  drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
  drm/i915/display: Use joined pipes in dsc helpers for slices, bpp

 drivers/gpu/drm/i915/display/intel_display.c | 22 +++++-----
 drivers/gpu/drm/i915/display/intel_display.h |  3 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 42 ++++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h      |  7 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 20 +++++++---
 drivers/gpu/drm/i915/display/intel_dsi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  2 +-
 7 files changed, 59 insertions(+), 39 deletions(-)

-- 
2.45.2

