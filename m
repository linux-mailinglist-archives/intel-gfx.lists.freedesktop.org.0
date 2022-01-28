Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFF249F766
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A35E10ED34;
	Fri, 28 Jan 2022 10:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D950010ED34
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366280; x=1674902280;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pgmHWlLq5FKJD7lDjyvSEEoUCWjS2+4cNXvcRojjJY4=;
 b=I6PvwQTdJs0iO5yAuPBLE6Wt5e76mDSLf7wtEQ4GHvp+QlRyk0w6ICDC
 ZivShForX5h6CuUu/vnNEZXtT4m4NzQkS4jZ3ct3Zm+8gUsXDH7aid5+4
 9maYXcJpjk3yS1EG+l5/468eYVQP8xTbADcA3I0auKOxDepoNKtz09JOa
 s/5A2Z8zq8H16gIEeDJV9R3jDgNQ3kdCUijbQ1zd8JKpk9HCiRG6kQqHY
 E1Wey/CNQW47ia/Met6Pm38jVEd+DZi9wjYAUKOynVtkJrsF9fHef6xgh
 FT3upMRg03SPRVAt3FJ0Sv2a7hfjVzGe37hV7U/lAqfzXntaDRXvF7e8x g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="245937967"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="245937967"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="496097595"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 28 Jan 2022 02:37:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:37:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:40 +0200
Message-Id: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/17] drm/i915: M/N cleanup
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

Rehashed version of the M/N cleanup after Jani (rightly)
complained about the legibility of some of the patches in
the v1 series. These are chunked to a finer pulp, some got
revised a bit, and I left out a few of the FDI related
things for now. I'll revisit the PCH port/FDI topic later,
for now I just slapped in an extra patch to make sure we
don't try to use DRRS on PCH ports.

Ville Syrjälä (17):
  drm/i915: Nuke intel_dp_set_m_n()
  drm/i915: Nuke intel_dp_get_m_n()
  drm/i915: Nuke ilk_get_fdi_m_n_config()
  drm/i915: Split intel_cpu_transcoder_set_m_n() into M1/N1 vs. M2/N2
    variants
  drm/i915: Split intel_cpu_transcoder_get_m_n() into M1/N1 vs. M2/N2
    variants
  drm/i915: Pass crtc+cpu_transcoder to intel_cpu_transcoder_set_m_n()
  drm/i915: Move PCH transcoder M/N setup into the PCH code
  drm/i915: Move M/N setup to a more logical place on ddi platforms
  drm/i915: Extract {i9xx,ilk}_configure_cpu_transcoder()
  drm/i915: Disable DRRS on IVB/HSW port != A
  drm/i915: Extract can_enable_drrs()
  drm/i915: Fix intel_cpu_transcoder_has_m2_n2()
  drm/i915: Clear DP M2/N2 when not doing DRRS
  drm/i915: Program pch transcoder m2/n2
  drm/i915: Dump dp_m2_n2 always
  drm/i915: Always check dp_m2_n2 on pre-bdw
  drm/i915: Document BDW+ DRRS M/N programming requirements

 drivers/gpu/drm/i915/display/g4x_dp.c         |  18 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 266 ++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h  |  32 ++-
 .../drm/i915/display/intel_display_types.h    |  19 --
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 -
 drivers/gpu/drm/i915/display/intel_drrs.c     |  50 +++-
 .../gpu/drm/i915/display/intel_pch_display.c  |  54 +++-
 .../gpu/drm/i915/display/intel_pch_display.h  |   6 +
 9 files changed, 259 insertions(+), 202 deletions(-)

-- 
2.34.1

