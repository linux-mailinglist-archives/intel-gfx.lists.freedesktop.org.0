Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D893D9244
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 17:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD236EB19;
	Wed, 28 Jul 2021 15:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C8A86EB11;
 Wed, 28 Jul 2021 15:42:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212680520"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212680520"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:42:27 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="435156783"
Received: from hseyedro-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.213.174.18])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:42:24 -0700
Date: Wed, 28 Jul 2021 11:42:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YQF63ruuE72x2T45@intel.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

Here goes drm-intel-fixes-2021-07-28:

Display related fixes:
- Fix vbt port mask
- Fix around reading the right DSC disable fuse in display_ver 10
- Split display version 9 and 10 in intel_setup_outputs

Thanks,
Rodrigo.

The following changes since commit ff1176468d368232b684f75e82563369208bc371:

  Linux 5.14-rc3 (2021-07-25 15:35:14 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-07-28

for you to fetch changes up to b4bde5554f70fb04ff07989fdc1356ab84d6f482:

  drm/i915/display: split DISPLAY_VER 9 and 10 in intel_setup_outputs() (2021-07-26 06:16:47 -0400)

----------------------------------------------------------------
Display related fixes:
- Fix vbt port mask
- Fix around reading the right DSC disable fuse in display_ver 10
- Split display version 9 and 10 in intel_setup_outputs

----------------------------------------------------------------
Lucas De Marchi (2):
      drm/i915: fix not reading DSC disable fuse in GLK
      drm/i915/display: split DISPLAY_VER 9 and 10 in intel_setup_outputs()

Rodrigo Vivi (1):
      drm/i915/bios: Fix ports mask

 drivers/gpu/drm/i915/display/intel_bios.c    | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++++-
 drivers/gpu/drm/i915/intel_device_info.c     | 9 +++++----
 3 files changed, 14 insertions(+), 6 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
