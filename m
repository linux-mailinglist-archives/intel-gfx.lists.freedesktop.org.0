Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02287E0AA2
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 22:13:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB49610EACF;
	Fri,  3 Nov 2023 21:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0025310EACF;
 Fri,  3 Nov 2023 21:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699045985; x=1730581985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jEAG3xm3fs7p3L1wiXl9L1VgGg5vRERt2iKYeBhaT5w=;
 b=iUBcMPpd886/Wv1srgo5RwBXWkPu+W0i/5/hQDv6+MvqQlXxlCzPE8RK
 +J4khmM9rdeesQSPFttO0mhevyJNpgH/9BI2coeells5q2E3p3OAizNIw
 p1+dSdAtU/KMHWc9JOrJzl1JWFUQkieDhZGmARogfHjvqoyJfFYMLavF3
 jNXr2R+xNWuH4SE78o0kZEaGTh97DVPBZVdbnBLzXvOnxx18UEZ68Iham
 GCVxuqDBJoTKjPWV/4pPVEs1QsudxbJFyfkS57Eli79zAfkf9aXtC2Jr+
 xpCh0j99XVzdd2mPIwaaa2je5ELEnARvLm6lB5cpFVn7QAJYEi8QuHWPL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="379416740"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="379416740"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 14:13:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="790877367"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="790877367"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga008.jf.intel.com with ESMTP; 03 Nov 2023 14:13:02 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sat,  4 Nov 2023 02:30:33 +0530
Message-Id: <20231103210035.3151502-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20231103210035.3151502-1-animesh.manna@intel.com>
References: <20231103210035.3151502-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 4/6] drm/i915/panelreplay: Enable panel
 replay dpcd initialization for DP
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Due to similarity panel replay dpcd initialization got added in psr
function which is specific for edp panel. This patch enables panel
replay initialization for dp connector.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3c66257b6bb2..e53a2217627a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2742,6 +2742,9 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	if (!(HAS_PSR(dev_priv) || HAS_DP20(dev_priv)))
 		return;
 
+	if (!intel_dp_is_edp(intel_dp))
+		intel_psr_init_dpcd(intel_dp);
+
 	/*
 	 * HSW spec explicitly says PSR is tied to port A.
 	 * BDW+ platforms have a instance of PSR registers per transcoder but
-- 
2.29.0

