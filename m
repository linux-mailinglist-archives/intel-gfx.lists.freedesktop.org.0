Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B99F489E081
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 18:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 926C810FBE2;
	Tue,  9 Apr 2024 16:35:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mu2cL30s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B37FD10FBE2
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 16:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712680505; x=1744216505;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L03mu3FtPSn3jULav2e1DkmxcIvZffpcGMrM43R361A=;
 b=mu2cL30svt2mBKXuSp1NQsn8b7s0ijqlLzvt9FSnf0O/VYhsWbGeqMo3
 ppwdTBgKkZnUwQMMjTwxOJSDKLv4qlmrBtMPq7hA2ZpGxjSvBZL6hQ9iE
 6Vsbk+ELHinrPzEdcVIhoQC7EHzd1dm2aDSdgsziAW8IcxRc2HMAFxfgC
 8OlkoaO1pAYdsqJ8B/eAX5k0hbi+vbxVKj6ybHw1fNEGGHIhXz/fPo5Ly
 gfznczH8z0FZAUgpJl7RlJ4JYJiCiK94B8CCDk9eKaOnKOZaTyvaraTN1
 62DByeYgK+j3hk6igmAkqrNCtv21N6+V8EY8khHEh1HSpH4s7VwpSlhV9 Q==;
X-CSE-ConnectionGUID: I3q8IKCgTI2yIjl+8IKZLQ==
X-CSE-MsgGUID: yiZ8EaC9TTy3QoOhBR+m0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18570834"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="18570834"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 09:35:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="827792673"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="827792673"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Apr 2024 09:35:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Apr 2024 19:35:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 0/6] drm/i915: Bigjoiner modeset sequence redesign and MST
 support
Date: Tue,  9 Apr 2024 19:34:56 +0300
Message-ID: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

Final pieces of the MST/bigjoiner modedest redesign.

Changes in v2:
- Reject PSR+bigjoiner combo
- Commit pipes in reverse order to avoid issues with
  slave pipe commits being completed prematurely.
  Should fix the gamma/DSB problems of v1.
- Address review comments
- Part of v1 was merged already separately

Changes in v3:
- Fix a rebase fail in function extraction
- Calculate DSC slices correctly for MST+bigjoiner (Imre)
- Most of v2 already merged

Stanislav Lisovskiy (1):
  drm/i915: Handle joined pipes inside hsw_crtc_enable()

Vidya Srinivas (1):
  drm/i915: Allow bigjoiner for MST

Ville Syrjälä (4):
  drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
  drm/i915: Utilize intel_crtc_joined_pipe_mask() more
  drm/i915: Handle joined pipes inside hsw_crtc_disable()
  drm/i915/mst: Add bigjoiner handling to MST modeset sequence

 drivers/gpu/drm/i915/display/intel_ddi.c     |  67 +++--
 drivers/gpu/drm/i915/display/intel_display.c | 252 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h |   6 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  62 +++--
 4 files changed, 228 insertions(+), 159 deletions(-)

-- 
2.43.2

