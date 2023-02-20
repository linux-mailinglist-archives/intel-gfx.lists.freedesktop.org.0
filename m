Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8812469D23D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:45:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC61610E744;
	Mon, 20 Feb 2023 17:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D4D10E748
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676915121; x=1708451121;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JPmUA9w3hq1cC+ZgK1FnXbNnTDuLK4pe+VEV1mHuibc=;
 b=DmmllLZfRtVez6ZY3A2BqF7j8EMHSIMg9r87YmyykngbfzdXQFld3I73
 wmsgcQyofjcYGi5OJQuiaZRKNef6U0h6Oog+kvsKGhK2VRPMTqPIPxFt9
 Ci0kLDHOMETgeMyA23PXgm4VJGM01dg1apJU5wqUEuKqEawQl5BRg8vGc
 WqdsVJesrunPfTmq7XUsPn1KbSdqMz5uMfUXK67Yqc6yaiFUHc57KTkO5
 0yCqurq3FtVDmfqxJE1rJip/nefgLRwo1RffHEcpYwLJB4QvhBrh/i7zk
 q5YsNFib61aX5375G8G/8NyWDq5XWyFUUH7eE3RtP5T5SROBjpTCjPJOg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312085363"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312085363"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701745287"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="701745287"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 20 Feb 2023 09:45:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 19:45:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 19:44:41 +0200
Message-Id: <20230220174448.7611-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
References: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/17] drm/i915: Remove bogus DDI-F from hsw/bdw
 output init
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

HSW/BDW don't have DDI-F so don't go looking for one.

Seems to have been accidentally left behind when the
skl+ stuff got split out in commit 097d9e902068
("drm/i915/display: remove strap checks from gen 9").

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0bb429d3e8d7..e3d503b964f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7884,10 +7884,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		if (found & SFUSE_STRAP_DDIC_DETECTED)
 			intel_ddi_init(dev_priv, PORT_C);
 		if (found & SFUSE_STRAP_DDID_DETECTED)
 			intel_ddi_init(dev_priv, PORT_D);
-		if (found & SFUSE_STRAP_DDIF_DETECTED)
-			intel_ddi_init(dev_priv, PORT_F);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
 		/*
-- 
2.39.2

