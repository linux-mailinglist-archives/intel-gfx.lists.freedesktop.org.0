Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F44A142E1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:16:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B15310E218;
	Thu, 16 Jan 2025 20:16:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bCcQ0PSV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEED10E218
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 20:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737058601; x=1768594601;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SpMCC1zs/U1ZzmT7LIjAcSNg0A0cBwSXM5j96ocW8qA=;
 b=bCcQ0PSVmzbaBRP3dGTyB/BQtsINLQNocMnPIZYczmFiB7pTaDsU54yS
 ieCbMdGW5DedmDMh0RCeFlA38CFktHeZ+capBUJcct0oxJMVgdRJIaKuO
 pjxCIOWqPQRqaW7+/3Bg9liMiPQLa2q7qDF2kMkrGYQC1PLdxg+wLHXJV
 5tev/+/s5eCpi7wuldT7LZi3O99QicKR8gUxhjEXguZpgjicMWy3Z4m3W
 5j5shJjk+wEDTFaOBpDYn2zOZjvxpedvL/doTH8e4MjbUsLSu585n2hS+
 UQWxTyytRh6hLBgONWxYSG/ihKI3qy6uxnWZ3TnWHtKK4VxCVOOQC72WP g==;
X-CSE-ConnectionGUID: 2wF1YOAuTt6mT5D5pn6VRw==
X-CSE-MsgGUID: whsvs9qaTfmXjxTnItn1qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40279228"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="40279228"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:16:40 -0800
X-CSE-ConnectionGUID: zdu2LjL2R6iiQRYcQlXpVw==
X-CSE-MsgGUID: yL6VomVJQtKYQT75m+K2rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105743479"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 12:16:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 22:16:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: [PATCH 0/8] drm/i915: Handle vblank delay vs. fastboot and finish DSB
 plane update enabling
Date: Thu, 16 Jan 2025 22:16:29 +0200
Message-ID: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Try to deal with the fact that the GOP may configure the vblank delay
differently than what we do, without resorting to a full modeset
to fix it up. It's a bit questinable as the relevant register are
single buffered, but so far I've not seen any real issue from frobbing
them live.

And I sucked in the last two patches from my earlier DSB plane update
series, though I tweaked one of them to only add the vblank delay when
VRR is actually possible. That also avoids accidentally adding it for
DSI which wouldn't work because the DSI code doesn't use the normal
transcoder programming stuff.

Cc: Paz Zcharya <pazz@chromium.org>

Ville Syrjälä (8):
  drm/i915: Keep TRANS_VBLANK.vblank_start==0 on ADL+ even when doing
    LRR updates
  drm/i915: Handle interlaced modes in
    intel_set_transcoder_timings_lrr()
  drm/i915: Update TRANS_SET_CONTEXT_LATENCY during LRR updates
  drm/i915: Warn if someone tries to use intel_set_transcoder_timings*()
    on DSI outputs
  drm/i915: Extract lrr_params_changed()
  drm/i915: Allow fastboot to fix up the vblank delay
  drm/i915/dsb: Add support for triggering VRR push with DSB
  drm/i915/dsb: Allow DSB to perform commits when VRR is enabled

 drivers/gpu/drm/i915/display/intel_display.c | 68 ++++++++++++++++++--
 1 file changed, 61 insertions(+), 7 deletions(-)

-- 
2.45.2

