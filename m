Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C801979C2D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 09:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0B310E054;
	Mon, 16 Sep 2024 07:43:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FcuCx3pA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51BD910E054
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 07:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726472615; x=1758008615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bMr5MpoDDcjW7NvggYc0/yCBxZgQvHP8tqwVS584JCM=;
 b=FcuCx3pAyk3nU0uDMcyPTt+G+t3dzuLq88uTrPE5Pv6+ia0C7Y08Mno7
 3WDSpBK7IhbtWxAqs4eTWko0PEgvdpAIzWIoGHUiR5rBG/SDB4uowspwM
 +wHtc8WkJePNUAK3eNq1FsS1IzW+FqyA/j2vvssvUz1qzq2K3vpqQC/0s
 ENpESpbcoVsWs21RC7gSUnjZ2FVwgTaP2jtfL7LaKEtA0p9HiYbMyGMXG
 0eBhpz+ZCLmQpsrYSO2LSA9qBM/nwezJ8vmaP05JMbX+RqBxnADfHRo7X
 CEpd5nzI+RE6C1D6YFw+7JinjLLobfEi7/7YlS/HEboaJNjoJgZN4pYxh w==;
X-CSE-ConnectionGUID: CjDFRL+WQs+qIldAr2ynqw==
X-CSE-MsgGUID: mB7l3HvYQRCoveRqArEmSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25224130"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="25224130"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 00:43:35 -0700
X-CSE-ConnectionGUID: v49UoMyAQoeo3Jw6IFG0yQ==
X-CSE-MsgGUID: eKG9UeeWRzmrNOojVZ6ejg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="99646567"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.28])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 00:43:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/2] Block DC6 on Vblank enable for Panel Replay
Date: Mon, 16 Sep 2024 10:43:18 +0300
Message-Id: <20240916074320.2108380-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
prevent DC6 in case of Panel Replay. This causes problems if user-space is
polling for vblank events.

v2: set/clear block_dc6_needed in intel_crtc_vblank_on/off

Jouni Högander (2):
  drm/i915/display: Add block_dc6_needed variable into intel_crtc
  drm/i915/display: Prevent DC6 while vblank is enabled for Panel Replay

 drivers/gpu/drm/i915/display/intel_crtc.c     | 12 ++++++++
 .../gpu/drm/i915/display/intel_display_core.h |  2 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  7 +++++
 drivers/gpu/drm/i915/display/intel_psr.c      |  1 +
 5 files changed, 50 insertions(+)

-- 
2.34.1

