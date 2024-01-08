Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A3E826DCE
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 13:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5854010E0D9;
	Mon,  8 Jan 2024 12:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 066EA10E230
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 12:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704716888; x=1736252888;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/9ha74Xrf1+sKBvEmRuVUV8HOTVRfwVzsi2K6Z8DBIw=;
 b=G89w2l+RQX/aIJUzVEMD8XiZByINgv9QEQLB93S42Xql5QX7OSZjg4Tq
 bJpkriAy9m4ECjyEUHU85zuVxyHegypTq9KgokmwqIM0mvV6PVuQRnVcL
 bpwv4gsWBN0LerYFImF8gg3XuGk7ICRq4pucXVX0zOwcgJ4jI6Pk62Yhm
 8Djhtnbg4KvNn6+7gQpcCc+1+YtQTaXNI+LGssSWIbCyJxBY+yfs6a/fl
 xXZ5oIArelWBPLXzfCDucZrIYYvo4FGA3iSvFM0ueb5gjkLiiXkXIX9h1
 Tr8PLw5JdneQTvjvbHrUcclKxA002411oj1uKC0HiF9hhzCui4J3JAX1Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="395032547"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="395032547"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:28:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="731093808"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="731093808"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.61])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:28:05 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 0/3] Extend ARL support
Date: Mon,  8 Jan 2024 17:57:35 +0530
Message-Id: <20240108122738.14399-1-haridhar.kalvala@intel.com>
X-Mailer: git-send-email 2.25.1
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some SKUs of Arrow Lake use a slightly newer Xe_LPG+ graphics
IP (version 12.74).  Add some additional PCI IDs and extend the
code to support this newer IP version.  The general code flow
should continue to match existing MTL and Xe_LPG code paths.

Harish Chegondi (1):
  drm/i915/xelpg: Extend driver code of Xe_LPG to Xe_LPG+

Matt Roper (2):
  drm/i915: Add additional ARL PCI IDs
  drm/i915/xelpg: Extend some workarounds/tuning to gfx version 12.74

 drivers/gpu/drm/i915/gt/gen8_engine_cs.c    |  4 ++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   |  3 ++-
 drivers/gpu/drm/i915/gt/intel_mocs.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 24 +++++++++++++--------
 drivers/gpu/drm/i915/i915_debugfs.c         |  2 +-
 drivers/gpu/drm/i915/i915_perf.c            |  2 +-
 include/drm/i915_pciids.h                   |  3 +++
 8 files changed, 26 insertions(+), 16 deletions(-)

-- 
2.25.1

