Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD34C98807B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 926B710EC75;
	Fri, 27 Sep 2024 08:37:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IWWrkK3/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01FD110EC64;
 Fri, 27 Sep 2024 08:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426222; x=1758962222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tbOyQSul2Z7BCYjJzk1KyESIQcjErWR62YEEAuBY7Vs=;
 b=IWWrkK3/GhyNupFxINHt1CXvM8c6tT5cWaiJtc3lZflyYX1ULlUpjNBV
 bMg0mOIGFckZMwBdlW4bIa7wC23Dy4Q0bzOyrsiOsFRGI1x9SAzKBwmxF
 9T/q5aUxUiq2x2sWdZxAI5KzOwvo5HwjHX4eAf9MQ4tV9JQlRiufMtDww
 ewxhUGz/lUMG/T61FhHuYZ6/VI7ISJH4NAOi6Raeqd1HycX/DGzVoTbyk
 kSiVe3FPsC+zjZNLDfz8CcTv0ghYITffpPXZF5LNbicEUkkPUTHIqre4w
 45VJIx4oGkyaN8kBWWQ4+hD/S+CWLRvvMwgo0LHcMiEBwIVGi0KfrskKU w==;
X-CSE-ConnectionGUID: VfgD6fWFRgONkd7qKQ6ZiQ==
X-CSE-MsgGUID: AVe50rViSAK1t0cqE2wE5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51977633"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51977633"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:37:01 -0700
X-CSE-ConnectionGUID: rbvfw0UeSlCKqI3TCZzIZw==
X-CSE-MsgGUID: ckhcNfrqSG67Yn/ZM3lRyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77409429"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:37:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 14/17] drm/i915/dp: Simplify helper to get slice count with
 joiner
Date: Fri, 27 Sep 2024 14:08:28 +0530
Message-ID: <20240927083831.3913645-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

When bigjoiner is used, we need at least 2 dsc slices per pipe.
Modify the condition in intel_dp_dsc_get_slice_count() to reflect the
same.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3d4d8e58380a..7e7c5e113187 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1017,8 +1017,12 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
 
-		/* big joiner needs small joiner to be enabled */
-		if (num_joined_pipes == 2 && test_slice_count < 4)
+		 /*
+		  * Bigjoiner needs small joiner to be enabled.
+		  * So there should be at least 2 dsc slices per pipe,
+		  * whenever bigjoiner is enabled.
+		  */
+		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
 		if (min_slice_count <= test_slice_count)
-- 
2.45.2

