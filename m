Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE8260F443
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 12:00:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F6F110E5BA;
	Thu, 27 Oct 2022 10:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE9EC10E5BA;
 Thu, 27 Oct 2022 10:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666864824; x=1698400824;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=Cil1pDM3p6IcIULJ7IyDkn+k5MOc6dL7D2qI3OGd2yQ=;
 b=ELh2wU4WDEN4XSxx2DDloyMRPpDFR0GbiaQobZ30tbtGz52GSAGs8Q5b
 gbKfAaBeGHr88072fJh8DgsvVoLCnBvKjWSU90L6ZiiKqGGfIZM7DdoO3
 krEuZADlcWh1HC0AGWGvf4ZpkJQxoPpz3rxxnGJWXoES+V5ag91WTGmNE
 0oLG0EoQKAsRSfnMF3LpDgAyq53mn1bspPji/6mEnTAma/g//Nx8G+2fp
 5bo0eF++laDxEpHvv3NNG70ZVkVo47094M5SHlnjZVnhMoLTxuj1VtRh1
 /+pc3bmCBGysd3iF8YOt0s8h4/PcTMbxT26HU6WbI2tckHmsv8Unpl57p Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="291484714"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="291484714"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 03:00:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="737618899"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="737618899"
Received: from mpaczkow-mobl1.ger.corp.intel.com (HELO [10.252.47.99])
 ([10.252.47.99])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 03:00:20 -0700
Message-ID: <ed24cbd2-2bcb-d2c2-46ed-9d8ea9615879@linux.intel.com>
Date: Thu, 27 Oct 2022 12:00:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.1.2
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm-misc-fixes-2022-10-27:
drm-misc-fixes for v6.1-rc3:
- Fix HPD on bridge/ps8640.
- Stop leaking fences when killing a sched entity.
- Avoid uninitialized read in aperture_remove_conflicting_pci_device()
The following changes since commit 247f34f7b80357943234f93f247a1ae6b6c3a740:

  Linux 6.1-rc2 (2022-10-23 15:27:33 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2022-10-27

for you to fetch changes up to e0ba1a39b8dfe4f005bebdd85daa89e7382e26b7:

  fbdev/core: Avoid uninitialized read in aperture_remove_conflicting_pci_device() (2022-10-27 09:20:05 +0200)

----------------------------------------------------------------
drm-misc-fixes for v6.1-rc3:
- Fix HPD on bridge/ps8640.
- Stop leaking fences when killing a sched entity.
- Avoid uninitialized read in aperture_remove_conflicting_pci_device()

----------------------------------------------------------------
Christian König (1):
      drm/scheduler: fix fence ref counting

Douglas Anderson (1):
      drm/bridge: ps8640: Add back the 50 ms mystery delay after HPD

Maarten Lankhorst (1):
      Merge remote-tracking branch 'drm/drm-fixes' into drm-misc-fixes

Michał Mirosław (1):
      fbdev/core: Avoid uninitialized read in aperture_remove_conflicting_pci_device()

 drivers/gpu/drm/bridge/parade-ps8640.c   | 25 +++++++++++++++++++++++--
 drivers/gpu/drm/scheduler/sched_entity.c |  6 +++++-
 drivers/video/aperture.c                 |  5 +----
 3 files changed, 29 insertions(+), 7 deletions(-)
