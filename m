Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCC918B167
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 11:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527606E9E1;
	Thu, 19 Mar 2020 10:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E35B56E9E1;
 Thu, 19 Mar 2020 10:30:45 +0000 (UTC)
IronPort-SDR: 6lcJwpCGx1zCNMxUA7Skmh7cDop4q942jRvyLogTOSc5mZhiA4nZ37Dha4m1MXPQc+YcHfslUR
 jIRyWppQO8GQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 03:30:44 -0700
IronPort-SDR: cSoPTGJRXhj/LAt2CVvTPRObRAbQInur8T9RQD+dOh/Thjwz7XYs+A72+h43lpkngW3OaxeZuA
 9+Ek6hAy7DlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="263687061"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by orsmga002.jf.intel.com with ESMTP; 19 Mar 2020 03:30:40 -0700
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: sameer.lattannavar@intel.com, jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, daniels@collabora.com
Date: Thu, 19 Mar 2020 15:50:58 +0530
Message-Id: <20200319102103.28895-1-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] Introduce drm scaling filter property
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series is the continuation for the RFC that I posted earlier [1]

[1] RFC: https://patchwork.freedesktop.org/series/73884/

Integer scaling (IS) is a nearest-neighbor upscaling technique that
simply scales up the existing pixels by an integer (i.e., whole
number) multiplier. Nearest-neighbor (NN) interpolation works by
filling in the missing color values in the upscaled image with that of
the coordinate-mapped nearest source pixel value.

Both IS and NN preserve the clarity of the original image. In
contrast, traditional upscaling algorithms, such as bilinear or
bicubic interpolation, result in blurry upscaled images because they
employ interpolation techniques that smooth out the transition from
one pixel to another.  Therefore, integer scaling is particularly
useful for pixel art games that rely on sharp, blocky images to
deliver their distinctive look.

Many gaming communities have been asking for integer-mode scaling
support, some links and background:

https://software.intel.com/en-us/articles/integer-scaling-support-on-intel-graphics
http://tanalin.com/en/articles/lossless-scaling/
https://community.amd.com/thread/209107
https://www.nvidia.com/en-us/geforce/forums/game-ready-drivers/13/1002/feature-request-nonblurry-upscaling-at-integer-rat/

This patch series -
  - Introduces new scaling filter properties to allow userspace to
    select  the driver's default scaling filter or
    Nearest-neighbor(NN) filter for scaling operations on crtc and plane.
  - Implements and enable integer scaling for i915

Userspace patch series link: https://github.com/lrusak/xbmc/pull/24 

Thanks to Shashank for initiating this work. His initial work can be
found here [2]

[2] https://patchwork.freedesktop.org/patch/337082/

changes since v1: 
* Add userspace patch link to this cover letter.
* 4/5 - Rearrange skl_scaler_setup_nearest_neighbor_filter() to iterate
  the registers directly instead of the phases and taps (Ville)

Pankaj Bharadiya (5):
  drm: Introduce plane and CRTC scaling filter properties
  drm/drm-kms.rst: Add plane and CRTC scaling filter property documentation
  drm/i915: Introduce scaling filter related registers and bit fields.
  drm/i915/display: Add Nearest-neighbor based integer scaling support
  drm/i915: Enable scaling filter for plane and CRTC

 Documentation/gpu/drm-kms.rst                |  12 +++
 drivers/gpu/drm/drm_atomic_uapi.c            |   8 ++
 drivers/gpu/drm/drm_crtc.c                   |  33 ++++++
 drivers/gpu/drm/drm_mode_config.c            |  26 +++++
 drivers/gpu/drm/drm_plane.c                  |  33 ++++++
 drivers/gpu/drm/i915/display/intel_display.c | 104 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h |   2 +
 drivers/gpu/drm/i915/display/intel_sprite.c  |  31 +++++-
 drivers/gpu/drm/i915/i915_reg.h              |  48 +++++++++
 include/drm/drm_crtc.h                       |  13 +++
 include/drm/drm_mode_config.h                |  12 +++
 include/drm/drm_plane.h                      |  13 +++
 12 files changed, 332 insertions(+), 3 deletions(-)

-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
