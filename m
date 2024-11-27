Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC229DA75E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 13:07:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD8C10EAB6;
	Wed, 27 Nov 2024 12:07:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KGag3u8J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86345891D7;
 Wed, 27 Nov 2024 12:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732709251; x=1764245251;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aHxxkWWweMg7cOXEMNKjy8Yhj5wO4rquwZTP0urYIJs=;
 b=KGag3u8J7o4KMV+MI5dbYFttxVSPTsDCTqgGrLRHKzzq0W/Ef3NxgV0G
 6Tinf42EYwIuAZcKgrksL80Kf2lgsKiX4mosNe6Op3QHS2JXv9p62xRIe
 aMff8RXbtq3pCUn2wxCPkYmnA9YS2MOwUpkLtQE5nfSO5OZNjk8O74FgE
 Z8eWe1BxS6DU9GG80tLaaWrrERhUmI3/l9u2NiwjIAI5njo2pjL2xsAQn
 5asVauPV45o0qdWSmWTbfrLul+IS15FuqL7BZzpDc1en5s/Xm72EKWLvn
 ZNMlkSjikyeIQZZrXMn4hMIqzkFNgz6pTsOUkE773CzNpNvwLBQ0x8CbF w==;
X-CSE-ConnectionGUID: sC1d6St5SRqXI6ibrv2hbA==
X-CSE-MsgGUID: qu5Ykw+BRKW0RlfYXg/C7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="43972784"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="43972784"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:31 -0800
X-CSE-ConnectionGUID: H6mZ1ptkSOyaAyCm8W5CbQ==
X-CSE-MsgGUID: oK7tpyzNSReVTkW4GEib5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92754912"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.60])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:29 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, kai.vehmanen@linux.intel.co,
 jani.saarinen@intel.com
Subject: [PATCH v2 0/6] prunue audio frequencies based on bw limits for DP2
Date: Wed, 27 Nov 2024 14:07:09 +0200
Message-Id: <20241127120715.185348-1-vinod.govindapillai@intel.com>
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

v2: updated the series based on review comments. One patch from the
    previous revision is dropped and two other patches squashed to
    another patch

Audio bw limits calculations for xe3 need to be addressed separately

Vinod Govindapillai (6):
  drm/i915/display: create a common function to check validity of ELD
  drm/i915/display: update call to intel_dp_audio_compute_config
  drm/i915/display: check and prune audio frequencies based on bw limits
    in DP2.0
  drm/i915/display: iterate through channels if no feasible frequencies
  drm/i915/display: update audio support based on the available
    frequencies
  drm/i915/display: update audio bw calculations for MTL

 drivers/gpu/drm/i915/display/intel_audio.c | 159 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_audio.h |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c    |  78 +++++++++-
 3 files changed, 231 insertions(+), 10 deletions(-)

-- 
2.34.1

