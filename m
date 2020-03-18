Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D05189D97
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:07:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5254D6E901;
	Wed, 18 Mar 2020 14:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8B4F6E8FC;
 Wed, 18 Mar 2020 14:07:23 +0000 (UTC)
IronPort-SDR: Bim4g2T+/dpbdHkDCzz6C+pKIDqskIZC4dJLhGxOAXhaqDhLCvYMojV8Pde7FS4JdvgbxYxcVE
 64VVyZi8+P4Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 07:07:23 -0700
IronPort-SDR: tZrvO5b2ubluO7kV4jzgkr0eRn4rkOJz7DTlRE1PGEWNFh5E8Kmu8HTNHlmrH7QtflA6Gfrobm
 5lDGWqTtTMCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="445879498"
Received: from sksobhee-mobl.ger.corp.intel.com (HELO [10.249.43.187])
 ([10.249.43.187])
 by fmsmga006.fm.intel.com with ESMTP; 18 Mar 2020 07:07:19 -0700
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <7654ac39-deb8-c9ca-9fd5-ef77b2636380@linux.intel.com>
Date: Wed, 18 Mar 2020 15:07:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
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
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm-misc-fixes-2020-03-18-1:
One more fix for v5.6:
- drm/lease: fix WARNING in idr_destroy
The following changes since commit 1b79cfd99ff5127e6a143767b51694a527b3ea38:

  drm: kirin: Revert "Fix for hikey620 display offset problem" (2020-03-04 13:29:05 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2020-03-18-1

for you to fetch changes up to b216a8e7908cd750550c0480cf7d2b3a37f06954:

  drm/lease: fix WARNING in idr_destroy (2020-03-18 14:42:18 +0100)

----------------------------------------------------------------
One more fix for v5.6:
- drm/lease: fix WARNING in idr_destroy

----------------------------------------------------------------
Arnd Bergmann (1):
      drm/komeda: mark PM functions as __maybe_unused

Gerd Hoffmann (1):
      drm/bochs: downgrade pci_request_region failure from error to warning

Jernej Skrabec (1):
      drm/bridge: dw-hdmi: fix AVI frame colorimetry

Qiujun Huang (1):
      drm/lease: fix WARNING in idr_destroy

 drivers/gpu/drm/arm/display/komeda/komeda_drv.c |  4 +--
 drivers/gpu/drm/bochs/bochs_hw.c                |  6 ++--
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c       | 46 ++++++++++++++-----------
 drivers/gpu/drm/drm_lease.c                     |  3 +-
 4 files changed, 32 insertions(+), 27 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
