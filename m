Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 604E1B45B3C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 632C810EBC9;
	Fri,  5 Sep 2025 14:58:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aywYu/Qb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D64A810EBC7;
 Fri,  5 Sep 2025 14:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084317; x=1788620317;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=03uiZ61TTyDK6LbNmKU7qQ0UHRI6us9nKKVp2+iAafk=;
 b=aywYu/QbQUztGObY1qRUYMh/Wvb8H+MxUZ1Hg688i2fmSmHPnmhJ+5T9
 GJ5T7MVazH7kTKsrXNyrxBU2D8wLU7L9ivv89tuYfqcqkkkQbFl2Gxewf
 aiQcsxs9FUJAKHDAqLKPcJ2obAGEwedCJYn+V7WGvRwf+MiJfcLk0vPK6
 MI4oaWMyGQQmI+kN1vAS0XK+OlhPLGs1J6sox7bK70/uMdAfRIhxDk88j
 sWnr5Y/ULl28OFrns3zKt0zDgTH3fQkSL31tF1VWq1xPasoUHz798z/hE
 uqf9OIe/g2Ngl+zY3ee/57IqVgEJ6A43OpIFTdf9RgNLRAztPXI3eCqBp w==;
X-CSE-ConnectionGUID: oDM511LuTiy3WN3c1ZaWFQ==
X-CSE-MsgGUID: x6CfPsAlSLOmfuKe73Ookg==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="58469625"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="58469625"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:58:36 -0700
X-CSE-ConnectionGUID: Y3KX1KoiSIS11lo/tIfR+Q==
X-CSE-MsgGUID: i8AApBgAR8i6O/L4LLpF3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172105272"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:58:35 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/13] drm/1915: skl+ watermark/latency stuff
Date: Fri,  5 Sep 2025 17:58:19 +0300
Message-ID: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

A bunch of claenup to the watermark latency setup on skl+, and
a few potential fixes for some edge cases.

Ville Syrjälä (13):
  drm/i915/dram: Also apply the 16Gb DIMM w/a for larger DRAM chips
  drm/i915: Apply the 16Gb DIMM w/a only for the platforms that need it
  drm/i915: Tweak the read latency fixup code
  drm/i915: Don't pass the latency array to {skl,mtl}_read_wm_latency()
  drm/i915: Move adjust_wm_latency() out from
    {mtl,skl}_read_wm_latency()
  drm/i915: Extract multiply_wm_latency() from skl_read_wm_latency()
  drm/i915: Extract increase_wm_latency()
  drm/i915: Use increase_wm_latency() for the 16Gb DIMM w/a
  drm/i915: Extract sanitize_wm_latency()
  drm/i915: Flatten sanitize_wm_latency() a bit
  drm/i915: Make wm latencies monotonic
  drm/i915: Print both the original and adjusted wm latencies
  drm/i915: Make sure wm block/lines are non-decreasing

 drivers/gpu/drm/i915/display/skl_watermark.c | 160 +++++++++++++------
 drivers/gpu/drm/i915/soc/intel_dram.c        |  10 +-
 2 files changed, 118 insertions(+), 52 deletions(-)

-- 
2.49.1

