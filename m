Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F2D397143
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 12:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180146EA11;
	Tue,  1 Jun 2021 10:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A106EA11
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 10:18:01 +0000 (UTC)
IronPort-SDR: XG3OqayIdd+3lwfPpwxIl7CM/Lk0yKEMaa/L2iAmc2nc8/Y3+wLEXS7GNIahJeqW2dfboYBdoD
 pRBBLzbc233g==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="224790749"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="224790749"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 03:18:00 -0700
IronPort-SDR: pKvhONd+TGAHkshyf/IUVDCG85uMWY8+uszKvp3/hXOQyAo1Ai6eHwsV3Rnw9RKATZcrID+iVC
 +Y6p8X6FwNOg==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="446906654"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 03:17:59 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Jun 2021 15:32:26 +0530
Message-Id: <20210601100228.6064-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v3 0/2] lpsp with hdmi/dp outputs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 link: https://patchwork.freedesktop.org/series/77866/

Anshuman Gupta (2):
  drm/i915/dg1: Adjust the AUDIO power domain
  drm/i915/display: Use AUDIO_VERBS for crtc power domain mask

 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_power.c    | 382 +++++++++++++++++-
 .../drm/i915/display/intel_display_power.h    |   1 +
 4 files changed, 384 insertions(+), 3 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
