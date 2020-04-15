Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7121AAF53
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 19:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C253C6EA39;
	Wed, 15 Apr 2020 17:20:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A0666EA39
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 17:20:40 +0000 (UTC)
IronPort-SDR: tER/3BkTnhRlD0sU1t3gcXLLGieh/3uRSxuE66AuZ4jmBnN1tVvAgZqCt2wlS4lQu3F3azjZGx
 s6Yh0ibfbsOA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 10:20:40 -0700
IronPort-SDR: 9Qlpr/vkwDcVbXZUDu+iDRIeLq8QPw5cX6sbkfJjITB88lYCJwIV2X6o5SS0KpIkW5J7Rq9BAb
 psw38nRgvXdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,387,1580803200"; d="scan'208";a="400382897"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 15 Apr 2020 10:20:38 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 22:35:51 +0530
Message-Id: <20200415170555.15531-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 0/4] i915 lpsp support for lpsp igt
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

v5 has fixed the review comment for [PATCH 2/4] 
provided by animesh and rebased the series.

Test-with: 20200409053951.26929-2-anshuman.gupta@intel.com

Anshuman Gupta (4):
  drm/i915: Power well id for ICL PG3
  drm/i915: Add i915_lpsp_capability debugfs
  drm/i915: Add connector dbgfs for all connectors
  drm/i915: Add i915_lpsp_status debugfs attribute

 .../gpu/drm/i915/display/intel_connector.c    |   3 +
 .../drm/i915/display/intel_display_debugfs.c  | 100 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../drm/i915/display/intel_display_power.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 -
 6 files changed, 109 insertions(+), 10 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
