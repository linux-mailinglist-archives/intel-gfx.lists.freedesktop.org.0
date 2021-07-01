Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4ACB3B9202
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 15:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9148689F92;
	Thu,  1 Jul 2021 13:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C259889F92
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 13:08:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="188213893"
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="188213893"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 06:08:23 -0700
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="420396772"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.179])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 06:08:22 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 18:23:43 +0530
Message-Id: <20210701125346.10005-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] lpsp with hdmi/dp outputs
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

This revision has fixed review comment from Imre on RFC patch.
https://patchwork.freedesktop.org/series/90827/

Anshuman Gupta (3):
  drm/i915/dg1: Adjust the AUDIO power domain
  drm/i915/display: Use AUDIO_MMIO for crtc power domain mask
  drm/i915/audio: Use AUDIO_PLAYBACK power domain

 drivers/gpu/drm/i915/display/intel_audio.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_power.c    | 232 ++++++++++++++++--
 .../drm/i915/display/intel_display_power.h    |   3 +-
 5 files changed, 223 insertions(+), 20 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
