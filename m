Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F38819CE0
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 11:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD0BD10E338;
	Wed, 20 Dec 2023 10:36:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2380010E338
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 10:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703068591; x=1734604591;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=84QtkhaIJ3ZgcfD/KEC4tc8NSn6X+iLlf2G4vSHz2WU=;
 b=kxSe762X1m7CTN4nM9OJsYWxV37+JtWj8tNG3o4BFWoT7+BmdFxsWB38
 u8r9ed19LbdZ4fW9oGPTF/tR2N7HIm+S3ozTPdV/368cnV3j8KAXKsT6Z
 DoFV7IWUN6GW7l0COPvKuE3Kg8VTeO7Dvf41kLExL3qRkU5AlcK6iWMRh
 Kg7hl/8Kb0vJItYOpoRTZiO5kfF2n5+6gp2YzX9p91Gj+cD3HTB6+KRTt
 3ogAE052Wbr+CT1qfBh1pM9NAbK9w0sXXgPI55IFU+c2seAY4PyNS3ZCz
 6NgoDZdjRNBsq0UHxsmO7hzVraLYEMs9VR+1yhG2XbUynRkz2vPeLFcBu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2631976"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2631976"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107686229"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107686229"
Received: from sparrish-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.221])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:30 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/7] VSC SDP rework
Date: Wed, 20 Dec 2023 12:36:02 +0200
Message-Id: <20231220103609.1384523-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

Current VSC SDP configuration code is broken:

1. Driver configured header and data is not used at all
2. Colorimetry data is not added into VSC SDP if PSR1 is used

This patch set fixes these problems and makes VSC SDP configuration a
bit more simpler by unifying PSR and non-PSR cases.

v2: s/-colorimetry/without colorimetry/

Jouni Högander (7):
  drm/i915/display: Remove intel_crtc_state->psr_vsc
  drm/i915/display: Move colorimetry_support from intel_psr to intel_dp
  drm/i915/display: Unify VSC SPD preparation
  drm/i915/display: Fix vsc_sdp computation
  drm/i915/display: Ignore only psr specific part of vsc sdp
  drm/i915/display: Read PSR configuration before VSC SDP
  drm/i915/display: Take care of VSC select field in video dip ctl
    register

 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  9 +-
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 97 ++++++-------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  7 --
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  8 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 11 +--
 7 files changed, 44 insertions(+), 96 deletions(-)

-- 
2.34.1

