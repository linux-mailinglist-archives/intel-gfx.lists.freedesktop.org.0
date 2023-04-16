Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C486E3A02
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Apr 2023 17:54:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C017410E271;
	Sun, 16 Apr 2023 15:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0BE10E267
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Apr 2023 15:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681660474; x=1713196474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n1vCSSVb/Ddb2JYGfUEkFSXFzLmw3Rjl+E9CMj6NmMk=;
 b=fQIJ+iqJ1vEJSmQaKam2Wlj9XFd0l+TJgMUFg6jij8k2oPhJlErmvpBG
 s3Bp3OdRurb42EIarouOw8G4EwO2gvDjEWzG3qE2oNqSSx9dxEq9kizjw
 343J4Sg3VevzMLMhd2yvJ9x9xFqwG9SG5q25CWO/dwuA3eKHMM2Y2eUvJ
 jytSJZ/bOmX99IEAqJd4R6FSCxfiPO9k7gGYw9MijWu6V//EeNfb9ohKQ
 sxmYbphdqzuBK4kuuVq277TA+PuzobL28XqvOboftJz5VZt3OxJ2opV3J
 HZr/npzZAmicAGHXT9FiFcGKYwgwfI1vAYByA8FErdd09oEoKjOhEfJ2l Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="328902092"
X-IronPort-AV: E=Sophos;i="5.99,202,1677571200"; d="scan'208";a="328902092"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2023 08:54:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640698691"
X-IronPort-AV: E=Sophos;i="5.99,202,1677571200"; d="scan'208";a="640698691"
Received: from yanghuib-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.34.77])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2023 08:54:32 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 16 Apr 2023 18:54:14 +0300
Message-Id: <20230416155417.174418-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230416155417.174418-1-vinod.govindapillai@intel.com>
References: <20230416155417.174418-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/4] drm/i915: fix the derating percentage
 for MTL
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the values from bspec for the percentage overhead for
efficiency in MTL BW calculations.

Bspec: 64631

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 202321ffbe2a..5fa599b04ca5 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -376,7 +376,7 @@ static const struct intel_sa_info mtl_sa_info = {
 	.deburst = 32,
 	.deprogbwlimit = 38, /* GB/s */
 	.displayrtids = 256,
-	.derating = 20,
+	.derating = 10,
 };
 
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
-- 
2.34.1

