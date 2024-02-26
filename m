Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF7E86755D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 13:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 267F110E712;
	Mon, 26 Feb 2024 12:42:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="isYM/bcB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20CE210E712
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 12:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708951378; x=1740487378;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2KdsoRdBQn0vAvJ3VTzz+IQEwwTyje5sOboncMJlplo=;
 b=isYM/bcBkEldR9wkjCmrTy3bBbaTvcz4J/bTl5wPuUs6A+yk81MeO+1p
 aioXEOZ4XGEVYOM1JKukPu32vWR4iSgo8z9J0Lp43BPWwORgbAsZx1OsL
 bmwXwh8w3ZyI8YSlvALdWQtM7kdg1y8I4vqcrzOWIJ/9LPWPz0k+FlgTe
 1nYdkkChVKqCPByJNJYpsBo1d/IA6vUX3SJ3SO2rJQK3zAgqe4FzcZAt1
 2yDNUaI3U2/XYWG0jMEMyVQwA2ck1zmWt/JXmy+aMMz4u/BbFsk4WEgKC
 HOLRSUy+0V/Q09KPhLiqDc6Op4xbOE7VvvI1ykvCJs9VO79ZaOLfUK5P+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="28658217"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="28658217"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 04:42:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6688605"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
 by orviesa009.jf.intel.com with ESMTP; 26 Feb 2024 04:42:54 -0800
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: broonie@kernel.org
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 hdegoede@redhat.com, Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH v3 0/5] ALSA/ASoC: Conditionally skip i915 init and cleanups
Date: Mon, 26 Feb 2024 13:44:27 +0100
Message-Id: <20240226124432.1203798-1-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

A small set of changes to improve initialization of the audio stack on
HDAudio devices and pair of cleanups.

As the first change is the most important one here, following is the
technical background for it:

Commit 78f613ba1efb ("drm/i915: finish removal of CNL") and its friends
removed support for i915 for all CNL-based platforms. HDAudio library,
however, still treats such platforms as valid candidates for i915
binding. Update query mechanism to reflect changes made in drm tree.

At the same time, i915 support for LKF-based platforms has not been
provided so remove them from valid binding candidates.

The snd_soc_hda change is a follow up for the above and the cleanup
patches do not bring any functional changes.

Changes in v3:
- snd_soc_hda_codec now returns -ENODEV on attach() if i915 is not
  present
- denylist now const
- added new patch for the avs-driver to address -ENODEV during
  probe_codec()
- note: retained reviewed-by for patch 1/4 as changes are minimal

Changes in v2:
- list of problematic VGA devices is now declared locally, no more
  touching drm stuff

Cezary Rojewski (5):
  ALSA: hda: Skip i915 initialization on CNL/LKF-based platforms
  ASoC: codecs: hda: Skip HDMI/DP registration if i915 is missing
  ASoC: Intel: avs: Ignore codecs with no suppoting driver
  ASoC: codecs: hda: Cleanup error messages
  ALSA: hda: Reuse for_each_pcm_streams()

 sound/hda/hdac_i915.c      | 32 +++++++++++++++++++++++++++++---
 sound/pci/hda/hda_codec.c  |  2 +-
 sound/soc/codecs/hda.c     | 15 ++++++++++-----
 sound/soc/intel/avs/core.c |  9 +++++----
 4 files changed, 45 insertions(+), 13 deletions(-)

-- 
2.25.1

