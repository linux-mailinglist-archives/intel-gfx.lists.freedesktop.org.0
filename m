Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C81347908E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 16:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A7510E403;
	Fri, 17 Dec 2021 15:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 746D210E3D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 15:54:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="239999853"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="239999853"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 07:54:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="569053696"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 17 Dec 2021 07:54:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Dec 2021 17:54:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 17:53:57 +0200
Message-Id: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Extend parse_ddi_port() to all
 g4x+ platforms
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

Quick attempt at unifying the VBT DDI parsing to all g4x+
platforms.

Note that we'll still use the hardware straps as the primary 
source of port presence information on old platforms since the
device type bits in VBT tend to be often a bit wrong (for DP++
ports at least). Hopefully the rest of the information (mainly
aux_ch/ddc_pin) are correct.

Only very slightly smoke tested on SNB so far.

Ville Syrjälä (6):
  drm/i915/bios: Introduce has_ddi_port_info()
  drm/i915/bios: Use i915->vbt.ports[] on CHV
  drm/i915/bios: Use i915->vbt.ports[] for all g4x+
  drm/i915/bios: Throw out the !has_ddi_port_info() codepaths
  drm/i915/bios: Nuke DEVICE_TYPE_DP_DUAL_MODE_BITS
  drm/i915/hdmi: Ignore DP++ TMDS clock limit for native HDMI ports

 drivers/gpu/drm/i915/display/intel_bios.c     | 117 +++---------------
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 ++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  26 ----
 3 files changed, 28 insertions(+), 123 deletions(-)

-- 
2.32.0

