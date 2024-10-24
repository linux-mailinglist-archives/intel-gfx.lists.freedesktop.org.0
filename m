Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F13B9ADABA
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 05:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B85610E89E;
	Thu, 24 Oct 2024 03:56:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ODCvKuhm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A57D110E89E;
 Thu, 24 Oct 2024 03:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729742174; x=1761278174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zdnJzz4FD0Zj3vuMjdNGZaHzdjF/IjRHyBIsEiQw1sY=;
 b=ODCvKuhm691BUp1usVqQzgimUOLZQ8zDUk3jHjO9PfXicI8TzO38gDSi
 zQLty6EGFO+/yWEwkXHOxDXwGGGgIn6PJwuxshqIPrM/OYOem+Vz4VFWp
 LoWgoo3bFn7ZGqYoIP6k6lRw36EWiCWXDEMv+nnJSExeMwBZ11PdZvSTp
 2BVjVCsiuRvjf5y2HEmgcC10WIWhLQ1FwpLC+r3u7A6rQ93c0xDEfsAGj
 O+oen8IlxiJu26loGexFyO6Xati+pBUM9mtsoR6UMFB3Y7woxlt8eTWrd
 FY70+K5Vpa0Q8a9GqgIAVFjk94mqRTAfrXRQLjI6kCYwovXMQNGgsulz5 Q==;
X-CSE-ConnectionGUID: QDFu4lVsShGL/JZhf/FMwA==
X-CSE-MsgGUID: S6Zyw8LjSVepEBSI7sb+8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28818509"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="28818509"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 20:56:13 -0700
X-CSE-ConnectionGUID: Q1FyiEz0SwqWcz3p2OkmFA==
X-CSE-MsgGUID: cdCIzPnoTVGLrE+XWmRi3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80128111"
Received: from linux-lunar-lake-client-platform.iind.intel.com
 ([10.227.88.172])
 by fmviesa007.fm.intel.com with ESMTP; 23 Oct 2024 20:56:11 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/4] drm/i915/xe3lpd: Increase max_h max_v for PSR
Date: Thu, 24 Oct 2024 09:25:50 +0530
Message-Id: <20241024035552.94363-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241024035552.94363-1-suraj.kandpal@intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
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

Spec states that PSR max active is same as max pipe active values.
Now that each pipe supports 6k resolution increasing max_h and
max_v for PSR too.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3b20325b3f6a..8981a180285e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1451,7 +1451,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (DISPLAY_VER(display) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 30) {
+		psr_max_h = 6144;
+		psr_max_v = 4096;
+		max_bpp = 30;
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		psr_max_h = 5120;
 		psr_max_v = 3200;
 		max_bpp = 30;
-- 
2.34.1

