Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6827B4D7F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 10:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50E4010E1A9;
	Mon,  2 Oct 2023 08:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8558810E1A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 08:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696236438; x=1727772438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sw5+kGZFoNP6FhMsnUtb/r1HYn7zPbPvOl2XtL3asi4=;
 b=HZWPt44XRp04QiUiVNCXVg4FsGIVYdFilszlCBV6nKX9a9OYa9Wia+pn
 o/qiFKT1HnJMgHG7rtJMB170isSIMXxuz0yTGnwbCzJkC2AqVoKsbYKyo
 ByKfatd1aMhkze24iU3xvYusLCAaBEfShQaQeQWC585/EERoKcX7IubaR
 yhkMnXNRXD6tawNr1mzXmkYJmsFx8UJcmETv/zjEdXc36lKDumo4ZMq0C
 k10POypCWG6QOh67CgevUZGEKNBMgqCamJaVFkiFtndPDGOgZ3wSnbqma
 oznUNiTNYSJDFyocyKXqjbQl/yuMKAkOcNnBsThz/08kjBxWB4qs3UVsG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="446759261"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="446759261"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:47:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="727201863"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="727201863"
Received: from svandens-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.151])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:47:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Oct 2023 11:47:01 +0300
Message-Id: <cover.1696236329.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: nuke i915->gt0
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chopping up [1] to more digestable pieces. Start off with nuking
i915->gt0.

[1] https://patchwork.freedesktop.org/series/124418/

Jani Nikula (3):
  drm/i915/mocs: use to_gt() instead of direct &i915->gt
  drm/i915: allocate i915->gt0 dynamically
  drm/i915/gt: remove i915->gt0 in favour of i915->gt[0]

 drivers/gpu/drm/i915/gt/intel_gt.c               | 10 +++++++---
 drivers/gpu/drm/i915/gt/intel_mocs.c             |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h                  | 10 ++--------
 drivers/gpu/drm/i915/selftests/mock_gem_device.c |  1 -
 4 files changed, 11 insertions(+), 14 deletions(-)

-- 
2.39.2

