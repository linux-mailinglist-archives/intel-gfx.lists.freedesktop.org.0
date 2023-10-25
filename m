Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EF87D68E1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3FE10E630;
	Wed, 25 Oct 2023 10:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Wed, 25 Oct 2023 10:36:59 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D50010E62F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698230219; x=1729766219;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=87FNk078+pU98fzlTrEPHm3U3IMogBE7P6gs+YdtQWc=;
 b=G3/zawtMOVgvrd05NijSJMd4cdnL13GvHa9GsV+hW0aCRc0n/N+66w1D
 fo3VZwN/CZeazdXjnKz5OgrGKbqUe/eEpMmj5C5Vnyb4C8PEnffmtAZcW
 +fGzhQM8dwhbBADQk0/YLH0pL+EPCvn+2Hw0RHtHVv2p/U8xQV4cvWeLT
 Ds87ZjBvme2bRL5nv54MVG09mLmpFg1xm3tVQ3KEQp/oDUUI06XRA+59p
 W1LozdREU7LfLH5L88o9wV+ncjxuUvDiMxEXpOjMn4TZKIM5RZ7wh8NIy
 iEXK6qijkummGpVnjqjIAPncbsbW8Jwclp8VwBfOS8qaMjbxHQPHelcer A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="43838"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="43838"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:29:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882409850"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882409850"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orsmga004.jf.intel.com with ESMTP; 25 Oct 2023 03:29:51 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 15:57:32 +0530
Message-Id: <20231025102734.2783492-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Enable Darkscreen Feature
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

The logic checks for any black screen at pipe level and
upon such detection prints error. Darkscreen compares the
pixels with the compare value(0x00 - black) for the detection
purpose. This feature can be enables/disabled through debugfs.


Nemesa Garg (2):
  drm/i915: Add Darkscreen registers and timer handler.
  drm/i915: Add the darkscreen debugfs under crtc

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_darkscreen.c   | 107 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_darkscreen.h   |  40 +++++++
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/i915_reg.h               |   9 ++
 6 files changed, 162 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h

-- 
2.25.1

