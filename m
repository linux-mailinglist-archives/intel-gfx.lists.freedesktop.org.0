Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9AE1B6428
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 21:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7E526E99E;
	Thu, 23 Apr 2020 19:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E9F76E0C2;
 Thu, 23 Apr 2020 19:03:28 +0000 (UTC)
IronPort-SDR: X3IiRJVQtT6qwI0lGXCPOnKr2Orh+zVvtWkeCwBBzqrxcScasPlMXOGJ3xLxfcY7S7Jco2tdLL
 Yfe7kJ+MfULA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 12:03:26 -0700
IronPort-SDR: DA9sUIdXpdpc5lNdPtpGnXY5+8tOmXzTMIAsH5z3rwhPgEPA95qMmEeAlLfM8yS/sQz9ee3s6V
 2Usg91WICijg==
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="457608451"
Received: from unknown (HELO intel.com) ([10.165.21.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 12:03:24 -0700
Date: Thu, 23 Apr 2020 12:02:46 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200423190246.GA1710303@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

Here goes drm-intel-fixes-2020-04-23:

- Tigerlake Workaround - disabling media recompression (Matt)
- Fix RPS interrupts for right GPU frequency (Chris)
- HDCP fix prime check (Oliver)
- Tigerlake Thunderbolt power well fix (Matt)
- Tigerlake DP link training fixes (Jose)
- Documentation sphinx build fix (Jani)
- Fix enable_dpcd_backlight modparam (Lyude)

Thanks,
Rodrigo.

The following changes since commit 5809e8f8ee42db54c283c3a6bcfcbbdbfd888f5c:

  Merge tag 'gvt-fixes-2020-04-14' of https://github.com/intel/gvt-linux in=
to drm-intel-fixes (2020-04-14 06:02:53 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2020-04-=
23

for you to fetch changes up to d082119f4277ff4a63e44d293864aa9f2112b217:

  drm/i915/dpcd_bl: Unbreak enable_dpcd_backlight modparam (2020-04-20 10:1=
2:58 -0700)

----------------------------------------------------------------
- Tigerlake Workaround - disabling media recompression (Matt)
- Fix RPS interrupts for right GPU frequency (Chris)
- HDCP fix prime check (Oliver)
- Tigerlake Thunderbolt power well fix (Matt)
- Tigerlake DP link training fixes (Jose)
- Documentation sphinx build fix (Jani)
- Fix enable_dpcd_backlight modparam (Lyude)

----------------------------------------------------------------
Chris Wilson (1):
      drm/i915/gt: Update PMINTRMSK holding fw

Jani Nikula (1):
      drm/i915: fix Sphinx build duplicate label warning

Jos=E9 Roberto de Souza (1):
      drm/i915/display: Load DP_TP_CTL/STATUS offset before use it

Lyude Paul (1):
      drm/i915/dpcd_bl: Unbreak enable_dpcd_backlight modparam

Matt Roper (2):
      drm/i915/tgl: Add Wa_14010477008:tgl
      drm/i915/tgl: TBT AUX should use TC power well ops

Oliver Barta (1):
      drm/i915: HDCP: fix Ri prime check done during link check

 drivers/gpu/drm/i915/display/intel_ddi.c              | 14 +++++++++++---
 drivers/gpu/drm/i915/display/intel_display_power.c    | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_dp.c               |  5 ++---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c |  1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c             |  3 ++-
 drivers/gpu/drm/i915/display/intel_sprite.c           | 17 ++++++++++++---=
--
 drivers/gpu/drm/i915/gt/intel_rps.c                   |  9 ++++++---
 drivers/gpu/drm/i915/i915_drv.h                       |  2 ++
 drivers/gpu/drm/i915/i915_reg.h                       |  4 ++--
 9 files changed, 44 insertions(+), 23 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
