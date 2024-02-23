Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAB68610AA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 12:44:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB90A10EBD6;
	Fri, 23 Feb 2024 11:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RKo+yEg8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B049F10EBD4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 11:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708688692; x=1740224692;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5M53J19YnQsDTZHCO/RGLH/1wCJSKBF2s0sCAjtorsM=;
 b=RKo+yEg8f4GcvZuStlQ+X9Bk0FZp4yZETBHlTWloW1Sk5ufLSFFCVk4C
 tugXrxPAJ8aEBGnNDJSl8n+WvAS3YRArcBMsyxDwf2o3T8QPNWjEVrVfk
 vT+HkBYU7lXDVVyI70H4bZEFaoLnF8fGaW8TnfqlP1mZXmMB7OBTNl/3+
 EynZPSUmoDJOFvnG99Mg9PFoAvncFDayoCe88VPwtVaLKe45rtJjDjJV9
 HE/awhoXZv+OfEW4WuE3Lx12S3NbsEC/ldzyX957/nhX9H7YObvd13d3q
 SMRMt5UhAK4rWBZoXmNoEy016uxA3CXv7WsfHJO34sN9NtTc6/KEg7K+U g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="3504589"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="3504589"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 03:44:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="6092883"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
 by fmviesa006.fm.intel.com with ESMTP; 23 Feb 2024 03:44:48 -0800
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: broonie@kernel.org
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 hdegoede@redhat.com, Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH v2 0/4] ALSA/ASoC: Conditionally skip i915 init and cleanups
Date: Fri, 23 Feb 2024 12:46:22 +0100
Message-Id: <20240223114626.1052784-1-cezary.rojewski@intel.com>
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

Changes in v2:
- list of problematic VGA devices is now declared locally, no more
  touching drm stuff

Cezary Rojewski (4):
  ALSA: hda: Skip i915 initialization on CNL/LKF-based platforms
  ASoC: codecs: hda: Skip HDMI/DP registration if i915 is missing
  ASoC: codecs: hda: Cleanup error messages
  ALSA: hda: Reuse for_each_pcm_streams()

 sound/hda/hdac_i915.c     | 32 +++++++++++++++++++++++++++++---
 sound/pci/hda/hda_codec.c |  2 +-
 sound/soc/codecs/hda.c    | 15 ++++++++++-----
 3 files changed, 40 insertions(+), 9 deletions(-)

-- 
2.25.1

