Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EED0D8FC905
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4785E10E3D8;
	Wed,  5 Jun 2024 10:26:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R9G4Frpf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67BF910E3D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583200; x=1749119200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+/CKhtos6P/n8COk0QZ4Dq0+UazEE99bZVZGtMhPTS4=;
 b=R9G4FrpfkKP52yMxPOySw0k1CoJKFDIjQJ85cjoJYcJ0SNkrA5mxyDi6
 FGMkv3hH7hxmyYjWSgSefsFXBb0ocR+IZGuHb2n3NkB9ozgCBD64PqSkR
 CqUFux2LLCgR/JQDfsCVeTtuox9kyz4lCDajzvhNOyr1iAvOb6mVMKT8x
 ylBljR/HMP0Kn1U34csKh+QIXYINZshE2kFh1xg+fT4xtJ7GQKmqQXnIv
 uuJfCbTf1sgwNn4Qswc5jw6RQt2beQvhwKDn/3H3CkUcvRcoOAkKcENQx
 vEq8UpBdgw8XhMYtlS9JYL/r0I7GLBTdV9L1t1fsXhdAdrIfM4yoo3Noi g==;
X-CSE-ConnectionGUID: uRZy1nqNTVmxJA+coq/AUg==
X-CSE-MsgGUID: wxiElLckQ72U7pRxcF/43w==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136118"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136118"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:40 -0700
X-CSE-ConnectionGUID: f5RQrisMRtWIvL2By/eFSg==
X-CSE-MsgGUID: IgQwbSsbTNyyPq0z7VBlqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686209"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 12/26] drm/i915/psr: Take into account SU SDP scanline
 indication in vblank check
Date: Wed,  5 Jun 2024 13:25:39 +0300
Message-Id: <20240605102553.187309-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

SU SDP scanline indication should be taken into account when checking
vblank length. In Bspec we have:

PSR2_CTL[ SU SDP scanline indication ] = 0: (TRANS_VBLANK Vertical Blank End- TRANS_VBLANK Vertical Blank Start) > PSR2_CTL Block Count Number value in lines
PSR2_CTL[ SU SDP scanline indication ] = 1: (TRANS_VBLANK Vertical Blank End- TRANS_VBLANK Vertical Blank Start- 1) > PSR2_CTL Block Count Number value in lines

Bspec: 49274

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 23c3fed1f983..471b60032304 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1250,6 +1250,9 @@ static bool vblank_length_valid(struct intel_dp *intel_dp,
 		crtc_state->hw.adjusted_mode.crtc_vblank_start;
 	int wake_lines = psr2_block_count_lines(intel_dp);
 
+	if (crtc_state->req_psr2_sdp_prior_scanline)
+		vblank -= 1;
+
 	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
 	if (vblank < wake_lines)
 		return false;
-- 
2.34.1

