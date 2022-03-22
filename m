Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF434E3DF1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F21B10E557;
	Tue, 22 Mar 2022 12:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB12810E54F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950418; x=1679486418;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zBMAm4DIk1nNcJhaFjd9wJLi7ZlGijHD+UW0py6STgM=;
 b=LOx5KooOAT7IX9IWIVVHS7XOoOlbvDFkAbkpiJXDrw7n8pEJZKGyyI5B
 TsIZ3pRm4n7ndr54YXEn1vz3ahgqjxi9GImjTjPVapJog1lETkF2ZZ2Kk
 zTN8i7IHgMB8pc/rU0U6mJXbdE2fj1seb6y9lazApuHMi3a02YUijz6qD
 HD9JCmzLArHF0CwBVb5HEMtP+u3Hmv0GuKjlyNgaTfZjOIKYb81HIVTiY
 O+R09VnmyLVFRprch89Q0RewubP4CXlXo/H+R5xfLrfgzTDDyuaUCsjd9
 TU6DPHT89JShA5ADncBaKKLnvf3J+8q9+1z+frNix+VFJJw3Is1BIBHjb Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="237740248"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="237740248"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="692522181"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 22 Mar 2022 05:00:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:03 +0200
Message-Id: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/12] drm/i915: Fix up DP DFP 4:2:0 handling
 more
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

Currently we're failing to respect the sink's max TMDS clock
in the DP HDMI DFP code, and exceeding them means the sink
won't show a picture [1][2]. So let's improve the situation by
checking those limits, and generally fixing up a bunch things
in the deep color/4:2:0 related stuff for both native HDMI
and DP HDMI DFPs.

The end result is fairly unified apporach to this stuff on
both sides of the aisle. There's probably more we could try
to abstract to share even more code. But that will need a lot
of actual thought so leave it for later.

The high level algorithm is basically now:
for_each(respect TMDS clock limits, disrespect TMDS clock limits)
        for_each(YCbCr 4:2:0 only, RGB 4:4:4, YCbCr 4:2:0 also)
                for_each(12bpc,10bpc,8bpc)
                        compute_and_check_the_things
with some obvious tweaks for HDMI vs. DP specifics.

[1] https://gitlab.freedesktop.org/drm/intel/-/issues/4095
[2] https://gitlab.freedesktop.org/drm/intel/-/issues/2844

v2: HDMI stuff was all merged, DP stuff has been rebased

Ville Syrjälä (12):
  drm/i915/dp: Extract intel_dp_tmds_clock_valid()
  drm/i915/dp: Respect the sink's max TMDS clock when dealing with
    DP->HDMI DFPs
  drm/i915/dp: Extract intel_dp_has_audio()
  drm/i915/dp: s/intel_dp_hdmi_ycbcr420/intel_dp_is_ycbcr420/
  drm/i915/dp: Reorder intel_dp_compute_config() a bit
  drm/i915/dp: Pass around intel_connector rather than drm_connector
  drm/i915/dp: Make intel_dp_output_format() usable for "4:2:0 also"
    modes
  drm/i915/dp: Rework HDMI DFP TMDS clock handling
  drm/i915/dp: Add support for "4:2:0 also" modes for DP
  drm/i915/dp: Duplicate native HDMI TMDS clock limit handling for DP
    HDMI DFPs
  drm/i915/dp: Fix DFP rgb->ycbcr conversion matrix
  drm/i915/dp: Disable DFP RGB->YCbCr conversion for now

 drivers/gpu/drm/i915/display/intel_dp.c | 320 +++++++++++++++---------
 1 file changed, 201 insertions(+), 119 deletions(-)

-- 
2.34.1

