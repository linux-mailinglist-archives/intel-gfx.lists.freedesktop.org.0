Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 102F43D9826
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:04:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8774D6EB57;
	Wed, 28 Jul 2021 22:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E85789F08;
 Wed, 28 Jul 2021 22:04:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="210872227"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="210872227"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:04:10 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="437959310"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:04:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 15:03:22 -0700
Message-Id: <20210728220326.1578242-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Remove CNL - for drm-intel-gt-next
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This the part of https://patchwork.freedesktop.org/series/93056/
that should go through drm-intel-gt-next branch.

Lucas De Marchi (4):
  drm/i915/gt: remove explicit CNL handling from intel_mocs.c
  drm/i915/gt: remove explicit CNL handling from intel_sseu.c
  drm/i915/gt: rename CNL references in intel_engine.h
  drm/i915/gt: remove GRAPHICS_VER == 10

 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c       | 10 +--
 drivers/gpu/drm/i915/gt/intel_engine.h        |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  3 -
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  4 +-
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 10 +--
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  6 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 42 +---------
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          | 79 -------------------
 drivers/gpu/drm/i915/gt/intel_sseu.h          |  2 +-
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  |  6 +-
 drivers/gpu/drm/i915/i915_drv.h               |  4 +-
 14 files changed, 27 insertions(+), 149 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
