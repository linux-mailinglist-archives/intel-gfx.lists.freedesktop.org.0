Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54668BC0893
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 09:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E81610E58C;
	Tue,  7 Oct 2025 07:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oEvBr6O7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA0010E587
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 07:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759823867; x=1791359867;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BZKoJcND0kl6ircVoahKwAvZ644mxPPFJicLI554nWk=;
 b=oEvBr6O7FQdqddnRinSC8CORjU+FVmGz2zl19zy+6GRns2g5oiIoNJdt
 SKzj7yfn0OgdtzCUklSNDL4ObmTpEaHNqOxP4AezAOCn4O4OC0FU7APYa
 3pYdyse+mVygej7/W803s4Uveo31fXhMEz9xqHw9ESUC/7UrTuTh6wsTU
 5VxclFNyLDAbHnpz5sGnl4NNy/QyQIeGBtMhS9lhKrNMATfSOlzMo0hX6
 XDPAlGBiAKHkQM6gDV0DGUyPk6scUNNaeArBAJNqkNShsV9VQsAaC9eRg
 NXY44cUnCzo2SPzK8jH6+ZiGb4sSCXlXTxxYcxlGp8mchwumCOlflLFbz g==;
X-CSE-ConnectionGUID: Q/m2KpuVRkSXSYRk7LxuDg==
X-CSE-MsgGUID: psU+zmUaTWaLVKc0qEyyvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73104875"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73104875"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:47 -0700
X-CSE-ConnectionGUID: M0QbRIzVQByNeCutpUNJqw==
X-CSE-MsgGUID: Fq8QKTgpQrWdmMQxbhlUVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180017647"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.206])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:45 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/7] drm/i915/wm: some clean-ups and a bit of refactoring
Date: Tue,  7 Oct 2025 10:56:34 +0300
Message-ID: <20251007075729.468669-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
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

Hi,

This is v2 of my initial clean-ups and small refactoring in
preparation for further refactoring of the watermark code.

Please review.  Changes in v2 described in the relevant patches.

Cheers,
Luca.


Luca Coelho (7):
  drm/i915/wm: clarify watermark ops with comments
  drm/i915/wm: move intel_sagv_init() to avoid forward declaration
  drm/i915/wm: remove stale FIXME in skl_needs_memory_bw_wa()
  drm/i915/wm: convert x/y-tiling bools to an enum
  drm/i915/wm: convert tiling mode check in slk_compute_plane_wm() to a
    switch-case
  drm/i915/wm: move method selection and calculation to a separate
    function
  drm/i915/wm: reduce size of y_min_scanlines to u8

 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 166 +++++++++++-------
 2 files changed, 106 insertions(+), 66 deletions(-)

-- 
2.51.0

