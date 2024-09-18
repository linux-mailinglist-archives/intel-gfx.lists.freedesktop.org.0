Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A240B97BE2B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295F210E5D7;
	Wed, 18 Sep 2024 14:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H+ICt10L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B34310E5C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 14:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670689; x=1758206689;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fix6k733lIVywYQX2oiRdZjaRFJ5MrccZs0Y2P1e3uk=;
 b=H+ICt10L1foglTnnDqBUEfRZDtV3ge5Oc7XNp4ij0boEtFZQdE4JJ1Fs
 HZ3tgIhbG+6QROs6e5dtD41dsPQYk0E2OO2MFaCh1wC3VaBsTwbkfbu+Z
 zB8+2vSv6aYx3aAakk5tmB5F94+tBotPc6AwUocQAIvSU+Fnn+0I5AR39
 dKlQd7NCpAjvs82DqgacuYz9ja9MI58z9RFhB0wrHTk+juOakORTu6PcF
 TMNDHhYVMrGdKAFer8ibqvxjzhA/B7oD+JWXwBTIZraVgFrQV/B6q8JPr
 Zfxu+keuONnp3Bc3ixd1S71YkMzZPFWIV3IO2CuIjRuWd+shI6s1LOaAG g==;
X-CSE-ConnectionGUID: XNnW2ikEQyqs83ofLnltBQ==
X-CSE-MsgGUID: 4ozYypv3SJ6uJIm2IQIaSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36963585"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36963585"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:44:48 -0700
X-CSE-ConnectionGUID: xXhfEo5XTuuLrWezijsf3Q==
X-CSE-MsgGUID: taW0qxxPTuCCvsTYOEEgMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69711328"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 07:44:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 17:44:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] drm/i915: 10bpc/fp16 + CCS support
Date: Wed, 18 Sep 2024 17:44:38 +0300
Message-ID: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

Enable 10bpc+CCS scanout support for ICL+, and fp16+CCS
scanout for TGL+, and toss in a couple of drive-by
cleanups in the end for good measure.

Test-with: 20240918120518.30258-1-ville.syrjala@linux.intel.com

Ville Syrjälä (7):
  drm/i915: Set clear color block size to 0x0
  drm/i915: Disable compression tricks on JSL
  drm/i915: Enable 10bpc + CCS on TGL+
  drm/i915: Enable 10bpc + CCS on ICL
  drm/i915: Enable fp16 + CCS on TGL+
  drm/i915: Drop GEN12_MC_CCS check from skl_plane_max_width()
  drm/i915: s/gen12/tgl/ in the universal plane code

 drivers/gpu/drm/i915/display/intel_fb.c       | 96 ++++++++++++++++--
 .../drm/i915/display/skl_universal_plane.c    | 98 +++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  9 ++
 4 files changed, 179 insertions(+), 25 deletions(-)

-- 
2.44.2

