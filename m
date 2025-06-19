Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9C1AE03BF
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 13:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B8AE10E9FE;
	Thu, 19 Jun 2025 11:34:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nxUPn3hM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B9C10E9FA;
 Thu, 19 Jun 2025 11:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750332885; x=1781868885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jQYEtShTDoka6CpkOW5uiP+IxfmX47zG27FC4od6Pus=;
 b=nxUPn3hMOuOmLi9XWLAh9QnOG68NQ6DtI0bPwQZrTpUKzEN6gMpT9UMu
 EVZ9324P5GYgWVV8xZgJuV3x8Brc9uijDm3NDfN77EdaVIw0dyiKOepBD
 c/WG962j0KAfrMU592E2g0Wl13gfBJAnDTDmq5UJggOjHAIl4Stc3LiIu
 Sc83ZAR+q+rN9B7FpY1SJSBSrEMy67oaDrPN1zxVRkaM8GCWtzMcCyv6l
 IkaZU8MVEC4+vq2luBByoHlMRBObWf3+U6dpmcYw0KnKRSyMqLEeZLhAH
 YbFOglf9lX99ceYclQ+RheKAeeihJhd3Vy6CFYDimuHCQSBjpexzRvQQZ A==;
X-CSE-ConnectionGUID: rgPH4dOySKGXe/AK2zMzsQ==
X-CSE-MsgGUID: /UECB4miQCKvkEaBg78SNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52734558"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="52734558"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:34:44 -0700
X-CSE-ConnectionGUID: YAgYHfj6QPmpRAbaUeBioA==
X-CSE-MsgGUID: ANaagu00Qly/TUGzhOVrhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="150847890"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa007.jf.intel.com with ESMTP; 19 Jun 2025 04:34:42 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Changes in hdcp2_stream_encryption 
Date: Thu, 19 Jun 2025 17:03:38 +0530
Message-Id: <20250619113340.3379200-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Contains changes in hdcp2_stream_encryption where we remove the
intel_de_read from the WARN_ON function also we move to using 
HDCP2_STREAM_STATUS for our WARN_ON for platforms PTL and above.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Do not use inline intel_de_read
  drm/i915/hdcp: Use HDCP2_STREAM_STATUS instead of HDCP2_AUTH_STREAM

 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 22 +++++++++++++++----
 .../gpu/drm/i915/display/intel_hdcp_regs.h    |  4 ++--
 2 files changed, 20 insertions(+), 6 deletions(-)

-- 
2.34.1

