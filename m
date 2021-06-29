Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1A63B780F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 20:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E1D6E8E8;
	Tue, 29 Jun 2021 18:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A7876E8E1;
 Tue, 29 Jun 2021 18:54:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195368287"
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="195368287"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 11:54:57 -0700
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="641421829"
Received: from liubin1-mobl.amr.corp.intel.com (HELO intel.com) ([10.212.5.44])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 11:54:55 -0700
Date: Tue, 29 Jun 2021 14:54:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YNtsfguvCRSROBUZ@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-intel-next-fixes
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

Here goes drm-intel-next-fixes-2021-06-29:

The biggest fix is the restoration of mmap ioctl for gen12 integrated parts
which lack was breaking ADL-P with media stack.
Besides that a small selftest fix and a theoretical overflow on
i915->pipe_to_crtc_mapping.

Thanks,
Rodrigo.

The following changes since commit 1bd8a7dc28c1c410f1ceefae1f2a97c06d1a67c2:

  Merge tag 'exynos-drm-next-for-v5.14' of git://git.kernel.org/pub/scm/lin=
ux/kernel/git/daeinki/drm-exynos into drm-next (2021-06-11 14:19:12 +1000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-fixes-202=
1-06-29

for you to fetch changes up to c90c4c6574f3feaf2203b5671db1907a1e15c653:

  drm/i915: Reinstate the mmap ioctl for some platforms (2021-06-28 07:43:5=
6 -0400)

----------------------------------------------------------------
The biggest fix is the restoration of mmap ioctl for gen12 integrated parts
which lack was breaking ADL-P with media stack.
Besides that a small selftest fix and a theoretical overflow on
i915->pipe_to_crtc_mapping.

----------------------------------------------------------------
Chris Wilson (1):
      drm/i915/selftests: Reorder tasklet_disable vs local_bh_disable

Jani Nikula (1):
      drm/i915/dsc: abstract helpers to get bigjoiner primary/secondary crtc

Thomas Hellstr=F6m (1):
      drm/i915: Reinstate the mmap ioctl for some platforms

 drivers/gpu/drm/i915/display/intel_display.c       |  7 ++-
 drivers/gpu/drm/i915/display/intel_display_types.h |  8 ++++
 drivers/gpu/drm/i915/display/intel_vdsc.c          | 40 +++++++++++-----
 drivers/gpu/drm/i915/display/intel_vdsc.h          |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_mman.c           |  7 +--
 drivers/gpu/drm/i915/gt/selftest_execlists.c       | 55 +++++++++++++-----=
----
 6 files changed, 76 insertions(+), 42 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
