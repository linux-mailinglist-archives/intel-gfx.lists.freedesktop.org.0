Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A707B8B13E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1993A10E068;
	Fri, 19 Sep 2025 19:30:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AvSyD0lD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B12F10E068;
 Fri, 19 Sep 2025 19:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310205; x=1789846205;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yhfJIUKvuLQqJiiIyM7m0gf+LtZYxxlp0WoLotRAhB0=;
 b=AvSyD0lD0vZK4FUEhKOFFcmyV3LQqfSnK8BncdMl3nN4nNQhysKPLPF3
 SdhH4c6Ty2++zUUPgfNiw+eu40l1ML0midrI8GnXwUAUorbEg8+/dbqFy
 bhJVxu1dIA/k4eNGZXOj9itFabRJNvMdsSD1GkOiuLfxYhH8kqMdLsL0q
 naSELTg+VzCbpdjrnfOiB2h2eTXgEfwYaRAfZYOGDVbXtI9+ILtktyaUd
 aX5KF7cvwawWvQ69quCGWM+4XPS3R7aG8oENJvxAxB2LY7JOI9hvwSCW/
 o28369j0F7gB8CdlLhc/VfPfY8ycoVlKPnHJbig8Q6VV2Dr/nU25Z39TJ A==;
X-CSE-ConnectionGUID: 3CFIvRvYQ3KqyYAZYBClNw==
X-CSE-MsgGUID: f6MyMeHmQqCcxGRaJ1UC8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240235"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240235"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:04 -0700
X-CSE-ConnectionGUID: 8SeAFJ0GRIKbjr2MQjLfpQ==
X-CSE-MsgGUID: ZCLyH6GbQWGgr44ZoohgKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="176722838"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:03 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/13] drm/1915: skl+ watermark/latency stuff
Date: Fri, 19 Sep 2025 22:29:47 +0300
Message-ID: <20250919193000.17665-1-ville.syrjala@linux.intel.com>
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

v2: Repost the whole thing to help CI apply it

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

 drivers/gpu/drm/i915/display/skl_watermark.c | 158 +++++++++++++------
 drivers/gpu/drm/i915/soc/intel_dram.c        |  10 +-
 2 files changed, 116 insertions(+), 52 deletions(-)

-- 
2.49.1

