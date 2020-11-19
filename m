Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5422B9C18
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 21:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C787D6E835;
	Thu, 19 Nov 2020 20:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 590F46E82F;
 Thu, 19 Nov 2020 20:33:13 +0000 (UTC)
IronPort-SDR: o8TiJphaDUNFbPCRRj4KcU/ho7IMfCsSZgwT20HAfTyBEn7xmlx6o5Txkc3zu62yYHGUTLrBjK
 Zjb2VoEXVMBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="232979152"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="232979152"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 12:33:12 -0800
IronPort-SDR: le7yKgb/iGIWBO6SjxOmtMSYLTbavFyTcfqy0DlOQm6Zrxf703HqMTdv+CMyyoq2mcLSTyLUlH
 wv7Ah51ZdV1Q==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="311756634"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 12:33:11 -0800
Date: Thu, 19 Nov 2020 15:34:17 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20201119203417.GA1795798@intel.com>
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

Here goes another round for 5.10

drm-intel-fixes-2020-11-19:
- Fix tgl power gating issue (Rodrigo)
- Memory leak fixes (Tvrtko, Chris)
- Selftest fixes (Zhang)
- Display bpc fix (Ville)
- Fix TGL MOCS for PTE tracking (Chris)

GVT Fixes: It temporarily disables VFIO edid
feature on BXT/APL until its virtual display is really fixed to make
it work properly. And fixes for DPCD 1.2 and error return in taking
module reference.

Thanks,
Rodrigo.

The following changes since commit 5ce6861d36ed5207aff9e5eead4c7cc38a986586:

  drm/i915: Correctly set SFC capability for video engines (2020-11-12 19:4=
7:30 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2020-11-=
19

for you to fetch changes up to be33805c65297611971003d72e7f9235e23ec84d:

  drm/i915/gt: Fixup tgl mocs for PTE tracking (2020-11-19 15:10:49 -0500)

----------------------------------------------------------------
- Fix tgl power gating issue (Rodrigo)
- Memory leak fixes (Tvrtko, Chris)
- Selftest fixes (Zhang)
- Display bpc fix (Ville)
- Fix TGL MOCS for PTE tracking (Chris)

GVT Fixes: It temporarily disables VFIO edid
feature on BXT/APL until its virtual display is really fixed to make
it work properly. And fixes for DPCD 1.2 and error return in taking
module reference.

----------------------------------------------------------------
Chris Wilson (2):
      drm/i915/gt: Remember to free the virtual breadcrumbs
      drm/i915/gt: Fixup tgl mocs for PTE tracking

Colin Xu (1):
      drm/i915/gvt: Temporarily disable vfio_edid for BXT/APL

Rodrigo Vivi (2):
      drm/i915/tgl: Fix Media power gate sequence.
      Merge tag 'gvt-fixes-2020-11-17' of https://github.com/intel/gvt-linu=
x into drm-intel-fixes

Tina Zhang (1):
      drm/i915/gvt: Set ENHANCED_FRAME_CAP bit

Tvrtko Ursulin (1):
      drm/i915: Avoid memory leak with more than 16 workarounds on a list

Ville Syrj=E4l=E4 (1):
      drm/i915: Handle max_bpc=3D=3D16

Xiongfeng Wang (1):
      drm/i915/gvt: return error when failing to take the module reference

Zhang Xiaoxu (2):
      drm/i915/selftests: Fix wrong return value of perf_series_engines()
      drm/i915/selftests: Fix wrong return value of perf_request_latency()

 drivers/gpu/drm/i915/display/intel_display.c  |  3 ++-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  1 +
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  5 +++--
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 22 +++++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  4 +++-
 drivers/gpu/drm/i915/gvt/display.c            |  2 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c              |  4 +++-
 drivers/gpu/drm/i915/gvt/vgpu.c               |  3 ++-
 drivers/gpu/drm/i915/i915_reg.h               | 12 +++++-------
 drivers/gpu/drm/i915/intel_pm.c               | 13 -------------
 drivers/gpu/drm/i915/selftests/i915_request.c |  8 ++++++--
 11 files changed, 43 insertions(+), 34 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
