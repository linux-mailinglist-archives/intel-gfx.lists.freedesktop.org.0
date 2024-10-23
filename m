Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 124F99ABF49
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E925F10E75A;
	Wed, 23 Oct 2024 06:50:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xb/n4Hn4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E65810E752;
 Wed, 23 Oct 2024 06:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666251; x=1761202251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tjBcq/usllITqwtcxzbzejklsVHWnCuUGjUtoK8N8sk=;
 b=Xb/n4Hn4yxRUY4kVYHcId2m4dOSzVRRxZxYQsu8tLQtfoVMuoA/HmdA1
 hUri7LB6omLwlJKC6ah3W4QfIqZZ0xRYciwLJjA1nQ2q0KovIbfbcpPaL
 TJasqF7+P0jhFVs2LQ5uXpgWodH9ze8DzD8MTOBq51xdBFNq28LmBh2/l
 BiUB/RSAa/Pj5Z1kLkjVnSfkIVqqcEIBgfCCi6XGawlsZbG1riSQRjh0t
 /82BCsYDncxKEE4eJ31GjUytpOChMhlYMDLLhI4JHjicpxqhYtoZf19GN
 wCrHoaZB3o5yHoMbEs+Gs7tM10zA/fAXftRJ5ROhEmkULZ71xhN5Uvpbh A==;
X-CSE-ConnectionGUID: 75uLQnTcR9OPDO9tka0qCQ==
X-CSE-MsgGUID: bdqquN4WR6CrmoJCWdwucA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097472"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097472"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:51 -0700
X-CSE-ConnectionGUID: 2TP1WNTTQ/SvgQDoTLsCqQ==
X-CSE-MsgGUID: vsg6GvaLSV+ZpnTc/SjhuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691511"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 06/16] drm/i915/dp: Ensure hactive is divisible by slice count
Date: Wed, 23 Oct 2024 12:22:47 +0530
Message-ID: <20241023065257.190035-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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

According to the DSC spec, the slice width should be chosen such that
the picture width (hactive) is evenly divisible by the slice width.
If not, extra pixels (padding) must be added to the last slice to
ensure all slices have the same width.

Currently, we do not support handling these extra pixels.
Therefore, select a slice count that evenly divides the hactive
(slice_width = hactive / slice_count).

This check is already implemented for DSI, where the slice count is
selected from the BIOS.

For DP, currently with 1, 2, 4 slices per pipe it is unlikely to have
slice count not being able to divide hactive, but with 3 DSC engines
and 3 slices, we can have such cases. Adding this check prepares for
future scenarios where such configurations might be used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 77487a55280c..3b20ea844925 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1037,6 +1037,9 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
+		if (mode_hdisplay % test_slice_count)
+			continue;
+
 		if (min_slice_count <= test_slice_count)
 			return test_slice_count;
 	}
-- 
2.45.2

