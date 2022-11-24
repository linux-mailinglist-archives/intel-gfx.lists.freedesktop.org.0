Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6E16372A3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 08:09:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F23A10E261;
	Thu, 24 Nov 2022 07:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B74110E261
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Nov 2022 07:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669273755; x=1700809755;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lgngbRIRJBHhglxjmazUfZ2tlNIUu6droQzqBny6R5c=;
 b=KPfGLwADS9Jd0wY7CCYqL/NbWiH3SGRJAkjC9C2RYmDGIzmeUuJN+Jzq
 k/ibosBFXNUjqVKrwkdwCWH8TpBR8V7J4yQ+QSYPRLi9myWp0qNjaxQvF
 93Nhtc3aAB3nHYfVMjfxIZ+fR3xZWE4qp0084vhVaY82UmbG1+BbN+DPK
 1sOpEgKkxYSfZZy42pxdLNqY5dpvxse9LYufpQy1NJ6m0vuFPe5MAbEBf
 3p9l7EgMWT1N5OI9whg48p/H0yj9s2HX/gXiDHQ8aAr56v5k0In8t3Fg5
 BmM7AA/OllzcEQ7aO2H/R1hImwMbDMdh4fGimjw/v6nYLkMF8NhtKkPP6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="294618857"
X-IronPort-AV: E=Sophos;i="5.96,189,1665471600"; d="scan'208";a="294618857"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 23:09:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="644385102"
X-IronPort-AV: E=Sophos;i="5.96,189,1665471600"; d="scan'208";a="644385102"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga007.fm.intel.com with ESMTP; 23 Nov 2022 23:09:11 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, imre.deak@intel.com
Date: Thu, 24 Nov 2022 12:39:25 +0530
Message-Id: <20221124070925.3834910-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
 include sw delay
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

AUX HW timeout is being set to max(4000ms), consider AUX SW timeout to
be 200ms more to avoid AUX boundary read//write.

HSDES: 1409498780

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 664bebdecea7..6c1c9602518b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -293,14 +293,13 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 					   DP_AUX_CH_CTL_RECEIVE_ERROR);
 
 			/*
-			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
-			 *   400us delay required for errors and timeouts
-			 *   Timeout errors from the HW already meet this
-			 *   requirement so skip to next iteration
+			 * Once the hw timeouts, before next try
+			 * need to add a sw timeout of 200usec(HSD: 1409498780).
 			 */
-			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
+			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
+				usleep_range(200, 300);
 				continue;
-
+			}
 			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
 				usleep_range(400, 500);
 				continue;
-- 
2.25.1

