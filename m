Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 893CBA2F629
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 18:58:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB6210E07E;
	Mon, 10 Feb 2025 17:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RspeWwxu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9350C10E07E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 17:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739210319; x=1770746319;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N8Qs0OyJuekua6GM2NNZrl1EwwvSy5fBLmZB+U0OVsU=;
 b=RspeWwxuEuReHyIiRJjgwHDGvahfdbV9SGex00pPX1wPB6JHNK0McBym
 STTeLyYZjFSIIraRRvZDI9uLm8HmmdYdHr9amtgbqXtbx1C65jkmjd2OY
 qXrZy6AefSHX8jO/fjoq9jbwuQGWdRiuXzWRxekmRy67GLB650WedZtMC
 eCQCC0/Zp9jeF/S1STCbpfi8vloWtYKiLaXREaopad9fliZZ7CbPpMG5L
 Lb7YKJAxKRkZzmQrl58Dyd/ECI0NB9XASFAEI0rkrbf0vsgQFzMYqImlm
 4auh6KMT457Fi7fmBiAtzr+F36Y3bZLtn03376lgWexDdpafrhKGRmE4P g==;
X-CSE-ConnectionGUID: 6htU+hLES+m1dPxkuwnZ8Q==
X-CSE-MsgGUID: LiaxkxHGSZuv2y1xtxcg2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39002985"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39002985"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 09:58:39 -0800
X-CSE-ConnectionGUID: p4USysyeQVqcX9n4GUNoMA==
X-CSE-MsgGUID: n21wErFcSMae/xv+czWucw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112480675"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 09:58:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 19:58:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH xf86-video-intel 0/7] Silence warns and fix up sprite stuff
Date: Mon, 10 Feb 2025 19:58:29 +0200
Message-ID: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Found some old sprite xv stuff sitting around in my local repo.

Also gcc-14 has become noisy wrt. transposed calloc() arguments,
so fix those up as well.

Ville Syrjälä (7):
  Fix transposed calloc() arguments
  sna: Don't memcpy() between different types
  sna/kgem: Add kgem_bo_replace()
  sna/video/sprite: Use kgem_bo_replace()
  sna/video/sprite: Plug bo leak
  sna/video/sprite: Extract sna_video_sprite_hide()
  sna/video/sprite: Reset colorkey whenever disabling the sprite plane

 src/legacy/i810/i810_dri.c    |  2 +-
 src/legacy/i810/i810_driver.c |  2 +-
 src/sna/fb/fbspan.c           | 22 ++++++----
 src/sna/kgem.h                |  9 ++++
 src/sna/sna_display.c         |  4 +-
 src/sna/sna_glyphs.c          |  4 +-
 src/sna/sna_video_sprite.c    | 79 +++++++++++++++++------------------
 src/uxa/intel_display.c       |  8 ++--
 src/uxa/intel_present.c       |  2 +-
 src/uxa/uxa-glyphs.c          |  2 +-
 src/uxa/uxa.c                 |  2 +-
 test/basic-copyarea.c         |  3 +-
 test/basic-fillrect.c         |  3 +-
 test/basic-putimage.c         |  3 +-
 test/render-composite-solid.c |  3 +-
 test/render-copy-alphaless.c  |  3 +-
 test/render-copyarea.c        |  3 +-
 test/render-fill-copy.c       |  3 +-
 test/render-fill.c            |  3 +-
 test/render-trapezoid-image.c |  3 +-
 test/render-trapezoid.c       |  3 +-
 21 files changed, 93 insertions(+), 73 deletions(-)

-- 
2.45.3

