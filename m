Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8688A18AFEC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 10:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA35B6E9C5;
	Thu, 19 Mar 2020 09:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D598D6E9C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 09:20:58 +0000 (UTC)
IronPort-SDR: qFm39HaYnYLC8pQwLLhyDvBXLjukFox+Ene+GUVtY9ux9GB/hoNE8P3WRafGL/UyvtChhEuJEw
 ujjVV59ht0Yg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 02:20:58 -0700
IronPort-SDR: HkpxeIGBm1xOlWW6Xt39H1H/1c7a46m9143fp/yrE01V0nBdk4ziuoaW6Yqf3UBkc4t5qdVxDy
 ZTEuDpVdEa5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="444497779"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga005.fm.intel.com with ESMTP; 19 Mar 2020 02:20:57 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Mar 2020 09:20:56 +0000
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 19 Mar 2020 11:20:34 +0200
Message-ID: <20200319092034.695709-1-arkadiusz.hiler@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Originating-IP: [10.237.68.143]
Subject: [Intel-gfx] [PATCH] drm/i915/display: Increase the DDI idle timeout
 to 500us
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

Bspec says that we should timeout after 500us. Let's match this in the
code. It may help with few of the timeouts we see here and there.

Bspec: 22243, 49190
Issue: https://gitlab.freedesktop.org/drm/intel/issues/1069
Suggested-by: Uma Shankar <uma.shankar@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 73d0f4648c06..28650797fc2f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1097,7 +1097,7 @@ static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 	i915_reg_t reg = DDI_BUF_CTL(port);
 	int i;
 
-	for (i = 0; i < 16; i++) {
+	for (i = 0; i < 500; i++) {
 		udelay(1);
 		if (intel_de_read(dev_priv, reg) & DDI_BUF_IS_IDLE)
 			return;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
