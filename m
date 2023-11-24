Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DAB7F6D38
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 08:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC36D10E79D;
	Fri, 24 Nov 2023 07:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE86510E79D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 07:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700812406; x=1732348406;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=dY1dQxfkx58YXhNzcn7SX+JbXX+m19osQZh0ovm/9uI=;
 b=cqEaj1mGBh4Uti4hgkWWdDGJyr1nsyUVoCESiKoG4/gsabwifWgmr/Ub
 gDo9OMNrmB961XCKuBa7M6cgi2u8cb9QytbZtaCgIUifCZkItVzvY8XD4
 Ubfn9g6JBzJHYJWoleNWGGXL7LZiedIjmcLtsBLVAPwcquFGQhUubeK8S
 WnS1t7AZwIYm1M69XHyiRNVE5rhS8IrRNBsOk2ahv+arRrsJNGkI4E5Bt
 tCeCuhKYvsGFdeJcNT3FOtBasS1e8ydbMPY4qYmCCtaQ4mulMu6X+HQ5g
 mFMN5ddwldvH9w8jLJyiA5Iyeibd0Ngen7dOh4Gbns3U5HQvmGb3E+ops A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="478591270"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="478591270"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 23:53:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="885200262"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="885200262"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 23:53:13 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Fri, 24 Nov 2023 08:53:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231124-cur_size_reduction-v1-1-30495dba475f@intel.com>
X-B4-Tracking: v=1; b=H4sIAF9WYGUC/x3M0QrCMAyF4VcZubZg2oGrryIyujZzubCOZBvi2
 LsbvfzgnH8HJWFSuDY7CG2s/KoGPDWQp1Qf5LiYwZ99QPSty6v0yh/qhcqaF5u7DkO8RGzj2AW
 w4yw08vsfvd3NQ1Jyg6Sap1+qyNMtPMNxfAHb8KbhfgAAAA==
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1297;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=dY1dQxfkx58YXhNzcn7SX+JbXX+m19osQZh0ovm/9uI=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlYFZpyLu+IJeNBF05RSWoJvSI8ik6g6Ve/fzyBoW1
 zyLznEyJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZWBWaQAKCRAjYrKT3hD9151YC/
 4vSMndtlHf/+pnY8SL5PeGQOHWhZaZW7R+TYKEGDSYDd6dI/aA6TgGRwrH22xnCot0cRq2FCyp0RLL
 FmxgrFue0NqXR/lW5DsjvC2qVE0kDjcK6oFdykZZuRb7xhdOu+Xs5TWZ5xxGmuUbWZa9p0uON3kf+U
 A6ebQ16THSpzrJGxwoDlsytvMqmIFlBY5c7QfafBPQa4EnXBOoaZEyFche6KSvy02ZZM+6xZ1mUJ4J
 KkZiWs2iwvLjU80/hdXmmdB8Em+v2cgvRmDuBcVtByY5vbmA8ZOXPbWv0hlCa8a6PsS3qxOMYl3j9f
 epenr/3NLPNSyBO2KS6lnJEsz1QSikFhDxfhilGxRHy7sDA8bt1S9lt/9q+ceYasY5UT/J4hHcVE+3
 8edxkBhB5Qgfo7gFCx8sF6xTDbFpxLaCz/T5Z+iEwYaHWS20CNbF1bj3iq3moGosz6+dDztuTL+vvZ
 MrbX0neqNJCux+uxkm5JIgrcjrlgis8c80/0djz0ldVWM=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH] drm/i915/display: do not use cursor size
 reduction on MTL
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cursor size reduction is not supported since MTL.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 4299cc452e0504..6610d73f55e6c4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -36,7 +36,7 @@ struct drm_printer;
 #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
 #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
 #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
-#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)
+#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
 #define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)

---
base-commit: 94f973d8238e0d8fd1b0234f220783a1e346f60b
change-id: 20231124-cur_size_reduction-813979149f83

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

