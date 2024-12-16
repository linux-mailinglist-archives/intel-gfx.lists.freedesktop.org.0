Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B9E9F3627
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 17:34:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5406B10E5DF;
	Mon, 16 Dec 2024 16:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GZrCzb9P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B19210E5DF
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 16:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734366863; x=1765902863;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yKXkinsavmo7/G8Y6f56gR1bn8UXEgXHa4HyAfgrcBM=;
 b=GZrCzb9PK6Awf12Lgp/V/DF75LgKLf2hr2Jlo5fRc/hzBbRzTj+xCaG6
 l/qYeMMmWg32qUvSKSQlb7+u5Qo0aB4UAs8EUJhqunSAAfGeodCOPCDbY
 Zp1qcAGTyEAqa1zog1JD+VFv2LvtOMSuahLeSQ+d8P9flgv2zrg5BmN+L
 VlaELCpEri4cRGDuxMf7nqjcvllk8wWqBQX0+EC4w3s4KYd4kl5Dj5gI8
 rurYtm9Y2EloutgBz6Zg722jxb0nMjTqVS7snLDQ1Mrl+Ukf7pBNpzLSX
 WKYyehX9i/8P4dIJALdxD9wpH+XKm8UJDREnQI9V+NquBqQl6me+phhh+ g==;
X-CSE-ConnectionGUID: PzbyurWRSS2hjCXH+IUsAw==
X-CSE-MsgGUID: L4EJUKtRQCiP7sHE7cYe8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34053791"
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="34053791"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 08:34:22 -0800
X-CSE-ConnectionGUID: h43jtsEbTnaoCK6tOk2YGA==
X-CSE-MsgGUID: fpov6q0FSaac4JRTHOI+BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97113075"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 08:34:20 -0800
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, haridhar.kalvala@intel.com,
 shekhar.chauhan@intel.com
Subject: [PATCH] drm/i915/display: program DBUF_CTL tracker state service to
 0x8
Date: Mon, 16 Dec 2024 22:02:17 +0530
Message-Id: <20241216163217.2715069-1-ravi.kumar.vodapalli@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

While display initialization along with MBUS credits programming
DBUF_CTL register is also programmed, as a part of it the tracker
state service field is also set to 0x8 value when default value is
other than 0x8. so, for TGLLP, SVL, RYF, DG1, ACM, ACMPLUS, RKLC,
RKLGM and ADLS platforms default value is not 0x8, hence set to 0x8.
For remaining platforms the default value is already 0x8 so no need
to program them.

Bspec: 49213
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..d9ba48b68979 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1126,7 +1126,9 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
 {
 	enum dbuf_slice slice;
 
-	if (display->platform.alderlake_p)
+	if (display->platform.alderlake_p || display->platform.dg2 ||
+	    display->platform.alderlake_p_raptorlake_p ||
+	    DISPLAY_VER(display) >= 14)
 		return;
 
 	for_each_dbuf_slice(display, slice)
-- 
2.25.1

