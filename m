Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5315A827A5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:23:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D9A10E8E5;
	Wed,  9 Apr 2025 14:23:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tt0pzaIS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8BB610E8E5;
 Wed,  9 Apr 2025 14:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208635; x=1775744635;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QuvU3l+WZY5oOVWTOLIkBSclqi0R0hETFDPS0pyKjWI=;
 b=Tt0pzaISK2EIMYu6wkSGbURCiCeLyP+G4I2yo1Z7qdD3XYUE3w2UFxIS
 aRQXKaUMFVooq5D/VBmfDbAfCutgUSrN8LI7goR1gdREcXqfG5A24SQNx
 B8KwwMVR303Srq+MhRyLn3CFC4tEufRM3/tbmGGnD2R1LklO3wm3vBA3G
 DZT10TvTXt6VxxFxyB8/Sc4eSIAHH/fzAU3MJq0Ldnq437Un63rKeVNrn
 sEyckVgiZYlk9xqyk6kSxa/cBawQSYXxMbCSGJdYRcODUFexl3q8tzKGu
 MWelqccBjOrviz5U/IQ1qDtMh7/AuzyGOsfZAD/q/weu7oiHPHkwqKxkN Q==;
X-CSE-ConnectionGUID: b7ARDnf6TfOS0xVdVoOlPw==
X-CSE-MsgGUID: Rgih73gXSMSi7UTQoI/9sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49534298"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49534298"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:23:54 -0700
X-CSE-ConnectionGUID: 9F2Wb5IzSsS9lT7xzRkQYQ==
X-CSE-MsgGUID: 4KrBP+wKSH+W7SPd8447AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133591036"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:23:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/5] drm/i915: error capture cleanups and refactor
Date: Wed,  9 Apr 2025 17:23:42 +0300
Message-Id: <cover.1744208554.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

v2 of [1] addressing Ville's feedback.

BR,
Jani.


[1] https://lore.kernel.org/r/20250325125954.1805212-1-jani.nikula@intel.com


Jani Nikula (5):
  drm/i915: use 32-bit access for gen2 irq registers
  drm/i915: record GEN2_IER in gtier[0] for pre-ilk error capture
  drm/i915: stop recording IER in error capture
  drm/i915: use display snapshot mechanism for display irq regs
  drm/i915: use graphics version instead of PCH split in error capture

 .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |  5 +++
 .../drm/i915/display/intel_display_snapshot.c |  5 +++
 drivers/gpu/drm/i915/i915_gpu_error.c         | 35 +++----------------
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 --
 5 files changed, 42 insertions(+), 33 deletions(-)

-- 
2.39.5

