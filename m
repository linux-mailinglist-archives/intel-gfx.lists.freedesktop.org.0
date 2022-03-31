Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7A34ED878
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3D510EF99;
	Thu, 31 Mar 2022 11:28:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8088D10EF99
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726105; x=1680262105;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mzdqEa+ZJOSLXIPRuFcXesDkioYnIwDTuGzWsA2Vd8U=;
 b=BRLmc0TZxLR5ZfTSnGFNWgfds3eaaRYVLeTkYcBeRxfq+klmH2QsD9pZ
 ZrIbqtpVSIk1pAO6UUI4Sa4jsDRtf2V2UqmmU+sd6iIVpIq6pRUSYMtyU
 H4S5hptyLBc3mn7Ioeh3o2YXguEYZTVeYAMwFTFP0WFcQ5u7QRD+qbejK
 myomhiDJIc8Ry0QKyAQ8B7MVmrojhBhzdhtWB+Y++t21NzfFdBkn2FrcT
 bynvl6WW+UyjVUuxYYDCHD4jcvjXL1q6/Y1FDQVifzRQ1yt8Bqksi6s/d
 pvrZYe05huJf2r8OfIAQDxFK8s3fPJuJn8JeSjgbCv4RSImTML9OIDWtq w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="284720175"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="284720175"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="520444275"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga002.jf.intel.com with SMTP; 31 Mar 2022 04:28:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:11 +0300
Message-Id: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/11] drm/i915: Finish off static DRRS
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

(Hopefully) finish the static DRRS work:
- Finish off a bunch of fixed mode refactoring
- Allow fixed modes with any refresh rate, including ones
  that exceed the panel's preferred mode. Useful for laptops
  with high refresh rate panels (120-300Hz seen in the wild
  so far)
- Allow static DRRS on all eDP ports and the LVDS port since
  static DRRS is just a normal modeset and thus no special
  hardware support is required for it

v2: just a rebase

Ville Syrjälä (11):
  drm/i915: Extract intel_edp_has_drrs()
  drm/i915: Put fixed modes directly onto the panel's fixed_modes list
  drm/i915: Refactor non-EDID fixed mode duplication
  drm/i915: Nuke intel_drrs_init()
  drm/i915: Combine the EDID fixed_mode+downclock_mode lookup into one
  drm/i915: Stop duplicating the EDID fixed/downclock modes
  drm/i915: Allow an arbitrary number of downclock modes
  drm/i915: Allow higher refresh rate alternate fixed modes
  drm/i915: Move intel_drrs_compute_config() into intel_dp.c
  drm/i915: Allow static DRRS on all eDP ports
  drm/i915: Allow static DRRS on LVDS

 drivers/gpu/drm/i915/display/icl_dsi.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_dp.c    |  98 ++++++++--
 drivers/gpu/drm/i915/display/intel_drrs.c  | 114 -----------
 drivers/gpu/drm/i915/display/intel_drrs.h  |   5 -
 drivers/gpu/drm/i915/display/intel_dvo.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_lvds.c  |  32 ++--
 drivers/gpu/drm/i915/display/intel_panel.c | 209 +++++++++------------
 drivers/gpu/drm/i915/display/intel_panel.h |  21 +--
 drivers/gpu/drm/i915/display/intel_sdvo.c  |  10 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c     |   9 +-
 10 files changed, 214 insertions(+), 301 deletions(-)

-- 
2.34.1

