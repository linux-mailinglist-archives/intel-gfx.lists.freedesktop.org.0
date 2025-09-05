Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B27B45AF8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:52:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65DDD10EBC2;
	Fri,  5 Sep 2025 14:52:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jpAZ1Y32";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B4D10EBB6;
 Fri,  5 Sep 2025 14:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757083937; x=1788619937;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=03uiZ61TTyDK6LbNmKU7qQ0UHRI6us9nKKVp2+iAafk=;
 b=jpAZ1Y320c66uIrxRXPsI9eMm/p7hsrjCIaWRDJ/i+WMwUzdoPB5mG0Z
 28JHm2iKXb0ET+6HZREOddBsdG0Ekn8jwzMYPj0gxitPC4kMMwGImMoaK
 lZVcxxR99Z2fUaUQPuU+WTitOyA5vg2c2R8l9qMXB+3h5X9BZkeLCwaER
 OADMQ31O64aVJ/Nt88+51pJVj3EZC9VM4+3yeqX6Jc+sZAEeTyLgM8i6z
 0vCcQ643SQEQkzNNmF+e4dttA7yLvjyeDslIhde+V2eYTSZCHD9zusUGV
 sgHRCI1yYJpGe72B0ra2tgPcx/whQUXsvk7keD5qzq6mmJbcdqEhTkafl w==;
X-CSE-ConnectionGUID: OHOkVkljRUqZFiHuLjQAtQ==
X-CSE-MsgGUID: JdYFh+d5RKK3sIBD9DUszw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="82027595"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="82027595"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:17 -0700
X-CSE-ConnectionGUID: 0ifdurlcSVKq7g36PpFRYg==
X-CSE-MsgGUID: +tud6ei0QrOpBBj6Pv+tAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="195837334"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:15 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/13] drm/1915: skl+ watermark/latency stuff
Date: Fri,  5 Sep 2025 17:51:59 +0300
Message-ID: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
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

