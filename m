Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DA419575B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 13:43:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9FA6EA1D;
	Fri, 27 Mar 2020 12:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BBBC6EA1D;
 Fri, 27 Mar 2020 12:43:12 +0000 (UTC)
IronPort-SDR: h5QImOczDsJnhEBwB5yYQyREbGE5Hzy9VY9UmNqIzfjlQpzFIzJrwaTw2MDnvUXi1YLB+vm9kl
 0owgxo+JrnmQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 05:43:12 -0700
IronPort-SDR: FdZy4bdDVrweiFde1akSjUrYtNiVKlqOEyz7ezbjV2rgNM6JlzXdvXo1p5tNpbsWgU5VOGsbyA
 6kAAIpg/2LJA==
X-IronPort-AV: E=Sophos;i="5.72,312,1580803200"; d="scan'208";a="447404743"
Received: from defretin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.231])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 05:43:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 27 Mar 2020 14:42:29 +0200
Message-Id: <20200327124229.26461-7-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327124229.26461-1-jani.nikula@intel.com>
References: <20200327124229.26461-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/dsi: use VBT data for
 rc_model_size
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Stop overriding the VBT defined value for rc_model_size.

Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ca299ae5a393..5a83df2fd723 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1490,9 +1490,6 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 
 	vdsc_cfg->convert_rgb = true;
 
-	/* FIXME: initialize from VBT */
-	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
-
 	ret = intel_dsc_compute_params(encoder, crtc_state);
 	if (ret)
 		return ret;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
