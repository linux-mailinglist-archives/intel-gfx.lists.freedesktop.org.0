Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF0A994137
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66B7510E494;
	Tue,  8 Oct 2024 08:23:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZQBXfegE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597A410E494
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375821; x=1759911821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LaAzugzofuH+lq4/UbtBxnA3ZYU5r82P3u9FcmHubVs=;
 b=ZQBXfegEPJ558rGnpM+A3qh7gQBclWC1Z2tLO5SLY6M7SkjsVT0eGGq0
 4fXymh14psgp/mh4gM0feQ2crYdESTvbQqC90OoUuRbzIoOvMYQ7m9+ni
 Rz8tLUb2DTsR/TTaZsWJfAc/h/PqOfJEsffmK39lcm6g5FK2EtCF9NoZk
 q7HgaxsE2161TVchnWTsc8OX19iVOWDDq+l7uVH7D+Nu0yWPBcahTwy8J
 KgSsQkVzrThlBknRC3mbcXgP6o4KxGNKpM+Cq0MG60ow7dIcX2DAgbZXz
 doDdBjr7kGNhWn76Kbp1eYMWONjuA6he6rXJLT8pD3qjJjMf69A/jTtc3 A==;
X-CSE-ConnectionGUID: mWWBnKt7QR2jlEQEvBPTMw==
X-CSE-MsgGUID: W0Ni13zvSwKUPCG1BIvVLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079095"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079095"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:41 -0700
X-CSE-ConnectionGUID: oQmBbRVpS5CoczAOEtE/Sg==
X-CSE-MsgGUID: 8cSFuN7tQV6eniC5Qn0Qxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755752"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:39 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 0/9] prunue audio frequencies based on bw limits for DP2
Date: Tue,  8 Oct 2024 11:23:18 +0300
Message-Id: <20241008082327.342020-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Implement pruning of unsupported audio frequencies from SAD frequency
list based on the audio bw calculation specified in Bspec: 67768. First
for the maximum number of channels, supported audio frequency list is
checked. If there are no available frequencies exist for channel, channel
is reduced and the assessment is done again. Eventually both supported
audio frequency and channels are updated to SAD in ELD.

TODO: Update the hblank available calculations for Xe3

Vinod Govindapillai (9):
  drm/i915/display: get rid of encoder param  in
    intel_audio_compute_config
  drm/i915/display: create a common function to check validity of ELD
  drm/i915/display: update call to intel_dp_audio_compute_config
  drm/i915/display: update logic to determine crtcstate has audio
    support
  drm/i915/display: check and prune audio frequencies based on bw limits
  drm/i915/display: iterare through channels if no feasible frequencies
  drm/i915/display: update audio support based on the available
    frequencies
  drm/i815/disaply: limit the audio bw check with DP2 config
  drm/i915/display: update audio bw calculations for MTL

 drivers/gpu/drm/i915/display/intel_audio.c | 149 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_audio.h |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c    |  67 ++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c  |   2 +-
 5 files changed, 211 insertions(+), 15 deletions(-)

-- 
2.34.1

