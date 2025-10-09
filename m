Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEAFBC7D14
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D28FF10E94D;
	Thu,  9 Oct 2025 07:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUJHvkDR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECEA510E94D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 07:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759996536; x=1791532536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OZ3F0g6lZD+NxVA+zD3ROHC+b4cNMkdac8+LbaZ+DH0=;
 b=kUJHvkDRRUpjaq8tIS47yNoQ6uxoJHvcGLbnNtKwaro0NGMrGDl419xw
 LreA/mnCz+BgdI7vU2RkkuquZ9Qkp8ia0tmM6uG5Cn26lZF9WdxCWNVIE
 rwRM3f6xE9E4SBkMl9QmFz6BSVXPq2qAU9o42X2IRIHk/D+1e6H4kitqg
 ud1JWcwxSdbcHtOrMsFOYb9/ROTOyQVxFH5NxTNpqWysAmLhCIGi0KZy1
 mXzzx4D1PuLV/U68l6lubOHVGPf6kmAm8Pm05kSqxgw1HmdWZT/CUP0yy
 r6XclCDkQ/j0cPhrqPsbdzexwSdMnFN+ETuvJ4/YgFzsWvK9xN7FSBtLu g==;
X-CSE-ConnectionGUID: zqJ6YxgYQGaXlqwa74ISBQ==
X-CSE-MsgGUID: PtPztXLvS5a2YqIJvR4DMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72880717"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72880717"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:36 -0700
X-CSE-ConnectionGUID: Xlbc7i+gTuC77zt4uX3dDg==
X-CSE-MsgGUID: ZztUvEY0Q8Cl/7ZUmKqUBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="211600917"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.0])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:34 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 0/7] drm/i915/wm: some clean-ups and a bit of refactoring
Date: Thu,  9 Oct 2025 10:54:31 +0300
Message-ID: <20251009075517.837587-1-luciano.coelho@intel.com>
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

This is v3 of my initial clean-ups and small refactoring in
preparation for further refactoring of the watermark code.

Please review.  Changes in v3 described in the relevant patches.

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

