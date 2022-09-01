Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0325A8DEC
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 08:01:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E095F10E5A6;
	Thu,  1 Sep 2022 06:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19D5610E5A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662012085; x=1693548085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k4N/YrjsB2EMTKQlgIulEL4noVYSnkMu1CkwCnxtrD0=;
 b=F80wSwiGt8klvmUZTXgCgfziBHXmRKXBFbLpTHTw5iwYlknnfQ8kvNnF
 c6lp8wdeL4pZqXwkX2YtWo3Xv/ZJn2tbJkTg6aSu3WL/+LkkcgjxJe+HD
 RUoRpDnS44cAro81KDFOgyts/IbzGTTY86rdOBeKblmSfwFilinFW43rt
 xnmEIo73kfcsD4WJ3ix5NHymCkfzJbifswY0lz3pRaAOhI9eUts6DoSzv
 fWWazlolRR4gDlssf9WtgyZ9H+HQXH9S9MF4MEsoHeNQ6PPIUfQBV/2Aq
 6AHSewoR+RCPo+drEaezAAou1Q6nqN7vEGfndyghzNJjVZE7O3CgVZ1O7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="381920234"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="381920234"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="754685657"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 11:30:55 +0530
Message-Id: <20220901060101.1000290-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915/dp: Remove whitespace at the
 end of function.
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

Remove extraline left after intel_dp_configure_protocol_converter.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a05b8b86e5c8..b6f62444b589 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2690,7 +2690,6 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			   str_enable_disable(tmp));
 }
 
-
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
 {
 	u8 dprx = 0;
-- 
2.25.1

