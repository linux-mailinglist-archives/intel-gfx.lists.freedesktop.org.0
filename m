Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F254814664
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9289910E9F3;
	Fri, 15 Dec 2023 11:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7489D10E9EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 11:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638584; x=1734174584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BCt/sD16EBOOCYnAWQCdKmVjHP8oXgwllwjKJ3/ZNKY=;
 b=B6trsLAG0iENTYlBHtbnN7Kd7sW2W7k2P3n3b6kvm9bh6yxOjs/NRoMt
 yTs2CHZoG8ZuZdrAYDnUX2JV1f3XaaHOoX+Cim3rPwLoxXv7hu4hDfddI
 SpjELMe+5coPSSkukX4QPVcpydOV5bjuCT5uJ2YKt3Lr+mj2mifZc+zdm
 LSkImILs9g5+DLOTsxxYew1ZJ73pqBNvmqaORPx+e3lzoRjt5ngBf1rHm
 xOZ+YgV3BdoDRrJcI3FFRrsygUyoIemKaxJbaxhBPVjDsnPGfT8/JnVHY
 2Rd2I+qjbmF98KeLhRSeskemxIvLOMWGJMYurGI97DB22cRNCLnBhQSQL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394138136"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394138136"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:09:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767946037"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767946037"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 03:09:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 13:09:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/hdcp: Pin the hdcp gsc message high in ggtt
Date: Fri, 15 Dec 2023 13:09:32 +0200
Message-ID: <20231215110933.9188-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
References: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

AFAICS there is no hardware restriction on where in ggtt
the hdcp gsc message object needs to be bound. And as it's
a regular shmem object we don't need it be in the mappabe
range either. So pin it high to make avoid needlessly
wasting the precious mappable range for it.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 18117b789b16..302bff75b06c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -65,7 +65,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 		goto out_unmap;
 	}
 
-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
+	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
 		goto out_unmap;
 
-- 
2.41.0

