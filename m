Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D0F647387
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:51:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8982610E0EF;
	Thu,  8 Dec 2022 15:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD0510E0EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670514668; x=1702050668;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0+xD+0bD9DOaOg1NSyp7YcykpSy+JSFBnSb0TpKDmKw=;
 b=AOt66h3u5TP83TScB3goapDsNim+2bH2M+D0ncEQvm11sLOofKQM/i7q
 kU65d5EMnNEJ9EzdhjgD257ax9bBBLIiVJYb8Q0c44mMxqLpgw2GNowGd
 b5nV1Wo6mAhkUmzFD6dAMiRC4lQgyV3+yBHs+x1fQvzEJ2c79mnoLgcD+
 f7zkptkzpE/qbXQ8ujrgTmAjiHplXgK/QtnJPZmbwq9e9HNfstajW4eC+
 zDHtY2sl01+A0AwM0cNs/vURvYG1ApeaVJ4tuRsLdooCII/1UP9yLUM4c
 56F2w2l/LCJIQaF+zxE0dxBrW4R3zw/jkyaPFWnM+lJJpFBf23I5bWCM+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="304856900"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="304856900"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:44:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="710514660"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="710514660"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga008.fm.intel.com with ESMTP; 08 Dec 2022 07:44:21 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: alsa-devel@alsa-project.org,
	tiwai@suse.de
Date: Thu,  8 Dec 2022 17:43:55 +0200
Message-Id: <20221208154358.3848764-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: i915 keepalive fixes
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A series with multiple fixes to i915 keepalive (KAE)
functionality. First patch fixes issue that is hit on
some A750/770 cards:
https://gitlab.freedesktop.org/drm/intel/-/issues/7353

The two other improve behaviour especially with certain
USB-C docks.

Kai Vehmanen (3):
  ALSA: hda/hdmi: fix i915 silent stream programming flow
  ALSA: hda/hdmi: set default audio parameters for KAE silent-stream
  ALSA: hda/hdmi: fix stream-id config keep-alive for rt suspend

 include/sound/hda_codec.h  |   1 +
 sound/pci/hda/hda_codec.c  |   3 +-
 sound/pci/hda/patch_hdmi.c | 114 ++++++++++++++++++++++++++++++++++++-
 3 files changed, 114 insertions(+), 4 deletions(-)


base-commit: 81a2da5a10a6eaa6ae16108eed4e74651cc296bf
-- 
2.38.1

