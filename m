Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4018681B9A9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 15:37:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89B1B10E6C9;
	Thu, 21 Dec 2023 14:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31BC10E6C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 14:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703169459; x=1734705459;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/9ha74Xrf1+sKBvEmRuVUV8HOTVRfwVzsi2K6Z8DBIw=;
 b=NKDWNf+O2cbUhBix1WPpP5KPtY7nCIgwlauDj/WbtUoPC3U7F8MCFajx
 1lwnPMalSPPj5hWxBbUPHmsldP9adF8s7Bc+lQyL+ctJ88I2ZwfwIw1Wm
 P38FIjhzIoOaqq+H/2w7B1ykg0Jy6wGRfia+bctQC5PxTEMS1tCzCZAWs
 is9QvB7rZvwgQfCw7B18dYNW+3aF2BvqSTVVp+esXhoNnuMlttaWh+bN2
 lsDGn2e9snaq4Gx6apaLGk5qMAwT2Y8JqZmGNzn0kcuRIYRn3U9P3dfTa
 lksP9zVehUn5nXM41L3cPcIB/yjHWtR+2VKyTYf3O2HVS5lnguf9OkEiI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="375470058"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="375470058"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 06:37:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="895120268"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="895120268"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.53])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 06:37:37 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 0/3] Extend ARL support
Date: Thu, 21 Dec 2023 20:02:19 +0530
Message-Id: <20231221143222.1729450-1-haridhar.kalvala@intel.com>
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

