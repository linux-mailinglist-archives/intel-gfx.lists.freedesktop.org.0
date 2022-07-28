Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9345258366C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:38:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6777310E1B3;
	Thu, 28 Jul 2022 01:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B70010E7D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972082; x=1690508082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9FHAUiAYF5UxwOswlyACt1a6tTKvc7wfKI3qIB3TB+k=;
 b=asxb9f/ao77IfpWsnfZuzRiqkeXxe25XwPKXWJyruZFGe0ibXXxgltsy
 y9rbL8Sf58TQTGgdKyWvb29w2W6UZHxol2m8RJ6jR5JV1K4bypG6N6/bZ
 x6iLZKAg0YxgzRXT3uKnksCjqZeZPNQDb8cLoa4GD6oykWcV3X/9wm02c
 jdtT4ziTYx6AGU83/H8JMGuUvRgjPYRLjJclIB95bha7n4pmC4uWULSOv
 6fMwvtN+ZL2V3cE0k0F2O5A8AsWO7lc1JHTNvBGbL21TXlCbPij9lS3xF
 +yffIITSZRmXga/Yz4mXy/hla9KsCGJbMApan4A38VF1CIyO3lrk8uJ2b w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271431763"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271431763"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457040"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:41 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:15 -0700
Message-Id: <20220728013420.3750388-19-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/23] drm/i915/mtl: DBUF handling is same as
 adlp
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

Meteorlake uses a similar DBUF programming as ADL-P.
Reuse the call flow for meteorlake.

Bspec: 49255

Cc: Matt Roper <matthew.d.roper@intel.com>
Original Author: Caz Yokoyama
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 58a3c72418a7..d73be4bbaaa3 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4934,7 +4934,7 @@ static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes, bool
 
 	if (IS_DG2(dev_priv))
 		return dg2_compute_dbuf_slices(pipe, active_pipes, join_mbus);
-	else if (IS_ALDERLAKE_P(dev_priv))
+	else if (DISPLAY_VER(dev_priv) >= 14 || IS_ALDERLAKE_P(dev_priv))
 		return adlp_compute_dbuf_slices(pipe, active_pipes, join_mbus);
 	else if (DISPLAY_VER(dev_priv) == 12)
 		return tgl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
-- 
2.25.1

