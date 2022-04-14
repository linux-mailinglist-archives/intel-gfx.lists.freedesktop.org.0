Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CADA5012AA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0A6310FD77;
	Thu, 14 Apr 2022 15:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF7410FD68
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 15:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649948991; x=1681484991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qz4BET55BpbDnOsppq7gX+mCTP4VwS9T9oAHfQSAAfY=;
 b=BZBqu7bxTAr8i6KUm33AfWALp3vMwSMh7Opi3zcjmuJOezFJask16Ybi
 RaLCziXxCd/cs5xheNBSJKdjSjOCZmfwOulrMve72hNs6QTSLVt/msdFV
 Q/7XsROsTo52MusdpaubGy+PSFvpOIgn2J/+M0XNR8mJAowJWNMQ1F0hl
 8WGykqVly2rJcuQOxSxhMHw+A5htFx9Qa93a/eFStPn9qT7N/0XRWVCYm
 AU9D3EnxXLCl4emXiswTDxY7rs8veLZD/zUjUyUUba/SJp2CzboemwXYn
 Bu7FEPAUNJ6QLHc6U/aVHJygKzOINFVGGyiE2A5mX+LYtVwyxsVldLGBt g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="250247563"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="250247563"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:09:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="803162459"
Received: from hchuang-mobl3.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.30.222])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:09:50 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 08:11:18 -0700
Message-Id: <20220414151118.21980-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <20220414151118.21980-1-jose.souza@intel.com>
References: <20220414151118.21980-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/display/psr: Clear more PSR
 state during disable
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

After commit 805f04d42a6b ("drm/i915/display/psr: Use continuos full
frame to handle frontbuffer invalidations") was merged we started to
get some drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE))
in tests that are executed in pipe B.

This is probably due psr2_sel_fetch_cff_enabled being left set during
PSR disable in the pipe A, so the PSR2_MAN_TRK_CTL write in
intel_psr2_program_trans_man_trk_ctl() is skipped in pipe B and then
we get the warning when actually enabling PSR after planes programing.
We don't get such warnings when running tests in pipe A because
PSR2_MAN_TRK_CTL is only cleared when enabling PSR2 with hardware
tracking.

Was not able to reproduce this issue but cleaning the PSR state
disable will not harm anything at all.

Fixes: 805f04d42a6b ("drm/i915/display/psr: Use continuos full frame to handle frontbuffer invalidations")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5634
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8ec7c161284be..06db407e2749f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1353,6 +1353,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
 
 	intel_dp->psr.enabled = false;
+	intel_dp->psr.psr2_enabled = false;
+	intel_dp->psr.psr2_sel_fetch_enabled = false;
+	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 }
 
 /**
-- 
2.35.2

