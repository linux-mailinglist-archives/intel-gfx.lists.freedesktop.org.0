Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D219D02C82
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 13:57:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BFB610E1C2;
	Thu,  8 Jan 2026 12:57:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXsyXKRy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A41C610E709;
 Thu,  8 Jan 2026 12:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767877063; x=1799413063;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mAmcMBpo1MBYEiWglkSYIR5PeAnnU6nLbWe/oEGkeJ8=;
 b=NXsyXKRyui0HjnhOYYH2iF7SQFFh+j2GB2gGIMo0p6bvpa5Si9t+weNh
 ugeTFwRfYBR9bgj3kNHLPb5XgL/n9uF34FWamsBNMtpjqHizdXL3GA2j6
 laehsfj47TdfZkpKwCLE0xOVDLlgfzqV+Yyi9vMWv3JwtKXsmryfUP4mA
 A010EHvXgIDJJ/q2nnSwp+BqvhM4uF1FggATnMz2pevWn5EkpNN2d/oqr
 6cEG8ceuFePQYjZpFTFzpS+TvbweRrwCoLFxnr/v9u/B7g7RpUI2CNOnd
 hVK5qw1k7OeCFCW/0r4k9kIHT30jjKo6nFxXYyzthth9AxUxWDBFD0L3Y w==;
X-CSE-ConnectionGUID: I0TyLL1ORqyBtUfMWJOimg==
X-CSE-MsgGUID: lwmNuz/pSO6E+tE4UQZerA==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="80617947"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="80617947"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 04:57:42 -0800
X-CSE-ConnectionGUID: XOkQf4ikQa6IckOZRZOIpQ==
X-CSE-MsgGUID: Mt1qirRxQa+0DcahopASrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="208038818"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 04:57:41 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] Add VBT-based eDP Pipe Joiner control
Date: Thu,  8 Jan 2026 18:11:39 +0530
Message-ID: <20260108124141.1407760-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Add VBT-based control for the eDP Pipe Joiner feature.

Patch 1 parses a new VBT field (BSpec: 20142) that lets OEMs enable or
disable joiner per panel. Patch 2 uses this field to decide joiner usage
for eDP.

Also added decoding logic for the same in IGT intel_vbt_decode tool:
https://patchwork.freedesktop.org/patch/697477/?series=159805&rev=1

Ankit Nautiyal (2):
  drm/i915/vbt: Add edp pipe joiner enable/disable bits
  drm/i915/dp: Avoid joiner for eDP if not enabled in VBT

 drivers/gpu/drm/i915/display/intel_bios.c          | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 5 +++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h      | 1 +
 4 files changed, 11 insertions(+)

-- 
2.45.2

