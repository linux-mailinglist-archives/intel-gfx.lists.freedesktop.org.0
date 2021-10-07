Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E754250BA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 12:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B626F3E4;
	Thu,  7 Oct 2021 10:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF466F3DA;
 Thu,  7 Oct 2021 10:08:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="226112830"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="226112830"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:08:39 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="488909643"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:08:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dim-tools@lists.freedesktop.org, 
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 07 Oct 2021 13:08:27 +0300
Message-ID: <87k0ipywo4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave & Daniel -

drm-intel-fixes-2021-10-07:
drm/i915 fixes for v5.15-rc5:
- Fix RKL HDMI audio
- Fix runtime pm imbalance on i915_gem_shrink() error path
- Fix Type-C port access before hw/sw state sync
- Fix VBT backlight struct version/size check
- Fix VT-d async flip on SKL/BXT with plane stretch workaround

BR,
Jani.

The following changes since commit 9e1ff307c779ce1f0f810c7ecce3d95bbae40896:

  Linux 5.15-rc4 (2021-10-03 14:08:47 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-10-=
07

for you to fetch changes up to b2d73debfdc16b742e64948dc4461876af3f8c10:

  drm/i915: Extend the async flip VT-d w/a to skl/bxt (2021-10-05 11:52:48 =
+0300)

----------------------------------------------------------------
drm/i915 fixes for v5.15-rc5:
- Fix RKL HDMI audio
- Fix runtime pm imbalance on i915_gem_shrink() error path
- Fix Type-C port access before hw/sw state sync
- Fix VBT backlight struct version/size check
- Fix VT-d async flip on SKL/BXT with plane stretch workaround

----------------------------------------------------------------
Imre Deak (1):
      drm/i915/tc: Fix TypeC port init/resume time sanitization

Kai-Heng Feng (1):
      drm/i915/audio: Use BIOS provided value for RKL HDA link

Lukasz Majczak (1):
      drm/i915/bdb: Fix version check

Maarten Lankhorst (1):
      drm/i915: Fix runtime pm handling in i915_gem_shrink

Ville Syrj=C3=A4l=C3=A4 (1):
      drm/i915: Extend the async flip VT-d w/a to skl/bxt

 drivers/gpu/drm/i915/display/icl_dsi.c        | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_audio.c    |  5 +++--
 drivers/gpu/drm/i915/display/intel_bios.c     | 22 ++++++++++++++++------
 drivers/gpu/drm/i915/display/intel_ddi.c      |  8 +++++++-
 drivers/gpu/drm/i915/display/intel_display.c  | 20 +++++---------------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  5 +++++
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  7 +++++--
 drivers/gpu/drm/i915/i915_reg.h               |  5 +++++
 drivers/gpu/drm/i915/intel_pm.c               | 12 ++++++++++++
 9 files changed, 66 insertions(+), 28 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
