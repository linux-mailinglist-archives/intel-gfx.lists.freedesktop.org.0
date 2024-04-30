Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D48B78B6F38
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:10:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E9E10F7A6;
	Tue, 30 Apr 2024 10:10:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UhsUu6ms";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E0BA10F7A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471819; x=1746007819;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kNuZxXfPxOKMrVf9YIv+t5sMIqswSq4LQDH775+69rI=;
 b=UhsUu6msdAiynGiHUizLLggLyqUlIFNfUGreM2GoMdB6Ehim8CTubnGB
 1QWcbFFL+ISqNaye39XTYtE7slzk5oqmiMtuNnNPzrggxhgYbj98d1SOL
 Z5h7k3pFzV0gtQt44LRJH5rI+4c1ip0wjRrT27Zz9m0Q9hsApI0QHVxFv
 WMF2ZaY/mU3tFFnhHL2GkwIAMu2I/37zGhzB0cHjeJmeFb7bHJKS5NtYg
 s9+ik4va36rcYjkk8f0pzr94rawMSfIn/kmTNGjNN9JqsOJFHayhRKPdG
 T+8wnv9w2wR81UMzBNRk5JNQ+nyIanOh8ciJnFkKtMYyjIWvLim3KaewT w==;
X-CSE-ConnectionGUID: hfDtpapLTk6+jbU9nk8Kng==
X-CSE-MsgGUID: wZT13VLgTQCGE0PDNmGipQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10046094"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10046094"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:19 -0700
X-CSE-ConnectionGUID: DJYpdyCCSOGMpMODNPUWjQ==
X-CSE-MsgGUID: iNsJW2aORayKPbl7biTh/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="49623147"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 00/19] drm/i915/psr: implicit dev_priv removal
Date: Tue, 30 Apr 2024 13:09:54 +0300
Message-Id: <cover.1714471597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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

Similar to [1], but for intel_psr_regs.h.

Again, if this is too much, I can squash the patches. But this is
probably easier to review.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1714399071.git.jani.nikula@intel.com


Jani Nikula (19):
  drm/i915: pass dev_priv explicitly to TRANS_EXITLINE
  drm/i915: pass dev_priv explicitly to EDP_PSR_CTL
  drm/i915: pass dev_priv explicitly to TRANS_PSR_IMR
  drm/i915: pass dev_priv explicitly to TRANS_PSR_IIR
  drm/i915: pass dev_priv explicitly to EDP_PSR_AUX_CTL
  drm/i915: pass dev_priv explicitly to EDP_PSR_AUX_DATA
  drm/i915: pass dev_priv explicitly to EDP_PSR_STATUS
  drm/i915: pass dev_priv explicitly to EDP_PSR_PERF_CNT
  drm/i915: pass dev_priv explicitly to EDP_PSR_DEBUG
  drm/i915: pass dev_priv explicitly to EDP_PSR2_CTL
  drm/i915: pass dev_priv explicitly to PSR_EVENT
  drm/i915: pass dev_priv explicitly to EDP_PSR2_STATUS
  drm/i915: pass dev_priv explicitly to _PSR2_SU_STATUS
  drm/i915: pass dev_priv explicitly to PSR2_MAN_TRK_CTL
  drm/i915: pass dev_priv explicitly to PIPE_SRCSZ_ERLY_TPT
  drm/i915: pass dev_priv explicitly to ALPM_CTL
  drm/i915: pass dev_priv explicitly to ALPM_CTL2
  drm/i915: pass dev_priv explicitly to PORT_ALPM_CTL
  drm/i915: pass dev_priv explicitly to PORT_ALPM_LFPS_CTL

 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 14 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 89 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 40 ++++-----
 4 files changed, 85 insertions(+), 60 deletions(-)

-- 
2.39.2

