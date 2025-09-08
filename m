Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDE8B48580
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 09:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF83F10E47D;
	Mon,  8 Sep 2025 07:37:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fFVhABv7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E1210E47D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 07:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757317070; x=1788853070;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KBsbiRjhK42S8xOByCfDX6FBFh1GnlVea5XHMIRs9pM=;
 b=fFVhABv7DWlbeXFqRX9Xy2Es8qDHzDo6UYrEqX90f82+y7b3LPvTSgcy
 YkQD878F5Y234JV0fmlY5BUyezmppFaEWLKaYkGI152HzPqLLiqkW+Vvg
 zBQX9fG4FOWGlVUcMsTJWF0GkIE75PiXNtxExKgTQvZbIgsy2IpbFB4Y+
 AYinCDIqcQnd55wlHVvG0wfFiL5roDz2op/GiDGNW8B/fhy+0rGQ+yB3u
 KJkou6nv/P5O8VAB3T/jzf6EMV8Yd8gUhsjsnr0oH1HNx4IKX4wdemChM
 fJVtq6i7In4pqAky9p6MnQfJEdyWPi3wUcO0ZMC8vlDHC8G7un0QGNjSI Q==;
X-CSE-ConnectionGUID: E+UUygVJSBaAqt81qsrjSg==
X-CSE-MsgGUID: QnmU/Fd7QAWWYga77CwhtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59506296"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="59506296"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:50 -0700
X-CSE-ConnectionGUID: TlP3vO9iQnCtLHLRRs4yXQ==
X-CSE-MsgGUID: OTD4zVPsRoKAl40jSFapOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="171986983"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.210])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:49 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915/wm: some clean-ups and a bit of refactoring
Date: Mon,  8 Sep 2025 10:35:29 +0300
Message-ID: <20250908073734.1180687-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
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

Hi,

Here are some initial clean-ups and small refactoring in preparation
for further refactoring of the watermark code.

Please review.

Cheers,
Luca.


Luca Coelho (6):
  drm/i915/wm: clarify watermark ops with comments
  drm/i915/wm: move intel_sagv_init() to avoid forward declaration
  drm/i915/wm: remove stale FIXME in skl_needs_memory_bw_wa()
  drm/i915/wm: convert x/y-tiling bools to an enum
  drm/i915/wm: convert tiling mode check in slk_compute_plane_wm() to a
    switch-case
  drm/i915/wm: move method selection and calculation to a separate
    function

 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 162 +++++++++++-------
 2 files changed, 106 insertions(+), 62 deletions(-)

-- 
2.50.1

