Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 516DF1A2F3C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 08:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 329AC6EB47;
	Thu,  9 Apr 2020 06:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC976EB47
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 06:35:29 +0000 (UTC)
IronPort-SDR: gnFvp4Mkuu14uANiujGTB/iGpih4LmzwTlbEO0/cNBzf8JRgvnO1DEK+0E5Ok1uBoml75JSmFC
 478veg5kEjKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 23:35:29 -0700
IronPort-SDR: HNhBeYGFqRQ53OgWdj1LRmPAUd3ssaXQ9FN9SldU5An68CP42C5HTmPih2eGOz1328slOQc/Ez
 2bnUlpxBrGdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,361,1580803200"; d="scan'208";a="251802618"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga003.jf.intel.com with ESMTP; 08 Apr 2020 23:35:27 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Apr 2020 11:36:42 +0530
Message-Id: <20200409060646.30817-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/4] i915 lpsp support for lpsp igt
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v4 has fixed the review comment provided by animesh.

Test-with: 20200409053951.26929-2-anshuman.gupta@intel.com

Anshuman Gupta (4):
  drm/i915: Power well id for ICL PG3
  drm/i915: Add i915_lpsp_capability debugfs
  drm/i915: Add connector dbgfs for all connectors
  drm/i915: Add i915_lpsp_status debugfs attribute

 .../gpu/drm/i915/display/intel_connector.c    |   3 +
 .../drm/i915/display/intel_display_debugfs.c  | 109 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../drm/i915/display/intel_display_power.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 -
 6 files changed, 118 insertions(+), 10 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
