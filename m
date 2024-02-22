Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C342085FE98
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 18:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEA3A10E388;
	Thu, 22 Feb 2024 17:05:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gkOzfMRy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 391CF10E388
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 17:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708621547; x=1740157547;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qBm5r8A0dH4nQsycHwkzWtzHdWmHKHLuX/nwo8bX8Dk=;
 b=gkOzfMRyHvm+wdkxBlysbvISN8/TfeGH9WZcq0UNxYQChaDgGC7D1Heo
 5P7BuaztDyX+EAnB+UsIPlQ/gYijb4Z8pqyO/vXnHiu1jju+TgrkAC5Ev
 Oogm11KViY47GHOqDvMtw2yKDmjHswOqZKzURG3h+QPWMAwq6retfEaxy
 vnmGDWJcrkxcmQqrZkHsf4FvgOcKoNsh08Q2UNVDKmR8wVjcEmYYEs1hL
 0PZCdY+i4VqOEijKY49gj0OlWq0oEwcrd5KeIghIOB9nC6VGqDzQt5SeJ
 1CY6NrSCRNknqwNW/jmBL0a4bwng+Xh9bkQd+vHIRStAFSe3bLy322JwS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="20299174"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="20299174"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 09:04:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="827575230"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="827575230"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
 by orsmga001.jf.intel.com with ESMTP; 22 Feb 2024 09:04:50 -0800
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: broonie@kernel.org
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 hdegoede@redhat.com, Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH 0/4] ALSA/ASoC: Conditionally skip i915 init and cleanups
Date: Thu, 22 Feb 2024 18:06:10 +0100
Message-Id: <20240222170614.884413-1-cezary.rojewski@intel.com>
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
HDAudio devices and pair of cleanups. While I did touch i915_pciids.h
header which is part of drm, I'd like the changes to go through Mark's
tree entirely - being cohesive with the rest of the code by adding LKF
IDs where they belong rather than hiding them within the sound tree.

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

Cezary Rojewski (4):
  ALSA: hda: Skip i915 initialization on CNL/LKF-based platforms
  ASoC: codecs: hda: Skip HDMI/DP registration if i915 is missing
  ASoC: codecs: hda: Cleanup error messages
  ALSA: hda: Reuse for_each_pcm_streams()

 include/drm/i915_pciids.h |  4 ++++
 sound/hda/hdac_i915.c     | 18 +++++++++++++++---
 sound/pci/hda/hda_codec.c |  2 +-
 sound/soc/codecs/hda.c    | 15 ++++++++++-----
 4 files changed, 30 insertions(+), 9 deletions(-)

-- 
2.25.1

