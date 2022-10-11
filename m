Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D6B5FACDF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 08:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F9810E7B5;
	Tue, 11 Oct 2022 06:34:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6053F10E7BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 06:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665470085; x=1697006085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oZYmrUfjXWnYrh4k8z09X5FeT4F+MkNYykPzvk92MFw=;
 b=fC9HTfbYXUwvQPBKJAKLSKrNt4rr0lqJvFZck8Ag2SSkNzc+c9cBt8ti
 UWCWVmEQoxl0W3Pkvc3ttfEJFJlO+X/uuBfon9Kaw8AeW5JWe6kWqM38v
 G91Cd+BzBSwB3xJm3nxSsdwIRqR2TsR07nkkWXLY5NjLv1L4/YsLKUnlV
 uQ8x4dhl8pwiatkC9zo+N9jn5M3u/71LSa0DZqOM8q0juVDBdN3UECbBC
 yycvpm4TOU32YWbAIOqos7uZHDKec+WAFU+cdIDHN7W+gjQSPvPqA7dCc
 mx25HKO9crw3nIr9yDPz7jna8HMDoUPPVeJkiHP1OOTinh/Wlhq611kIF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="302031822"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="302031822"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:38 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768680340"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="768680340"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:04:41 +0530
Message-Id: <20221011063447.904649-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/8] drm/i915/dp: Remove whitespace at the
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
index 9133d4c65437..359884617fdc 100644
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

