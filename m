Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA05B334B4C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46DA489E86;
	Wed, 10 Mar 2021 22:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E01489E08
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:43 +0000 (UTC)
IronPort-SDR: u5N/wlOEEv9dFzTGIgoxB+bpOwPdBLN6mfy9z73BsNFJG/+pugGWgclztHQ0JDtTnbK1hoH03w
 ysdwNPQknmpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592057"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592057"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:43 -0800
IronPort-SDR: K6nmPq0XJ9NeSd3u5nvMdVHPzBXti0X7ZgR2aKtDoG50qz2nrOKcULBRs4vqeUQIcc4Dk04m09
 xUsMRg8EP8CQ==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852183"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:42 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:17 +0200
Message-Id: <20210310221736.2963264-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/23] drm/i915: Make sure i915_ggtt_view is
 inited when creating an FB
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

This probably doesn't cause an issue, since the code checks the view
type dependent size of the views before comparing them, but let's follow
the practice to bzero the whole struct when initializing it.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 12b54e032bc1..7bc541b75eef 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1003,6 +1003,8 @@ intel_fill_fb_ggtt_view(struct i915_ggtt_view *view,
 			const struct drm_framebuffer *fb,
 			unsigned int rotation)
 {
+	memset(view, 0, sizeof(*view));
+
 	view->type = I915_GGTT_VIEW_NORMAL;
 	if (drm_rotation_90_or_270(rotation)) {
 		view->type = I915_GGTT_VIEW_ROTATED;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
