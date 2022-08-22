Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 768AF59BDEE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 12:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AED81123BA;
	Mon, 22 Aug 2022 10:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A2D11238F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 10:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661165692; x=1692701692;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=23+sKIAgQZvsVoEvDmLLwoUs51nMDa7doOm2Qus/8g8=;
 b=RTOevykisdopQggkV8hYsEFpg2DJugD55QCr8QyJgKRKXg5IumAzcbqt
 mXu/ztri2MikK7zif1mwFpJTLPDzKN7Bm7KvTZUrWFLRTpR0paOxVxeey
 pS9HHDMKbxtQUtkEUYJ7wuwWfyQex3KjSvEXTFxqTrO1xjVvnQA/Z2w6z
 HFo8KI3l7aea36N5intMoRrmiKjq5s3iAng2inxqpqL3XMhFeVFN1qJU+
 mHWWcXkDSeuyFgcf21qB7kKA6dAf8xi2xp07Mr33ZJM4pMXkyvG0/G6lF
 vHsDPzOVVl/lPxnGN6irpIzGNlkAWd/VEjQ7DEhoywjIedhrOMhxi5ZiF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="280353973"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="280353973"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:54:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="585474024"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:54:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Aug 2022 16:24:21 +0530
Message-Id: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] Handle BPC for HDMI2.1 PCON without DSC1.2
 sink and other fixes
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

This series fixes issues faced when HDMI2.1 sink connected via HDMI2.1
PCON does not support DSC, and other minor HDMI2.1 PCON
fixes/refactoring.

Patch 1 Adds helper to check HDMI2.1 DSC1.2
Patch 2 resets 'frl trained' flag before restarting FRL training.
Patch 3 Pulls the decision making to use DFP conversion capabilities
for every mode during compute config, instead of having that decision
during DP initializing phase.
Patch 4-5 calculate the max BPC that can be sufficient with either
RGB or YCbcr420 format for the maximum FRL rate supported.

Ankit Nautiyal (5):
  drm/i915/dp: Add helper to check DSC1.2 for HDMI2.1 DFP
  drm/i915/dp: Reset frl trained flag before restarting FRL training
  drm/i915/dp: Fix DFP RGB->YCBCR conversion
  drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
  drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP

 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 245 ++++++++++++++----
 2 files changed, 200 insertions(+), 52 deletions(-)

-- 
2.25.1

