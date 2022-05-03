Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25468517F9F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 10:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62ED110ED9E;
	Tue,  3 May 2022 08:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B3510EB76
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 08:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651566101; x=1683102101;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=orqxxntTDlRXUlk5lFLs6j+zhS4oiXtqpXE/7qAKXoY=;
 b=dPRRqmmJ9XYYcQJheaFiLf+d65+CNVSM3ATpG0tOT5ap/HdaInDGKAEA
 LajS21HAMeuyXbcCIUudEQAKK4lxIyjlb66eIRxJ4EIdwrRMpZjPXK3iK
 86ZPdTCmR1+lA5keldQNsHl5AVgo6svStZ+T2JxoGeda5ssb7BSgD9Rg4
 NZWAjP7H9FVuPrbYNn+shWVlB7vRZ8Fb2i/sdc2/fVJk+TWgRKIh/sJsn
 Zo/6xHAHueTFHcftDVBFGui85YsFEjJOR/ku6iW7IQtqr6PblpOfyfxzy
 uv5xGFC83GT6wf/RziaWzQ4Z+lLeC3UhYcHpSBm1yi3hLSpWF6p/WZnV2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="267018684"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="267018684"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 01:21:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="584111364"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 01:21:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 11:21:34 +0300
Message-Id: <20220503082134.4128355-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: warn about missing ->get_buf_trans
 initialization
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure each DDI platform has sane ->get_buf_trans initialized.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 94e64661b4fd..85f58dd3df72 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1673,7 +1673,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 		encoder->get_buf_trans = skl_get_buf_trans;
 	} else if (IS_BROADWELL(i915)) {
 		encoder->get_buf_trans = bdw_get_buf_trans;
-	} else {
+	} else if (IS_HASWELL(i915)) {
 		encoder->get_buf_trans = hsw_get_buf_trans;
+	} else {
+		MISSING_CASE(INTEL_INFO(i915)->platform);
 	}
 }
-- 
2.30.2

